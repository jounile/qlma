--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Debian 12.6-1.pgdg100+1)
-- Dumped by pg_dump version 12.6 (Debian 12.6-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_group (id, name) VALUES (1, '1A');
INSERT INTO public.auth_group (id, name) VALUES (2, '1B');
INSERT INTO public.auth_group (id, name) VALUES (3, '2A');
INSERT INTO public.auth_group (id, name) VALUES (4, '2B');


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'cal', 'event');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'project', 'event');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'project', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'project', 'school');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'users', 'customuser');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'users', 'profile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'news', 'post');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'messaging', 'message');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'timetable', 'subject');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'timetable', 'course');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'timetable', 'lesson');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'polls', 'question');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'polls', 'choice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'lunch', 'lunch');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (19, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (20, 'polls', 'vote');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add event', 1, 'add_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change event', 1, 'change_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete event', 1, 'delete_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view event', 1, 'view_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add event', 2, 'add_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change event', 2, 'change_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete event', 2, 'delete_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view event', 2, 'view_event');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add school', 4, 'add_school');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change school', 4, 'change_school');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete school', 4, 'delete_school');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view school', 4, 'view_school');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add user', 5, 'add_customuser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change user', 5, 'change_customuser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete user', 5, 'delete_customuser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view user', 5, 'view_customuser');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add profile', 6, 'add_profile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change profile', 6, 'change_profile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete profile', 6, 'delete_profile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view profile', 6, 'view_profile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add post', 7, 'add_post');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change post', 7, 'change_post');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete post', 7, 'delete_post');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view post', 7, 'view_post');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add message', 8, 'add_message');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change message', 8, 'change_message');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete message', 8, 'delete_message');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view message', 8, 'view_message');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add subject', 9, 'add_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change subject', 9, 'change_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete subject', 9, 'delete_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view subject', 9, 'view_subject');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add course', 10, 'add_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change course', 10, 'change_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete course', 10, 'delete_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view course', 10, 'view_course');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add lesson', 11, 'add_lesson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change lesson', 11, 'change_lesson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete lesson', 11, 'delete_lesson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view lesson', 11, 'view_lesson');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add question', 12, 'add_question');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change question', 12, 'change_question');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete question', 12, 'delete_question');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view question', 12, 'view_question');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add choice', 13, 'add_choice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change choice', 13, 'change_choice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete choice', 13, 'delete_choice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view choice', 13, 'view_choice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add lunch', 14, 'add_lunch');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change lunch', 14, 'change_lunch');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete lunch', 14, 'delete_lunch');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view lunch', 14, 'view_lunch');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add log entry', 15, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change log entry', 15, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete log entry', 15, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view log entry', 15, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add permission', 16, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change permission', 16, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete permission', 16, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view permission', 16, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add group', 17, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change group', 17, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete group', 17, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view group', 17, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add content type', 18, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change content type', 18, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete content type', 18, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view content type', 18, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (73, 'Can add session', 19, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (74, 'Can change session', 19, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (75, 'Can delete session', 19, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (76, 'Can view session', 19, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (77, 'Can add vote', 20, 'add_vote');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (78, 'Can change vote', 20, 'change_vote');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (79, 'Can delete vote', 20, 'delete_vote');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (80, 'Can view vote', 20, 'view_vote');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cal_event; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: users_customuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (27, 'pbkdf2_sha256$260000$E18vcHIwDzG6unlmV3Dw3I$Xmuqzd9Dgup2R+9ySZ74zd3JbP7GA4bFW97DjKDEpTc=', NULL, false, 'tester31', 'First', 'Last', 'tester31@qlma.fi', false, false, '2021-04-24 17:51:16.507414+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (34, 'pbkdf2_sha256$260000$Ae7b3mhiXOmugjvJn3oQ8K$ca43IE2aMwfcYmYnwIiRnBxHViBq1jbCE9yGgC/W8Rs=', '2021-04-25 11:52:25.159403+00', false, 'tester98', 'tester', 'tester', 'jouni.ilari.leino@gmail.com', false, true, '2021-04-25 11:18:53.846827+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (30, 'pbkdf2_sha256$260000$9tPF0M1UMZFeNjY7AxfBiW$wJ5jDyD7H5EwP9GerCUJyDzRjwQYvv6485adzLzOwRA=', NULL, false, 'tester36', 'tester', 'tester', 'jouni.ilari.leino@gmail.com', false, false, '2021-04-25 11:10:38.097078+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (31, 'pbkdf2_sha256$260000$Prp7t1QZFzJUDhgOvmQItW$0dQOrnjEHYd0voXgh1TUin4HmbHK0b35Vbr6GMG97qk=', NULL, false, 'tester37', 'tester', 'tester', 'jouni.ilari.leino@gmail.com', false, false, '2021-04-25 11:11:58.346188+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (32, 'pbkdf2_sha256$260000$4dMtzL1awSF0Vde3QLIMbf$MwpLD4k8F8hcdD7Ot80rOHZhxnO0/1hfSA5j2XRRLMw=', NULL, false, 'tester38', 'tester', 'tester', 'jouni.ilari.leino@gmail.com', false, false, '2021-04-25 11:12:26.097068+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (33, 'pbkdf2_sha256$260000$mOMf6Qi667aO6vVmg5xAN4$7bRVg/aiWBYY9LKiy2eHWS8gNFiyXzRdds4ScB/mMVs=', NULL, false, 'tester99', 'tester', 'tester', 'jouni.ilari.leino@gmail.com', false, false, '2021-04-25 11:17:13.46576+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (28, 'pbkdf2_sha256$260000$EEJOc1YJt12q5RGf1pNook$o6toDXEW6htPyJF6FsJvUY+QyOfVDm8BRwocjVQLcXM=', '2021-04-25 02:31:55.396536+00', false, 'cook', 'firstname', 'lastname', 'tester@qlma.fi', true, true, '2021-04-24 17:58:01.997273+00', '4');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (29, 'pbkdf2_sha256$260000$NzSGICbk7RfLOHhEgsB7K4$LC70X57iKXf2dp6YHaHT3Y+90oHKsZ8iT23dcj6hk9U=', '2021-04-25 02:29:30.156247+00', false, 'inactive', 'tester35', 'tester35', 'tester35@qlma.fi', false, false, '2021-04-24 19:40:08.860213+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (1, 'pbkdf2_sha256$260000$RciggyycoQ57IISYF4XXxd$Jrqe2ltq/HzFE1EyFQvnOCbgmLczXVg4oj6pTlVm51I=', '2021-04-25 02:46:21.09237+00', true, 'admin', 'admin', 'admin', 'admin@qlma.fi', true, true, '2021-04-16 20:41:01.669028+00', '0');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (3, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'teacher2', 'Kyle', 'Watts', 'teacher2@qlma.fi', false, true, '2020-05-27 08:43:44+00', '2');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (4, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'student1', 'Cameron', 'Hunter', 'student1@qlma.fi', false, true, '2020-05-27 08:43:44+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (5, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'student2', 'Kieran', 'Mitchell', 'student2@qlma.fi', false, true, '2020-05-27 08:43:44+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (6, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'student3', 'Thomas', 'Cox', 'student3@qlma.fi', false, true, '2020-05-27 08:43:44+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (8, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'cook1', 'Parker', 'Bryant', 'cook1@qlma.fi', false, true, '2020-05-27 08:43:44+00', '4');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (9, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'cook2', 'Brooks', 'Bishop', 'cook2@qlma.fi', false, true, '2020-05-27 08:43:44+00', '4');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (10, 'pbkdf2_sha256$150000$wGWH2ypuMGs3$9fNYRvHrDAq2tylqr2s+krj+9sSA7wIl6+B+ywmc8ek=', '2020-05-28 13:04:39.064+00', false, 'student4', 'Frank', 'Anderson', 'student4@qlma.fi', false, true, '2020-05-27 08:43:44+00', '1');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (7, 'pbkdf2_sha256$260000$1x04cRSPD0PHNl8Q8Rmefm$00ZNy17MXe/L968Y27ZfCJvsDrlNngw6b+A8GUYxf98=', '2021-05-08 13:59:17.360904+00', false, 'parent1', 'Mauricio', 'Mooney', 'parent1@qlma.fi', false, true, '2020-05-27 08:43:44+00', '3');
INSERT INTO public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) VALUES (2, 'pbkdf2_sha256$260000$Pi7GxUOReic5pVeTUqmLIg$PruwvuO/AyoPkvTFQmq6yUOjmh3waq4VMa7G04HNAv8=', '2021-05-08 14:00:20.148418+00', true, 'teacher1', 'Gracie', 'Armstrong', 'teacher1@qlma.fi', false, true, '2020-05-26 21:35:29.32+00', '2');


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2021-04-24 12:42:24.527555+00', '26', 'test91', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2021-04-24 12:42:24.537983+00', '25', 'test92', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2021-04-24 12:42:24.540024+00', '24', 'test93', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2021-04-24 12:42:24.541844+00', '23', 'test94', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2021-04-24 12:42:24.543979+00', '22', 'test95', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2021-04-24 12:42:24.546089+00', '21', 'tester96', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2021-04-24 12:42:24.549564+00', '20', 'tester97', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2021-04-24 12:42:24.552658+00', '19', 'tester98', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2021-04-24 12:42:24.555638+00', '18', 'tester99', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2021-04-24 12:42:24.558168+00', '17', 'tester61', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2021-04-24 12:42:24.560596+00', '16', 'tester51', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2021-04-24 12:42:24.562824+00', '15', 'tester50', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2021-04-24 12:42:24.565085+00', '14', 'tester40', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2021-04-24 12:42:24.567291+00', '13', 'tester23', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2021-04-24 12:42:24.569666+00', '12', 'tester22', 3, '', 5, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2021-04-24 12:42:24.572057+00', '11', 'tester21', 3, '', 5, 1);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2021-04-16 20:40:57.464442+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2021-04-16 20:40:57.552164+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'auth', '0001_initial', '2021-04-16 20:40:57.854209+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2021-04-16 20:40:57.90811+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'auth', '0003_alter_user_email_max_length', '2021-04-16 20:40:58.021917+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'auth', '0004_alter_user_username_opts', '2021-04-16 20:40:58.101327+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0005_alter_user_last_login_null', '2021-04-16 20:40:58.272332+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0006_require_contenttypes_0002', '2021-04-16 20:40:58.301022+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2021-04-16 20:40:58.412569+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0008_alter_user_username_max_length', '2021-04-16 20:40:58.552737+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2021-04-16 20:40:58.672502+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0010_alter_group_name_max_length', '2021-04-16 20:40:58.743346+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0011_update_proxy_permissions', '2021-04-16 20:40:58.792075+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'users', '0001_initial', '2021-04-16 20:40:59.259385+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'admin', '0001_initial', '2021-04-16 20:40:59.514426+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2021-04-16 20:40:59.63735+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-16 20:40:59.729672+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2021-04-16 20:40:59.815964+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'cal', '0001_initial', '2021-04-16 20:40:59.881466+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'lunch', '0001_initial', '2021-04-16 20:41:00.058361+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'lunch', '0002_remove_lunch_staff_id', '2021-04-16 20:41:00.236371+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'lunch', '0003_lunch_title', '2021-04-16 20:41:00.299077+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'messaging', '0001_initial', '2021-04-16 20:41:00.572393+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'news', '0001_initial', '2021-04-16 20:41:00.851334+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'polls', '0001_initial', '2021-04-16 20:41:01.021139+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'project', '0001_initial', '2021-04-16 20:41:01.209958+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'sessions', '0001_initial', '2021-04-16 20:41:01.276672+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'timetable', '0001_initial', '2021-04-16 20:41:01.562095+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'users', '0002_testusers', '2021-04-16 20:41:03.062387+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'messaging', '0002_message_is_archived', '2021-04-19 16:37:57.286491+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'polls', '0002_alter_question_pub_date', '2021-04-19 16:37:57.294056+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'project', '0002_delete_group', '2021-04-19 16:37:57.30451+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'timetable', '0002_auto_20210419_1637', '2021-04-19 16:37:57.38921+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'users', '0003_auto_20210419_1637', '2021-04-19 16:37:57.450786+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'users', '0004_profile_email_confirmed', '2021-04-21 14:09:49.719015+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'users', '0005_auto_20210425_1631', '2021-04-25 16:32:04.660282+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'users', '0003_customuser', '2021-04-25 16:59:23.044435+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'polls', '0002_auto_20210502_2148', '2021-05-02 21:49:03.662946+00');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'polls', '0003_vote_question', '2021-05-08 12:37:03.02129+00');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('rghqryrscdsbgk6hq08lfs4966v6ss89', '.eJxVjMsOwiAQRf-FtSFAeTgu3fcbyDADUjU0Ke3K-O_apAvd3nPOfYmI21rj1vMSJxYXYcTpd0tIj9x2wHdst1nS3NZlSnJX5EG7HGfOz-vh_h1U7PVbF-dBJW0BCxiPKlg3oIVCpB0p9oGD08xk2CKSDbYUxuKGdAYwlI14fwDk9Dhp:1lXVIs:XfIDiv-9WAZDIrXrbaMEDVBCyZF66ONhi11f8OnW9Yg', '2021-04-30 20:43:02.319283+00');


--
-- Data for Name: lunch_lunch; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lunch_lunch (id, date, description, created_at, updated_at, title) VALUES (1, '2021-04-08', '<p>asdf</p>', '2021-04-25 17:16:11.943518+00', '2021-04-25 17:16:11.943545+00', 'asdf');


--
-- Data for Name: messaging_message; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (38, 2, 'Testing multimessage 4', '<p>Testing multimessage 4<br></p>', '2021-04-20 09:29:29.54669+00', true, true);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (36, 2, 'Testing multimessage 3', '<p>Testing multimessage 3<br></p>', '2021-04-19 16:13:27.845629+00', true, true);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (1, 1, 'Unauthorized absence', 'Dear madame. I am sorry to inform you that your child Matt has been skipping lessons again.', '2020-05-01 13:21:49.237+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (42, 2, 'Testing multimessage 6', '<p>Testing multimessage 6<br></p>', '2021-04-20 10:56:20.835865+00', true, true);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (44, 2, 'Testing multimessage', '<p>test</p>', '2021-04-21 12:31:33.48014+00', false, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (2, 1, 'Information for Class 4c parents', 'Classroom 4c is out of order during the next week. Teaching will take place in temporary classroom.', '2020-05-02 13:22:22.336+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (3, 1, 'Funding for a school trip', 'The parents council is looking for new ways to collect funding.', '2020-05-03 13:22:37.656+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (4, 1, 'Additional math tasks', 'Deadline for these tasks is next monday.', '2020-05-04 13:23:00.734+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (5, 1, 'Leaving the school grounds at breaks', 'Leaving the school grounds at breaks is allowed only with a teacher´s permission.', '2020-05-05 13:23:15.578+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (45, 2, 'Testing multimessage', '<p>test</p>', '2021-04-21 12:31:33.488736+00', true, true);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (6, 2, 'Informing parents', 'Be aware of the discovered trend in our school. Children are spitting bubblegum everywhere inside the school premises.', '2020-05-06 13:23:15.578+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (46, 2, 'Message to tester2', '<p>Message to tester2<br></p>', '2021-04-21 12:50:44.139968+00', false, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (7, 2, 'Acquisition of school books', 'School books are on discount.', '2020-05-07 13:23:15.578+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (8, 3, 'Detention', 'I am sorry to inform you that your child Matt has gotten detention this friday.', '2020-05-08 13:23:15.578+00', true, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (9, 3, 'Survey for parents', 'Please fill in the survey here by friday.', '2020-05-09 13:23:15.578+00', false, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (47, 2, 'Message to tester2', '<p>Message to tester2<br></p>', '2021-04-21 12:50:44.145736+00', true, true);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (10, 3, 'Scores of the biology test', 'All scores can be viewed in the learning portal.', '2020-05-10 13:23:15.578+00', false, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (40, 2, 'Testing multimessage 5', '<p>Testing multimessage 5<br></p>', '2021-04-20 09:40:15.442576+00', false, false);
INSERT INTO public.messaging_message (id, sender_id, title, content, date_posted, is_read, is_archived) VALUES (53, 2, 'asdf', '<p>saffdsa</p>', '2021-04-28 19:35:19.559023+00', true, false);


--
-- Data for Name: messaging_message_recipients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (1, 1, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (2, 2, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (3, 3, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (4, 4, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (5, 5, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (6, 5, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (7, 5, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (8, 6, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (9, 6, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (10, 6, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (11, 7, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (12, 7, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (13, 7, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (14, 8, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (15, 8, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (16, 8, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (17, 9, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (18, 9, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (19, 9, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (20, 10, 1);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (21, 10, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (22, 10, 3);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (47, 36, 7);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (49, 38, 7);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (51, 40, 7);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (53, 42, 7);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (55, 44, 7);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (56, 45, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (57, 46, 7);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (58, 47, 2);
INSERT INTO public.messaging_message_recipients (id, message_id, customuser_id) VALUES (64, 53, 29);


--
-- Data for Name: news_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (1, 'School year is about to start', 'School year is starting again', '2020-05-26 21:38:07+00', 1);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (2, 'Class room 4c is out of order this week', 'Walls are being repainted', '2020-05-26 21:38:16+00', 2);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (3, 'Campaign to stop bullying', 'Campaign website is up', '2020-05-26 21:38:27+00', 3);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (4, 'Introducing a new teacher', 'Jack Forrel has joined the team', '2020-05-26 21:38:38+00', 4);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (5, 'All gym classes cancelled', 'The gymnastics hall ceiling is leaking', '2020-05-26 21:38:45+00', 5);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (6, 'Mothers day special', 'Students will have one lesson to create a mothers day card', '2020-05-26 21:38:54+00', 6);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (7, 'Sports during next semester', '', '2020-05-26 21:39:26.182+00', 7);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (8, 'New sports equipments have arrived', 'New basketballs and hockey sticks were purchased from AllDaySports', '2020-05-26 21:39:31.929+00', 8);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (9, 'Teachers training day', 'School will be closed on this particular day', '2020-05-26 21:39:36.102+00', 9);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (10, 'School year closing ceremony', 'The closing ceremony will be held in the ballroom', '2020-05-26 21:39:40+00', 10);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (11, 'New music class equipment', 'New drums and piano arrived', '2020-05-26 21:39:44+00', 1);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (12, 'School cook retired', 'Our beloved Annie is retiring', '2020-05-26 21:40:00+00', 2);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (13, 'Hobbies operations', 'The sports club is organizing football again', '2020-05-26 21:40:04+00', 9);
INSERT INTO public.news_post (id, title, content, date_posted, author_id) VALUES (14, 'School opening hours are changing', 'The doors close in the evenings at 19:00', '2020-05-26 21:40:12+00', 8);


--
-- Data for Name: polls_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.polls_question (id, question_text, pub_date) VALUES (1, 'Vote for a member of the board of the parents'' association.', '2020-06-07 09:25:01+00');
INSERT INTO public.polls_question (id, question_text, pub_date) VALUES (2, 'Vote for a date for next parent''s association meeting.', '2020-06-07 09:25:01+00');


--
-- Data for Name: polls_choice; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.polls_choice (id, choice_text, question_id) VALUES (1, 'Denis Stark', 1);
INSERT INTO public.polls_choice (id, choice_text, question_id) VALUES (2, 'Phyllis Cramer', 1);
INSERT INTO public.polls_choice (id, choice_text, question_id) VALUES (3, 'Dan Flanders', 1);
INSERT INTO public.polls_choice (id, choice_text, question_id) VALUES (4, 'Monday', 2);
INSERT INTO public.polls_choice (id, choice_text, question_id) VALUES (5, 'Tuesday', 2);
INSERT INTO public.polls_choice (id, choice_text, question_id) VALUES (6, 'Wednesday', 2);


--
-- Data for Name: polls_vote; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.polls_vote (id, choice_id, voter_id, question_id) VALUES (1, 1, 2, 1);
INSERT INTO public.polls_vote (id, choice_id, voter_id, question_id) VALUES (2, 2, 3, 1);
INSERT INTO public.polls_vote (id, choice_id, voter_id, question_id) VALUES (3, 6, 2, 2);
INSERT INTO public.polls_vote (id, choice_id, voter_id, question_id) VALUES (4, 3, 7, 1);
INSERT INTO public.polls_vote (id, choice_id, voter_id, question_id) VALUES (5, 5, 7, 2);


--
-- Data for Name: project_event; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: project_school; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: timetable_subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timetable_subject (id, subject_name, created_at, updated_at) VALUES (1, 'Mathematics', '2020-06-26 09:50:25.388+00', '2020-06-26 09:50:25.388+00');
INSERT INTO public.timetable_subject (id, subject_name, created_at, updated_at) VALUES (2, 'Geography', '2020-06-26 09:50:28.032+00', '2020-06-26 09:50:28.032+00');
INSERT INTO public.timetable_subject (id, subject_name, created_at, updated_at) VALUES (3, 'Biology', '2020-06-26 09:50:30.152+00', '2020-06-26 09:50:30.152+00');
INSERT INTO public.timetable_subject (id, subject_name, created_at, updated_at) VALUES (4, 'Chemistry', '2020-06-26 09:50:33.143+00', '2020-06-26 09:50:33.143+00');
INSERT INTO public.timetable_subject (id, subject_name, created_at, updated_at) VALUES (5, 'Religion', '2020-06-26 09:50:35.683+00', '2020-06-26 09:50:35.683+00');
INSERT INTO public.timetable_subject (id, subject_name, created_at, updated_at) VALUES (6, 'English', '2020-06-26 09:50:38.449+00', '2020-06-26 09:50:38.449+00');


--
-- Data for Name: timetable_course; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (1, 'Math 2', '2020-06-26 09:56:24.278+00', '2020-06-26 09:56:24.278+00', 1, 10);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (2, 'Math 1', '2020-06-26 10:50:11.946+00', '2020-06-26 10:50:11.946+00', 1, 3);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (3, 'Geo 1', '2020-06-26 11:04:00.491+00', '2020-06-26 11:04:00.491+00', 2, 3);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (4, 'Geo 2', '2020-06-26 11:04:10.951+00', '2020-06-26 11:04:10.951+00', 2, 3);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (5, 'Bio 1', '2020-06-26 11:04:18.804+00', '2020-06-26 11:04:18.804+00', 3, 3);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (6, 'Bio 2', '2020-06-26 11:04:22.74+00', '2020-06-26 11:04:22.74+00', 3, 3);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (7, 'Chem 1', '2020-06-26 11:04:31.935+00', '2020-06-26 11:04:31.935+00', 4, 2);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (8, 'Chem 2', '2020-06-26 11:04:39.421+00', '2020-06-26 11:04:39.421+00', 4, 2);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (9, 'Eng 1', '2020-06-26 11:05:11.036+00', '2020-06-26 11:05:11.036+00', 6, 3);
INSERT INTO public.timetable_course (id, name, created_at, updated_at, subject_id_id, staff_id_id) VALUES (10, 'Swe 1', '2020-06-26 11:05:23.252+00', '2020-06-26 11:05:23.252+00', 6, 2);


--
-- Data for Name: timetable_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (1, 5, 3, 3, '08:15:00', '09:30:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (2, 3, 2, 2, '11:30:00', '12:30:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (3, 3, 1, 0, '08:00:00', '09:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (4, 3, 4, 0, '08:00:00', '09:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (5, 2, 4, 0, '09:00:00', '10:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (6, 1, 4, 0, '10:00:00', '11:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (7, 2, 4, 1, '10:00:00', '11:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (8, 3, 4, 2, '09:00:00', '10:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (9, 3, 4, 3, '15:00:00', '16:00:00');
INSERT INTO public.timetable_lesson (id, course_id_id, group_id_id, weekday, starts_at, ends_at) VALUES (10, 4, 4, 4, '10:00:00', '11:00:00');


--
-- Data for Name: users_customuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (4, 5, 2);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (5, 6, 2);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (6, 7, 3);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (8, 9, 3);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (18, 2, 4);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (19, 3, 2);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (20, 4, 2);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (21, 8, 3);
INSERT INTO public.users_customuser_groups (id, customuser_id, group_id) VALUES (22, 29, 1);


--
-- Data for Name: users_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: users_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (2, 'profile_pics/tester2_DpejGJZ.jpg', '', 2, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (3, 'profile_pics/tester3_6pEPRgr.jpg', '', 3, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (4, 'profile_pics/tester4_YukPLNG.jpg', '', 4, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (5, 'profile_pics/tester5_8XgpYGh.jpg', '', 5, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (1, 'default.jpg', 'addr', 1, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (6, 'profile_pics/tester6_YM1gbMf.jpg', '', 6, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (7, 'profile_pics/tester7_TEoZTpC.jpg', '', 7, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (8, 'profile_pics/tester8_vbIIPWN.jpg', '', 8, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (9, 'profile_pics/tester9_bVYOByU.jpg', '', 9, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (10, 'profile_pics/tester10_nM2kBiU.jpg', '', 10, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (30, 'default.jpg', '', 28, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (31, 'default.jpg', 'addr', 29, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (32, 'default.jpg', '', 30, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (33, 'default.jpg', '', 31, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (34, 'default.jpg', '', 32, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (35, 'default.jpg', '', 33, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (36, 'default.jpg', '', 34, false);
INSERT INTO public.users_profile (id, image, address, user_id, email_confirmed) VALUES (29, 'default.jpg', 'addr', 27, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);


--
-- Name: cal_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cal_event_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);


--
-- Name: lunch_lunch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lunch_lunch_id_seq', 1, true);


--
-- Name: messaging_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messaging_message_id_seq', 53, true);


--
-- Name: messaging_message_recipients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messaging_message_recipients_id_seq', 64, true);


--
-- Name: news_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.news_post_id_seq', 14, true);


--
-- Name: polls_choice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_choice_id_seq', 6, true);


--
-- Name: polls_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_question_id_seq', 2, true);


--
-- Name: polls_vote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.polls_vote_id_seq', 5, true);


--
-- Name: project_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_event_id_seq', 1, false);


--
-- Name: project_school_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_school_id_seq', 1, false);


--
-- Name: timetable_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_course_id_seq', 10, true);


--
-- Name: timetable_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_lesson_id_seq', 10, true);


--
-- Name: timetable_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_subject_id_seq', 6, true);


--
-- Name: users_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 23, true);


--
-- Name: users_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_id_seq', 34, true);


--
-- Name: users_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);


--
-- Name: users_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profile_id_seq', 36, true);


--
-- PostgreSQL database dump complete
--

