from datetime import datetime
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import get_object_or_404, render
from django.contrib import messages
from django.urls import reverse
from django.views import generic
from users.models import CustomUser

from .forms import PollForm
from .models import Choice, Question, Vote

from project.decorators import unacthenticated_user, allowed_user_types

class IndexView(generic.ListView):
    template_name = 'polls.html'

    def get(self, request, *args, **kwargs):
        user = get_object_or_404(CustomUser, username=self.request.user)
        groups = user.groups.all()
        if(groups):
            context = {}
            context['latest_polls'] = Question.objects.order_by('-pub_date')[:5]
            return render(request, self.template_name, context)
        else:
            messages.error(request, "Feature is not available. User is not assigned to a group.")
            return HttpResponseRedirect(reverse("news"))

class VoteView(generic.View):
    model = Question
    template_name = 'vote.html'

    def get(self, request, question_id, *args, **kwargs):
        question = get_object_or_404(Question, pk=question_id)
        vote = Vote.objects.filter(question=question_id, voter=request.user)
        print("vote", vote)
        if vote:
            return render(request, 'vote.html', {
                'question': question,
                'error_message': 'You have already voted.'
            })
        else:
            return render(request, 'vote.html', {
                'question': question
            })

    def post(self, request, question_id, *args, **kwargs):
        question = get_object_or_404(Question, pk=question_id)
        try:
            selected_choice = question.choice_set.get(pk=request.POST['choice'])
            vote = Vote()
            vote.question = question
            vote.choice = selected_choice
            vote.voter = request.user
            vote.save()
            return HttpResponseRedirect(reverse('polls:results', args={question.id, }))
        except (KeyError, Choice.DoesNotExist):
            return render(request, 'vote.html', {
                'question': question,
                'error_message': 'You didn´t choose.'
            })

class ResultsView(generic.DetailView):
    model = Question
    template_name = 'results.html'

    def get(self, request, question_id, *args, **kwargs):
        question = get_object_or_404(Question, pk=question_id)
        votes = Vote.objects.filter(question=question_id)
        return render(request, self.template_name, {
            'question': question,
            'votes': votes
        })


class ManagePollsView(generic.ListView):
    template_name = 'manage_polls.html'
    context_object_name = 'latest_question_list'

    def get_queryset(self):
        return Question.objects.order_by('-pub_date')

@allowed_user_types(allowed_roles=['Teacher', 'Admin'])
def add_poll(request):
    if request.method == 'GET':
        pollForm = PollForm()
        return render(request, "add_poll.html", {'pollForm' : pollForm })
    if request.method == 'POST':
        pollForm = PollForm(request.POST)
        if pollForm.is_valid():
            question = Question()
            question.question_text = pollForm.cleaned_data['question_text']
            question.save()
            question_id = question.id

            for key, value in request.POST.items():
                if key.startswith('choice_'):
                    choice_id = key.split('choice_')[1]
                    choice = Choice()
                    choice.question_id = question_id
                    choice.choice_text = value
                    choice.save()

            messages.success(request,"Successfully added poll")
            return HttpResponseRedirect(reverse("polls:manage_polls"))
        else:
            messages.error(request,"Failed to add Poll")
            return HttpResponseRedirect(reverse("polls:add_poll"))

@allowed_user_types(allowed_roles=['Teacher', 'Admin'])
def edit_poll(request, question_id):
    question = get_object_or_404(Question, pk=question_id)
    choices = Choice.objects.filter(question=question_id)
    if request.method == 'GET':
        return render(request, 'edit_poll.html', {'question': question, 'choices': choices })
    if request.method == 'POST':
        pollForm = PollForm(request.POST)
        if pollForm.is_valid():
            question.question_text = pollForm.cleaned_data['question_text']
            question.save()

            for key, value in request.POST.items():
                if key.startswith('choice'):
                    choice_id = key.split('choice')[1]
                    #print ("%s %s" % (choice_id, value))
                    choice = get_object_or_404(Choice, pk=choice_id)
                    choice.choice_text = value
                    choice.save()
            
            messages.success(request,"Successfully edited poll")
            return HttpResponseRedirect(reverse("polls:edit_poll", kwargs={"question_id":question_id}))
        else:
            messages.error(request,"Failed to edit Poll")
            return HttpResponseRedirect(reverse("polls:edit_poll", kwargs={"question_id":question_id}))

@allowed_user_types(allowed_roles=['Teacher', 'Admin'])
def delete_poll(request, question_id):
    if request.method == 'GET':
        question=Question.objects.get(id=question_id)
        question.delete()
        messages.success(request,"Successfully deleted poll")
        return HttpResponseRedirect(reverse("polls:manage_polls"))
