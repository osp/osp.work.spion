--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 81, true);


--
-- Name: auth_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_message_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 51, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_user_id_seq', 26, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 75, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 328, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_content_type_id_seq', 21, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 7, true);


--
-- Name: spion_app_externalauthor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_externalauthor_id_seq', 11, true);


--
-- Name: spion_app_newsitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_newsitem_id_seq', 10, true);


--
-- Name: spion_app_organisation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_organisation_id_seq', 9, true);


--
-- Name: spion_app_partner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_partner_id_seq', 21, true);


--
-- Name: spion_app_publication_external_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_publication_external_authors_id_seq', 25, true);


--
-- Name: spion_app_publication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_publication_id_seq', 31, true);


--
-- Name: spion_app_publication_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_publication_user_id_seq', 190, true);


--
-- Name: spion_app_publicationtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_publicationtype_id_seq', 5, true);


--
-- Name: spion_app_researchgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_researchgroup_id_seq', 8, true);


--
-- Name: spion_app_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_resource_id_seq', 1, true);


--
-- Name: spion_app_spionproject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_spionproject_id_seq', 4, true);


--
-- Name: spion_app_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_userprofile_id_seq', 23, true);


--
-- Name: spion_app_workpackage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_login
--

SELECT pg_catalog.setval('spion_app_workpackage_id_seq', 8, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO auth_group (id, name) VALUES (1, 'Researcher');


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO django_content_type (id, name, app_label, model) VALUES (1, 'permission', 'auth', 'permission');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (2, 'group', 'auth', 'group');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (3, 'user', 'auth', 'user');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (5, 'content type', 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (6, 'session', 'sessions', 'session');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (7, 'site', 'sites', 'site');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (8, 'log entry', 'admin', 'logentry');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (9, 'resource', 'spion_app', 'resource');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (10, 'publication', 'spion_app', 'publication');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (11, 'user profile', 'spion_app', 'userprofile');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (12, 'news item', 'spion_app', 'newsitem');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (13, 'organisation', 'spion_app', 'organisation');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (14, 'research group', 'spion_app', 'researchgroup');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (15, 'work package', 'spion_app', 'workpackage');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (16, 'partner', 'spion_app', 'partner');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (17, 'publication type', 'spion_app', 'publicationtype');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (18, 'publication-userprofile relationship', 'spion_app', 'publication_user');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (19, 'spion project', 'spion_app', 'spionproject');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (20, 'migration history', 'south', 'migrationhistory');
INSERT INTO django_content_type (id, name, app_label, model) VALUES (21, 'external author', 'spion_app', 'externalauthor');


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can add group', 2, 'add_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can change group', 2, 'change_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can delete group', 2, 'delete_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can add user', 3, 'add_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can change user', 3, 'change_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can delete user', 3, 'delete_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can add site', 7, 'add_site');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can change site', 7, 'change_site');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can delete site', 7, 'delete_site');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can add log entry', 8, 'add_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can change log entry', 8, 'change_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can delete log entry', 8, 'delete_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add resource', 9, 'add_resource');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change resource', 9, 'change_resource');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete resource', 9, 'delete_resource');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can add publication', 10, 'add_publication');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can change publication', 10, 'change_publication');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can delete publication', 10, 'delete_publication');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can add user profile', 11, 'add_userprofile');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can change user profile', 11, 'change_userprofile');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can delete user profile', 11, 'delete_userprofile');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can add news item', 12, 'add_newsitem');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can change news item', 12, 'change_newsitem');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can delete news item', 12, 'delete_newsitem');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add organisation', 13, 'add_organisation');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change organisation', 13, 'change_organisation');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete organisation', 13, 'delete_organisation');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can add research group', 14, 'add_researchgroup');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can change research group', 14, 'change_researchgroup');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can delete research group', 14, 'delete_researchgroup');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can add work package', 15, 'add_workpackage');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can change work package', 15, 'change_workpackage');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can delete work package', 15, 'delete_workpackage');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can add partner', 16, 'add_partner');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can change partner', 16, 'change_partner');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can delete partner', 16, 'delete_partner');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add publication type', 17, 'add_publicationtype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change publication type', 17, 'change_publicationtype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete publication type', 17, 'delete_publicationtype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can add spion project', 19, 'add_spionproject');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can change spion project', 19, 'change_spionproject');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can delete spion project', 19, 'delete_spionproject');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can add migration history', 20, 'add_migrationhistory');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can change migration history', 20, 'change_migrationhistory');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can delete migration history', 20, 'delete_migrationhistory');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can add external author', 21, 'add_externalauthor');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can change external author', 21, 'change_externalauthor');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can delete external author', 21, 'delete_externalauthor');


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (52, 1, 25);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (53, 1, 26);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (54, 1, 27);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (55, 1, 28);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (56, 1, 29);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (57, 1, 30);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (58, 1, 31);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (59, 1, 32);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (60, 1, 33);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (61, 1, 34);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (62, 1, 35);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (63, 1, 36);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (64, 1, 37);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (65, 1, 38);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (66, 1, 39);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (67, 1, 40);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (68, 1, 41);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (69, 1, 42);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (70, 1, 43);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (71, 1, 44);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (72, 1, 45);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (73, 1, 46);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (74, 1, 47);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (75, 1, 48);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (76, 1, 49);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (77, 1, 50);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (78, 1, 51);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (79, 1, 58);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (80, 1, 59);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (81, 1, 60);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (8, 'ralf.de.wolf', 'Ralf De', 'Wolf', '', 'pbkdf2_sha256$10000$ubnBUm5lFq7V$Xs3r6QZDkRxyJALtsJfZ3OIgS/hdRMPgKOot35IlZpI=', true, true, false, '2012-12-14 15:45:11+01', '2012-10-31 08:52:49+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (2, 'pierre', '', '', 'pierremarc07@gmail.com', 'pbkdf2_sha256$10000$wyGpt4aZ6rV0$Xemab0AUMObubqSp2hX+lojH/VO+vhZVNtFX1RcADq0=', true, true, true, '2013-03-05 17:48:04.814878+01', '2012-10-31 07:45:30.725328+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (5, 'ellen.vanderhoven', 'Ellen', 'Vanderhoven', '', 'pbkdf2_sha256$10000$y4F01ZT3PGHh$YSU5sqDJHEsjTaEbYm+Jlxbf3VqbzroFUgzGMchkBsI=', true, true, false, '2013-03-13 12:45:20.046282+01', '2012-10-31 08:51:41+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (19, 'seda.gurses', 'Seda', 'Gürses', '', 'pbkdf2_sha256$10000$Uf9jWjCMWKB6$EUYcp1ZNpEPhITrmBvj4fgQ1WZFmX9DPxJDTya8Fv4Q=', true, true, true, '2013-01-28 13:17:45.550961+01', '2012-10-31 08:56:17+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (1, 'osp', '', '', 'mail@osp.constantvzw.org', 'pbkdf2_sha256$10000$yyeCimiNG0Qq$AJlI3GeKx7S/Ml9z63fRSIWTz7wkNxNbU7qu/wXbQVg=', true, true, true, '2013-03-14 20:05:50.353735+01', '2012-10-30 16:45:50.931757+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (12, 'eva.lievens', 'Eva', 'Lievens', '', 'sha1$2b8d8$0a34a54f65637b79149c6943f05a1c9245289c24', true, true, false, '2012-10-31 08:53:48+01', '2012-10-31 08:53:48+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (7, 'jo.pierson', 'Jo', 'Pierson', '', 'pbkdf2_sha256$10000$NbmNP2ssss3c$iU6jpFdfAPwovip43kdo69MHaSpXRTdKQ2I65i2u1bw=', true, true, false, '2012-11-27 22:25:10.416845+01', '2012-10-31 08:52:12+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (6, 'bram.lievens', 'Bram', 'Lievens', '', 'pbkdf2_sha256$10000$Nrxl3A4mETqx$Du4h+GwQw69TpOH2005hAz4HvxCdrNIJnl6qpURJKGc=', true, true, false, '2013-02-04 11:11:42.329104+01', '2012-10-31 08:51:57+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (25, 'thomas.peetz', 'Thomas', 'Peetz', '', 'pbkdf2_sha256$10000$7kx46pAbbgKT$RQRRbRiRa/VeSMq7ZqNQM2E9yjI11KF+8J6eJ/TnO3g=', true, true, false, '2012-11-27 23:52:22.292054+01', '2012-11-17 13:09:52+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (21, 'bettina.berendt', 'Bettina', 'Berendt', '', 'pbkdf2_sha256$10000$YmSsku8jRWNW$jfWYpls37QzmIBIbWJj+2J/OUgfFoyeHE/lBXl4qHuk=', true, true, false, '2013-02-04 21:59:11.857988+01', '2012-10-31 08:56:44+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (15, 'frank.piessens', 'Frank', 'Piessens', '', 'sha1$edd27$7cad98bbf018b949bf489fb3fc04fe4878aed89b', true, true, false, '2012-10-31 08:55:10+01', '2012-10-31 08:55:10+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (10, 'fred.stutzman', 'Fred', 'Stutzman', '', 'sha1$828bf$30f926ef105b59fb60902a48f6e09f44a34ba951', true, true, false, '2012-10-31 08:53:23+01', '2012-10-31 08:53:23+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (17, 'ero.balsa', 'Ero', 'Balsa', '', 'pbkdf2_sha256$10000$mcehTnvwvZxe$xQ8AWFKuXRSbBNz56vYpP2hyUhyWPQCIYa3BlWLM5T8=', true, true, false, '2013-01-14 11:20:21.23501+01', '2012-10-31 08:55:48+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (26, 'test.author', 'Test', 'Author', 'mail@osp.constantvzw.org', 'pbkdf2_sha256$10000$wsIolIgYnWNM$yEhEIsCWQCRnR/UWW9bdx9NgD7a+XjS9LHR7BtimTPQ=', true, true, false, '2012-11-28 15:51:55.644649+01', '2012-11-28 12:59:01+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (14, 'dave.clarke', 'Dave', 'Clarke', '', 'pbkdf2_sha256$10000$uGoAG6crMs8Q$QcGoC3lTCS3OfVojPCpb3AAnxyAFd7jfhWuimYOWcZk=', true, true, false, '2013-02-05 07:24:20.64928+01', '2012-10-31 08:54:44+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (9, 'alessandro.acquisti', 'Alessandro', 'Acquisti', '', 'sha1$4d332$222741fa6d4db77be2798fa32ec4bc691aed53e6', true, true, false, '2012-10-31 08:53:09+01', '2012-10-31 08:53:09+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (20, 'bart.preneel', 'Bart', 'Preneel', '', 'sha1$a206a$77022a0bb35987134bebf21f74ce02844d4a7afd', true, true, false, '2012-10-31 08:56:31+01', '2012-10-31 08:56:31+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (11, 'jos.dumortier', 'Jos', 'Dumortier', '', 'sha1$901ce$bbf4d4bfb8d636924ddabb14f518764953d9e25a', true, true, false, '2012-10-31 08:53:40+01', '2012-10-31 08:53:40+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (4, 'martin.valcke', 'Martin', 'Valcke', '', 'sha1$65441$37112b774fb1031de8aebd20a420f1e101bbb37e', true, true, false, '2012-10-31 08:51:22+01', '2012-10-31 08:51:22+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (13, 'brendan.van.alsenoy', 'Brendan van', 'Alsenoy', '', 'pbkdf2_sha256$10000$HAaPTKuwSsCP$atoisqltSmt93oGql1KIX6/Zb6G/w9/kkoEdRI8ZNgk=', true, true, false, '2013-01-21 12:28:27.734622+01', '2012-10-31 08:54:27+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (16, 'rula.sayaf', 'Rula', 'Sayaf', '', 'pbkdf2_sha256$10000$as7JD9KCJsiZ$lWPUtFZJyayfJgOPKnMu24HnK5C+TLRBQ/RIgyn5CiM=', true, true, false, '2013-02-05 17:24:41.142858+01', '2012-10-31 08:55:24+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (3, 'tammy.schellens', 'Tammy', 'Schellens', '', 'sha1$4b2fb$addc427eaaf5336d04dca380d79329aed3d4fb5e', true, true, false, '2012-10-31 08:50:43+01', '2012-10-31 08:50:43+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (22, 'bo.gao', 'Bo', 'Gao', '', 'pbkdf2_sha256$10000$AXs8vcTeJ212$QF8kka6BTd96+tCbGi/aJZLSJBEz0HI42CDIAbMuyWI=', true, true, false, '2013-02-14 16:26:28.794172+01', '2012-10-31 08:56:57+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (23, 'jef.ausloos', 'Jef', 'Ausloos', '', 'pbkdf2_sha256$10000$SnRmKceBKReI$jFi5w5SpuxXWcLVBBTsYX0WdWbhycCyQlnty9cz/xNg=', true, true, false, '2012-11-17 12:53:09+01', '2012-11-17 12:53:09+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (18, 'claudia.diaz', 'Claudia', 'Diaz', '', 'pbkdf2_sha256$10000$Sv47Vghjqabw$XReFOQ57PyydLv3RiZ5v7y8qwsCenfECudUxAS+gBsQ=', true, true, false, '2013-02-15 14:58:22.64337+01', '2012-10-31 08:56:01+01');
INSERT INTO auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) VALUES (24, 'willem.de.groef', 'Willem', 'De Groef', '', 'pbkdf2_sha256$10000$wGAUxOW5J4e9$HyAGhHx2m1U2TFNsBQF0FEC8toQEtMoZPoYmKQg5LFg=', true, true, false, '2012-11-17 12:54:19+01', '2012-11-17 12:54:19+01');


--
-- Data for Name: auth_message; Type: TABLE DATA; Schema: public; Owner: django_login
--



--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (21, 9, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (22, 20, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (23, 21, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (24, 22, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (25, 6, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (27, 18, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (28, 14, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (29, 5, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (30, 17, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (31, 12, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (32, 15, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (33, 10, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (34, 7, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (35, 11, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (36, 4, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (38, 16, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (39, 19, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (40, 3, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (41, 23, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (46, 25, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (47, 26, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (48, 13, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (50, 24, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (51, 8, 1);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (52, 25, 25);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (53, 25, 26);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (54, 25, 27);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (55, 25, 28);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (56, 25, 29);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (57, 25, 30);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (58, 25, 31);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (59, 25, 32);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (60, 25, 33);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (61, 25, 34);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (62, 25, 35);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (63, 25, 36);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (64, 25, 43);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (65, 25, 44);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (66, 25, 45);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (67, 25, 46);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (68, 25, 47);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (69, 25, 48);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (70, 25, 49);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (71, 25, 50);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (72, 25, 51);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (73, 25, 52);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (74, 25, 53);
INSERT INTO auth_user_user_permissions (id, user_id, permission_id) VALUES (75, 25, 54);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (1, '2012-10-31 08:36:41.052365+01', 2, 13, '1', 'Department of Educational Sciences, University of Ghent', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (2, '2012-10-31 08:37:18.294133+01', 2, 13, '2', 'Vrije Universiteit Brussels', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (3, '2012-10-31 08:37:49.915279+01', 2, 13, '3', 'Carnegie Mellon University', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (4, '2012-10-31 08:38:15.334211+01', 2, 13, '4', 'Department of Law, K.U. Leuven', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (5, '2012-10-31 08:38:46.346894+01', 2, 13, '5', 'Department of Computer Science, K.U. Leuven', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (6, '2012-10-31 08:39:08.959175+01', 2, 13, '6', 'Department of Electrical Engineering, K. U. Leuven', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (7, '2012-10-31 08:39:32.471566+01', 2, 13, '7', 'Department of Computer Science, K. U. Leuven', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (8, '2012-10-31 08:41:04.473186+01', 2, 14, '1', 'OWK', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (9, '2012-10-31 08:41:34.185553+01', 2, 14, '2', 'IBBT - SMIT', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (10, '2012-10-31 08:42:06.963772+01', 2, 14, '3', 'Heinz College', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (11, '2012-10-31 08:42:32.723296+01', 2, 14, '4', 'ICRI', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (12, '2012-10-31 08:43:06.532964+01', 2, 14, '5', 'DistriNet', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (13, '2012-10-31 08:43:35.214327+01', 2, 14, '6', 'COSIC/ESAT', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (14, '2012-10-31 08:44:10.762053+01', 2, 14, '7', 'DTAI', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (15, '2012-10-31 08:46:17.117566+01', 2, 15, '1', 'Educational Aspects of Privacy in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (16, '2012-10-31 08:46:50.234022+01', 2, 15, '2', 'Social Aspects of Privacy in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (17, '2012-10-31 08:47:28.06784+01', 2, 15, '3', 'Behavioral Aspects of Privacy in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (18, '2012-10-31 08:47:58.547217+01', 2, 15, '4', 'Legal Aspects of Privacy in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (19, '2012-10-31 08:48:40.44816+01', 2, 15, '5', 'Trust and Access Control in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (20, '2012-10-31 08:49:18.442396+01', 2, 15, '6', 'Confidentiality in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (21, '2012-10-31 08:49:44.405861+01', 2, 15, '7', 'Feedback and Awareness in SNS', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (22, '2012-10-31 08:50:43.410644+01', 2, 3, '3', 'tammy.schellens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (23, '2012-10-31 08:51:22.918361+01', 2, 3, '4', 'martin.valcke', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (24, '2012-10-31 08:51:41.999867+01', 2, 3, '5', 'ellen.vanderhoven', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (25, '2012-10-31 08:51:57.818548+01', 2, 3, '6', 'bram.lievens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (26, '2012-10-31 08:52:12.648128+01', 2, 3, '7', 'jo.pierson', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (27, '2012-10-31 08:52:49.419498+01', 2, 3, '8', 'ralf.de.wolf', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (28, '2012-10-31 08:53:09.631599+01', 2, 3, '9', 'alessandro.acquisti', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (29, '2012-10-31 08:53:23.855203+01', 2, 3, '10', 'fred.stutzman', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (30, '2012-10-31 08:53:40.029071+01', 2, 3, '11', 'jos.dumortier', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (31, '2012-10-31 08:53:48.563827+01', 2, 3, '12', 'eva.lievens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (32, '2012-10-31 08:54:27.169247+01', 2, 3, '13', 'brendan.van.alsenoy', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (33, '2012-10-31 08:54:44.877663+01', 2, 3, '14', 'dave.clarke', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (34, '2012-10-31 08:55:10.261783+01', 2, 3, '15', 'frank.piessens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (35, '2012-10-31 08:55:24.450067+01', 2, 3, '16', 'rula.sayaf', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (36, '2012-10-31 08:55:48.024674+01', 2, 3, '17', 'ero.balsa', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (37, '2012-10-31 08:56:01.780573+01', 2, 3, '18', 'claudia.diaz', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (38, '2012-10-31 08:56:17.399651+01', 2, 3, '19', 'seda.gurses', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (39, '2012-10-31 08:56:31.582996+01', 2, 3, '20', 'bart.preneel', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (40, '2012-10-31 08:56:44.189844+01', 2, 3, '21', 'bettina.berendt', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (41, '2012-10-31 08:56:57.339156+01', 2, 3, '22', 'bo.gao', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (42, '2012-10-31 10:32:19.496133+01', 2, 11, '1', 'tammy.schellens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (43, '2012-10-31 10:32:53.598416+01', 2, 11, '2', 'martin.valcke', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (44, '2012-10-31 10:33:26.188332+01', 2, 11, '3', 'ellen.vanderhoven', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (45, '2012-10-31 10:33:54.780317+01', 2, 11, '4', 'bram.lievens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (46, '2012-10-31 10:34:16.870844+01', 2, 11, '5', 'jo.pierson', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (47, '2012-10-31 10:34:40.419932+01', 2, 11, '6', 'ralf.de.wolf', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (48, '2012-10-31 10:35:12.612047+01', 2, 11, '7', 'alessandro.acquisti', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (49, '2012-10-31 10:35:40.686291+01', 2, 11, '8', 'fred.stutzman', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (50, '2012-10-31 10:36:04.625081+01', 2, 11, '9', 'jos.dumortier', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (51, '2012-10-31 10:36:28.105857+01', 2, 11, '10', 'eva.lievens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (52, '2012-10-31 10:36:53.103802+01', 2, 11, '11', 'brendan.van.alsenoy', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (53, '2012-10-31 10:37:17.962536+01', 2, 11, '12', 'dave.clarke', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (54, '2012-10-31 10:37:39.72997+01', 2, 11, '13', 'frank.piessens', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (55, '2012-10-31 10:37:57.490328+01', 2, 11, '14', 'rula.sayaf', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (56, '2012-10-31 10:38:20.191744+01', 2, 11, '15', 'ero.balsa', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (57, '2012-10-31 10:38:49.570288+01', 2, 11, '16', 'claudia.diaz', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (58, '2012-10-31 10:39:11.431813+01', 2, 11, '17', 'seda.gurses', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (59, '2012-10-31 10:39:31.165504+01', 2, 11, '18', 'bart.preneel', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (60, '2012-10-31 10:39:53.684269+01', 2, 11, '19', 'bettina.berendt', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (61, '2012-10-31 10:40:12.52919+01', 2, 11, '20', 'bo.gao', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (62, '2012-10-31 11:58:41.536453+01', 2, 17, '1', 'talk', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (63, '2012-10-31 11:58:47.987251+01', 2, 17, '2', 'conference', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (64, '2012-10-31 11:58:59.245832+01', 2, 17, '3', 'deliverable', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (65, '2012-10-31 11:59:09.426991+01', 2, 17, '4', 'journal', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (66, '2012-10-31 12:05:49.871071+01', 2, 10, '1', 'Critical Design Guidelines to Develop Educational Solutions', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (67, '2012-10-31 12:12:12.229713+01', 2, 3, '9', 'alessandro.acquisti', 2, 'Changed first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (68, '2012-10-31 12:12:30.224618+01', 2, 3, '20', 'bart.preneel', 2, 'Changed first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (69, '2012-10-31 12:12:44.061644+01', 2, 3, '21', 'bettina.berendt', 2, 'Changed first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (70, '2012-10-31 12:14:46.313521+01', 2, 2, '1', 'Researcher', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (71, '2012-10-31 12:14:51.552457+01', 2, 3, '9', 'alessandro.acquisti', 2, 'Changed is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (72, '2012-10-31 12:15:01.505173+01', 2, 3, '20', 'bart.preneel', 2, 'Changed is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (73, '2012-10-31 12:15:08.802702+01', 2, 3, '21', 'bettina.berendt', 2, 'Changed is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (74, '2012-10-31 12:15:19.883715+01', 2, 3, '22', 'bo.gao', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (75, '2012-10-31 12:15:35.204336+01', 2, 3, '6', 'bram.lievens', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (76, '2012-10-31 12:15:54.450799+01', 2, 3, '13', 'brendan.van.alsenoy', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (77, '2012-10-31 12:16:08.870362+01', 2, 3, '18', 'claudia.diaz', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (78, '2012-10-31 12:16:27.735092+01', 2, 3, '14', 'dave.clarke', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (79, '2012-10-31 12:16:51.704044+01', 2, 3, '5', 'ellen.vanderhoven', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (80, '2012-10-31 12:17:06.731366+01', 2, 3, '17', 'ero.balsa', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (81, '2012-10-31 12:17:23.050454+01', 2, 3, '12', 'eva.lievens', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (82, '2012-10-31 12:17:40.176996+01', 2, 3, '15', 'frank.piessens', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (83, '2012-10-31 12:17:54.625183+01', 2, 3, '10', 'fred.stutzman', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (84, '2012-10-31 12:18:05.825281+01', 2, 3, '7', 'jo.pierson', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (85, '2012-10-31 12:18:20.132126+01', 2, 3, '11', 'jos.dumortier', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (86, '2012-10-31 12:18:35.252147+01', 2, 3, '4', 'martin.valcke', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (87, '2012-10-31 12:18:52.24626+01', 2, 3, '8', 'ralf.de.wolf', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (88, '2012-10-31 12:19:04.502361+01', 2, 3, '16', 'rula.sayaf', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (89, '2012-10-31 12:19:36.123742+01', 2, 3, '19', 'seda.gurses', 2, 'Changed first_name, last_name, is_staff, is_superuser and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (90, '2012-10-31 12:19:55.009116+01', 2, 3, '3', 'tammy.schellens', 2, 'Changed first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (91, '2012-10-31 12:28:34.034572+01', 2, 12, '1', 'For Your Eyes Only | 29-30 November', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (92, '2012-10-31 12:31:23.154096+01', 2, 10, '2', 'Deliverable 2.1: State of the Art', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (93, '2012-10-31 12:33:03.315938+01', 2, 10, '1', 'Deliverable 7.1: Critical Design Guidelines to Develop Educational Solutions', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (94, '2012-10-31 12:35:51.228192+01', 2, 11, '19', 'bettina.berendt', 2, 'Changed bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (95, '2012-11-01 10:57:28.600901+01', 19, 10, '2', 'Deliverable 2.1: State of the Art', 2, 'Changed user.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (96, '2012-11-01 11:06:53.5075+01', 19, 10, '3', 'testing a publication for seda', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (97, '2012-11-06 13:20:51.04553+01', 1, 3, '9', 'alessandro.acquisti', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (98, '2012-11-06 13:21:02.624211+01', 1, 3, '20', 'bart.preneel', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (99, '2012-11-06 13:21:11.812037+01', 1, 3, '21', 'bettina.berendt', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (100, '2012-11-06 13:21:22.065756+01', 1, 3, '22', 'bo.gao', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (101, '2012-11-06 13:21:50.438916+01', 1, 3, '6', 'bram.lievens', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (102, '2012-11-06 13:22:06.267199+01', 1, 3, '13', 'brendan.van.alsenoy', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (103, '2012-11-06 13:22:25.042612+01', 1, 3, '18', 'claudia.diaz', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (104, '2012-11-06 13:22:39.597287+01', 1, 3, '14', 'dave.clarke', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (105, '2012-11-06 13:22:52.643649+01', 1, 3, '5', 'ellen.vanderhoven', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (106, '2012-11-06 13:23:05.639+01', 1, 3, '17', 'ero.balsa', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (107, '2012-11-06 13:23:20.455828+01', 1, 3, '12', 'eva.lievens', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (108, '2012-11-06 13:24:58.658365+01', 1, 3, '15', 'frank.piessens', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (109, '2012-11-06 13:25:49.487366+01', 1, 3, '10', 'fred.stutzman', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (110, '2012-11-06 13:26:04.098606+01', 1, 3, '7', 'jo.pierson', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (111, '2012-11-06 13:26:18.770143+01', 1, 3, '11', 'jos.dumortier', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (112, '2012-11-06 13:26:33.41346+01', 1, 3, '4', 'martin.valcke', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (113, '2012-11-06 13:26:48.455822+01', 1, 3, '8', 'ralf.de.wolf', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (114, '2012-11-06 13:27:02.663152+01', 1, 3, '16', 'rula.sayaf', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (115, '2012-11-06 13:27:16.779838+01', 1, 3, '19', 'seda.gurses', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (116, '2012-11-06 13:27:32.236248+01', 1, 3, '3', 'tammy.schellens', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (117, '2012-11-09 19:12:49.65942+01', 1, 15, '7', 'Feedback and Awareness in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (118, '2012-11-09 19:15:23.156712+01', 1, 15, '6', 'Confidentiality in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (119, '2012-11-09 19:15:37.241248+01', 1, 15, '5', 'Trust and Access Control in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (120, '2012-11-09 19:15:50.121758+01', 1, 15, '4', 'Legal Aspects of Privacy in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (121, '2012-11-09 19:16:01.353776+01', 1, 15, '3', 'Behavioral Aspects of Privacy in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (122, '2012-11-09 19:16:12.005791+01', 1, 15, '2', 'Social Aspects of Privacy in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (123, '2012-11-09 19:16:23.83771+01', 1, 15, '1', 'Educational Aspects of Privacy in Online Social Networks', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (124, '2012-11-09 20:17:14.14244+01', 1, 10, '3', 'testing a publication for seda', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (125, '2012-11-16 13:07:35.856588+01', 1, 19, '1', 'SpionProject object', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (126, '2012-11-16 13:28:30.153026+01', 1, 19, '1', 'SpionProject object', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (127, '2012-11-16 13:28:59.914007+01', 1, 19, '1', 'SpionProject object', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (128, '2012-11-16 13:29:27.058929+01', 1, 19, '1', 'SpionProject object', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (129, '2012-11-16 14:42:50.262415+01', 1, 19, '1', 'SpionProject object', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (130, '2012-11-17 12:53:10.181657+01', 1, 3, '23', 'jef.ausloos', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (131, '2012-11-17 12:53:42.572177+01', 1, 3, '23', 'jef.ausloos', 2, 'Changed password, first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (132, '2012-11-17 12:54:19.548943+01', 1, 3, '24', 'willem.de.groef', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (133, '2012-11-17 12:54:42.623049+01', 1, 3, '24', 'willem.de.groef', 2, 'Changed password, first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (134, '2012-11-17 13:02:01.055471+01', 1, 11, '21', 'jef.ausloos', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (135, '2012-11-17 13:02:37.573428+01', 1, 11, '22', 'willem.de.groef', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (136, '2012-11-17 13:09:53.099428+01', 1, 3, '25', 'thomas.peetz', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (137, '2012-11-17 13:10:10.015677+01', 1, 3, '25', 'thomas.peetz', 2, 'Changed password, first_name, last_name, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (138, '2012-11-17 13:12:03.846005+01', 1, 11, '23', 'thomas.peetz', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (139, '2012-11-20 14:17:18.307201+01', 1, 19, '1', 'SpionProject object', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (140, '2012-11-23 10:59:17.324318+01', 17, 11, '15', 'ero.balsa', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (141, '2012-11-23 11:04:15.29246+01', 17, 10, '4', 'A Metric to Evaluate Interaction Obfuscation in Online Social Networks', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (142, '2012-11-23 11:06:25.350372+01', 17, 10, '4', 'A Metric to Evaluate Interaction Obfuscation in Online Social Networks', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (143, '2012-11-23 11:09:06.914776+01', 17, 10, '5', 'OB-PWS: Obfuscation-Based Private Web Search', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (144, '2012-11-23 11:09:20.613435+01', 17, 10, '4', 'A Metric to Evaluate Interaction Obfuscation in Online Social Networks', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (145, '2012-11-23 11:20:20.239614+01', 17, 11, '15', 'ero.balsa', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (146, '2012-11-23 11:20:51.530487+01', 17, 11, '15', 'ero.balsa', 2, 'Changed bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (147, '2012-11-23 13:56:14.340125+01', 18, 11, '16', 'claudia.diaz', 2, 'Changed bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (148, '2012-11-23 13:57:43.792056+01', 18, 11, '16', 'claudia.diaz', 2, 'Changed bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (149, '2012-11-23 15:20:31.378179+01', 5, 11, '3', 'ellen.vanderhoven', 2, 'Changed bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (150, '2012-11-23 15:21:58.018359+01', 5, 11, '3', 'ellen.vanderhoven', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (151, '2012-11-25 16:57:16.198647+01', 19, 11, '17', 'seda.gurses', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (152, '2012-11-25 16:57:24.137745+01', 19, 11, '17', 'seda.gurses', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (153, '2012-11-25 17:03:43.426718+01', 19, 17, '4', 'journal', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (154, '2012-11-25 17:03:44.272444+01', 19, 17, '4', 'journal', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (155, '2012-11-25 17:04:09.330249+01', 19, 17, '4', 'journal article', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (156, '2012-11-25 17:04:24.930845+01', 19, 17, '2', 'conference paper', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (157, '2012-11-25 17:06:52.275797+01', 19, 11, '17', 'seda.gurses', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (158, '2012-11-26 11:18:32.96549+01', 2, 19, '1', 'introduction', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (159, '2012-11-26 11:18:56.886295+01', 2, 19, '2', 'workpackages', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (160, '2012-11-26 11:19:15.689842+01', 2, 19, '3', 'partners', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (161, '2012-11-26 11:59:23.282541+01', 2, 16, '1', 'VDAB', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (162, '2012-11-26 12:10:17.496173+01', 1, 13, '7', 'Department of Computer Science, K. U. Leuven', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (163, '2012-11-26 12:39:55.068901+01', 19, 16, '1', 'VDAB', 2, 'Changed url and description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (164, '2012-11-26 12:40:08.463598+01', 1, 13, '6', 'Department of Electrical Engineering, K. U. Leuven', 2, 'Changed logo.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (165, '2012-11-26 12:40:48.062114+01', 19, 16, '2', 'Constant VZW', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (166, '2012-11-26 12:41:43.473272+01', 19, 16, '3', 'Childfocus', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (167, '2012-11-26 12:42:34.541661+01', 1, 13, '5', 'Department of Computer Science, K.U. Leuven', 2, 'Changed logo.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (168, '2012-11-26 12:42:39.051019+01', 19, 16, '4', 'European Schoolnet', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (169, '2012-11-26 12:43:43.446523+01', 19, 16, '5', 'BEUC', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (170, '2012-11-26 12:44:39.373477+01', 19, 16, '6', 'iMinds', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (171, '2012-11-26 12:44:58.753+01', 1, 13, '4', 'Department of Law, K.U. Leuven', 2, 'Changed logo.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (172, '2012-11-26 12:47:09.229572+01', 1, 13, '3', 'Carnegie Mellon University', 2, 'Changed logo.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (173, '2012-11-26 12:47:57.672692+01', 1, 13, '2', 'Vrije Universiteit Brussels', 2, 'Changed logo.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (174, '2012-11-26 12:51:31.61834+01', 17, 11, '15', 'ero.balsa', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (175, '2012-11-26 12:53:14.573354+01', 2, 19, '4', 'long_description', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (176, '2012-11-26 12:58:30.626745+01', 1, 13, '1', 'Department of Educational Sciences, University of Ghent', 2, 'Changed logo.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (177, '2012-11-26 17:36:46.032751+01', 1, 19, '2', 'workpackages', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (178, '2012-11-26 17:39:57.914071+01', 1, 19, '3', 'partners', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (179, '2012-11-26 17:41:10.739475+01', 1, 19, '2', 'workpackages', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (180, '2012-11-26 17:41:32.190654+01', 1, 19, '3', 'partners', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (181, '2012-11-27 11:26:03.689789+01', 21, 10, '6', 'x', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (182, '2012-11-27 11:26:44.772828+01', 21, 10, '7', 'x', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (183, '2012-11-27 11:28:21.886068+01', 21, 10, '7', 'x', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (184, '2012-11-27 11:28:21.89251+01', 21, 10, '6', 'x', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (185, '2012-11-27 11:49:06.45197+01', 5, 10, '8', 'How safe do youngsters really behave on Facebook: An observation-study.', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (186, '2012-11-27 11:52:07.668246+01', 5, 10, '9', 'How safe do youngsters really behave on Facebook: An observation-study.', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (187, '2012-11-27 18:46:44.351119+01', 21, 12, '2', 'Hey Everyone', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (188, '2012-11-27 18:50:18.294436+01', 21, 14, '8', 'test', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (189, '2012-11-27 18:50:45.193835+01', 21, 14, '8', 'test', 2, 'Changed long_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (190, '2012-11-27 18:51:30.641021+01', 21, 9, '1', 'testeste', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (191, '2012-11-27 18:53:10.7582+01', 21, 12, '2', 'Hey Everyone', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (192, '2012-11-27 18:53:50.491129+01', 21, 11, '20', 'bo.gao', 2, 'Changed bio. Added publication-userprofile relationship "Publication_user object".');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (193, '2012-11-27 18:54:13.55086+01', 21, 13, '8', 'Department of Cats and Dogs', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (194, '2012-11-27 18:54:17.879928+01', 21, 15, '8', 'test', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (195, '2012-11-27 18:56:58.409567+01', 21, 13, '8', 'Department of Cats and Dogs', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (196, '2012-11-27 18:57:43.135993+01', 21, 16, '7', 'Catdog', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (197, '2012-11-27 18:58:02.836765+01', 21, 16, '7', 'Catdog', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (198, '2012-11-27 18:59:16.620198+01', 21, 10, '10', 'The adventures of the amazing Spider-Man', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (199, '2012-11-27 18:59:50.832484+01', 21, 10, '10', 'The adventures of the amazing Spider-Man', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (200, '2012-11-27 19:03:51.281944+01', 21, 9, '1', 'testeste', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (201, '2012-11-27 19:04:04.786196+01', 21, 15, '8', 'test', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (202, '2012-11-27 21:28:28.149056+01', 21, 11, '14', 'rula.sayaf', 2, 'Changed bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (203, '2012-11-27 21:28:50.666387+01', 21, 11, '14', 'rula.sayaf', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (204, '2012-11-27 21:55:49.921392+01', 19, 3, '25', 'thomas.peetz', 2, 'Changed password and user_permissions.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (205, '2012-11-27 21:56:30.743628+01', 19, 3, '25', 'thomas.peetz', 2, 'Changed password and user_permissions.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (206, '2012-11-27 22:18:50.86987+01', 19, 3, '25', 'thomas.peetz', 2, 'Changed password.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (207, '2012-11-27 22:27:57.354645+01', 7, 14, '2', 'iMinds - SMIT', 2, 'Changed short_name and description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (208, '2012-11-27 23:52:56.173774+01', 25, 12, '3', 'hurr', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (209, '2012-11-27 23:53:15.36834+01', 25, 12, '3', 'hurr', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (210, '2012-11-28 00:19:55.304501+01', 25, 11, '23', 'thomas.peetz', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (211, '2012-11-28 00:20:54.443324+01', 25, 11, '23', 'thomas.peetz', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (212, '2012-11-28 12:59:01.889753+01', 1, 3, '26', 'test.author', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (213, '2012-11-28 12:59:24.301012+01', 1, 3, '26', 'test.author', 2, 'Changed password, first_name, last_name, email, is_staff and groups.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (214, '2012-11-28 13:00:30.509171+01', 1, 2, '1', 'Researcher', 2, 'Changed permissions.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (215, '2012-11-28 13:03:30.311734+01', 26, 10, '8', 'How safe do youngsters really behave on Facebook: An observation-study.', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (216, '2012-11-28 15:52:24.390493+01', 26, 13, '9', 'Test Organisation', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (217, '2012-11-28 15:53:02.809177+01', 26, 13, '9', 'Test Organisation', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (218, '2012-11-28 15:57:46.820267+01', 1, 3, '13', 'brendan.van.alsenoy', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (219, '2012-11-28 15:58:17.868185+01', 1, 3, '8', 'ralf.de.wolf', 2, 'Changed password, first_name and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (220, '2012-11-28 18:33:31.127949+01', 1, 2, '1', 'Researcher', 2, 'Changed permissions.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (221, '2012-12-14 15:49:27.368795+01', 8, 21, '1', 'Rob Heyman', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (222, '2012-12-14 15:52:59.183959+01', 8, 10, '11', 'Privacy by design through a social requirement analysis of social network sites from a user perspective', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (223, '2012-12-14 15:54:10.376235+01', 8, 10, '11', 'Privacy by design through a social requirement analysis of social network sites from a user perspective', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (224, '2012-12-14 15:54:20.550571+01', 8, 10, '11', 'Privacy by design through a social requirement analysis of social network sites from a user perspective', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (225, '2012-12-14 15:55:05.312005+01', 8, 17, '5', 'Book Chapter', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (226, '2012-12-14 15:55:22.276724+01', 8, 10, '11', 'Privacy by design through a social requirement analysis of social network sites from a user perspective', 2, 'Changed published and pub_type.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (227, '2012-12-14 15:56:20.509681+01', 8, 21, '2', 'Rob Heyman', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (228, '2012-12-14 15:56:36.19678+01', 8, 10, '11', 'Privacy by design through a social requirement analysis of social network sites from a user perspective', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (229, '2012-12-14 16:00:22.735765+01', 8, 11, '6', 'ralf.de.wolf', 2, 'Changed picture and bio.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (230, '2012-12-19 19:34:09.864919+01', 1, 3, '24', 'willem.de.groef', 2, 'Changed password and last_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (231, '2012-12-19 19:34:56.799408+01', 1, 3, '8', 'ralf.de.wolf', 2, 'Changed password and first_name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (232, '2013-01-02 14:00:34.602662+01', 19, 12, '4', 'From For Your Eyes Only', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (233, '2013-01-02 14:03:35.155075+01', 19, 12, '4', 'Reporting from For Your Eyes Only', 2, 'Changed header.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (234, '2013-01-02 14:09:08.078772+01', 19, 12, '1', 'For Your Eyes Only | 29-30 November', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (235, '2013-01-02 14:32:23.759694+01', 19, 21, '3', 'Soeren Preibusch', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (236, '2013-01-02 14:43:08.395341+01', 19, 10, '12', 'Deliverable 5.1: Report on Research Activities (on Identity Management)', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (237, '2013-01-02 14:49:58.254332+01', 19, 21, '4', 'Els Kindt', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (238, '2013-01-02 14:52:33.085479+01', 19, 10, '13', 'Deliverable 6.4 Guidelines for privacy-friendly Default Settings', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (239, '2013-01-02 17:04:20.925977+01', 19, 12, '4', 'Reporting from For Your Eyes Only', 2, 'Changed body.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (240, '2013-01-02 17:08:16.990765+01', 19, 12, '4', 'Reporting from For Your Eyes Only', 2, 'Changed body.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (241, '2013-01-02 17:59:25.248384+01', 19, 16, '8', 'Privacy Commissie', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (242, '2013-01-02 18:04:44.972123+01', 19, 16, '9', 'Vlaams Ministerie van Onderwijs en Vorming', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (243, '2013-01-02 18:18:36.050565+01', 19, 16, '10', 'Social-Agogisch Werk, Hogeschool Gent', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (244, '2013-01-02 18:22:09.649363+01', 19, 16, '11', 'AWEL - Luistert naar Kinderen en Jongeren', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (245, '2013-01-02 18:23:28.460256+01', 19, 16, '12', 'Netlog', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (246, '2013-01-02 18:24:26.686937+01', 19, 16, '13', 'OWASP - Belgie', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (247, '2013-01-02 18:30:50.998483+01', 19, 16, '14', 'Steunpunt Jeugd', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (248, '2013-01-02 18:33:18.524806+01', 19, 16, '15', 'Pedagogische Begeleidingsdienst', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (249, '2013-01-02 18:35:02.755511+01', 19, 16, '16', 'Gezinsbond', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (250, '2013-01-02 18:36:17.316972+01', 19, 16, '17', 'Sirris', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (251, '2013-01-02 18:38:17.899708+01', 19, 16, '18', 'KSJ-KSA0VKSJ Nationaal', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (252, '2013-01-02 18:39:23.673806+01', 19, 16, '19', 'Chirojeugd Vlaanderen', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (253, '2013-01-02 18:40:43.739836+01', 19, 16, '18', 'KSJ-KSA-VKSJ Nationaal', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (254, '2013-01-02 18:42:03.159948+01', 19, 16, '20', 'Kinderrechtencommissariat', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (255, '2013-01-02 18:43:51.027298+01', 19, 16, '21', 'LSEC - Leaders in Security', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (256, '2013-01-02 18:49:54.353127+01', 19, 16, '2', 'Constant VZW', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (257, '2013-01-02 19:03:17.235569+01', 19, 21, '5', 'Dominique Devriese', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (258, '2013-01-02 19:05:08.765246+01', 19, 21, '6', 'Leandro Doctors', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (259, '2013-01-02 19:05:43.702037+01', 19, 21, '7', 'Nick Nikiforakis', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (260, '2013-01-02 19:07:22.328399+01', 19, 21, '8', 'Tom Renaert', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (261, '2013-01-02 19:08:27.294385+01', 19, 10, '14', 'Deliverable 3.1 Report on Research Activities (on Trust, Reputation and Access Control)', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (262, '2013-01-02 19:11:30.386182+01', 19, 10, '14', 'Deliverable 3.1 Report on Research Activities (on Trust, Reputation and Access Control)', 2, 'Changed summary.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (263, '2013-01-02 19:28:21.467312+01', 19, 21, '8', 'Tom Reynaert', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (264, '2013-01-06 14:41:26.233913+01', 1, 16, '15', 'Pedagogische Begeleidingsdienst', 2, 'Changed description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (265, '2013-01-06 14:42:17.714621+01', 1, 16, '15', 'Pedagogische Begeleidings&shy;dienst', 2, 'Changed title and description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (266, '2013-01-06 16:26:10.762235+01', 1, 16, '20', 'Kinderrechten&shy;commissariaat', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (267, '2013-01-06 16:27:14.10302+01', 1, 16, '20', 'Kinderrechten-commissariaat', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (268, '2013-01-06 16:27:30.265247+01', 1, 16, '15', 'Pedagogische Begeleidings-dienst', 2, 'Changed title.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (269, '2013-01-07 16:53:04.014429+01', 19, 16, '10', 'Social-Agogisch Werk, Hogeschool Gent', 2, 'Changed url and description.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (270, '2013-01-07 17:03:30.759239+01', 19, 12, '5', 'Video-log of the For Your Eyes Only Conference', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (271, '2013-01-07 17:04:08.384344+01', 19, 12, '5', 'For Your Eyes Only Video-log: Minors and Social Media', 2, 'Changed header.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (272, '2013-01-07 17:06:17.625339+01', 19, 12, '5', 'For Your Eyes Only Video-log: Minors and Social Media', 2, 'Changed body.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (273, '2013-01-07 17:22:20.13066+01', 19, 12, '6', 'For Your Eyes Only Video-log: Living Apart Together?', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (274, '2013-01-07 17:31:12.641345+01', 19, 12, '7', 'For Your Eyes Only Video-log: Consensual exploitation on Social Media', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (275, '2013-01-07 17:31:54.128478+01', 19, 12, '7', 'For Your Eyes Only Video-log: Alternatives to Consensual exploitation on Social Media', 2, 'Changed header.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (276, '2013-01-14 11:00:46.678651+01', 17, 12, '7', 'For Your Eyes Only Video-log: Alternatives to Consensual exploitation on Social Media', 2, 'Changed publish_end.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (277, '2013-01-14 11:00:58.612025+01', 17, 12, '4', 'Reporting from For Your Eyes Only', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (278, '2013-01-14 11:01:02.7591+01', 17, 12, '6', 'For Your Eyes Only Video-log: Living Apart Together?', 2, 'Changed publish_end.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (279, '2013-01-14 11:01:06.67581+01', 17, 12, '7', 'For Your Eyes Only Video-log: Alternatives to Consensual exploitation on Social Media', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (280, '2013-01-14 11:11:08.543471+01', 17, 12, '8', 'For Your Eyes Only Video-log: Security in Social Networks', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (281, '2013-01-14 11:12:15.627093+01', 17, 12, '5', 'For Your Eyes Only Video-log: Minors and Social Media', 2, 'Changed publish_end.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (282, '2013-01-14 11:13:10.65851+01', 17, 12, '7', 'For Your Eyes Only Video-log: Alternatives to Consensual exploitation on Social Media', 2, 'Changed publish_end.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (283, '2013-01-14 11:13:15.959309+01', 17, 12, '7', 'For Your Eyes Only Video-log: Alternatives to Consensual exploitation on Social Media', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (284, '2013-01-14 11:13:29.21942+01', 17, 12, '6', 'For Your Eyes Only Video-log: Living Apart Together?', 2, 'Changed publish_end.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (285, '2013-01-14 11:14:04.948141+01', 17, 12, '8', 'For Your Eyes Only Video-log: Security in Social Networks', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (286, '2013-01-14 11:22:56.344464+01', 17, 12, '9', 'For Your Eyes Only Video-log: The Social Shaping of Privacy Enhancing Technology', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (287, '2013-01-14 11:24:01.82172+01', 17, 12, '4', 'Reporting from For Your Eyes Only', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (288, '2013-01-14 11:34:42.110904+01', 17, 12, '10', 'For Your Eyes Only Video-log: Behavioral Economics and Privacy Nudging', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (289, '2013-01-14 11:35:24.333248+01', 17, 12, '10', 'For Your Eyes Only Video-log: Behavioral Economics and Privacy Nudging', 2, 'Changed body.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (290, '2013-01-14 11:37:52.761745+01', 17, 12, '8', 'For Your Eyes Only Video-log: Security in Social Networks', 2, 'Changed body.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (291, '2013-01-21 16:09:12.452484+01', 13, 10, '15', 'D6.1 Legal requirements for privacy-friendly model privacy policies', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (292, '2013-01-21 16:10:12.351114+01', 13, 10, '15', 'D6.1 Legal requirements for privacy-friendly model privacy policies', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (293, '2013-01-28 14:45:17.539618+01', 13, 10, '16', 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (294, '2013-01-28 14:46:34.153518+01', 13, 21, '9', 'Eleni Kosta', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (295, '2013-01-28 14:46:44.578842+01', 13, 10, '17', 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (296, '2013-01-28 14:48:12.233856+01', 13, 10, '17', 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (297, '2013-01-28 14:48:28.490304+01', 13, 10, '16', 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 3, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (298, '2013-01-28 14:49:32.725101+01', 13, 10, '17', 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (299, '2013-01-30 11:23:31.053066+01', 2, 17, '1', 'Talk', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (300, '2013-01-30 11:23:52.208721+01', 2, 17, '4', 'Journal Article', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (301, '2013-01-30 11:24:08.575321+01', 2, 17, '2', 'Conference Paper', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (302, '2013-01-30 11:24:21.908776+01', 2, 17, '3', 'Deliverable', 2, 'Changed name.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (303, '2013-01-31 10:18:05.75127+01', 13, 10, '17', 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 2, 'Changed summary.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (304, '2013-02-04 02:19:16.272442+01', 16, 10, '18', 'Deliverable 4.1 Report on Research Activities (on Confidentiality)', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (305, '2013-02-04 02:20:18.34372+01', 16, 10, '12', 'Deliverable 5.1: Report on Research Activities (on Identity Management)', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (306, '2013-02-04 02:30:18.389715+01', 16, 10, '19', 'Deliverable 7.3 Evaluation Framework of Privacy Enhancing Technologies', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (307, '2013-02-04 02:37:36.148195+01', 16, 10, '20', 'Deliverable 9.1 First iteration of software prototypes and report describing these prototypes', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (308, '2013-02-04 02:44:48.021171+01', 16, 10, '21', 'Deliverable 9.2.3 First Version of an Evaluation Framework', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (309, '2013-02-04 02:51:12.085482+01', 16, 11, '14', 'rula.sayaf', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (310, '2013-02-04 21:59:47.038051+01', 21, 11, '19', 'bettina.berendt', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (311, '2013-02-05 07:31:24.465811+01', 14, 11, '12', 'dave.clarke', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (312, '2013-02-05 17:34:51.054197+01', 16, 10, '22', 'SPION Deliverable 9.2.2 First Version of Privacy Manual for Educational Users at the Microlevel', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (313, '2013-02-05 17:49:04.245259+01', 16, 10, '23', 'Deliverable 2.2 Requirements and Conceptual Framework', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (314, '2013-02-14 16:35:17.650936+01', 22, 10, '24', 'Visual data mining for higher-level patterns: Discrimination-aware data mining and beyond', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (315, '2013-02-14 16:36:54.880042+01', 22, 10, '24', 'Visual data mining for higher-level patterns: Discrimination-aware data mining and beyond', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (316, '2013-02-14 16:48:59.16291+01', 22, 21, '10', 'Joaquin Vanschoren', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (317, '2013-02-14 16:50:53.394569+01', 22, 10, '25', 'Datenanalyse und visualisierung', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (318, '2013-02-14 16:54:38.890796+01', 22, 10, '26', 'Visualizations of machine learning behavior with dimensionality reduction techniques', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (319, '2013-02-14 16:54:53.807436+01', 22, 10, '24', 'Visual data mining for higher-level patterns: Discrimination-aware data mining and beyond', 2, 'Changed published.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (320, '2013-02-14 16:58:51.385813+01', 22, 10, '27', 'More than modelling and hiding: Towards a comprehensive view of Web mining and privacy', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (321, '2013-02-14 17:04:04.978898+01', 22, 10, '28', 'Data mining for information literacy', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (322, '2013-02-14 17:07:27.69574+01', 22, 10, '29', 'Interactive grouping of friends in OSN: Towards online context management', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (323, '2013-02-14 17:11:12.659628+01', 22, 21, '11', 'Sören Preibusch', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (324, '2013-02-14 17:11:42.31727+01', 22, 10, '30', 'Exploring discrimination: A user-centric evaluation of discrimination-aware data mining', 1, '');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (325, '2013-02-15 14:59:19.620878+01', 18, 11, '16', 'claudia.diaz', 2, 'Changed picture.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (326, '2013-02-19 20:02:47.350186+01', 22, 10, '30', 'Exploring discrimination: A user-centric evaluation of discrimination-aware data mining', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (327, '2013-02-20 13:44:45.366219+01', 22, 10, '12', 'Deliverable 5.1: Report on Research Activities (on Identity Management)', 2, 'No fields changed.');
INSERT INTO django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) VALUES (328, '2013-03-08 16:42:31.056651+01', 5, 10, '31', ' Exploring the usefulness of school education about risks on social network sites : a survey study journalArticle', 1, '');


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('377dcfde19cb5ccef1c42750c58d1112', 'OTY2ZmU5NjU2MTVkMmNjNTY2YzljOTY4YzI2NDM0OTM2OTIzNTgzMjqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
', '2012-11-13 17:09:11.759295+01');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('7bdd805d5dfbb166743d39404b8c4775', 'MGZkZDM5NTAzODI0OWU5MDM0OGUxMDg2OTc3NTlhZWZhMmM1NGFmZjqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLFXUu
', '2012-11-14 16:47:07.672936+01');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('a9520f974808da6e0e5ae489fe1bcace', 'OGE5ZGNlYzZhOTI3YmE5YTg4YWQwMDNlNDdmMTc2YWQ2NDc2MGQ5NTqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLE3Uu
', '2012-11-15 10:45:18.789811+01');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('f4ef605e2a4fbd2c43dde0bb471eed64', 'OTY2ZmU5NjU2MTVkMmNjNTY2YzljOTY4YzI2NDM0OTM2OTIzNTgzMjqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
', '2012-11-30 13:06:29.12311+01');


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO django_site (id, domain, name) VALUES (1, 'example.com', 'example.com');


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (1, 'spion_app', '0001_initial', '2012-11-26 10:17:07.786806+01');
INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (2, 'spion_app', '0002_auto__add_field_partner_description__add_field_spionproject_title', '2012-11-26 10:17:29.784182+01');
INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (3, 'spion_app', '0003_auto__add_field_organisation_logo', '2012-11-26 11:26:40.639259+01');
INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (4, 'spion_app', '0004_auto__add_externalauthor', '2012-11-28 17:31:57.413683+01');
INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (5, 'spion_app', '0005_auto__add_field_userprofile_slug__add_field_newsitem_slug__add_field_p', '2012-11-30 15:34:24.907797+01');
INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (6, 'spion_app', '0006_auto__add_field_workpackage_slug', '2012-11-30 15:34:25.405828+01');
INSERT INTO south_migrationhistory (id, app_name, migration, applied) VALUES (7, 'spion_app', '0007_auto__add_field_publicationtype_sort_order', '2013-01-07 06:32:14.867574+01');


--
-- Data for Name: spion_app_externalauthor; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_externalauthor (id, name, url) VALUES (1, 'Rob Heyman', '');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (2, 'Rob Heyman', '');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (3, 'Soeren Preibusch', 'http://preibusch.de/');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (4, 'Els Kindt', 'http://www.law.kuleuven.be/icri/people.php?id=39');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (5, 'Dominique Devriese', 'http://distrinet.cs.kuleuven.be/people/showMember.do?memberID=u0043379');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (6, 'Leandro Doctors', 'http://be.linkedin.com/in/leandrodoctors');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (7, 'Nick Nikiforakis', 'http://distrinet.cs.kuleuven.be/people/showMember.do?memberID=u0063569');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (8, 'Tom Reynaert', 'http://be.linkedin.com/pub/tom-reynaert/39/408/630');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (9, 'Eleni Kosta', '');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (10, 'Joaquin Vanschoren', 'https://sites.google.com/site/jvanschoren/');
INSERT INTO spion_app_externalauthor (id, name, url) VALUES (11, 'Sören Preibusch', 'http://preibusch.de/');


--
-- Data for Name: spion_app_newsitem; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (4, '2013-01-01', '2013-03-01', 'Reporting from For Your Eyes Only', 'In November 2012 we organized "For Your Eyes Only", an International Conference on Privacy, Empowerment and Technology in the Context of Online Social Networks. We now have a short video from the conference which you can see below. The slides of some of the speakers are also available <a href="http://emsoc.be/4333-presentaties-for-your-eyes-only-conferentie/">here</a>

<iframe src="http://player.vimeo.com/video/55082727" width="370" height="208" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/55082727">For Your Eyes Only - International Conference</a> from <a href="http://vimeo.com/javitv">JAVI tv</a> on <a href="http://vimeo.com">Vimeo</a>.</p>

', 'reporting-from-for-your-eyes-only');
INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (6, '2013-01-07', '2013-01-13', 'For Your Eyes Only Video-log: Living Apart Together?', 'In this session <a href="http://www.jamesbrule.net/">James B. Rule</a>, <a href="http://www.rug.nl/staff/n.n.purtova/cv">Nadezhda Purtova</a>, <a href="http://preibusch.de/">S&ouml;ren Preibusch</a>, <a href="Orla Lynskey">Orla Lynskey</a>, <a href="http://emsoc.be/ems_team/serge-gutwirth/?ac=1">Serge Gutwirth</a> and <a href="http://emsoc.be/ems_team/mathias-vermeulen/?ac=1">Mathias Vermeulen</a> discuss how vesting a property right in personal data may empower users of social media, and how such a right would relate to the conventional protection that is offered by traditional human rights law mechanisms. Are both rights uneasy bedfollows, or can they happily live (apart) together? Additionally, this session would explore which differences in opinion there exist on this topic across the Atlantic. Is the European data protection system for instance more or less receptive towards a property approach than the US legal system?”


<iframe src="http://player.vimeo.com/video/56758588" width="350" height="197" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/56758588">For Your Eyes Only - Living Apart Together (Day 1, Panel 2)</a> from <a href="http://vimeo.com/user15611529">spion</a> on <a href="http://vimeo.com">Vimeo</a>.</p>', 'for-your-eyes-only-video-log-living-apart-together');
INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (5, '2013-01-07', '2013-01-13', 'For Your Eyes Only Video-log: Minors and Social Media', 'In the panel on "Minors and Social Media" the panelists <a href="http://www.tiara.org/">Alice Marwick</a>, <a href="http://law.leiden.edu/organisation/metajuridica/elaw/staff/simone-van-der-hof.html">Simone Van Der Hof</a>, <a href="http://www.onderwijskunde.ugent.be/en/cv_schellens.htm#phd">Tammy Schellens</a>, <a href="http://www.tilburguniversity.edu/webwijs/show/?uid=e.kosta">Eleni Kosta</a> and <a href="http://www.law.kuleuven.be/icri/people.php?id=75">Eva Lievens</a> explored the roles of the different actors (e.g., government, SNS providers, parents, children themselves) in the empowerment and protection of young people in the context of online social networks. Based on insights into the behavior and privacy concerns of young SNS users, the panelists provide a critical analysis of the current and future legal frameworks, as well as the self-regulatory and bottom-up initiatives that aim to protect and/or empower children and teenagers.

<iframe src="http://player.vimeo.com/video/56758589" width="350" height="197" frameborder="0" webkitAllowFullScreen 281mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/56758589">For Your Eyes Only - Minors and Social Media (Day 1, Panel 1)</a> from <a href="http://vimeo.com/user15611529">spion</a> on <a href="http://vimeo.com">Vimeo</a>.</p>', 'for-your-eyes-only-video-log-minors-and-social-media');
INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (7, '2013-01-07', '2013-01-13', 'For Your Eyes Only Video-log: Alternatives to Consensual exploitation on Social Media', 'In this session, <a href="http://www.bangor.ac.uk/creative_industries/andrew_mcstay.php.en">Andy McStay</a>, <a href="http://unsearcher.org/about">Vincent Toubiana</a>, <a href="http://homes.esat.kuleuven.be/~cdiaz/">Claudia Diaz</a>, <a href="http://emsoc.be/ems_team/ike-picone/?ac=1">Ike Picone</a>, and <a href="http://emsoc.be/ems_team/voornaam-naam-3/?ac=1">Rob Heyman</a> explore which strategies can be developed to address problems associated with the commodification of User Generated Content and personal information. Panelists critically assess the ways in which the invitation to participate in this media is entangled with the shaping and exploitation of the participants’ interactions by service providers as well as advertisement companies. Finally, they debate whether and how the current business logic embedded in the social web can be adjusted in favor of the user.

<iframe src="http://player.vimeo.com/video/56809834" width="350" height="197" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/56809834">For Your Eyes Only - Are There Alternatives to the Consensual Exploitation on Social Media? (Day 1, Panel 3)</a> from <a href="http://vimeo.com/user15611529">spion</a> on <a href="http://vimeo.com">Vimeo</a>.</p>', 'for-your-eyes-only-video-log-alternatives-to-consensual-exploitation-on-social-media');
INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (9, '2013-01-14', '2013-04-14', 'For Your Eyes Only Video-log: The Social Shaping of Privacy Enhancing Technology', 'In this session, <a href="http://www.hiit.fi/node/783">Airi lampinen</a>, <a href="http://www.k4t3.org/">Kate Raynes-Goldie</a>, <a href="http://people.cs.kuleuven.be/~bettina.berendt/">Bettina Berendt</a>, <a href="http://www.spion.me/profile/rula-sayaf">Rula Sayaf</a>, <a href="http://smit.vub.ac.be/person/78/Ralf_De_Wolf">Ralf De Wolf</a>, <a href="http://smit.vub.ac.be/person/75/Shenja%20_van%20der%20Graaf">Shenja van der Graaf</a> and <a href="http://www.mict.be/people/laurence-claeys">Laurence Claeys</a> open up the privacy design question itself and approach privacy as a component of social practices. Within this perspective, the panelists observe design itself as a social practice, reflect on assumptions and also look at mechanisms that may mitigate the responsibilisation of users with respect to privacy risks.

<iframe src="http://player.vimeo.com/video/57267924" width="350" height="197" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/57267924">For Your Eyes Only - The Social Shaping of Privacy Enhancing Technology (Day 2, Panel 5)</a> from <a href="http://vimeo.com/user15611529">spion</a> on <a href="http://vimeo.com">Vimeo</a>.</p>', 'for-your-eyes-only-video-log-the-social-shaping-of-privacy-enhancing-technology');
INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (10, '2013-01-14', '2013-04-14', 'For Your Eyes Only Video-log: Behavioral Economics and Privacy Nudging', 'In this session, <a href="www.heinz.cmu.edu/~acquisti/">
Alessandro Acquisti</a>, <a href="lorrie.cranor.org/">Lorrie Faith Cranor</a>, <a href="http://informatics.iupui.edu/people/sandra-petronio/">Sandra Petronio</a>, <a href="http://www.joinson.com/home/Welcome.html/">Adam Joinson</a>, and <a href="http://www.tilburguniversity.edu/webwijs/show/?uid=e.kosta/">Eleni Kosta</a> present and discuss, based on experiments that study the drivers and consequences of persuasive behavior, how different interventions (from nudges to education to persuasive computing) can assist and ameliorate privacy decision making.

<iframe src="http://player.vimeo.com/video/57267925" width="350" height="197" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/57267925">For Your Eyes Only - Behavioral Economics and Privacy Nudging (Day 2, Panel 6)</a> from <a href="http://vimeo.com/user15611529">spion</a> on <a href="http://vimeo.com">Vimeo</a>.</p>', 'for-your-eyes-only-video-log-behavioral-economics-and-privacy-nudging');
INSERT INTO spion_app_newsitem (id, publish_start, publish_end, header, body, slug) VALUES (8, '2013-01-14', '2013-04-14', 'For Your Eyes Only Video-log: Security in Social Networks', 'In this session, <a href="https://twitter.com/ashk4n">Ashkan Soltani</a>, <a href="www.cs.kuleuven.be/~frank/">Frank Piessens</a>, <a href="www.cs.kuleuven.be/~dave/">Dave Clarke</a>, <a href="http://homes.esat.kuleuven.be/~cdiaz/">Claudia Diaz</a>, and <a href="http://homes.esat.kuleuven.be/~sguerses/">Seda Gürses</a> present and discuss proposals for mitigating select privacy problems in OSNs through technology itself. They look at ways of concealing data from service providers, as well as third party trackers, and discuss mechanisms to improve the tedious task of managing disclosures through privacy settings. The panelists propose ways in which they will assess the limitations of these technologies and discuss ways in which technical measures need to be complemented with legal and organizational measures.

<iframe src="http://player.vimeo.com/video/57267923" width="350" height="197" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/57267923">For Your Eyes Only - Security in Social Networks (Day 2, Panel 4)</a> from <a href="http://vimeo.com/user15611529">spion</a> on <a href="http://vimeo.com">Vimeo</a>.</p>', 'for-your-eyes-only-video-log-security-in-social-networks');


--
-- Data for Name: spion_app_organisation; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_organisation (id, name, location, logo) VALUES (6, 'Department of Electrical Engineering, K. U. Leuven', 'Belgium', 'logos/26/logo_esat.gif');
INSERT INTO spion_app_organisation (id, name, location, logo) VALUES (5, 'Department of Computer Science, K.U. Leuven', 'Belgium', 'logos/26/cskulogo.png');
INSERT INTO spion_app_organisation (id, name, location, logo) VALUES (4, 'Department of Law, K.U. Leuven', 'Belgium', 'logos/26/leuvenlawlogo.png');
INSERT INTO spion_app_organisation (id, name, location, logo) VALUES (3, 'Carnegie Mellon University', 'U.S.A.', 'logos/26/Burgundy_CMU_JPG_Logo.jpg');
INSERT INTO spion_app_organisation (id, name, location, logo) VALUES (2, 'Vrije Universiteit Brussels', 'Belgium', 'logos/26/VUB_logo_compact.gif');
INSERT INTO spion_app_organisation (id, name, location, logo) VALUES (1, 'Department of Educational Sciences, University of Ghent', 'Belgium', 'logos/26/125578_ugent-logo.jpg');


--
-- Data for Name: spion_app_partner; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_partner (id, title, url, description) VALUES (1, 'VDAB', 'http://www.vdab.be/', 'VDAB is de Vlaamse Dienst voor Arbeidsbemiddeling en Beroepsopleiding.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (3, 'Childfocus', 'http://www.childfocus.be/', 'De Stichting voor Vermiste en Seksueel Uitgebuite Kinderen werkt onder de naam Child Focus. Child Focus is een stichting van openbaar nut.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (4, 'European Schoolnet', 'http://www.eun.org/', 'European Schoolnet (EUN) is a network of 30 Ministries of Education in Europe and beyond. EUN was created 15 years ago to bring innovation in teaching and learning to its key stakeholders: Ministries of Education, schools, teachers and researchers.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (5, 'BEUC', 'http://www.beuc.org/', 'BEUC, The European Consumer Organisation has a membership of 40 well respected, independent national consumer organisations from 30 European countries (EU, EEA and applicant countries). BEUC acts as the umbrella group in Brussels for these organisations and our main task is to represent our members and defend the interests of all Europe’s consumers.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (6, 'iMinds', 'http://www.iminds.be/', 'iMinds is an independent research institute founded by the Flemish government to stimulate ICT innovation. The iMinds team offers companies and organizations active support in research and development. It brings together companies, authorities, and non-profit organizations to join forces on research projects. Both technical and non-technical issues are addressed within each of these projects.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (8, 'Privacy Commissie', 'http://www.privacycommission.be/nl', 'De Privacycommissie zorgt ervoor dat persoonsgegevens zorgvuldig worden gebruikt en beveiligd,
en dat uw privacy ook in de toekomst gewaarborgd blijft.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (9, 'Vlaams Ministerie van Onderwijs en Vorming', 'http://www.ond.vlaanderen.be/', 'De Vlaamse minister van Onderwijs en Vorming staat in voor de aansturing, de voortgangsbewaking en de evaluatie van het Vlaamse onderwijsbeleid. Het departement Onderwijs en Vorming ondersteunt de minister met een breed gamma beleidsondersteunende taken.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (11, 'AWEL - Luistert naar Kinderen en Jongeren', 'http://www.awel.be/', 'Awel biedt voor vele kinderen en jongeren een uitlaatklep tijdens moeilijke momenten want ‘Niets is te gek voor een goed gesprek'' én Awel biedt hen een stem in de samenleving.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (12, 'Netlog', 'http://nl.netlog.com/', 'Netlog is een online community waar iedereen zijn sociale netwerk kan onderhouden of uitbreiden. Netlog wordt ontwikkeld door Massive Media NV, gevestigd in Gent, België. Meer dan 97 miljoen leden verspreid over 40 talen surfen regelmatig op Netlog, en er komen er nog elke dag bij.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (13, 'OWASP - Belgie', 'https://www.owasp.org/index.php/Belgium', 'OWASP Foundation (Overview Slides) is a professional association of global members and is and open to anyone interested in learning more about software security.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (14, 'Steunpunt Jeugd', 'http://www.steunpuntjeugd.be/', 'Sinds 2002 zet Steunpunt Jeugd zich in voor kinderen, jongeren en hun organisaties. Waar de Vlaamse jeugdraad optreedt als de belangenbehartigerer van kinderen en jongeren, ondersteunt Steunpunt Jeugd alle actoren die met kinderen, jongeren en hun organisaties bezig zijn. Steunpunt Jeugd bouwt kennis en expertise op en ontwikkelt de nodige netwerken om de positie van kinderen en jongeren en van het jeugdwerk in de samenleving te verduidelijken en versterken.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (16, 'Gezinsbond', 'http://www.gezinsbond.be/', 'We verdedigen de belangen van de gezinnen, los van religieuze, ideologische of politieke opvattingen en los van de samenstelling van het gezin (grote en jonge gezinnen, grootouders, gezinnen met veel of weinig kinderen, éénoudergezinnen, gehuwden of samenwonenden, nieuw samengestelde gezinnen, enz.).');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (17, 'Sirris', 'http://www.sirris.be/', 'Sirris is het collectief centrum van de Belgische technologische industrie. We helpen bedrijven bij het invoeren van technologische innovaties. Op die manier kunnen zij hun concurrentiepositie op een duurzame manier versterken.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (19, 'Chirojeugd Vlaanderen', 'http://www.chiro.be/', 'De Chiro is de grootste jeugdbeweging van Vlaanderen en België. Ze bestaat uit een kleine duizend groepen en een regionale en Vlaamse structuur die die groepen ondersteunt.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (18, 'KSJ-KSA-VKSJ Nationaal', 'http://www.ksj.be/', 'KSJ-KSA-VKSJ? Dat is samen spelen, kamperen, trekken… Kortom, de zuurstof die jongeren en kinderen nodig hebben om echt te leven.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (21, 'LSEC - Leaders in Security', 'http://www.lsec.be/', 'LSEC is an internationally renowned Information security cluster, a not for profit organization that has the objective to promote Information Security and the expertise in Flanders and Belgium. It is supported by the Flemish institute for sciences and development (IWT) and has a broad membership base of over 60I Information Security specialized companies, and more than 500 individual Information Security Professionals , frequently accessing over 4000 Information Security specialists in Belgium.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (2, 'Constant VZW', 'http://constantvzw.org/', 'Constant is a non-profit association, an interdisciplinary arts-lab based and active in Brussels since 1997. Constant works in-between media and art and is interested in the culture and ethics of the World Wide Web. The artistic practice of Constant is inspired by the way that technological infrastructures, data-exchange and software determine our daily life. Free software, copyright alternatives and (cyber)feminism are important threads running through the activities of Constant.
');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (15, 'Pedagogische Begeleidings-dienst', 'http://www.pbdgent.be/', 'De Pedagogische Begeleidingsdienst stelt zich als kernopdracht de pedagogische kwaliteit van alle kinderopvanginitiatieven en scholen te optimaliseren, prioritair de instellingen van het departement. Hierbij willen we kinderen en jongeren gelijkwaardige kansen bieden, ongeacht hun sociaal-culturele achtergrond, om zich optimaal te ontplooien en te komen tot actieve deelname aan de samenleving, nu en in de toekomst. Bijzondere aandacht gaat naar het bestrijden van vooroordelen en discriminatie, het verhogen van welbevinden en betrokkenheid, en het opzetten van krachtige en zorgbrede leerprocessen en -omgevingen. ');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (10, 'Social-Agogisch Werk, Hogeschool Gent', 'http://fmw.hogent.be/studeren/opleiding-uitbreiding/sociaal-werk/', 'Op intellectueel vlak is sociaal werk een veeleisend beroep én een veeleisende opleiding. We staan immers op het kruispunt van mens en samenleving. Disciplines zoals sociologie, psychologie, discipline sociale agogiek, economie, recht, filosofie, ethiek, en psychopathologie ondersteunen je in de groei naar een professional die inzichten uit die menswetenschappen weet om te zetten in concreet handelen.');
INSERT INTO spion_app_partner (id, title, url, description) VALUES (20, 'Kinderrechten-commissariaat', 'http://www.kinderrechtencommissariaat.be/', 'De Vlaamse pleitbezorger van kinderrechten, opgericht door het Vlaams Parlement. Die rol maken we waar door signalen van kinderen, jongeren en professionals te detecteren en om te zetten in concreet beleidsadvies. De Klachtenlijn van het Kinderrechtencommissariaat onderzoekt klachten van schendingen en waakt over het toepassen en naleven van kinderrechten.');


--
-- Data for Name: spion_app_publicationtype; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_publicationtype (id, name, sort_order) VALUES (1, 'Talk', 4);
INSERT INTO spion_app_publicationtype (id, name, sort_order) VALUES (4, 'Journal Article', 3);
INSERT INTO spion_app_publicationtype (id, name, sort_order) VALUES (2, 'Conference Paper', 2);
INSERT INTO spion_app_publicationtype (id, name, sort_order) VALUES (3, 'Deliverable', 1);
INSERT INTO spion_app_publicationtype (id, name, sort_order) VALUES (5, 'Book Chapter', 5);


--
-- Data for Name: spion_app_publication; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (1, 'Deliverable 7.1: Critical Design Guidelines to Develop Educational Solutions', 'When developing educational solutions to raise the awareness of privacy- and security issues on social network sites (SNS), one cannot rashly start. It is important to take into account some guidelines. For this reason, educational scientists use Instructional Design models (ID-models). Instructional design is the complete process of analyzing the goal of instruction, how to attain this goal, how to test and revise the chosen approach and how to evaluate the learner (Gustafson, 1996). ID-models therefore “provide conceptual and communication tools that can be used to visualize, direct, and manage processes for generating episodes of guided learning” (Gustafson & Branch, 1997). Numerous ID-models have been developed, all with different accents and focuses. The most typical category of ID-models, are the ADDIE-models (Branch, 2009), dividing the development process in five different steps: Analyze, Design, Develop, Implement & Evaluate. More recently, system models were developed. These are even more comprehensive, taking the system, context,.. into account and having more attention for implementation.', 2011, 3, 'COSIC internal report', 'http://www.cosic.esat.kuleuven.be/publications/article-2159.pdf', 'deliverable-71-critical-design-guidelines-to-develop-educational-solutions');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (2, 'Deliverable 2.1: State of the Art', 'The objective of this deliverable is to (1) provide an overview of existing literature and case descriptions of social and community uses of online Social Network Services (SNS); (2) summary of available educational solutions and empirical evidence of the efficiency and efficacy and the satisfaction they generate; analysis of legal frameworks applicable to SNS; (3) a review of confidentiality, access control and information flow, as well as feedback and awareness solutions. The Deliverable also includes an analysis of how the gaps and challenges in the different disciplines represented in the project are interrelated, mapping out research gaps and potentials for future interdisciplinary research on privacy and security in online Social Network Services.', 2011, 3, 'SPION', 'https://www.cosic.esat.kuleuven.be/publications/article-2077.pdf', 'deliverable-21-state-of-the-art');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (5, 'OB-PWS: Obfuscation-Based Private Web Search', 'Obfuscation-based private web search (OB-PWS) solutions allow users to search for information in the Internet while concealing their interests. The basic privacy mechanism in OB-PWS is the automatic generation of dummy queries that are sent to the search engine along with users’ real requests. These dummy queries prevent the accurate inference of search profiles and provide query deniability. In this paper we propose an abstract model and an associated analysis framework to systematically evaluate the privacy protection offered by OBPWS systems. We analyse six existing OB-PWS solutions using our framework and uncover vulnerabilities in their designs. Based on these results, we elicit a set of features that must be taken into account when analysing the security of OBPWS designs to avoid falling into the same pitfalls as previous proposals.', 2012, 2, 'IEEE Symposium on Security and Privacy', 'https://www.cosic.esat.kuleuven.be/publications/article-2083.pdf', 'ob-pws-obfuscation-based-private-web-search');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (9, 'How safe do youngsters really behave on Facebook: An observation-study.', 'We are witnessing the rapid growth of a new generation of participatory and collaborative network
technologies that provide individuals with a platform for sophisticated online social interaction. Social
networks today have hundreds of millions of users and are transforming our social and professional
interactions and to some extent are shaping society itself. This causes a growing concern about security and privacy issues in social networks, particularly with youngsters (Debatin et al., 2009; Jones & Soltren, 2005). To know the actual risks, we need to map out the state of the art with regard to youngsters and their behavior on social networks. A lot of survey-research has been done with regard to the amount and type of personal information children actually provide on their social network profile (eg. EU Kids Online survey). Yet, survey-research has its disadvantages: people may answer incorrectly because they think it’s more appropriate or because they just don’t know the right answer. Especially in the case of sharing information on a social network-profile, the latter may frequently be the case. Some kids think for example that nobody can see the information they put on their profile, while actually everybody is able to see it. Therefore , this kind of research should go further: we tried to verify and extend survey-results by observing a thousand Facebook-profiles of Flemish youngsters aged 13 to 18. We selected the profiles as randomly as possible, but controlled for age, education and sex. We observed ‘friends’-pages and ‘friends-of-friends’ pages, to know to what extent youngsters change their privacy-settings. Furthermore, the kind of information displayed on the profiles has been analyzed in terms of riskiness, for example, risky pictures, signs of bad behavior, drug abuse, alcohol abuse, aggressive behavior and so on. This riskiness was compared between groups of different age, education and sex. The found results are compared to the results of survey-research and interpreted in terms of risks. We conclude with some suggestions for education.', 2011, 1, '', 'http://www2.lse.ac.uk/media@lse/research/EUKidsOnline/Conference%202011/Panel%20PowrPoints/Vanderhoven.pdf', 'how-safe-do-youngsters-really-behave-on-facebook-an-observation-study');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (23, 'Deliverable 2.2 Requirements and Conceptual Framework', 'The objective of this deliverable is to:
• Analyse educational needs based on focus groups with educational stakeholders including parents, educators, and those catering to parents/youngsters/children in need.
• Establish (comparative) social requirements of off-line and on-line SN users and communities elicited through in-depth interviews and focus groups.
• Analyse legal frameworks that apply to SN services.
• Elaborate functional, privacy and security requirements through the analysis of SN services as well as the refinement of the social and educational requirements based on a multilateral requirements analysis method.
• Develop SN information models using various modeling languages that establish common models and vocabulary among the different workpackages.
• Complete preliminary threat and risk models based on the requirements and the information models.', 2011, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2158.pdf', 'deliverable-22-requirements-and-conceptual-framework');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (4, 'A Metric to Evaluate Interaction Obfuscation in Online Social Networks', 'Online social networks (OSNs) have become one of the main communication channels in today''s information society, and their emergence has raised new privacy concerns. The content uploaded to OSNs (such as pictures, status updates, comments) is by default available to the OSN provider, and often to other people to whom the user who uploaded the content did not intend to give access. A dierent class of concerns relates to sensitive information that can be inferred from the behavior of users. For example, the analysis of user interactions augments social network graphs with potentially privacy-sensitive details on the nature of social relations, such as the strength of user relationships. A solution to prevent such inferences is to automatically generate dummy interactions that obfuscate the real interactions between OSN users. Given an adversary that observes the obfuscated interactions, the goal is to prevent the adversary from recovering parameters of interest (e.g., relationships strength) that accurately describe the real user interactions. The design and evaluation of obfuscation strategies requires metrics that express the level of protection they would offer when deployed in a particular OSN with its underlying user interaction patterns. In this paper we propose mutual information as obfuscation metric. It measures the amount of information leaked by the (observable)
obfuscated interactions in the system on the (concealed) real interactions between users. We show that the metric is suitable for comparing different obfuscation strategies, and flexible to accommodate different network topologies and user communication patterns. Obfuscation comes at the cost of network overhead, and the proposed metric contributes to enabling the optimization of strategies to achieve good levels of privacy protection at minimum overhead. We provide a detailed methodology to compute the metric and
perform experiments that illustrate its suitability.', 2012, 4, 'International Journal of Uncertainty, Fuzziness and Knowledge-Based Systems', 'http://www.cosic.esat.kuleuven.be/publications/article-2244.pdf', 'a-metric-to-evaluate-interaction-obfuscation-in-online-social-networks');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (14, 'Deliverable 3.1 Report on Research Activities (on Trust, Reputation and Access Control)', 'The deliverable provides an overview of the research we performed over the last two years. These can be categorized in two subjects: first, we report on our research on Access control,accountability and audit in online social networks; second, we discuss our recent proposals to improve browser security through the application of information flow theory.', 20121221, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2300.pdf', 'deliverable-31-report-on-research-activities-on-trust-reputation-and-access-control');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (11, 'Privacy by design through a social requirement analysis of social network sites from a user perspective', 'The paper operationalizes the concept of privacy by design for social network sites (SNS), defined as evaluating and embedding privacy in the development and adjustment of SNS technology. More in particular we identify the necessary social requirements of SNS in order to optimize the privacy from a user perspective. For this, one of the application domains of privacy by design, the seven laws of identity proposed by Kim Cameron, is assessed and adjusted. This should help to mitigate the responsibilization of individuals who use or are affected by social networking services.', 2013, 5, 'Springer', 'http://www.springer.com/law/international/book/978-94-007-5184-2', 'privacy-by-design-through-a-social-requirement-analysis-of-social-network-sites-from-a-user-perspective');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (13, 'Deliverable 6.4 Guidelines for privacy-friendly Default Settings', 'This deliverable will try to elucidate the concept of ‘default privacy settings’ and the underestimated role it can have on the protection of individuals’ privacy and personal data protection on social networks.', 20121221, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2297.pdf', 'deliverable-64-guidelines-for-privacy-friendly-default-settings');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (19, 'Deliverable 7.3 Evaluation Framework of Privacy Enhancing Technologies', 'We start  with eliciting what we consider an anchor point in designing and evaluating privacy-­‐enhancing technologies: the social requirements. Next, we elaborate our domestic and ethnographic approach in studying and evaluating PETs and situate our evaluation framework. Finally, we present our evaluation framework and outline our future line of research in the field of contextual privacy.	
  	', 20120831, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2304.pdf', 'deliverable-73-evaluation-framework-of-privacy-enhancing-technologies');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (17, 'D6.1 - Legal requirements for privacy-friendly model privacy policies', 'The goal of this deliverable is to clarify, from a European perspective, the current discourse regarding the (in)utility of privacy policies.

It starts by identifying the role that privacy notices (can) play under the European data protection framework today. Next, a summary is provided of the main critiques regarding the use of privacy notices in practice. From this analysis a number of requirements and recommendations are developed regarding the future use of privacy notices. Finally, by way of conclusion, the main findings of are summarized, accompanied by an outline of areas of future research.
', 2012, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2237.pdf', 'd61-legal-requirements-for-privacy-friendly-model-privacy-policies');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (18, 'Deliverable 4.1 Report on Research Activities (on Confidentiality)', 'The Description of Work states that these research activities are to be mainly communicated through research papers. This Deliverable was planned in the Project Proposal as consisting of one journal paper and two conference-level papers. The actual version consists of three journal papers and one conference-level paper. The deliverable also provides an introduction and guide to each of these papers, explaining how they all fit as pieces of the same puzzle.', 20121217, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2301.pdf', 'deliverable-41-report-on-research-activities-on-confidentiality');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (20, 'Deliverable 9.1 First iteration of software prototypes and report describing these prototypes', 'This report describes the prototypes that were developed by the technical partners of SPION-project, in close collaboration with the user group. Each tool resolves specific privacy- and security problems that occur when using social network sites (SNS).', 20121221, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2296.pdf', 'deliverable-91-first-iteration-of-software-prototypes-and-report-describing-these-prototypes');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (21, 'Deliverable 9.2.3 First Version of an Evaluation Framework', 'In this deliverable we outline an evaluation framework for privacy technologies. It is our intention to clarify how users could be integrated in every step of the development process, hereby operationalizing the notion of privacy by design, an approach of embedding privacy from the beginning of the design process.', 20121217, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2299.pdf', 'deliverable-923-first-version-of-an-evaluation-framework');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (22, 'SPION Deliverable 9.2.2 First Version of Privacy Manual for Educational Users at the Microlevel', 'Privacy Manual', 2012, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2298.pdf', 'spion-deliverable-922-first-version-of-privacy-manual-for-educational-users-at-the-microlevel');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (25, 'Datenanalyse und visualisierung', 'Das Management von Forschungsdaten wird dann interessant, wenn die Datenhaltung nicht nur eine Dokumentationsfunktion erfüllt, sondern es erlaubt, Daten in neuen Weisen wieder- und weiterzunutzen. Repositorien für das Forschungsdatenmanagement (FDM) stellen daher idealerweise nicht nur Mechanismen für das Speichern und Finden von Daten zur Verfügung, sondern auch die Grundlagen oder auch die Tools für Analysen auf diesen Daten, die über die schon im ''Ursprungsprojekt'' der Daten geleisteten hinausgehen. Die Frage, was Analyse/Visualisierung für das Forschungsdatenmanagement ist, lässt sich in zweierlei Weise konkretisieren: einerseits, was alles Analyse/Visualisierung für das FDM sein kann und andererseits, was Analyse/Visualisierung speziell für das FDM ist. Daher muss weiter gefragt werden, (a) was Forschungsdaten sind, (b) welche Daten speziell in Forschungsdaten-Datenbanken auftauchen, (c) welche Anforderungen das FDM-Ziel ''Analyse'' an Daten und Visualisierungsformen stellt. Diese Fragen stellen die Schwerpunkte des Beitrags dar. (ICF2)', 2011, 5, 'Bock + Herchen', 'https://lirias.kuleuven.be/bitstream/123456789/330104/1/2.8_Datenanalyse_und_visualisierung.pdf', 'datenanalyse-und-visualisierung');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (26, 'Visualizations of machine learning behavior with dimensionality reduction techniques', 'There are many diﬀerent approaches to machine learning, and each approach has its
own characteristics and behavior. In order to investigate the aspects of these approaches, large amounts of machine learning experiments with high dimensionality(data
characteristics, algorithm characteristics, parameters settings, evaluation metrics, etc.) are generated and collected within databases, such as the Experiment Database. To enable the user to gain insight into this mass of meta-data about machine learning algorithms eﬃciently and eﬀectively, diﬀerent Dimensionality Reduction techniques are investigated. Based on this, a visualization tool is built to help users analyze the behavior of learning algorithms. The experiment results of these techniques on diﬀerent meta-datasets are discussed in this paper.', 2011, 2, 'Benelearn 2011. Proceedings of the Twentieth Belgian Dutch Conference on Machine Learning pages:35-42', 'https://lirias.kuleuven.be/bitstream/123456789/330094/1/gao_vanschoren_2011.pdf', 'visualizations-of-machine-learning-behavior-with-dimensionality-reduction-techniques');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (24, 'Visual data mining for higher-level patterns: Discrimination-aware data mining and beyond', 'An important question facing visualization methods is how to be both general and support open-ended exploratory analysis. In this paper, we propose a visualization approach that can on the one hand be applied to any (classiﬁcation or association) rules, but that is suited to bringing out features of mined patterns that are especially important in discrimination-aware and privacy-aware data mining. We deﬁne new interestingness measures for items and rules and show various ways in which these can help in highlighting information in interactive settings. We conclude by arguing how this approach can lead to a new generation of feedback and awareness tools.', 2011, 2, 'Benelearn 2011. Proceedings of the Twentieth Belgian Dutch Conference on Machine Learning pages:45-52', 'https://lirias.kuleuven.be/bitstream/123456789/330089/1/gao_berendt_2011.pdf', 'visual-data-mining-for-higher-level-patterns-discrimination-aware-data-mining-and-beyond');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (27, 'More than modelling and hiding: Towards a comprehensive view of Web mining and privacy', 'Over the last decade, privacy has been widely recognised as one of the
major problems of data collections in general and the Web in particular. This concerns
specifically data arising from Web usage (such as querying or transacting) and social
networking (characterised by rich self-proﬁling including relational information) and
the inferences drawn from them. The data mining community has been very conscious of these issues and has addressed in particular the inference problems through
various methods for “privacy-preserving data mining” and “privacy-preserving data
publishing”. However, it appears that these approaches by themselves cannot effectively solve the privacy problems posed by mining. We argue that this is due to the
underlying notions of privacy and of data mining, both of which are too narrow. Drawing on notions of privacy not only as hiding, but as control and negotiation, as well as
on data mining not only as modelling, but as the whole cycle of knowledge discovery, we offer an alternative view. This is intended to be a comprehensive view of the
privacy challenges as well as solution approaches along all phases of the knowledge
discovery cycle. The paper thus combines a survey with an outline of an agenda for a
comprehensive, interdisciplinary view of Web mining and privacy.', 2012, 4, 'Kluwer Academic Publishers', 'https://lirias.kuleuven.be/bitstream/123456789/362937/1/berendt_2012.pdf', 'more-than-modelling-and-hiding-towards-a-comprehensive-view-of-web-mining-and-privacy');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (28, 'Data mining for information literacy', 'This paper argues for extending the scope of applying data mining towards making it a means to help people better understand, reflect and influence the information and information-producing and consuming activities that they are surrounded by in today''s knowledge societies. Data mining is thereby seen as a means to furthering information literacy and specically critical literacy. We discuss and extend classical denitions of these two constructs and derive critical data literacy and privacy literacy as two essential new key sub-competences. We describe an analysis framework for concrete eorts to use data mining in this way, structuring by techniques and objects and characterising by how principles of successful learning are supported. We then analyse a number of examples of current Web-based tools within this framework, investigating how they can further critical data literacy and privacy literacy. We conclude with an outlook on next steps in the proposed new field of Data Mining for Information Literacy.', 2012, 4, 'Springer', 'https://lirias.kuleuven.be/bitstream/123456789/362001/1/berendt_2012_DM4IL.pdf', 'data-mining-for-information-literacy');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (29, 'Interactive grouping of friends in OSN: Towards online context management', 'In Online Social Networks (OSNs), it can be difﬁcult to maintain the context of a conversation or action, i.e. to know what the situation is and how to act appropriately. The resulting uncertainties may lead to privacy issues. We focus on
one issue Context Collision in this paper, and motivate that a ﬁrst step to address this issue is to help users distinguish groups of contacts within their OSN accounts. We conducted a small user study to investigate the criteria of users grouping the
people they know. We summarized our participants’ strategy of labeling the groups and found that they perform the grouping mainly by their connections with others. Informed by this study, we adopted a friend-graph-based community detection approach and developed an semi-automatic and interactive grouping tool FreeBu to aid in the grouping process.', 2012, 2, 'IEEE Computer Science Press', 'https://lirias.kuleuven.be/bitstream/123456789/371073/1/gao_et_al_2012_with_publication_note.pdf', 'interactive-grouping-of-friends-in-osn-towards-online-context-management');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (30, 'Exploring discrimination: A user-centric evaluation of discrimination-aware data mining', 'Discrimination-aware data mining (DADM) aims at deriving patterns that do not discriminate on “unjust grounds” such as gender, ethnicity or nationality. DADM
safeguards can be very helpful for decision-support applications in ﬁelds such as banking or employment. However, constraining data mining to exclude a ﬁxed enumeration of potentially discriminatory features is too restrictive. It should be complemented by exploratory DADM. We discuss these two forms of DADM and their requirements for evaluation, and we discuss and reﬁne our DCUBE-GUI tool as a system for exploratory DADM. In a user study administered via Mechanical Turk, we show that tools such as DCUBE-GUI can successfully assist novice users in exploring discrimination in data mining.', 2012, 2, 'IEEE Computer Science Press', 'https://lirias.kuleuven.be/bitstream/123456789/371070/1/berendt_preibusch_2012_with_publication_note.pdf', 'exploring-discrimination-a-user-centric-evaluation-of-discrimination-aware-data-mining');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (12, 'Deliverable 5.1: Report on Research Activities (on Identity Management)', 'This deliverable consists of five published papers on the topics of privacy awareness methods in social networks, privacy preserving data mining methods in social networks, privacy awareness and data mining in social networks, and discrimination-aware data mining and its relation to awareness methods. An introduction summarises and contextualises these five papers.
', 20121221, 3, '', 'http://www.cosic.esat.kuleuven.be/publications/article-2302.pdf', 'deliverable-51-report-on-research-activities-on-identity-management');
INSERT INTO spion_app_publication (id, title, summary, published, pub_type_id, publisher, url, slug) VALUES (31, ' Exploring the usefulness of school education about risks on social network sites : a survey study journalArticle', 'The growing popularity of social network sites (SNS) is causing concerns about privacy and security, especially with teenagers, since they show various forms of unsafe behavior on SNS. It has been put forth by researchers, teachers, parents, and teenagers that school is ideally placed to educate teens about risks on SNS and to teach youngsters how to use SNS safely. Privacy attitudes also need to be taken into account if we want to decrease the amount of unsafe behavior. However, there is a lack of research that focuses on the role and impact of school education on privacy attitudes or actual safe behavior on SNS. To counter this shortcoming, a survey study was set up with 638 pupils exploring teenagers’ attitudes towards privacy on SNS. The first question was: Do they care about their privacy? Next to that, the extent to which they show unsafe behavior on SNS was questioned. Finally, the impact that school education has on both privacy care and the safety of teenagers’ behavior on SNS was studied. It was found that teenagers do not care much for their privacy, and that a lack of privacy care leads to unsafe behavior on SNS. However, school education has a positive impact on privacy care, and by raising privacy care it also has an indirect positive impact on the safety of pupils’ behavior. Our results suggest, therefore, that more efforts for school education about safer use of SNS are important, especially since the attention for the topic in schools is still found to be extremely limited and not organized in the curriculum. Practical implications are discussed.', 2013, 4, 'The Journal of Media Literacy Education', 'http://jmle.org/index.php/JMLE/article/view/273', 'exploring-the-usefulness-of-school-education-about-risks-on-social-network-sites-a-survey-study-journalarticle');


--
-- Data for Name: spion_app_publication_external_authors; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (5, 11, 1);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (7, 13, 4);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (12, 14, 8);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (13, 14, 5);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (14, 14, 6);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (15, 14, 7);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (19, 17, 9);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (21, 25, 10);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (22, 26, 10);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (24, 30, 11);
INSERT INTO spion_app_publication_external_authors (id, publication_id, externalauthor_id) VALUES (25, 12, 3);


--
-- Data for Name: spion_app_researchgroup; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (1, 'OWK', '#todo', 'The OWK research group emphasizes the development, implementation and evaluation of innovating practices in education. They see innovation not only as renewing, but also as improving education. Especially the new technological opportunities (eg. ICT) have had a big impact on the way learning and instruction in education is organized. The research of the group focuses on these opportunities and three main subthemes can be distinguished: Collaborative Learning, Face-to-face as well as computer supported; Learning in online learning environments; Educational Material and Multi Media.');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (3, 'Heinz College', '--', 'The Heinz College is a leading institution in public policy and information systems.');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (4, 'ICRI', '#todo', 'The Interdisciplinary Centre for Law and Information Technology (known by its acronym ICRI, derived from the Dutch name for the Centre, Interdisciplinair Centrum voor Recht en Informatica) was established in 1990. The Centre is part of the Faculty of Law of K.U.Leuven, Belgium. Under the direction of Prof. Dr. Jos Dumortier, it has become to the top five research centres in Europe in the domain of Information and Communications Technology (ICT) law. The principal areas of legal research concern personal data protection and identity management, electronic commerce, Internet content control, ICT contracts and conflicts, electronic signatures and PKI, electronic archiving, e-government, ICT-related intellectual property rights and electronic communications.');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (5, 'DistriNet', '#todo', 'The "distributed systems and computer networks" (DistriNet) research group is part of the Department of Computer Science at the Katholieke Universiteit Leuven. The general domain of expertise and innovation of DistriNet is the development of open, distributed object support platforms for advanced applications. The research is always application driven and is often conducted in close collaboration with industry. DistriNet was founded in 1984 and has built up experience and expertise in system software for distributed systems since. The research has expanded from pure distributed operating systems to support platforms for distributed applications. Currently the DistriNet group works on a wide range of problems involving computer networks, middleware, distributed systems, embedded systems, multi-agent systems, security and internet middleware. DistriNet is a member of IBBT, an independent multi-disciplinary research institute founded by the Flemish government to stimulate ICT innovation in Flanders. IBBT''s mission is to make Flanders a leading and internationally recognized player in the ''information society of the future''. IBBT brings together companies, authorities, and non-profit organizations to join forces on research projects in five specific research domains: eHealth, New Media, Mobility, Enabling technologies, and eGovernment.');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (6, 'COSIC/ESAT', '#todo', 'COSIC/ESAT''s research activities are focused on creating a secure electronic equivalent for interactions in the physical world such as confidentiality, signatures, identification, anonymity, payment and elections. The research concentrates on the design, evaluation, and implementation of cryptographic algorithms and protocols, on the development of security architectures for information and communication systems and on the development of security mechanisms for embedded systems.');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (7, 'DTAI', '#rtodo', 'Research in the "Declarative Languages and Artifical Intelligence" group focuses on programming languages and artificial intelligence. Main themes of study are in the fields of declarative languages, machine learning, data mining and knowledge representation.');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (8, 'test', 'test changed', 'test');
INSERT INTO spion_app_researchgroup (id, short_name, long_name, description) VALUES (2, 'iMinds - SMIT', '#todo', 'The research centre for Studies on Media, Information and Telecommunication (SMIT) at the Vrije Universiteit Brussel (VUB) was set up in 1990, within the department of Communication Studies (Faculty of Arts and Philosophy). Our research focuses on socio-economic and policy aspects of Information and Communication Technologies (ICT) and underlying infrastructures. It combines both fundamental (PhD’s) and applied research, and has been active in short and long term, as well as national and European research projects. The centre endeavours an interdisciplinary course: the majority of researchers are communication scientists, but within the projects they work in close conjunction with sociologists, political scientists, lawyers, economists etc. In 2004 SMIT joined iMinds, the Interdisciplinary Institute for Broadband Technology. The research activities are structured in five clusters: User research, Market, media and innovation, Internet policy, Media policy and Culture lab.');


--
-- Data for Name: spion_app_workpackage; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (7, 'Feedback and Awareness in Online Social Networks', 'In information systems, it is difficult if not impossible to contain previously revealed information. Yet, these revelations may be used to provide individuals with awareness about the kind and amount of information that is available about them in different systems. As researchers in the HMDB team, we will study how this awareness can be raised using transparency and feedback tools based on various data mining technologies. We will couple our results with appropriate presentation (e.g. visualization) and interaction methods in order to effectively reach users. Our main aim in this project is to create, deploy and evaluate methods and tools that embody this combination, in order to help people understand and shape the different spaces of the public and the private that they want to inhabit.', 5, 7, 'feedback-and-awareness-in-online-social-networks');
INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (6, 'Confidentiality in Online Social Networks', 'The COSIC Team will investigate techniques for preserving a broad range of confidentiality properties in social networks, including anonymity, unlinkability, unobservability, location privacy, membership privacy, and behavioral confidentiality. We will consider both centralized and distributed networks, including mobile networking applications. The COSIC team will also coordinate the project, lead the activities to establish the conceptual framework, the integration and translation of the elicited requirements, as well as organize the dissemination of the project results.', 6, 6, 'confidentiality-in-online-social-networks');
INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (5, 'Trust and Access Control in Online Social Networks', 'DistriNet leads the work package on Trust, Reputation and Access Control. Two important research tracks planned by Distrinet are: (1) the fundamental study of access control and accountability in online social networks, and (2) the development of enforcement mechanisms for security and privacy policies in browser based applications.', 5, 5, 'trust-and-access-control-in-online-social-networks');
INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (4, 'Legal Aspects of Privacy in Online Social Networks', 'The ICRI team will analyze the legal framework applicable to SNS actors and applications. In particular, we will identify and clarify the legal status and role of the different actors involved in order to map their respective rights, obligations, and liabilities. In addition, ICRI will develop a set of legal requirements that will be used to assess the compliance of existing tools and applications in light of the data protection legislation, and to ensure that new tools, such as transparency and feedback tools, are developed in accordance with the legislative framework. Finally, we will develop a set of criteria that need to be adhered to in order to enforce privacy-friendly policies in a reliable manner and to ensure the development of privacy-friendly default settings.', 4, 4, 'legal-aspects-of-privacy-in-online-social-networks');
INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (3, 'Behavioral Aspects of Privacy in Online Social Networks', 'The CMU Team plans to investigate privacy and security decision making in online social networks through the lenses of behavioral economics, and inform the design of privacy and security technologies for online social networks through behavioral experiments, to anticipate and mitigate potential human cognitive and behavioral biases. As more of our personal and professional lives are spent online, making the "right" choices about our personal data becomes more difficult, especially because of cognitive and behavioral biases that impact our decision making. This is particularly the case with online social networks, which have vastly increased our ability to permanently disseminate personal information to strangers. Our results can help users make better decisions and create technologies that truly consider the human element (and do not make unrealistic assumptions about our usage of technology itself). Therefore, our research can be useful to technology designers but also to policy makers, in that the findings may highlight areas where a combination of technology and policy intervention will be needed.', 3, 3, 'behavioral-aspects-of-privacy-in-online-social-networks');
INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (2, 'Social Aspects of Privacy in Online Social Networks', 'The SMIT research has a twofold perspective: On the one hand we aim to understand the practices and needs of users with regard to privacy issues within social network sites, mainly based on the use of qualitative and ethnographic methods. On the other hand, we will focus on the critical design variables and tools for social software. For the latter, a translation needs to be made from the user research findings to possible guidelines and requirements for future solutions in new media.', 2, 2, 'social-aspects-of-privacy-in-online-social-networks');
INSERT INTO spion_app_workpackage (id, title, description, organisation_id, research_group_id, slug) VALUES (1, 'Educational Aspects of Privacy in Online Social Networks', 'As the OWK team, we will concentrate our research on the educational part of this project. We will develop and evaluate attractive educational materials, as well as privacy manuals for educational users, that can be used in formal and informal situations. These products will be developed in close collaboration with the target audience. We will use a design based approach, starting with a needs-analysis (e.g., surveys, observation-studies), followed by the development of specific solutions, which will then be implemented, evaluated and adjusted.', 1, 1, 'educational-aspects-of-privacy-in-online-social-networks');


--
-- Data for Name: spion_app_userprofile; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (11, 13, 'profpict/2012/10/31/americanindian_10.png', 'Brendan Van Alsenoy has been a member of ICRI''s Data Privacy and Information Security law department since 2007. His research focuses on data protection, identity management, trust services and digital evidence. He is currently preparing a doctoral thesis entitled ''Regulating data protection: the allocation of liability and risk among actors involved in personal data processing''. More information about his work can be found here .', 4, 'brendan-van-alsenoy');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (9, 11, 'profpict/2012/10/31/americanindian_8.png', 'Prof. Jos Dumortier is professor in Law and IT at the Faculty of Law at the Katholieke Universiteit Leuven. In 1990 he founded the Interdisciplinary Centre for Law and Information Technology and was its first Director. He is the editor of the International Encyclopedia of Cyber Law, and he regularly works as an expert for the Belgian federal and regional governments, the European Commission and several national and international organizations. He co-founded the IT law firm time.lex, of which he is currently a senior partner. More information about his work can be found here .', 4, 'jos-dumortier');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (10, 12, 'profpict/2012/10/31/americanindian_9.png', 'Dr. Eva Lievens has been a member of ICRI''s Communications Law department since 2003. She obtained her PhD in law titled ''Regulatory instruments for content regulation in digital media - A prospective study on the protection of minors against harmful content'' in June 2009. Other media law related research she is involved in deals with legal challenges posed by new communication phenomena, such as the regulation of audiovisual media services, user-generated content, and virtual networks (IBBT project ISBO VIN) and social networks. More information about his work can be found here .', 4, 'eva-lievens');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (4, 6, 'profpict/2012/10/31/americanindian_3.png', 'Bram Lievens is a senior researcher within the SMIT user research team. His expertise is within the set-up of people-centred technology development as well as user evaluative projects. His main expertise is within the field of domestication research and living labs related to new media. Currently he is working on different interdisciplinary projects regarding new and emerging technologies, services and applications, mainly within a mobile environment. Bram Lievens is also active within iLab.o where he is doing Living Lab research on open innovation in ICT. More information about his work can be found here .', 2, 'bram-lievens');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (5, 7, 'profpict/2012/10/31/americanindian_4.png', 'Jo Pierson is a professor in Communication Studies at the Vrije Universiteit Brussel (Faculty of Arts and Philosophy) where he lectures on undergraduate and masters courses, covering socio-economic issues relating to the information society, digital media marketing and qualitative research methods. His core scientiﬁc expertise is situated in the ﬁeld of strategic innovation research on the meaning and use of ﬁxed and mobile media technologies at home, at work and in public settings. More information about his work can be found here .', 2, 'jo-pierson');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (13, 15, 'profpict/2012/10/31/americanindian_12.png', 'Frank Piessens is a professor at the Department of Computer Science of the Katholieke Universiteit Leuven. His research field is software security, where he focuses on the development of high-assurance techniques to deal with implementation-level software vulnerabilities and bugs, including techniques such as software verification and run-time monitoring. More information about his work can be found here .', 5, 'frank-piessens');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (1, 3, 'profpict/2012/10/31/americanindian.png', 'Tammy Schellens is a professor in Educational Technology at Ghent University. Educational reform by means of computer supported collaborative learning (CSCL) and the implementation of other collaborative environments are her main research topic. However, her field of interest includes also the use of educational technology in general and the use of active, innovative instructional strategies in different learning areas such as sciences education and teacher education. More information about her work can be found here .', 1, 'tammy-schellens');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (8, 10, 'profpict/2012/10/31/americanindian_7.png', 'Fred Stutzman is a postdoctoral fellow at Carnegie Mellon University, where he works with Alessandro Acquisti. In 2010, he graduated from the University of North Carolina at Chapel Hill''s School of Information and Library Science, where he was advised by Dr. Gary Marchionini. Fred holds a BA in Economics, and a graduate certificate in survey research (quantitative methodology) from the Odum Institute for Research in Social Sciences. More information about his work can be found here .', 3, 'fred-stutzman');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (2, 4, 'profpict/2012/10/31/americanindian_1.png', 'Martin Valcke is a professor in Instructional Sciences at the Ghent University and Head of the Department of Education. Prior to his present position he worked for 10 years at the Dutch Open University in Research and Development projects about the design of electronic learning materials for flexible and open learning. His current interest is in the field of innovation of higher education by adopting e-learning solutions. More information about his work can be found here .', 1, 'martin-valcke');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (6, 8, 'profpict/2012/12/14/Ralf.jpg', 'Ralf De Wolf holds a master in Sociology from the University of Ghent, where he also completed a degree in teaching political and social sciences. He is now working as a PhD researcher within the user research unit of iMinds-SMIT at VUB. His PhD focuses on the social aspects of security and privacy for online social network sites. Key issues are the relationship between identity and privacy and contextual privacy problems. He is also part of the interdisciplinary project "Security and Privacy in Social Networks" (SPION) supported by the Agency for Innovation by Science and Technology (IWT). Using both qualitative and quantitative methods, he is researching the social practices of social network sites users and developing an evaluation framework for existing and yet to be developed privacy enhancing technologies.', 2, 'ralf-de-wolf');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (12, 14, '', 'Dave Clarke is a professor at the Department of Computer Science of the Katholieke Universiteit Leuven. In his PhD thesis, and in several influential ECOOP and OOPSLA publications, Dave has pioneered and further developed the notion of ownership types to control some of the bad effects of aliasing in object-oriented languages. More information about his work can be found here .', 5, 'dave-clarke');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (7, 9, 'profpict/2012/10/31/americanindian_6.png', 'The CMU team is lead by Alessandro Acquisti. Alessandro is an Associate Professor of Information Technology and Public Policy at the Heinz College, Carnegie Mellon University. He is the co-director of the CMU Center for Behavioral Decision Research (CBDR), a member of Carnegie Mellon Cylab and the CyLab Usability, Privacy, and Security Lab (CUPS), and a fellow of the Ponemon Institute. The CMU Team''s work investigates the economic and social impact of IT, and in particular the economics and behavioral economics of privacy and information security, as well as privacy in online social networks. This research has received national and international awards, including the PET Award for Outstanding Research in Privacy Enhancing Technologies, the IBM Best Academic Privacy Faculty Award, the Heinz College Teaching Excellence Award, and various best paper Awards. Two manuscripts authored by members of the team were recently selected by the Future of Privacy Forum in their best "Privacy Papers for Policy Makers" competition. More information about his work can be found here .', 3, 'alessandro-acquisti');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (15, 17, 'profpict/2012/11/26/erobalsa.JPG', 'Ero Balsa received his master degree in Telecommunications Engineering at the University of Vigo (Spain), doing his master thesis at the COSIC (Computer Security and Industrial Cryptography) Research Group of the Department of Electrical Engineering at the K.U. Leuven. In his master thesis, he studied the effect of dummy traffic as an strategy to counter-attack traffic analysis on online social networks. He later joined COSIC, where currently is a Ph.D. candidate. In his doctoral thesis, entitled "Privacy in online social networks: analysis and solutions" he aims to develop methodologies to systematically analyse privacy risks on online social networks, model user behaviour, adversarial knowledge and capabilities as well as metrics to quantify the degree to which privacy requirements are satisfied. More information about his work can be found here .', 6, 'ero-balsa');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (22, 24, '', 'Willem De Groef is a PhD student in the Departement of Computer Science at the KU Leuven under the supervision of prof. Frank Piessens. Having a background in low-level software security, his current research is mainly focused on the development of security-increasing solutions for web scripts by applying information flow security techniques. He is also the main author of FlowFox, a web browser with flexible and precise information flow control built-in. Willem''s research has been presented and published at various conferences, including ACM CCS. He''s a teaching assistant at the KU Leuven of several courses on programming languages and computer architectures.
', 5, 'willem-de-groef');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (20, 22, 'profpict/2012/10/31/americanindian_19.png', 'Bo Gao is a PhD student in the research group DTAI at K.U.Leuven, Belgium. His research interests include privacy awareness, web mining, information literacy, data visualization and computer graphics. More information can be found here .', 7, 'bo-gao');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (17, 19, 'profpict/2012/11/25/seda_1.jpg', 'Dr. Seda Gürses is currently a post-doc at COSIC/ESAT working on privacy in social networks, requirements engineering, privacy enhancing technologies and identity management systems. She is also part of the Privacy and Identity Management Group. She completed her PhD titled "Multilateral Privacy Requirements Analysis in Online Social Networks" at the Arenberg School in the group DTAI of the Computer Science Department, K.U. Leuven, under the supervision of Bettina Berendt and Bart Preneel. More information about her work can be found here .', 6, 'seda-gurses');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (23, 25, '', 'No bio yet.', 7, 'thomas-peetz');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (18, 20, 'profpict/2012/10/31/americanindian_17.png', 'Prof. Bart Preneel''s research area is information security. His research focuses on cryptographic algorithms and protocols as well as their applications to computer and network security and mobile communications. His favourite research topics are hash functions, MAC algorithms, stream ciphers and block ciphers. More information about his work can be found here .', 6, 'bart-preneel');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (3, 5, 'profpict/2012/11/23/Ellenvdh_cv.jpg', 'Ellen Vanderhoven is a Master in Theoretical and Experimental Psychology. In her internship she focused her research on the Jigsaw Puzzleclass for collaborative learning. After a teacher training, she started research on privacy and online social networks at the department of Education at Ghent University, in preparation for her Phd. More information about her work can be found here: http://www.onderwijskunde.ugent.be/en/cv_vanderhoven.htm.', 1, 'ellen-vanderhoven');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (14, 16, '', 'Rula Sayaf is PhD student in DistriNet research group at KULeuven, Belgium from where she has also received her MNM degree in Artificial Intelligence. She researches about access control, security and privacy in social networking under the supervision of professor Dave Clarke. Her main research interests revolve around access control models, theoretical aspects and practical aspects of privacy-preservation methods, and the interdisciplinary perspective on enhancing social software problems.', 5, 'rula-sayaf');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (19, 21, '', 'Bettina Berendt is a Professor in the *Declarative Languages and Artifical Intelligence* (DTAI) at K.U.Leuven, Belgium. Her research interests include Web, news and blog mining, privacy, information literacy, information visualisation and interaction, and interdisciplinary approaches to these questions. More information about her work can be found here .', 7, 'bettina-berendt');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (16, 18, '', 'Prof. Claudia Diaz is Assistant Professor at the COSIC (Computer Security and Industrial Cryptography) Research Group of the Department of Electrical Engineering at the K.U. Leuven. She received her master degree in Telecommunications Engineering at the University of Vigo (Spain), and her Ph.D. in engineering at the Katholieke Universiteit Leuven (Belgium). Her research is broadly focused on the topic of Privacy Enhancing Technologies, where she has more than thirty five international peer-reviewed publications on topics including anonymous communications, anonymity metrics, steganographic file systems, and traffic analysis. More information about her work can be found here http://homes.esat.kuleuven.be/~cdiaz/', 6, 'claudia-diaz');
INSERT INTO spion_app_userprofile (id, user_id, picture, bio, work_package_id, slug) VALUES (21, 23, '', 'In february 2012 Jef Ausloos started as a doctoral researcher at ICRI. After having obtained his bachelor degree in law at the University of Namur (FUNDP), Jef Ausloos got his Master in law at the University of Leuven in 2010. He obtained his LL.M. degree in Information Technology and Intellectual Property law at the University of Hong Kong. Here, Jef also held a research assistant position, investigating the privacy aspects of an identity layer on the Internet. In 2011, he worked as an International Fellow for the Center for Democracy & Technology ([cdt.org](https://www.cdt.org/)) and for the Electronic Frontier Foundation ([eff.org](https://www.eff.org/)) in the USA. This summer he spent three months at the Berkman Center for Internet & Society (Harvard University), working on cloud computing policy issues.', 4, 'jef-ausloos');


--
-- Data for Name: spion_app_publication_user; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (5, 1, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (6, 1, 3);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (7, 1, 17);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (8, 2, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (9, 2, 2);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (10, 2, 3);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (11, 2, 4);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (12, 2, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (13, 2, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (14, 2, 7);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (15, 2, 8);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (16, 2, 9);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (17, 2, 10);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (18, 2, 11);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (19, 2, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (20, 2, 13);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (21, 2, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (22, 2, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (23, 2, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (24, 2, 17);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (30, 5, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (31, 5, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (32, 4, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (33, 4, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (39, 9, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (40, 9, 2);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (41, 9, 3);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (42, 2, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (52, 11, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (53, 11, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (61, 13, 9);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (62, 13, 10);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (63, 13, 21);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (73, 14, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (74, 14, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (75, 14, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (76, 14, 13);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (77, 14, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (78, 14, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (79, 14, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (80, 14, 22);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (81, 14, 23);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (92, 17, 9);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (93, 17, 11);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (94, 18, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (95, 18, 17);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (96, 18, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (104, 19, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (105, 19, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (106, 20, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (107, 20, 2);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (108, 20, 3);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (109, 20, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (110, 20, 13);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (111, 20, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (112, 20, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (113, 20, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (114, 20, 17);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (115, 20, 18);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (116, 20, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (117, 20, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (118, 20, 22);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (119, 21, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (120, 21, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (121, 22, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (122, 22, 2);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (123, 22, 3);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (124, 22, 4);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (125, 22, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (126, 22, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (127, 22, 7);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (128, 22, 8);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (129, 22, 9);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (130, 22, 10);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (131, 22, 11);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (132, 22, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (133, 22, 13);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (134, 22, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (135, 22, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (136, 22, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (137, 22, 17);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (138, 22, 18);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (139, 22, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (140, 22, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (141, 22, 21);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (142, 22, 22);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (143, 22, 23);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (144, 23, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (145, 23, 2);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (146, 23, 3);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (147, 23, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (148, 23, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (149, 23, 7);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (150, 23, 8);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (151, 23, 11);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (152, 23, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (153, 23, 13);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (154, 23, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (155, 23, 15);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (156, 23, 16);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (157, 23, 17);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (158, 23, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (159, 23, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (160, 23, 22);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (165, 25, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (166, 25, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (167, 26, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (168, 24, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (169, 24, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (170, 27, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (171, 28, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (172, 29, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (173, 29, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (174, 29, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (175, 29, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (176, 29, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (177, 29, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (178, 29, 23);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (180, 30, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (181, 12, 5);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (182, 12, 6);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (183, 12, 12);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (184, 12, 14);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (185, 12, 19);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (186, 12, 20);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (187, 12, 23);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (188, 31, 1);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (189, 31, 2);
INSERT INTO spion_app_publication_user (id, publication_id, userprofile_id) VALUES (190, 31, 3);


--
-- Data for Name: spion_app_resource; Type: TABLE DATA; Schema: public; Owner: django_login
--



--
-- Data for Name: spion_app_spionproject; Type: TABLE DATA; Schema: public; Owner: django_login
--

INSERT INTO spion_app_spionproject (id, description, title) VALUES (1, 'Online Social Networks have become an important part of daily digital interactions for more than half a billion users around the world. Studying and addressing these privacy and security concerns in online social networks is the research challenge that we are undertaking in SPION. Our <span class="label researcher"><a href="/profiles/">Researchers</a></span> are centered around a number of <span class="label work_package"><a href="/workpackages/">Workpackages</a></span>.  You can read up on our latest <span class="label publication"><a href="/publications/">Publications</a></span> and stay up to date with our <span class="label news"><a href="/newsitems/">News</a></span>.', 'introduction');
INSERT INTO spion_app_spionproject (id, description, title) VALUES (4, 'Online Social Networks have become an important part of daily digital interactions for more than half a billion users around the world. The various personal information sharing practices that online social network providers promote have led to their success as innovative social interaction platforms. At the same time, these practices have raised much critique and concerns with respect to privacy and security from different stakeholders.


**Tackling Responsibilization**

Studying and addressing these privacy and security concerns in online social networks is the research challenge that we are undertaking in SPION. Specifically, we plan to tackle the responsibilization of individuals with the task of mitigating privacy and security concerns in online social networks by putting the focus on the responsibilities of service providers and stakeholder organizations. We will explore ways in which the underlying social networking infrastructures and the organizations that run them can be made responsible and accountable for the relevant privacy and security concerns. We will also propose ways to develop and run SNS that are technically more secure and transparent to different stakeholders. The proposals will include mechanisms that fulfill the SNS user communities'' privacy needs.

**An Interdisciplinary Approach**

We plan to achieve our objective by approaching our target audience''s needs as well as forms of responsibilization from a variety of disciplines. This target audience includes users, communities and organizations in Flanders. We plan to bring the proposed legal, technical, social, educational and economic mechanisms to mitigate these concerns to the attention of different stakeholders of online social networks.

**Supporting Tools**

We plan to develop solutions that facilitate better decision making with respect to the target groups'' privacy and security concerns, to mitigate the risks, threats and concerns that are currently manifest in this domain, and, most importantly, create educational tools to raise the awareness of privacy-issues with youngsters. With the dissemination and application of the research results we expect to contribute to increasing awareness about privacy and security problems in online social networks.
', 'long_description');
INSERT INTO spion_app_spionproject (id, description, title) VALUES (2, 'SPION brings together researchers from communication studies, computer science, law, educational sciences and behavioral economics. We collaborate to better understand privacy issues in the context of online social networks. We use our insights to propose socio-technical solutions as well as make policy recommendations. The output of the project is organized in different <span class="label work_package"><a href="/workpackages/">workpackages</a>.', 'workpackages');
INSERT INTO spion_app_spionproject (id, description, title) VALUES (3, 'SPION is a project funded by the *Flemish Agency for Innovation by Science and Technology* that brings together seven project partners from universities in Belgium and a cooperation partner in the USA. Four of the project partners, *COSIC*, *DTAI*, *DistriNet* and *ICRI* are based at the *K.U. Leuven*. *iMinds SMIT* is based in the *Vrije Universiteit, Brussels*. *OWK* is based at the *University of Ghent*. And our partner from the USA, *Heinz College* is based at the *Carnegie Melon University* in Pittsburgh, PA. Find out more about our <span class="label research_group"><a href="/about/">partners</a></span>.', 'partners');


--
-- PostgreSQL database dump complete
--

