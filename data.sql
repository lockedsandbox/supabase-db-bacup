--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "from_ip_address", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "username", "first_name", "last_name", "email", "gender", "dob", "otp", "status", "working_hours_days", "working_hours_time", "sleeping_hours_days", "sleeping_hours_time", "longitude", "latitude", "fcm_token", "device_info", "created_at", "updated_at") FROM stdin;
1401947e-9975-48a4-b63d-6fa8fdee922c	imsateesh	Sateesh	Raghuwanshi	aasra.sateesh@gmail.com	other	1986-07-15	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fHey3Viu40BSjr06WnPBRM:APA91bFNq9zD0dk7C3Of9FTmSRjxVVZo3WCa1yRS6OzAzz1JK2OJBOZVTwHnnYGbryHM_t-g7Ov3ALvvSdxEM9ZYHTRA4MiQZKq1Bs9Uk7Q2nUSsZlaVduyDQnJk5s35r_m0mPYTnuGZ	{"deviceId":"46CE61E8-C723-4273-9C2E-0FE3C0ACFADA","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-20 17:04:24.354998+00	2023-10-20 17:04:24.354998+00
67d69ef7-6df2-40ac-8c97-37ed0a1155f7	krishna1	Krishna	Singh	krishnapal@piecodes.in	other	1998-10-20	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dYHPsh7cS02XB9CKDBcb_W:APA91bEBs1-W0H693PACbL5u399RDC-PhFCkBN-BKYS8ls93XqoeMzv259fVqx3pySvXkssPlNu11lHxo7G-3kWcD-R_Vv4L7Z0m0ym-f-xKeWfq3x95I80E6JW6Ts2Dx_pGgFTmJJtU	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-10-20 06:53:54.534684+00	2023-10-20 06:53:54.534684+00
ef273cf7-49bf-4f08-ab94-9f7a8818839b	\N	Ray	Ong	glamourousbuddha@gmail.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-20 14:05:26.208619+00	2023-10-20 14:05:26.208619+00
d8df09ce-7124-4c28-bb05-662a721dd5be	ann	도연	김	rlaeh7348@gmail.com	other	2000-11-22	\N	active	Mon, Tue, Wed, Thu, Fri	08:00 - 17:00	Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dmQEGWEmS0ykrOQWnqsvl8:APA91bFWWgDgyGXgS16yLsCh9Wfio0qsJGt0hldZ5-wJgBXFfebh9T3jQGBT96vSqw8HZx8T8HU65KOQre8pndaoFEmwY7PhHxDrPS6s1LtKe2hYkY_JGzpDnXO1UyAUHn4aoyz4FNnQ	{"deviceId":"TP1A.220624.014","device":"dm3q","baseOS":"","manufacturer":"samsung","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"SM-S918N"}	2023-10-21 05:11:11.93942+00	2023-10-21 05:11:11.93942+00
8f05c522-93da-40bf-b77b-e1e62cf4e42a	pal_singh	Krishna	Pal	krishna756629@gmail.com	other	2008-10-20	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	clYozU_MTw6w4wMEGrcKa1:APA91bHLw-veLALW-tYLp6v8oKdH3-hdA2PAtZ000eF2r4bG-aFVxROkXC1Ih5wssz7N47woclgJySCuRCDQul802SQSNYtg2wPbmEc_ZV_4dBOsTGcfXCqLzWhGSNIpMc1kJw1T6cPk	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-10-20 06:53:57.82774+00	2023-10-20 06:53:57.82774+00
cadebe4c-5eee-46fa-97ea-e62a149772f2	zyx@xyz	Zyx		zyx@mailinator.com	other	2023-10-23	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 05:21:37.06589+00	2023-10-23 05:21:37.06589+00
5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	isadate_test	Isadate	Test	isadate@mailinator.com	other	2000-10-20	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	cbliXGUARqCE5XWOB0ZyVL:APA91bGuEA_z-O5xSIniKB0h3MH84RLqyrqa0IF5qfUKDYDzYOlxC74upwCKwxenYRt8-6GKhVJOdi7BaXzQYYcXd8hyK7d87r9l_rzH6-WkXeNZt-KNukMD44itWh_FZhXdksrAdOGe	{"deviceId":"TE1A.220922.034","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}	2023-10-20 10:05:19.213665+00	2023-10-20 10:05:19.213665+00
2ba5824f-702f-4ff6-a899-0f7370ee7bad	s	Sourabh	Shrivastava	sourabhshrivastava0801@gmail.com	other	2023-10-23	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:09:02.999908+00	2023-10-23 06:09:02.999908+00
4fba49bf-fd42-45f1-abc5-1b2be1da82e0	r	Rowdy	Baby	rowdybaby03337@gmail.com	other	2023-10-23	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 05:33:42.445287+00	2023-10-23 05:33:42.445287+00
2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	a	Aaa	Bbb	abc@mailinator.com	other	2023-10-23	\N	active	Mon	10:00 - 19:00	Sat, Sun	23:00 - 06:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bEgmma6VICNWyaaKHe6CjG7ucb15ly8pnf24lJyVlZOj4Qij2Rjcl-P2GjP1d9aIKX2Fiwoq1Gpofw97dqdjoKiXrnVknNn8IHLis_NwB-4xICvM3JdQADWGz6grhw80z1DYg1m	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:19:56.693037+00	2023-10-23 06:19:56.693037+00
f6f99898-7726-4f94-be66-c9f72f3f0dcf	aris	Aris	Au	singular.aris@gmail.com	other	1992-01-27	\N	active	Mon, Tue, Wed, Thu, Fri	08:00 - 18:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	00:00 - 08:00	\N	\N	fXcVM0Q7v0c-iT5hDHISTI:APA91bErFhDateG8JftwkLSRbSMTGpR6hqGXXx2qi7Co9Tea8QmWe3pGhkyOUvNr_uUFs0bjXxTelXjXChwD_v_TXJ8vvO4Jf8HQGahjmqOenlyHDQdmq3Ql6tpJiuewx83vy689jRzd	{"deviceId":"E1A06B36-7817-4048-953B-B4853B1885ED","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-20 12:16:47.482081+00	2023-10-20 12:16:47.482081+00
088d5892-bc83-45d7-9147-2106f86757ab	sunny	Sunny	Money	sunny@mailinator.com	male	2023-10-23	\N	active	Mon, Fri	10:00 - 23:00	Mon, Tue, Fri, Sat, Sun	15:00 - 06:18	\N	\N	eV172tWVQAOQ4bab6sjQtJ:APA91bHK9KBtu4CuOa2URnywFfD8140ZfOV4SWufW25ftkbuHkpis4ehLbUJnn-PSQSF1U-IZlbZ9ujsnA5oRhxwGEm1W_3Gfauf9_T9d_9fHqUAz2rer9lIdAl_mmWZYWP2ROfQfg9B	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:40:01.247857+00	2023-10-23 06:40:01.247857+00
2856a315-f4fb-4e30-8dc5-d614c9c9acce	aa	Ajay	Dewgan	bbc@mailinator.com	other	2023-10-23	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bEgmma6VICNWyaaKHe6CjG7ucb15ly8pnf24lJyVlZOj4Qij2Rjcl-P2GjP1d9aIKX2Fiwoq1Gpofw97dqdjoKiXrnVknNn8IHLis_NwB-4xICvM3JdQADWGz6grhw80z1DYg1m	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:25:39.683291+00	2023-10-23 06:25:39.683291+00
42ad0fc3-591c-4178-a38a-b38f5d6882d9	\N	Krishna	Singh	securekrishna31@gmail.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-27 06:35:09.274246+00	2023-10-27 06:35:09.274246+00
124ba34e-7b20-4843-91e7-56d2d568111f	\N	null	null	dz5jggw4bd@privaterelay.appleid.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-26 12:41:34.44114+00	2023-10-26 12:41:34.44114+00
31950017-b731-4949-a8f5-3511b0b86b4e	test18	testdr	demo	test18@mailinator.com	male	2023-01-26	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	cp03w3GgTU3BoixQUNy5Lt:APA91bFAXnQ08VflZJzsuwlr8a32jfw-cUUsffWPhP7mLy9wi46lW3bDFymyQ9get1FE4AYMAKj9cR5OmCeqKbeOfnJSv6b7yXh3qAZ73bVsBNvsfLaJ5IYSzUxDoVYOT7YRh6yBtpb2	{"deviceId":"9C76BF8C-421A-4435-859F-2CFE8E2F1953","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-26 08:55:25.50615+00	2023-10-26 08:55:25.50615+00
15b9a623-1aea-486d-9f0a-0ab90e7b3eca	bcc	BCC	News	bcc@mailinator.com	other	2023-10-25	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bEgmma6VICNWyaaKHe6CjG7ucb15ly8pnf24lJyVlZOj4Qij2Rjcl-P2GjP1d9aIKX2Fiwoq1Gpofw97dqdjoKiXrnVknNn8IHLis_NwB-4xICvM3JdQADWGz6grhw80z1DYg1m	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-25 06:53:22.749518+00	2023-10-25 06:53:22.749518+00
d7a79da5-70d7-4800-9ddc-c7f18cd09093	sandbox	Sandbox	Project	sandbox4project@gmail.com	other	2013-10-26	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	cp03w3GgTU3BoixQUNy5Lt:APA91bFAXnQ08VflZJzsuwlr8a32jfw-cUUsffWPhP7mLy9wi46lW3bDFymyQ9get1FE4AYMAKj9cR5OmCeqKbeOfnJSv6b7yXh3qAZ73bVsBNvsfLaJ5IYSzUxDoVYOT7YRh6yBtpb2	{"deviceId":"9C76BF8C-421A-4435-859F-2CFE8E2F1953","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-26 12:49:00.137775+00	2023-10-26 12:49:00.137775+00
0ede945d-07ef-436c-b70b-e3d15708681c	xyz	Xyz	Xyz	xyz@mailinator.com	other	2023-10-25	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bEgmma6VICNWyaaKHe6CjG7ucb15ly8pnf24lJyVlZOj4Qij2Rjcl-P2GjP1d9aIKX2Fiwoq1Gpofw97dqdjoKiXrnVknNn8IHLis_NwB-4xICvM3JdQADWGz6grhw80z1DYg1m	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-25 09:25:53.618443+00	2023-10-25 09:25:53.618443+00
eefe6b48-f131-41b1-abbc-6b92a05a8569	aajtak	Aaj	Tak	aajtak@mailinator.com	other	2023-10-25	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 17:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 08:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bEgmma6VICNWyaaKHe6CjG7ucb15ly8pnf24lJyVlZOj4Qij2Rjcl-P2GjP1d9aIKX2Fiwoq1Gpofw97dqdjoKiXrnVknNn8IHLis_NwB-4xICvM3JdQADWGz6grhw80z1DYg1m	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-25 05:24:36.799647+00	2023-10-25 05:24:36.799647+00
94a126d0-584b-4c0d-9e73-422f0b117db6	kp123	Kp	Test	123@mailinator.com	other	2005-10-27	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	clYozU_MTw6w4wMEGrcKa1:APA91bHLw-veLALW-tYLp6v8oKdH3-hdA2PAtZ000eF2r4bG-aFVxROkXC1Ih5wssz7N47woclgJySCuRCDQul802SQSNYtg2wPbmEc_ZV_4dBOsTGcfXCqLzWhGSNIpMc1kJw1T6cPk	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-10-27 06:25:54.135583+00	2023-10-27 06:25:54.135583+00
d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	apsi	Apsi	Depsi	apsi@mailinator.com	other	2023-10-28	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	eV172tWVQAOQ4bab6sjQtJ:APA91bEj2bWYUM23LxoXXxJa-JngNwbiRNw3_aOlJHxGTumOioI-quTbiVhIHBDvKBkAyr_tDg_-C10_2LRMGfJsNxKP_OMIwycJR-Iuy7B1Wzt9zcybhqqb3g3llY-eRVMAa0a8nlFH	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-28 05:26:47.213499+00	2023-10-28 05:26:47.213499+00
28b72158-d944-4d9f-9923-e4dec3348de1	marv	Marv	Alen	m@mailinator.com	other	2010-10-27	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	clYozU_MTw6w4wMEGrcKa1:APA91bHLw-veLALW-tYLp6v8oKdH3-hdA2PAtZ000eF2r4bG-aFVxROkXC1Ih5wssz7N47woclgJySCuRCDQul802SQSNYtg2wPbmEc_ZV_4dBOsTGcfXCqLzWhGSNIpMc1kJw1T6cPk	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-10-27 07:31:52.655301+00	2023-10-27 07:31:52.655301+00
af9b1415-ec35-4d98-8720-00838cc9db1c	jerky	jacky	Chain	lockedsandbox@gmail.com	other	2007-06-26	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	f35HCAlBgUzniGu-R67W0R:APA91bGHlWHseSpmLQWr3rjMpOvKISRAcfJb4mxzKOOXsL9MfQ0NCturw-R6w_o91nUi3VAkm8vgF39FMOXM6Guj-uPYiENUJOA3i5VT4ygPR9qUmi26D-dDOTkZSTOJD2kbtrxQwYcE	{"deviceId":"76D27498-E7B5-4C6E-AF74-9579981028BF","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone 15 Plus"}	2023-10-26 12:01:33.478316+00	2023-10-26 12:01:33.478316+00
95109dc9-05d5-48a3-8c46-8f2356993f68	useradmin	Users	Addmin	ektanrdd@gmail.com	female	1997-12-30	\N	active	Mon, Wed, Thu, Fri	10:00 - 15:00	Mon, Sat, Sun, Tue, Fri	23:00 - 06:00	\N	\N	fkm59P8uRO2AhFdUFz87Tn:APA91bE7xx4smVa9E-ri7ZYa8dlDjR-U_wKe73OFimHLyc4pEvbNzfuwhy0PmhlKvcDWJKK1nhY3ugZIbbQZEmoyf0QdWLhv58iI49JwLBpDxxcr4u_bw7xEnPxGhlsKkXmimpze4JLn	{"deviceId":"TQ3A.230805.001","device":"sunfish","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"Pixel 4a"}	2023-10-30 05:22:07.022805+00	2023-10-30 05:22:07.022805+00
04fa1794-617a-49a2-b7ba-d416f8423077	krishna_pal	Krishnapal	singh	kpsingh.singh11@gmail.com	other	1995-11-07	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dYHPsh7cS02XB9CKDBcb_W:APA91bEBs1-W0H693PACbL5u399RDC-PhFCkBN-BKYS8ls93XqoeMzv259fVqx3pySvXkssPlNu11lHxo7G-3kWcD-R_Vv4L7Z0m0ym-f-xKeWfq3x95I80E6JW6Ts2Dx_pGgFTmJJtU	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-11-07 06:55:30.411028+00	2023-11-07 06:55:30.411028+00
2bc43ef9-7bb1-47d2-8dbd-3532e45082f7	\N	\N	\N	gaurav@piecodes.in	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-11-02 08:52:19.157684+00	2023-11-02 08:52:19.157684+00
c0bd4429-0fc6-400f-9992-96faa6425126	marky_marlin	Marky	Marlin	marky@mailinator.com	other	1997-10-27	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dYHPsh7cS02XB9CKDBcb_W:APA91bEBs1-W0H693PACbL5u399RDC-PhFCkBN-BKYS8ls93XqoeMzv259fVqx3pySvXkssPlNu11lHxo7G-3kWcD-R_Vv4L7Z0m0ym-f-xKeWfq3x95I80E6JW6Ts2Dx_pGgFTmJJtU	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-10-27 06:41:56.943328+00	2023-10-27 06:41:56.943328+00
f891c13b-5924-4ca4-b0e8-51918a1d6437	\N	\N	\N	boracay.gpt12021@gmail.com	other	\N	451742	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-11-10 02:20:05.940245+00	2023-11-10 02:20:05.940245+00
be9e4255-7055-4100-b708-9f0e06dc256d	\N	\N	\N	isadate@mailinjator.com	other	\N	772526	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-11-11 04:54:28.799716+00	2023-11-11 04:54:28.799716+00
\.


--
-- Data for Name: chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chats" ("id", "status", "chat_type", "chat_name", "created_at", "updated_at", "user_id") FROM stdin;
b9179e90-1343-4e33-8012-7739573be39d	active	onetoone	Krishna & Krishna	2023-10-20 07:17:38.252731+00	2023-10-20 07:17:38.252731+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
42371582-c666-45d3-a4ae-b1b9478f801a	active	onetoone	Krishna & Isadate	2023-10-20 16:25:04.969562+00	2023-10-20 16:25:04.969562+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
52401ddc-b3c2-4960-be8d-5866b33c4ac2	active	group	Group1	2023-10-24 16:03:16.825293+00	2023-10-24 16:03:16.825293+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
a34e4227-649b-478f-b500-2f2f8170dbe0	active	onetoone	Aaj & BCC	2023-10-25 06:59:18.335783+00	2023-10-25 06:59:18.335783+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
8bf5c788-73f9-4ebe-93bd-f8c509cd1926	active	group	Congratulations 	2023-10-25 08:08:34.111704+00	2023-10-25 08:08:34.111704+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
a66e38b6-7540-4df5-8a27-ca79b65a44a0	active	group	Congratulations	2023-10-25 09:19:55.134158+00	2023-10-25 09:19:55.134158+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
afa393af-9f6c-484d-b1d5-f51d5451ee33	active	onetoone	Isadate & testdr	2023-10-26 11:47:01.64978+00	2023-10-26 11:47:01.64978+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
e78500b6-b55b-465d-8fe4-6fe6857298bc	active	onetoone	Krishna & Marv	2023-10-27 11:58:21.209535+00	2023-10-27 11:58:21.209535+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
1286e14c-16f6-46f9-b571-f3b1b616d3f0	active	onetoone	Apsi & Sunny	2023-10-28 10:27:03.429223+00	2023-10-28 10:27:03.429223+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
095aca16-6ab6-43ae-b953-231031f664f8	active	onetoone	User & jacky	2023-10-30 07:50:41.156249+00	2023-10-30 07:50:41.156249+00	95109dc9-05d5-48a3-8c46-8f2356993f68
e60b01cf-63f9-439a-9c8e-cb394969d749	active	group	Friends 	2023-11-03 05:59:47.95652+00	2023-11-03 05:59:47.95652+00	95109dc9-05d5-48a3-8c46-8f2356993f68
a494b14f-c295-48f9-96d9-a3888d4a7cc1	active	group	Demo	2023-10-26 12:09:52.225293+00	2023-10-26 12:09:52.225293+00	af9b1415-ec35-4d98-8720-00838cc9db1c
dd75bee2-a771-43b0-a41d-36208e0a2a3e	active	group	Demo	2023-10-26 09:24:24.722193+00	2023-10-26 09:24:24.722193+00	31950017-b731-4949-a8f5-3511b0b86b4e
992df50b-48ae-4627-8125-0b6ac84d8d88	active	group	Group6	2023-10-25 09:19:42.912521+00	2023-10-25 09:19:42.912521+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
07e64866-254d-48b7-85a9-d3d4d403a379	active	group	Piecodes	2023-11-11 06:21:23.389185+00	2023-11-11 06:21:23.389185+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
096e85c3-efcc-4aaf-905d-fb1f7a3cabf6	active	onetoone	Marv & Sunny	2023-11-06 10:33:43.204092+00	2023-11-06 10:33:43.204092+00	28b72158-d944-4d9f-9923-e4dec3348de1
7d750269-96da-4d17-b3c4-09dd34c61514	active	group	Group1	2023-10-24 15:23:36.897597+00	2023-10-24 15:23:36.897597+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
f054af85-b8eb-46cc-bd5d-40b17246ccb1	active	group	Our Group 	2023-10-28 10:42:47.018437+00	2023-10-28 10:42:47.018437+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
9e2213f5-5836-4439-88a8-657bb7f92d72	active	group	group3	2023-10-25 09:18:43.950496+00	2023-10-25 09:18:43.950496+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
fef1a74c-2152-4108-b2a9-3d2bc89f1e25	active	group	My Groupon 	2023-11-06 09:56:59.397067+00	2023-11-06 09:56:59.397067+00	088d5892-bc83-45d7-9147-2106f86757ab
\.


--
-- Data for Name: chat_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_audiences" ("id", "role", "status", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
f9bd0457-5478-45e6-a71f-b275267db5a1	user	active	2023-10-20 07:17:38.341097+00	2023-10-20 07:17:38.341097+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
f0170bdf-d7d5-492e-a0e0-f115be64367b	user	active	2023-10-20 07:17:38.341097+00	2023-10-20 07:17:38.341097+00	b9179e90-1343-4e33-8012-7739573be39d	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
615b60ec-e88e-4011-845d-a63ee375a3f5	user	active	2023-10-20 16:25:05.060343+00	2023-10-20 16:25:05.060343+00	42371582-c666-45d3-a4ae-b1b9478f801a	8f05c522-93da-40bf-b77b-e1e62cf4e42a
9fd6ebda-53de-4b2d-85ad-f6abdc84a7d7	user	active	2023-10-20 16:25:05.060343+00	2023-10-20 16:25:05.060343+00	42371582-c666-45d3-a4ae-b1b9478f801a	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
431197df-ba3b-41ec-9925-f2d2e4b3925e	user	active	2023-11-11 07:19:10.279706+00	2023-11-11 07:19:10.279706+00	07e64866-254d-48b7-85a9-d3d4d403a379	8f05c522-93da-40bf-b77b-e1e62cf4e42a
167ba1b3-861e-4863-b68d-881bb737ce04	user	active	2023-11-11 07:19:10.279706+00	2023-11-11 07:19:10.279706+00	07e64866-254d-48b7-85a9-d3d4d403a379	31950017-b731-4949-a8f5-3511b0b86b4e
49b978c9-1719-4d73-8602-ae32ecd0e475	user	active	2023-11-11 07:19:10.279706+00	2023-11-11 07:19:10.279706+00	07e64866-254d-48b7-85a9-d3d4d403a379	28b72158-d944-4d9f-9923-e4dec3348de1
9c2abc8e-196a-48a2-b491-40a313daa308	user	active	2023-11-11 07:19:10.279706+00	2023-11-11 07:19:10.279706+00	07e64866-254d-48b7-85a9-d3d4d403a379	af9b1415-ec35-4d98-8720-00838cc9db1c
325fdcc7-c587-4997-8db0-3e6c60b92f93	user	active	2023-10-24 16:03:16.913232+00	2023-10-24 16:03:16.913232+00	52401ddc-b3c2-4960-be8d-5866b33c4ac2	8f05c522-93da-40bf-b77b-e1e62cf4e42a
2ee37517-b03a-4237-ad41-c1e6ebc87c45	admin	active	2023-10-24 16:03:16.913232+00	2023-10-24 16:03:16.913232+00	52401ddc-b3c2-4960-be8d-5866b33c4ac2	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
5deb497c-08d9-4963-9012-caf5bfe021ae	user	active	2023-10-25 06:59:18.42434+00	2023-10-25 06:59:18.42434+00	a34e4227-649b-478f-b500-2f2f8170dbe0	eefe6b48-f131-41b1-abbc-6b92a05a8569
bae97d3a-2218-4278-a4d3-ac85afa7a2ab	user	active	2023-10-25 06:59:18.42434+00	2023-10-25 06:59:18.42434+00	a34e4227-649b-478f-b500-2f2f8170dbe0	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
1b5a602c-6320-47cf-9124-85965373fb0a	user	active	2023-10-25 08:08:34.201211+00	2023-10-25 08:08:34.201211+00	8bf5c788-73f9-4ebe-93bd-f8c509cd1926	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
134db625-8ab7-4d52-8b92-a13510af94b3	user	active	2023-10-25 08:08:34.201211+00	2023-10-25 08:08:34.201211+00	8bf5c788-73f9-4ebe-93bd-f8c509cd1926	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
01eed41f-aceb-43d6-a476-5f0ad820b4c1	admin	active	2023-10-25 08:08:34.201211+00	2023-10-25 08:08:34.201211+00	8bf5c788-73f9-4ebe-93bd-f8c509cd1926	eefe6b48-f131-41b1-abbc-6b92a05a8569
7cf76c79-3512-4ab6-840e-cd040ed35ce9	user	active	2023-10-26 11:47:01.737693+00	2023-10-26 11:47:01.737693+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
9eebe2a5-a643-477a-bed8-7290c1632dfc	user	active	2023-10-26 11:47:01.737693+00	2023-10-26 11:47:01.737693+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	31950017-b731-4949-a8f5-3511b0b86b4e
629c0048-06d8-4b22-9f84-d21bb723386c	user	active	2023-10-27 11:58:21.296872+00	2023-10-27 11:58:21.296872+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
137bafb8-3774-4cf5-a875-ee30d31c808d	user	active	2023-10-27 11:58:21.296872+00	2023-10-27 11:58:21.296872+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
48698eab-e060-4c86-9b6d-92f63d980bf7	user	active	2023-10-28 10:27:03.517298+00	2023-10-28 10:27:03.517298+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
0ae782fa-f512-483d-a4a5-1290e48745c3	user	active	2023-10-28 10:27:03.517298+00	2023-10-28 10:27:03.517298+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	088d5892-bc83-45d7-9147-2106f86757ab
11a15cf2-338f-4845-a6a3-b278337a7d7f	user	active	2023-10-30 07:50:41.24586+00	2023-10-30 07:50:41.24586+00	095aca16-6ab6-43ae-b953-231031f664f8	95109dc9-05d5-48a3-8c46-8f2356993f68
7be1e1d1-3bef-4b51-b166-f5d7adf3c970	user	active	2023-10-30 07:50:41.24586+00	2023-10-30 07:50:41.24586+00	095aca16-6ab6-43ae-b953-231031f664f8	af9b1415-ec35-4d98-8720-00838cc9db1c
2e386dbf-ffb0-4c6e-b471-f753a1528e7c	user	active	2023-11-03 05:59:48.046409+00	2023-11-03 05:59:48.046409+00	e60b01cf-63f9-439a-9c8e-cb394969d749	af9b1415-ec35-4d98-8720-00838cc9db1c
921860db-8317-41ca-98d1-a61e1cae9224	admin	active	2023-11-03 05:59:48.046409+00	2023-11-03 05:59:48.046409+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
6c9a20d0-4168-41c9-b8eb-de441f2b76fa	user	active	2023-11-03 12:17:17.465931+00	2023-11-03 12:17:17.465931+00	a494b14f-c295-48f9-96d9-a3888d4a7cc1	af9b1415-ec35-4d98-8720-00838cc9db1c
a35eb97d-5c32-43c3-bc05-c420a8d11644	user	active	2023-11-03 12:17:17.465931+00	2023-11-03 12:17:17.465931+00	a494b14f-c295-48f9-96d9-a3888d4a7cc1	31950017-b731-4949-a8f5-3511b0b86b4e
c3a28502-c599-4cd3-8f9b-6618c7629baa	user	active	2023-11-03 12:17:51.104138+00	2023-11-03 12:17:51.104138+00	dd75bee2-a771-43b0-a41d-36208e0a2a3e	af9b1415-ec35-4d98-8720-00838cc9db1c
193eb40f-634a-4870-86f2-54751afed08e	user	active	2023-11-03 12:17:51.104138+00	2023-11-03 12:17:51.104138+00	dd75bee2-a771-43b0-a41d-36208e0a2a3e	31950017-b731-4949-a8f5-3511b0b86b4e
17993219-6434-4c75-a04a-3c5dd5aa8e7b	user	active	2023-11-03 13:19:46.273546+00	2023-11-03 13:19:46.273546+00	992df50b-48ae-4627-8125-0b6ac84d8d88	8f05c522-93da-40bf-b77b-e1e62cf4e42a
098240bf-64a3-4ff3-87b3-cc6584438410	user	active	2023-11-03 13:19:46.273546+00	2023-11-03 13:19:46.273546+00	992df50b-48ae-4627-8125-0b6ac84d8d88	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
bde1047c-56d7-45c5-87f7-3df2acc240f5	user	active	2023-11-03 13:19:46.273546+00	2023-11-03 13:19:46.273546+00	992df50b-48ae-4627-8125-0b6ac84d8d88	31950017-b731-4949-a8f5-3511b0b86b4e
cffe701d-7c0f-4839-a64a-a74afda3c0a1	user	active	2023-11-03 13:22:01.723379+00	2023-11-03 13:22:01.723379+00	a66e38b6-7540-4df5-8a27-ca79b65a44a0	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
20bcbca7-cafd-4a77-a387-8ada9c56d2cf	user	active	2023-11-06 10:33:43.291724+00	2023-11-06 10:33:43.291724+00	096e85c3-efcc-4aaf-905d-fb1f7a3cabf6	28b72158-d944-4d9f-9923-e4dec3348de1
8af83a97-e88d-4437-bf8e-c0e5e3212a92	user	active	2023-11-06 10:33:43.291724+00	2023-11-06 10:33:43.291724+00	096e85c3-efcc-4aaf-905d-fb1f7a3cabf6	088d5892-bc83-45d7-9147-2106f86757ab
7bd19781-a877-4b9d-9775-a58bda6951d4	user	active	2023-11-09 05:13:15.056395+00	2023-11-09 05:13:15.056395+00	7d750269-96da-4d17-b3c4-09dd34c61514	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
2a48d54a-e7ad-40b0-a6d0-87b95cbb5f56	user	active	2023-11-09 05:13:15.056395+00	2023-11-09 05:13:15.056395+00	7d750269-96da-4d17-b3c4-09dd34c61514	28b72158-d944-4d9f-9923-e4dec3348de1
f3008685-84e9-42ae-b859-933b3234b1e0	user	active	2023-11-09 07:39:08.956379+00	2023-11-09 07:39:08.956379+00	f054af85-b8eb-46cc-bd5d-40b17246ccb1	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
6e51008f-b2b7-485f-9c6b-4fd6c822d22a	user	active	2023-11-10 06:56:28.423035+00	2023-11-10 06:56:28.423035+00	9e2213f5-5836-4439-88a8-657bb7f92d72	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
dd8cd986-b36b-4a08-8a7a-07cfea6a1e92	user	active	2023-11-10 06:56:28.423035+00	2023-11-10 06:56:28.423035+00	9e2213f5-5836-4439-88a8-657bb7f92d72	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
82dc3092-1a1e-47c0-b802-74f3f7c05a5f	user	active	2023-11-10 10:35:04.569957+00	2023-11-10 10:35:04.569957+00	fef1a74c-2152-4108-b2a9-3d2bc89f1e25	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
5b4f5fd0-4e39-4bc7-bfc5-fd2063abe6fd	user	active	2023-11-10 10:35:04.569957+00	2023-11-10 10:35:04.569957+00	fef1a74c-2152-4108-b2a9-3d2bc89f1e25	28b72158-d944-4d9f-9923-e4dec3348de1
c14b6283-e4a4-4502-b673-0540c2c79628	user	active	2023-11-10 10:35:04.569957+00	2023-11-10 10:35:04.569957+00	fef1a74c-2152-4108-b2a9-3d2bc89f1e25	088d5892-bc83-45d7-9147-2106f86757ab
\.


--
-- Data for Name: chat_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_messages" ("id", "message", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
b5e017cd-5f17-4fd7-8923-349fdf50cee5	Hi	2023-10-20 07:17:39.362138+00	2023-10-20 07:17:39.362138+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
421d9049-35ef-48d1-af3b-168dc3fd0adb	hi	2023-10-20 07:18:22.853387+00	2023-10-20 07:18:22.853387+00	b9179e90-1343-4e33-8012-7739573be39d	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
fb9f4554-5a72-4070-930d-5277c1cc833f	How r u	2023-10-20 07:18:50.844498+00	2023-10-20 07:18:50.844498+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
898005b5-8d39-4d16-968c-3240d7864f50	fine	2023-10-20 07:19:09.480479+00	2023-10-20 07:19:09.480479+00	b9179e90-1343-4e33-8012-7739573be39d	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
43ecd39d-ee7b-4504-aef5-19b4bd6128c1	Ok	2023-10-20 07:19:19.158278+00	2023-10-20 07:19:19.158278+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
09add2f2-c825-4006-9707-79a279f3f329	Hi	2023-10-20 07:24:59.517282+00	2023-10-20 07:24:59.517282+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
c584bc03-e23d-4398-be75-7a8960b3e645	Hi	2023-10-20 16:25:12.480603+00	2023-10-20 16:25:12.480603+00	42371582-c666-45d3-a4ae-b1b9478f801a	8f05c522-93da-40bf-b77b-e1e62cf4e42a
b9a160fa-d68c-488b-9c0c-029014d4148a	Hello	2023-10-20 16:25:21.400813+00	2023-10-20 16:25:21.400813+00	42371582-c666-45d3-a4ae-b1b9478f801a	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
3419508d-2503-470f-9f13-d6f0302b0beb	How r u	2023-10-20 16:25:39.51824+00	2023-10-20 16:25:39.51824+00	42371582-c666-45d3-a4ae-b1b9478f801a	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
10e94a87-d20d-4451-bf25-255673af9839	Fine	2023-10-20 16:25:57.735683+00	2023-10-20 16:25:57.735683+00	42371582-c666-45d3-a4ae-b1b9478f801a	8f05c522-93da-40bf-b77b-e1e62cf4e42a
4487ff40-8aa5-423f-83ee-5f2de9522119	Or sunao	2023-10-20 16:26:09.749034+00	2023-10-20 16:26:09.749034+00	42371582-c666-45d3-a4ae-b1b9478f801a	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
8909b827-7dcd-4132-ae28-03ca1e4e3a95	What About This Plan	2023-10-20 16:46:33.432052+00	2023-10-20 16:46:33.432052+00	42371582-c666-45d3-a4ae-b1b9478f801a	8f05c522-93da-40bf-b77b-e1e62cf4e42a
55f95847-4d8b-4569-a8f5-0498328ee0bd	Tell?	2023-10-20 17:04:54.201762+00	2023-10-20 17:04:54.201762+00	42371582-c666-45d3-a4ae-b1b9478f801a	8f05c522-93da-40bf-b77b-e1e62cf4e42a
612241b0-9ab5-430c-9d2e-c37debfeedb5	Tell Me	2023-10-25 05:31:44.516083+00	2023-10-25 05:31:44.516083+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
20e034bc-8c23-43cc-9091-4cbe28845c7b	hi	2023-10-25 06:39:56.280905+00	2023-10-25 06:39:56.280905+00	b9179e90-1343-4e33-8012-7739573be39d	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
4470cb04-8016-4aa6-9d23-715f7c4d89a6	Hello	2023-10-25 06:56:32.215867+00	2023-10-25 06:56:32.215867+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
7902faab-df3c-4e82-875a-06063c2e136a	Hello 	2023-10-25 06:59:20.046516+00	2023-10-25 06:59:20.046516+00	a34e4227-649b-478f-b500-2f2f8170dbe0	eefe6b48-f131-41b1-abbc-6b92a05a8569
a85dd7de-8a03-4351-8ea4-ba5a2f9e6496	Hello	2023-10-25 09:27:47.369345+00	2023-10-25 09:27:47.369345+00	a66e38b6-7540-4df5-8a27-ca79b65a44a0	8f05c522-93da-40bf-b77b-e1e62cf4e42a
313b4708-d3fe-47f1-82eb-fdf418850926	Please Come All	2023-10-25 09:38:09.994575+00	2023-10-25 09:38:09.994575+00	a34e4227-649b-478f-b500-2f2f8170dbe0	eefe6b48-f131-41b1-abbc-6b92a05a8569
2450d84b-47d6-45ed-9c88-4a5fc04f047f	Please Come 	2023-10-25 09:46:43.826761+00	2023-10-25 09:46:43.826761+00	a34e4227-649b-478f-b500-2f2f8170dbe0	eefe6b48-f131-41b1-abbc-6b92a05a8569
6cab0652-133d-4f79-be46-2c8059d92de6	Come	2023-10-25 11:07:23.566761+00	2023-10-25 11:07:23.566761+00	a34e4227-649b-478f-b500-2f2f8170dbe0	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
cda75979-fa17-4f21-8170-0f6e9091fa1a	Hi	2023-10-26 05:43:33.890536+00	2023-10-26 05:43:33.890536+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
7adb7085-ef16-4327-9ca8-4fbdab8bc995	Hy	2023-10-26 09:24:30.072891+00	2023-10-26 09:24:30.072891+00	dd75bee2-a771-43b0-a41d-36208e0a2a3e	31950017-b731-4949-a8f5-3511b0b86b4e
a8b198b1-04b2-4b9b-bce3-97dc3118593b	Hi sir	2023-10-26 09:25:07.825729+00	2023-10-26 09:25:07.825729+00	dd75bee2-a771-43b0-a41d-36208e0a2a3e	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
3d79fe28-87ec-4671-80c9-1b24ce8a8347	Hello	2023-10-26 10:59:54.215878+00	2023-10-26 10:59:54.215878+00	dd75bee2-a771-43b0-a41d-36208e0a2a3e	31950017-b731-4949-a8f5-3511b0b86b4e
9271eedc-86ed-4642-87a5-0de49819b41f	Hy	2023-10-26 11:47:03.822119+00	2023-10-26 11:47:03.822119+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
1083b365-ecd2-4c47-ab96-8cf83acfbdd9	Hy	2023-10-26 12:09:57.824177+00	2023-10-26 12:09:57.824177+00	a494b14f-c295-48f9-96d9-a3888d4a7cc1	af9b1415-ec35-4d98-8720-00838cc9db1c
09974c63-e3c9-43bc-9efe-4d22fecca6df	Fun Time With Friend	2023-10-26 12:19:10.146634+00	2023-10-26 12:19:10.146634+00	a494b14f-c295-48f9-96d9-a3888d4a7cc1	af9b1415-ec35-4d98-8720-00838cc9db1c
c964ea34-5182-4d18-8ff2-532ff85db405	Hi	2023-10-27 06:18:49.312559+00	2023-10-27 06:18:49.312559+00	a494b14f-c295-48f9-96d9-a3888d4a7cc1	af9b1415-ec35-4d98-8720-00838cc9db1c
ae43e2b4-3e57-4f35-aa82-fc8b3b5097ee	Hello	2023-10-27 06:45:15.699885+00	2023-10-27 06:45:15.699885+00	a494b14f-c295-48f9-96d9-a3888d4a7cc1	af9b1415-ec35-4d98-8720-00838cc9db1c
e644c153-30a0-4c1c-9381-9f85477ad6ad	hi	2023-10-27 11:58:23.024733+00	2023-10-27 11:58:23.024733+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
17899590-2abc-4add-bf80-3d985785d8ff	Hello	2023-10-27 11:58:38.308269+00	2023-10-27 11:58:38.308269+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
8e2f055d-6532-456e-9991-746e34234825	Hello	2023-10-27 12:00:20.493447+00	2023-10-27 12:00:20.493447+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
acd41eaa-8424-438c-9cd1-69ac84fd163e	Hi	2023-10-27 12:00:55.594556+00	2023-10-27 12:00:55.594556+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
45447399-0944-40f7-86bb-378dd85463d2	How r u	2023-10-27 12:01:16.021549+00	2023-10-27 12:01:16.021549+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
ca47d66f-85b5-45ab-a964-bbbdd7041d64	Fine	2023-10-27 12:01:21.82617+00	2023-10-27 12:01:21.82617+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
bd9f9d40-48e6-4b80-8afa-3561ab4cf141	hello	2023-10-27 12:01:45.533432+00	2023-10-27 12:01:45.533432+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
8735785f-92aa-499b-9d4c-5bf4676578f7	Hi	2023-10-27 12:01:58.68023+00	2023-10-27 12:01:58.68023+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
fe5ffb56-fdc0-4aec-9f37-6d2176491211	Hi	2023-10-27 12:05:22.493868+00	2023-10-27 12:05:22.493868+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
07ec918f-8926-4795-a516-85dd490af3c0	Hello	2023-10-27 12:07:13.943462+00	2023-10-27 12:07:13.943462+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
d870b400-c1e1-4b60-a755-c3f65a55bad6	Hello	2023-10-27 12:21:44.736713+00	2023-10-27 12:21:44.736713+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
2d56b587-f033-4547-b11e-57ac09cb64c4	Hello	2023-10-27 12:29:49.950742+00	2023-10-27 12:29:49.950742+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
ca8c4e3b-fd0c-4c5e-afc8-b0be47477497	Hi	2023-10-27 12:30:31.675212+00	2023-10-27 12:30:31.675212+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
26e18b96-c521-4e09-bb93-57b2bbfa572a	Hi	2023-10-27 12:31:58.796484+00	2023-10-27 12:31:58.796484+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
4726a730-c52b-4763-891c-850b1a0c406d	Ji	2023-10-27 12:34:29.765617+00	2023-10-27 12:34:29.765617+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
055baa61-22ea-49cc-b4e1-4e79958fbb7d	Hi	2023-10-27 12:35:09.980858+00	2023-10-27 12:35:09.980858+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
23a3c215-b744-4273-ad50-e505d9bdaa69	Hello	2023-10-27 12:58:02.851521+00	2023-10-27 12:58:02.851521+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
0d1e6e9b-b393-4297-b0fb-fdc48853543a	Hi	2023-10-27 12:58:16.395928+00	2023-10-27 12:58:16.395928+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
b9c885fa-b37b-4181-ae20-2ed2c70478ab	hello.....	2023-10-27 15:33:33.133398+00	2023-10-27 15:33:33.133398+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
732e9d2f-77f2-46f7-9ff2-a4ea89cb9c5e	hello.....	2023-10-27 15:43:46.261583+00	2023-10-27 15:43:46.261583+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
3322a4b3-909a-41be-bf5b-52e5e755606d	hello.....	2023-10-27 15:44:58.33062+00	2023-10-27 15:44:58.33062+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
f74ec2f7-f1cd-4c93-82d7-2449f27ea91c	Hii	2023-10-28 10:27:05.245974+00	2023-10-28 10:27:05.245974+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
0c78a990-e305-4a42-8eec-08f6bd1a36d9	Hey 	2023-10-28 10:27:25.612218+00	2023-10-28 10:27:25.612218+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	088d5892-bc83-45d7-9147-2106f86757ab
280f328d-0c77-49f3-a102-84e7290ef551	Hey 	2023-10-28 10:53:10.289476+00	2023-10-28 10:53:10.289476+00	f054af85-b8eb-46cc-bd5d-40b17246ccb1	088d5892-bc83-45d7-9147-2106f86757ab
3e313992-8830-4353-af27-383324cbb99c	Yes	2023-10-28 10:53:49.060243+00	2023-10-28 10:53:49.060243+00	f054af85-b8eb-46cc-bd5d-40b17246ccb1	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
3c3256e3-301b-401b-b3de-3faf24ea3ac2	Hello	2023-10-30 07:50:43.147321+00	2023-10-30 07:50:43.147321+00	095aca16-6ab6-43ae-b953-231031f664f8	95109dc9-05d5-48a3-8c46-8f2356993f68
2fee77b7-bcf7-417e-aa50-4dc2e8e2a42f	Hello	2023-10-30 07:51:15.312427+00	2023-10-30 07:51:15.312427+00	095aca16-6ab6-43ae-b953-231031f664f8	af9b1415-ec35-4d98-8720-00838cc9db1c
3802dbce-9797-4032-86a1-08e0dfa962ca	Hello 👋	2023-10-31 13:10:23.097955+00	2023-10-31 13:10:23.097955+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
eca782d6-cc79-4dc8-9a85-ef6334271e64	Let's Go 	2023-11-01 07:02:27.929361+00	2023-11-01 07:02:27.929361+00	f054af85-b8eb-46cc-bd5d-40b17246ccb1	088d5892-bc83-45d7-9147-2106f86757ab
16230b8f-9230-46c9-b542-c4b722d82c90	Please Come With Me	2023-11-01 07:19:18.070843+00	2023-11-01 07:19:18.070843+00	f054af85-b8eb-46cc-bd5d-40b17246ccb1	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
88b4fc7c-f922-4577-b30f-9f7b07070f14	hello.....	2023-11-02 09:21:36.726473+00	2023-11-02 09:21:36.726473+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
f08150c2-4f13-4d7a-9586-f0f18930bca2	hi	2023-11-02 09:23:47.867612+00	2023-11-02 09:23:47.867612+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
0c549b43-c8db-4316-9c73-b15a32bd5933	Hello 	2023-11-03 06:00:03.341799+00	2023-11-03 06:00:03.341799+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
c9e335d2-e474-45f4-ab69-6b4a3f56d87a	H Da Hi Ko	2023-11-03 06:01:25.367612+00	2023-11-03 06:01:25.367612+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
20907430-d424-410f-8597-ccef4aa85667	Hos	2023-11-03 06:05:50.315087+00	2023-11-03 06:05:50.315087+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
4fc0a121-250a-40f2-a69d-9d67bcd05177	Hello 	2023-11-03 06:09:58.327726+00	2023-11-03 06:09:58.327726+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
0a121362-124b-4ba1-b16c-edecf8db4414	Hii	2023-11-03 06:10:02.798616+00	2023-11-03 06:10:02.798616+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
c53c5678-d9ad-4a3d-8a04-23fc4a6ee9b6	GD a hi lbc	2023-11-03 06:11:11.849977+00	2023-11-03 06:11:11.849977+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
26a101ec-903c-4130-b16f-196ec9697fbd	Gk	2023-11-03 09:44:28.841241+00	2023-11-03 09:44:28.841241+00	e60b01cf-63f9-439a-9c8e-cb394969d749	95109dc9-05d5-48a3-8c46-8f2356993f68
a5fb5716-2d04-4dff-97e0-012ca0108bfc	hi	2023-11-03 10:14:31.727276+00	2023-11-03 10:14:31.727276+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
d63c41d8-8159-4f72-a2a2-7ab4d4fa4732	hello	2023-11-03 10:14:38.916938+00	2023-11-03 10:14:38.916938+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
075bbc69-63cb-4302-82eb-a35d5a82f019	.	2023-11-03 10:14:57.442263+00	2023-11-03 10:14:57.442263+00	afa393af-9f6c-484d-b1d5-f51d5451ee33	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
b9d3c131-5c8e-446c-b5c9-7ef27685e65b	Hey	2023-11-06 09:57:07.75612+00	2023-11-06 09:57:07.75612+00	fef1a74c-2152-4108-b2a9-3d2bc89f1e25	088d5892-bc83-45d7-9147-2106f86757ab
ab1b42a1-2df7-4541-a029-fd7fe5b34127	.	2023-11-06 10:03:33.763636+00	2023-11-06 10:03:33.763636+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	088d5892-bc83-45d7-9147-2106f86757ab
b2854b4b-2de1-408e-a58e-4ab357c4f783	Come	2023-11-06 10:04:58.309581+00	2023-11-06 10:04:58.309581+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	088d5892-bc83-45d7-9147-2106f86757ab
9cee182f-8fbb-426f-9de7-bb0ccad0e93c	Hey brother 	2023-11-06 10:31:58.910539+00	2023-11-06 10:31:58.910539+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
eec0bf60-3e6a-46ef-bff3-4fcbee8ef024	Hey	2023-11-06 10:32:35.067587+00	2023-11-06 10:32:35.067587+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
18d2dbf2-5546-4559-bdc5-2dea9a2853c0	Hey	2023-11-06 10:33:04.880244+00	2023-11-06 10:33:04.880244+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	28b72158-d944-4d9f-9923-e4dec3348de1
4cf0f2b5-9e14-45a4-979d-a720bd9a473b	Hey brother 	2023-11-06 10:33:45.221283+00	2023-11-06 10:33:45.221283+00	096e85c3-efcc-4aaf-905d-fb1f7a3cabf6	28b72158-d944-4d9f-9923-e4dec3348de1
d8618c45-6c1e-430c-a94b-1eb528848131	Hello 	2023-11-06 10:34:04.070739+00	2023-11-06 10:34:04.070739+00	096e85c3-efcc-4aaf-905d-fb1f7a3cabf6	28b72158-d944-4d9f-9923-e4dec3348de1
c823ee90-abc2-49ec-b9cf-b8c86cef696e	Hello	2023-11-07 13:15:27.291921+00	2023-11-07 13:15:27.291921+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
48b679ae-053d-4219-9bc9-69ad1a404df1	Hello	2023-11-07 13:15:47.284381+00	2023-11-07 13:15:47.284381+00	e78500b6-b55b-465d-8fe4-6fe6857298bc	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
eead2d23-cf58-4dad-a116-5880127c2dc8	.	2023-11-09 05:04:35.876807+00	2023-11-09 05:04:35.876807+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
95aaa33e-473c-41c7-aa38-529b95f67e81	South	2023-11-09 06:31:02.490008+00	2023-11-09 06:31:02.490008+00	1286e14c-16f6-46f9-b571-f3b1b616d3f0	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."events" ("id", "title", "venue", "description", "reminder", "is_reminder_sent", "is_early_reminder", "is_solo", "is_important", "start_date", "end_date", "start_time", "end_time", "status", "venue_long", "venue_lat", "created_at", "updated_at", "user_id") FROM stdin;
399b2660-d791-4edb-aac4-cc64afbcc4f3	Dinner	Food Plaza		5minsbefore	f	f	t	t	2023-10-26	2023-10-26	1900	2000	active	\N	\N	2023-10-26 09:08:49.258944+00	2023-10-26 09:08:49.258944+00	31950017-b731-4949-a8f5-3511b0b86b4e
a2bd961c-e371-4deb-b674-091862c3e0e8	Meeting	Guna		sameday	t	f	f	f	2023-10-21	2023-10-21	100	200	active	\N	\N	2023-10-20 07:15:30.074237+00	2023-10-20 07:15:30.074237+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
b66ce9dd-77dd-4cc7-854f-788c0cd4365e	Meeting	Office 		sameday	t	f	f	f	2023-10-29	2023-10-29	100	200	draft	\N	\N	2023-10-28 10:30:28.170468+00	2023-10-28 10:30:28.170468+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
4cf45361-d2a9-43e5-a44e-326f0ef18537	Dinner	Food Square		5minsbefore	t	f	f	t	2023-10-27	2023-10-27	1700	1800	active	\N	\N	2023-10-26 09:13:03.396866+00	2023-10-26 09:13:03.396866+00	31950017-b731-4949-a8f5-3511b0b86b4e
35a0d43c-79ad-4242-ac9a-fc90a1a67b6a	Date	Hehe		sameday	t	f	f	f	2023-10-22	2023-10-22	100	200	active	\N	\N	2023-10-21 05:15:04.938352+00	2023-10-21 05:15:04.938352+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
f3bf0d48-edca-4bd8-aa26-49c1b4bb703e	Date	Home		sameday	f	f	t	f	2023-10-23	2023-10-23	1200	1300	active	\N	\N	2023-10-23 06:01:11.369805+00	2023-10-23 06:01:11.369805+00	4fba49bf-fd42-45f1-abc5-1b2be1da82e0
83724c51-fc75-4d55-9333-da12c7cd8a6e	Meeting	Home		sameday	f	f	t	f	2023-11-01	2023-11-01	100	200	active	\N	\N	2023-10-23 06:01:55.119177+00	2023-10-23 06:01:55.119177+00	4fba49bf-fd42-45f1-abc5-1b2be1da82e0
82adf427-10d5-4a1c-a9b0-d036d879e94c	Brunch	Guna		sameday	t	f	f	f	2023-10-27	2023-10-27	1900	2000	active	\N	\N	2023-10-27 12:14:58.966234+00	2023-10-27 12:14:58.966234+00	28b72158-d944-4d9f-9923-e4dec3348de1
fcf419a7-1cfa-4fc2-a558-839a87d33e27	Brunch	Guna		sameday	t	f	f	f	2023-10-22	2023-10-22	800	900	active	\N	\N	2023-10-20 17:04:52.331439+00	2023-10-20 17:04:52.331439+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
d0295d3d-fe90-4884-9cc3-3031b726e2f2	Date	Ggg		sameday	t	f	f	f	2023-10-23	2023-10-23	1300	1400	active	\N	\N	2023-10-23 06:36:50.372636+00	2023-10-23 06:36:50.372636+00	2856a315-f4fb-4e30-8dc5-d614c9c9acce
752ca5bd-d548-48b5-85bf-07baa9be82f1	Date	Date		sameday	t	f	f	f	2023-10-24	2023-10-24	0	100	active	\N	\N	2023-10-23 06:42:09.948185+00	2023-10-23 06:42:09.948185+00	088d5892-bc83-45d7-9147-2106f86757ab
c5ef642a-862d-4b56-a279-77a316867460	Meeting	Indore		sameday	t	f	f	f	2023-10-26	2023-10-26	900	1000	draft	\N	\N	2023-10-25 09:27:46.00901+00	2023-10-25 09:27:46.00901+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
6d807005-0b74-4bcd-b542-69944b9de2b8	Brunch	Ggg		sameday	t	f	f	f	2023-10-23	2023-10-23	1400	1500	active	\N	\N	2023-10-23 08:29:53.120471+00	2023-10-23 08:29:53.120471+00	088d5892-bc83-45d7-9147-2106f86757ab
99903d3a-4e71-445f-88fc-aed01a5425cb	Date	hello		sameday	f	f	t	f	2023-10-26	2023-10-26	1700	1800	active	\N	\N	2023-10-26 11:18:06.068794+00	2023-10-26 11:18:06.068794+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
391da4d3-9bee-42b6-9076-c30e29445a43	Dinner	Vbb		sameday	t	f	f	t	2023-10-26	2023-10-26	100	200	active	\N	\N	2023-10-23 08:30:23.762538+00	2023-10-23 08:30:23.762538+00	088d5892-bc83-45d7-9147-2106f86757ab
813361ed-a0b6-49dc-9262-6c9dbd42dcc5	Dinner	Food Square 		5minsbefore	f	f	t	f	2023-10-26	2023-10-26	1900	2000	active	\N	\N	2023-10-26 12:11:46.798422+00	2023-10-26 12:11:46.798422+00	af9b1415-ec35-4d98-8720-00838cc9db1c
d3c2ecb0-4bb1-4188-8cca-22918be76d84	Meeting	Gvv		sameday	t	f	f	f	2023-10-24	2023-10-24	0	100	active	\N	\N	2023-10-23 08:29:26.419385+00	2023-10-23 08:29:26.419385+00	088d5892-bc83-45d7-9147-2106f86757ab
bc2c5daf-779e-4851-b828-d512325c464d	Brunch	Vvv		sameday	t	f	f	f	2023-10-25	2023-10-25	100	200	active	\N	\N	2023-10-23 08:30:07.225832+00	2023-10-23 08:30:07.225832+00	088d5892-bc83-45d7-9147-2106f86757ab
4a17988f-9601-4bcf-bdc6-6eea56e24ddc	Dinner	Vbb. 		sameday	t	f	f	t	2023-10-27	2023-10-27	100	200	active	\N	\N	2023-10-23 08:30:42.19638+00	2023-10-23 08:30:42.19638+00	088d5892-bc83-45d7-9147-2106f86757ab
7241fe41-a8a9-46ba-b02a-675c8112282e	Brunch	Hhb		sameday	t	f	f	f	2023-10-28	2023-10-28	100	200	active	\N	\N	2023-10-23 08:31:06.526455+00	2023-10-23 08:31:06.526455+00	088d5892-bc83-45d7-9147-2106f86757ab
08b15901-6221-4b51-9390-cc83b68553ea	Graduation 	Venue 		sameday	f	f	t	f	2023-10-28	2023-10-28	0	100	active	\N	\N	2023-10-24 12:34:04.758644+00	2023-10-24 12:34:04.758644+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
43047c54-9102-4548-80ac-927e61805502	Date	The Heaven		10minsbefore	t	f	f	t	2023-10-27	2023-10-27	0	100	active	\N	\N	2023-10-26 12:12:29.652543+00	2023-10-26 12:12:29.652543+00	af9b1415-ec35-4d98-8720-00838cc9db1c
06291fc1-4f49-4e45-841f-5568b38062e9	Meeting	Guna		sameday	t	f	f	f	2023-10-26	2023-10-26	100	200	draft	\N	\N	2023-10-25 05:31:43.088306+00	2023-10-25 05:31:43.088306+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
424be2ff-868f-454f-b4b5-0acaee1e3d27	Date	Park 		sameday	t	f	f	f	2023-10-28	2023-10-28	1700	1800	draft	\N	\N	2023-10-28 10:28:20.26536+00	2023-10-28 10:28:20.26536+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
8e681d0d-a9f9-4c74-bd72-c33188a4d88d	Meeting	At My Place 		sameday	t	f	f	f	2023-10-25	2023-10-25	1500	1600	active	\N	\N	2023-10-25 08:59:22.777344+00	2023-10-25 08:59:22.777344+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
83fe6687-5702-4821-a0b5-6e0cc2caf6a5	Meeting	Auto 		sameday	t	f	f	f	2023-10-29	2023-10-29	100	200	draft	\N	\N	2023-10-28 10:28:54.238967+00	2023-10-28 10:28:54.238967+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
1e8c3028-7a79-48df-ade7-e42300e9c71b	Dinner	Nakrani Dhani		sameday	t	f	f	f	2023-11-05	2023-11-05	2200	2300	active	\N	\N	2023-11-01 07:19:16.564819+00	2023-11-01 07:19:16.564819+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
9ecbad76-d8c8-4309-9787-d10e9a2a1f69	Meeting	Guna		10minsbefore	t	f	f	t	2023-10-30	2023-10-30	1500	1600	active	\N	\N	2023-10-30 07:47:53.501004+00	2023-10-30 07:47:53.501004+00	95109dc9-05d5-48a3-8c46-8f2356993f68
9e7e3a26-501a-41d1-ae71-83483eafc174	First Meeting	TWG Tea		sameday	f	f	t	t	2023-11-02	2023-11-02	1400	1500	active	\N	\N	2023-11-02 05:12:23.596559+00	2023-11-02 05:12:23.596559+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
929e4f4a-8ccd-4777-8510-5f6d601c5f06	Meeting	Bh		sameday	f	f	t	f	2023-10-27	2023-10-27	100	200	active	\N	\N	2023-10-26 12:37:53.076326+00	2023-10-26 12:37:53.076326+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
d026abcf-cd51-4f14-9a34-d110d84dc703	Meeting	My Home		sameday	t	f	f	f	2023-10-25	2023-10-25	1700	1800	active	\N	\N	2023-10-25 09:46:42.062942+00	2023-10-25 09:46:42.062942+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
6b029f57-9d86-451e-97c7-28d793943064	Dinner	Hotel M 		sameday	t	f	f	f	2023-10-25	2023-10-25	2000	2100	active	\N	\N	2023-10-25 11:07:22.23723+00	2023-10-25 11:07:22.23723+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
888bdd7b-a83f-4d92-a9db-aa0eb6b608c6	Dinner	Indore 		sameday	t	f	f	f	2023-11-01	2023-11-01	100	200	active	\N	\N	2023-10-30 15:30:56.825235+00	2023-10-30 15:30:56.825235+00	95109dc9-05d5-48a3-8c46-8f2356993f68
cc46e975-c089-45b6-b575-df4e32cfc22f	Meeting	Belly Garden		sameday	t	f	f	t	2023-10-30	2023-10-30	1200	1300	active	\N	\N	2023-10-26 12:38:17.872279+00	2023-10-26 12:38:17.872279+00	af9b1415-ec35-4d98-8720-00838cc9db1c
fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc	Meeting	Guna		sameday	t	f	f	f	2023-10-28	2023-10-28	100	200	draft	\N	\N	2023-10-26 05:43:31.999611+00	2023-10-26 05:43:31.999611+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
57220ae9-e1bc-4770-90b6-6a55678a1edb	Date	Indore 		sameday	t	f	f	f	2023-11-02	2023-11-02	0	100	active	\N	\N	2023-10-30 15:34:42.780826+00	2023-10-30 15:34:42.780826+00	95109dc9-05d5-48a3-8c46-8f2356993f68
250a5702-ac8d-4b8a-bc47-a81bcb8638af	Brunch	Guna		sameday	t	f	f	f	2023-10-28	2023-10-28	0	100	active	\N	\N	2023-10-27 06:45:14.371317+00	2023-10-27 06:45:14.371317+00	af9b1415-ec35-4d98-8720-00838cc9db1c
b98dbccd-a1ca-4d18-b0c0-3c67a03e5265	Meeting	Indore		sameday	f	f	t	f	2023-10-28	2023-10-28	0	100	active	\N	\N	2023-10-27 07:04:28.599435+00	2023-10-27 07:04:28.599435+00	af9b1415-ec35-4d98-8720-00838cc9db1c
3f4dae34-1378-45c1-9f51-d87fcfd4f236	Meeting	Guna		10minsbefore	t	f	f	t	2023-11-03	2023-11-03	1400	1500	active	\N	\N	2023-11-03 05:55:42.240905+00	2023-11-03 05:55:42.240905+00	95109dc9-05d5-48a3-8c46-8f2356993f68
b6101a7f-da54-4120-8c44-bf7738343bbd	Brunch	Indore 		sameday	t	f	f	f	2023-10-30	2023-10-30	100	200	active	\N	\N	2023-10-30 15:29:13.277365+00	2023-10-30 15:29:13.277365+00	95109dc9-05d5-48a3-8c46-8f2356993f68
c7436aa6-7700-4c14-bb24-c5f03e8795bb	Hello Dost 	Home Screen 		sameday	f	f	t	f	2023-11-02	2023-11-02	1900	2000	active	\N	\N	2023-10-31 13:16:30.337148+00	2023-10-31 13:16:30.337148+00	088d5892-bc83-45d7-9147-2106f86757ab
f84e3ae0-0e65-4008-9bf9-4e2309ba3334	Dinner	Guna		sameday	t	f	f	f	2023-11-05	2023-11-05	1900	2000	active	\N	\N	2023-11-03 05:56:42.617865+00	2023-11-03 05:56:42.617865+00	95109dc9-05d5-48a3-8c46-8f2356993f68
461aa689-5493-4651-933d-bb8b6270ad6d	Date	Hotel		sameday	t	f	f	f	2023-11-02	2023-11-02	1200	1300	active	\N	\N	2023-11-01 07:02:26.193502+00	2023-11-01 07:02:26.193502+00	088d5892-bc83-45d7-9147-2106f86757ab
798d1718-a3c2-4829-9e02-74584910e52e	Brunch	Guna		sameday	f	f	t	f	2023-11-07	2023-11-07	800	900	active	\N	\N	2023-11-03 05:57:41.806585+00	2023-11-03 05:57:41.806585+00	95109dc9-05d5-48a3-8c46-8f2356993f68
fc403801-43dc-4705-9a73-80b731c81d74	Date	Guna		sameday	t	f	f	f	2023-11-03	2023-11-03	1200	1300	draft	\N	\N	2023-11-03 06:04:48.71369+00	2023-11-03 06:04:48.71369+00	95109dc9-05d5-48a3-8c46-8f2356993f68
1e402c32-6c79-4623-a6cd-1bc6fd7acb31	Date	Guna		sameday	t	f	f	f	2023-11-03	2023-11-03	1200	1300	draft	\N	\N	2023-11-03 06:04:20.505633+00	2023-11-03 06:04:20.505633+00	95109dc9-05d5-48a3-8c46-8f2356993f68
54bbe1a0-f624-4e5f-8fe3-f59031fb15d7	Dinner	Guna		sameday	t	f	f	f	2023-11-03	2023-11-03	1200	1300	active	\N	\N	2023-11-03 06:01:23.963325+00	2023-11-03 06:01:23.963325+00	95109dc9-05d5-48a3-8c46-8f2356993f68
c0f04347-177a-4fb4-aa99-d07544738b93	Brunch	Guna		sameday	t	f	f	f	2023-11-04	2023-11-04	0	100	active	\N	\N	2023-11-03 06:14:34.751646+00	2023-11-03 06:14:34.751646+00	95109dc9-05d5-48a3-8c46-8f2356993f68
889a5b43-fd33-4305-be5a-ea2afffa7f94	Date	Guna		sameday	t	f	f	f	2023-11-03	2023-11-03	1200	1300	active	\N	\N	2023-11-03 06:05:48.436519+00	2023-11-03 06:05:48.436519+00	95109dc9-05d5-48a3-8c46-8f2356993f68
858d7bd1-9f54-4fe2-b825-4b94f3189452	Date	Hkl		sameday	t	f	f	f	2023-11-03	2023-11-03	1600	1700	draft	\N	\N	2023-11-03 09:44:27.511818+00	2023-11-03 09:44:27.511818+00	95109dc9-05d5-48a3-8c46-8f2356993f68
c5f91c25-22d8-4954-b03c-ab0c2b2c3134	Meeting	Hotel Rajvillas Guna, AB Road, Piprodha Khurd, Nana Khedi, Guna, Madhya Pradesh, India		sameday	f	f	t	f	2023-11-04	2023-11-04	1600	1700	active	77.3316621	24.672040199999998	2023-11-03 09:55:24.283927+00	2023-11-03 09:55:24.283927+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
82be2cbd-8a07-4ca7-8f58-6e5111ffa02d	Meeting	Offingen, Germany		sameday	t	f	f	f	2023-11-06	2023-11-06	1700	1800	draft	10.3646815	48.4822973	2023-11-06 10:04:56.778335+00	2023-11-06 10:04:56.778335+00	088d5892-bc83-45d7-9147-2106f86757ab
a98534d0-d188-410f-98d5-f723814b3d5e	Meeting	Indore		sameday	t	f	f	t	2023-10-28	2023-10-28	900	1000	active	\N	\N	2023-10-27 12:14:04.195412+00	2023-10-27 12:14:04.195412+00	28b72158-d944-4d9f-9923-e4dec3348de1
87106bf8-0cd6-4546-8a46-94c14156dd28	Date	Finistere, France		sameday	f	f	t	f	2023-11-06	2023-11-06	1700	1800	active	-3.9300524999999995	48.252024899999995	2023-11-06 11:01:46.731079+00	2023-11-06 11:01:46.731079+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
9d82eb56-722d-4fa8-8f11-a042bd65845c	Date	Guna		sameday	t	t	t	f	2023-11-11	2023-11-11	1100	1200	active	\N	\N	2023-11-03 05:59:22.198497+00	2023-11-03 05:59:22.198497+00	95109dc9-05d5-48a3-8c46-8f2356993f68
8fb60e4f-6609-4a82-ba05-a84c8c84c95a	Meeting	Indore, Madhya Pradesh, India		sameday	t	t	f	f	2023-11-11	2023-11-11	950	1050	active	75.8577258	22.7195687	2023-11-10 05:14:00.362023+00	2023-11-10 05:14:00.362023+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
c20cd722-be19-4538-8f4d-01a46769cc31	Meeting	PieCodes Private Limited, Krisnani Nagar, Guna, Madhya Pradesh, India		15minsbefore	t	f	f	t	2023-11-06	2023-11-06	1800	1900	active	77.3001762	24.632364799999998	2023-11-06 11:13:26.045138+00	2023-11-06 11:13:26.045138+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
79f6dbac-1c41-466d-95a6-b0e7d2602fb8	Dinner	PieCodes Private Limited, Krisnani Nagar, Guna, Madhya Pradesh, India		sameday	t	f	f	t	2023-11-06	2023-11-06	1850	1900	active	77.3001762	24.632364799999998	2023-11-06 11:54:55.012625+00	2023-11-06 11:54:55.012625+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
206f9a1f-76e4-44d4-99e9-c154cc48622c	Date	PieCodes Private Limited, Krisnani Nagar, Guna, Madhya Pradesh, India		30minsbefore	t	f	f	t	2023-11-06	2023-11-06	1900	2000	active	77.3001762	24.632364799999998	2023-11-06 12:21:43.483055+00	2023-11-06 12:21:43.483055+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
b9532cce-fd59-4dbc-a2f1-30bd396d8ddd	Meeting	Guntur, Andhra Pradesh, India		sameday	t	f	t	f	2023-11-11	2023-11-11	650	750	active	80.4365402	16.3066525	2023-11-11 04:56:19.415548+00	2023-11-11 04:56:19.415548+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
cd6a016a-cabe-42ae-a038-46dde51a132e	Meeting	Hotel Rajvillas Guna, AB Road, Piprodha Khurd, Nana Khedi, Guna, Madhya Pradesh, India		sameday	t	f	f	f	2023-11-07	2023-11-07	1200	1300	active	77.3316621	24.6720402	2023-11-07 05:20:55.160786+00	2023-11-07 05:20:55.160786+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
f3cf11f9-2914-466f-be2c-452bc42ae2a7	Meeting	Office		sameday	t	f	f	f	2023-11-06	2023-11-06	1800	1900	draft	\N	\N	2023-11-06 10:32:33.549466+00	2023-11-06 10:32:33.549466+00	28b72158-d944-4d9f-9923-e4dec3348de1
f7a457d5-f866-4387-901d-d615e11a5c3d	Meeting	Guna, Madhya Pradesh, India		sameday	f	f	t	f	2023-11-08	2023-11-08	645	745	active	77.3001762	24.632364799999998	2023-11-08 12:28:01.389023+00	2023-11-08 12:28:01.389023+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
cc7dae61-d524-4b7c-ade7-7446abf17745	Meeting	Guna, Madhya Pradesh, India		sameday	f	f	t	f	2023-11-08	2023-11-08	1350	1450	active	77.3001762	24.632364799999998	2023-11-08 12:39:01.570832+00	2023-11-08 12:39:01.570832+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
babc1cd1-4639-4724-8091-37ba8887ae96	Date	로펌		sameday	t	f	f	f	2023-11-13	2023-11-13	200	400	active	\N	\N	2023-11-08 17:40:56.680012+00	2023-11-08 17:40:56.680012+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
0ddddce7-ef30-442f-a7a4-57b00e6c4780	Meeting	Guna, Madhya Pradesh, India		sameday	t	f	t	f	2023-11-09	2023-11-09	550	600	active	77.3001762	24.632364799999998	2023-11-09 05:18:41.427604+00	2023-11-09 05:18:41.427604+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
5356d79d-78dd-44b2-bf9d-2230e6f742d6	Date	Homestead, FL, USA		15minsbefore	f	f	t	f	2023-11-09	2023-11-09	1150	1250	active	-80.4775569	25.468722399999997	2023-11-09 10:58:33.220131+00	2023-11-09 10:58:33.220131+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
ec2ec629-46c8-48c4-89a3-4f8e6db2a771	Date	Germany		sameday	f	f	t	f	2023-11-09	2023-11-09	1150	1200	active	10.451526	51.165690999999995	2023-11-09 11:05:22.356766+00	2023-11-09 11:05:22.356766+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
a35ede1c-d394-4226-939f-286e5fc8757f	Meeting	Guna, Madhya Pradesh, India		sameday	f	f	t	f	2023-11-10	2023-11-10	850	950	active	77.3001762	24.632364799999998	2023-11-10 04:50:29.950116+00	2023-11-10 04:50:29.950116+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
4a10ff25-a290-4b17-94fe-e2d0131b17ee	Dinner	Goa, India		sameday	t	f	t	f	2023-11-11	2023-11-11	750	850	active	74.12399599999999	15.299326499999998	2023-11-11 06:06:46.733084+00	2023-11-11 06:06:46.733084+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
5504cdc4-f3bc-47d2-9052-fba894d97e25	Date	Holland		1hourbefore	f	f	t	f	2023-11-10	2023-11-10	750	850	active	5.291265999999999	52.132633	2023-11-10 07:08:01.515275+00	2023-11-10 07:08:01.515275+00	088d5892-bc83-45d7-9147-2106f86757ab
302da2b7-0d0d-451f-b2e1-731113301afd	Meeting	Holland		15minsbefore	f	f	t	f	2023-11-10	2023-11-10	750	850	active	5.291265999999999	52.132633	2023-11-10 07:08:31.739595+00	2023-11-10 07:08:31.739595+00	088d5892-bc83-45d7-9147-2106f86757ab
542286e1-d124-451b-9805-922575af6348	Meeting	Germany		sameday	t	f	f	f	2023-11-10	2023-11-10	750	850	active	10.451526	51.165690999999995	2023-11-10 07:09:34.27051+00	2023-11-10 07:09:34.27051+00	088d5892-bc83-45d7-9147-2106f86757ab
51a81443-fe41-4f59-84bf-7b4218464f91	Meeting	Heidelberg, Germany		15minsbefore	t	f	f	t	2023-11-10	2023-11-10	1050	1150	active	8.6724335	49.3987524	2023-11-10 10:15:18.354075+00	2023-11-10 10:15:18.354075+00	088d5892-bc83-45d7-9147-2106f86757ab
291f586d-1433-47f2-b16e-90dd4a724308	Date	Ohio, USA		sameday	f	f	t	f	2023-11-10	2023-11-10	1150	1250	active	-82.90712300000001	40.417287099999996	2023-11-10 10:32:47.704925+00	2023-11-10 10:32:47.704925+00	088d5892-bc83-45d7-9147-2106f86757ab
365330ee-9929-4236-843d-79818538ae53	Brunch	France		sameday	f	f	t	f	2023-11-10	2023-11-10	1150	1250	active	2.213749	46.227638	2023-11-10 10:37:55.869026+00	2023-11-10 10:37:55.869026+00	088d5892-bc83-45d7-9147-2106f86757ab
fb1e782d-a340-4314-b2c7-5720b163814a	Event	Oman		30minsbefore	t	f	f	t	2023-11-10	2023-11-10	1350	1450	active	55.975412999999996	21.4735329	2023-11-10 12:47:41.594658+00	2023-11-10 12:47:41.594658+00	088d5892-bc83-45d7-9147-2106f86757ab
651e666b-ec1b-4fe6-8b3a-47087a2c93dd	Brunch	Gwalior, Madhya Pradesh, India		sameday	t	f	t	f	2023-11-13	2023-11-13	650	750	active	78.1772053	26.2124007	2023-11-11 05:06:48.71989+00	2023-11-11 05:06:48.71989+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
3fc7d154-aced-44d4-b579-476d39c646d7	Date			sameday	t	f	t	f	2023-11-16	2023-11-16	550	650	active	10.451526	51.165691	2023-11-16 04:56:59.535205+00	2023-11-16 04:56:59.535205+00	088d5892-bc83-45d7-9147-2106f86757ab
ffc1743d-b8e6-4988-ad1d-4be6742173ca	Date			sameday	f	f	t	f	2023-11-16	2023-11-16	550	650	active	90.356331	23.684994	2023-11-16 04:55:44.03199+00	2023-11-16 04:55:44.03199+00	088d5892-bc83-45d7-9147-2106f86757ab
\.


--
-- Data for Name: chat_message_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_message_attachments" ("id", "file_name", "url", "created_at", "updated_at", "chat_id", "message_id", "event_id") FROM stdin;
4d57c1f0-d669-498c-a7ff-3c2c573f6a0f	\N	\N	2023-10-20 07:17:39.450187+00	2023-10-20 07:17:39.450187+00	\N	b5e017cd-5f17-4fd7-8923-349fdf50cee5	\N
de814435-be84-4e5d-9324-62dbb74f244b	\N	\N	2023-10-20 07:18:22.946067+00	2023-10-20 07:18:22.946067+00	\N	421d9049-35ef-48d1-af3b-168dc3fd0adb	\N
72e9930e-cb69-4e71-bb8a-1c781729a08f	\N	\N	2023-10-20 07:18:50.932018+00	2023-10-20 07:18:50.932018+00	\N	fb9f4554-5a72-4070-930d-5277c1cc833f	\N
d9655479-8e91-46a9-aaa8-f9e152305114	\N	\N	2023-10-20 07:19:09.570623+00	2023-10-20 07:19:09.570623+00	\N	898005b5-8d39-4d16-968c-3240d7864f50	\N
54f980f7-d0ea-4e11-aa43-72c2cd4ce8b0	\N	\N	2023-10-20 07:19:19.249011+00	2023-10-20 07:19:19.249011+00	\N	43ecd39d-ee7b-4504-aef5-19b4bd6128c1	\N
f8da97a8-18c2-4480-8f4c-2eba2faf4d9f	\N	\N	2023-10-20 07:24:59.60353+00	2023-10-20 07:24:59.60353+00	\N	09add2f2-c825-4006-9707-79a279f3f329	\N
da7e4e8e-d71f-4e04-b4d3-aa2c190daf50	\N	\N	2023-10-20 16:25:12.569595+00	2023-10-20 16:25:12.569595+00	\N	c584bc03-e23d-4398-be75-7a8960b3e645	\N
bdc5a4ec-7fdd-46c0-9f95-7ec1899a3ebe	\N	\N	2023-10-20 16:25:21.490465+00	2023-10-20 16:25:21.490465+00	\N	b9a160fa-d68c-488b-9c0c-029014d4148a	\N
67960d3a-723b-450c-af22-54aeab61c75b	\N	\N	2023-10-20 16:25:39.60742+00	2023-10-20 16:25:39.60742+00	\N	3419508d-2503-470f-9f13-d6f0302b0beb	\N
887271ec-1d59-4526-a8e8-040e28797b9a	\N	\N	2023-10-20 16:25:57.823893+00	2023-10-20 16:25:57.823893+00	\N	10e94a87-d20d-4451-bf25-255673af9839	\N
79d2eb7e-7e54-498f-846b-32159e8d697e	\N	\N	2023-10-20 16:26:09.839065+00	2023-10-20 16:26:09.839065+00	\N	4487ff40-8aa5-423f-83ee-5f2de9522119	\N
c374da3b-f7b4-419c-b5c4-ba1edf621323	\N	\N	2023-10-20 17:04:54.292086+00	2023-10-20 17:04:54.292086+00	\N	55f95847-4d8b-4569-a8f5-0498328ee0bd	fcf419a7-1cfa-4fc2-a558-839a87d33e27
ef737102-1b4c-483a-80ca-07cbdad20de6	\N	\N	2023-10-20 16:46:33.520969+00	2023-10-20 16:46:33.520969+00	\N	8909b827-7dcd-4132-ae28-03ca1e4e3a95	\N
63cc2c71-7746-4d87-ae32-6c6a0b5ff0d9	\N	\N	2023-10-25 05:31:44.604512+00	2023-10-25 05:31:44.604512+00	\N	612241b0-9ab5-430c-9d2e-c37debfeedb5	06291fc1-4f49-4e45-841f-5568b38062e9
141d5442-4df7-49a7-bbbf-0cf26807ab0c	\N	\N	2023-10-25 06:39:56.370475+00	2023-10-25 06:39:56.370475+00	\N	20e034bc-8c23-43cc-9091-4cbe28845c7b	\N
3b387d32-7da0-429d-9398-c7c5844ca48c	\N	\N	2023-10-25 06:56:32.307245+00	2023-10-25 06:56:32.307245+00	\N	4470cb04-8016-4aa6-9d23-715f7c4d89a6	\N
0093e0d6-6086-459f-a9dc-a9b84022c6d2	\N	\N	2023-10-25 06:59:20.135122+00	2023-10-25 06:59:20.135122+00	\N	7902faab-df3c-4e82-875a-06063c2e136a	\N
8e19837b-a0c0-4bb3-b6c3-76eaead364cb	\N	\N	2023-10-25 09:27:47.459028+00	2023-10-25 09:27:47.459028+00	\N	a85dd7de-8a03-4351-8ea4-ba5a2f9e6496	c5ef642a-862d-4b56-a279-77a316867460
6aa89507-e004-4526-abfd-03f30cba5630	\N	\N	2023-10-25 09:38:10.082284+00	2023-10-25 09:38:10.082284+00	\N	313b4708-d3fe-47f1-82eb-fdf418850926	\N
cd27ed5f-47fc-499b-8c0f-bae78d87dbf8	\N	\N	2023-10-25 09:46:43.91564+00	2023-10-25 09:46:43.91564+00	\N	2450d84b-47d6-45ed-9c88-4a5fc04f047f	d026abcf-cd51-4f14-9a34-d110d84dc703
41e23c7f-aba1-4767-9a57-d53d59f40c68	\N	\N	2023-10-25 11:07:23.654951+00	2023-10-25 11:07:23.654951+00	\N	6cab0652-133d-4f79-be46-2c8059d92de6	6b029f57-9d86-451e-97c7-28d793943064
c9429066-a02a-43b4-81b4-62bb75d18639	\N	\N	2023-10-26 05:43:34.148977+00	2023-10-26 05:43:34.148977+00	\N	cda75979-fa17-4f21-8170-0f6e9091fa1a	fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc
30301688-e99b-4cf7-96f5-7f8320b0f588	\N	\N	2023-10-26 09:24:30.161062+00	2023-10-26 09:24:30.161062+00	\N	7adb7085-ef16-4327-9ca8-4fbdab8bc995	\N
2ac9202c-0ce9-405c-82be-415fb76d926c	\N	\N	2023-10-26 09:25:07.913185+00	2023-10-26 09:25:07.913185+00	\N	a8b198b1-04b2-4b9b-bce3-97dc3118593b	\N
5a287376-cfda-4d3e-9a83-894c05956894	\N	\N	2023-10-26 10:59:54.305346+00	2023-10-26 10:59:54.305346+00	\N	3d79fe28-87ec-4671-80c9-1b24ce8a8347	\N
db846319-ba34-40fe-8935-1272ef8bb996	\N	\N	2023-10-26 11:47:03.90965+00	2023-10-26 11:47:03.90965+00	\N	9271eedc-86ed-4642-87a5-0de49819b41f	\N
9030a37a-8e81-497e-914a-ee80e383680f	\N	\N	2023-10-26 12:09:57.912698+00	2023-10-26 12:09:57.912698+00	\N	1083b365-ecd2-4c47-ab96-8cf83acfbdd9	\N
526e7cfe-565d-4a1b-a5f9-2d139f0658ff	\N	\N	2023-10-26 12:19:10.235125+00	2023-10-26 12:19:10.235125+00	\N	09974c63-e3c9-43bc-9efe-4d22fecca6df	\N
cea1b628-af2a-40d5-a459-41fe0396ab2f	\N	\N	2023-10-27 06:18:49.403844+00	2023-10-27 06:18:49.403844+00	\N	c964ea34-5182-4d18-8ff2-532ff85db405	\N
ff609d65-36df-4584-9d3b-7dcb2b7b5473	\N	\N	2023-10-27 06:45:15.871878+00	2023-10-27 06:45:15.871878+00	\N	ae43e2b4-3e57-4f35-aa82-fc8b3b5097ee	250a5702-ac8d-4b8a-bc47-a81bcb8638af
782358ab-136b-482c-92ab-b71af51a40b7	\N	\N	2023-10-27 11:58:23.115597+00	2023-10-27 11:58:23.115597+00	\N	e644c153-30a0-4c1c-9381-9f85477ad6ad	\N
c935b2f3-745b-47c2-b1d2-51dd35c6f81c	\N	\N	2023-10-27 11:58:38.397821+00	2023-10-27 11:58:38.397821+00	\N	17899590-2abc-4add-bf80-3d985785d8ff	\N
162ad0f4-6703-4654-8eb9-55c1e5fe0706	\N	\N	2023-10-27 12:00:20.583945+00	2023-10-27 12:00:20.583945+00	\N	8e2f055d-6532-456e-9991-746e34234825	\N
301a2baf-1541-4946-b469-31b68061de44	\N	\N	2023-10-27 12:00:55.685436+00	2023-10-27 12:00:55.685436+00	\N	acd41eaa-8424-438c-9cd1-69ac84fd163e	\N
ef0b931e-05e7-4dea-9241-144e4051d678	\N	\N	2023-10-27 12:01:16.109663+00	2023-10-27 12:01:16.109663+00	\N	45447399-0944-40f7-86bb-378dd85463d2	\N
4787957e-291d-4951-9fae-daa4ddbdf3bf	\N	\N	2023-10-27 12:01:21.913499+00	2023-10-27 12:01:21.913499+00	\N	ca47d66f-85b5-45ab-a964-bbbdd7041d64	\N
6cae2d92-1fc2-4fa5-a882-9eee426821ae	\N	\N	2023-10-27 12:01:45.622963+00	2023-10-27 12:01:45.622963+00	\N	bd9f9d40-48e6-4b80-8afa-3561ab4cf141	\N
cfec26ef-a8ed-4408-ab95-d76e2379e8a9	\N	\N	2023-10-27 12:01:58.768673+00	2023-10-27 12:01:58.768673+00	\N	8735785f-92aa-499b-9d4c-5bf4676578f7	\N
40deb49b-00fc-4dea-83e6-fe3c49f07302	\N	\N	2023-10-27 12:05:22.581662+00	2023-10-27 12:05:22.581662+00	\N	fe5ffb56-fdc0-4aec-9f37-6d2176491211	\N
b6154606-52d7-4580-837d-d8c2b5313b2f	\N	\N	2023-10-27 12:07:14.032314+00	2023-10-27 12:07:14.032314+00	\N	07ec918f-8926-4795-a516-85dd490af3c0	\N
9bf49b9b-d9e4-4d27-87cc-92684ad388ba	\N	\N	2023-10-27 12:21:44.824989+00	2023-10-27 12:21:44.824989+00	\N	d870b400-c1e1-4b60-a755-c3f65a55bad6	\N
75f1361c-bc2c-4c5a-bc29-dbcf8717e084	\N	\N	2023-10-27 12:29:50.038168+00	2023-10-27 12:29:50.038168+00	\N	2d56b587-f033-4547-b11e-57ac09cb64c4	\N
f6c94e40-1d2c-4a38-83c7-358866d9d090	\N	\N	2023-10-27 12:30:31.762269+00	2023-10-27 12:30:31.762269+00	\N	ca8c4e3b-fd0c-4c5e-afc8-b0be47477497	\N
38007f8e-b9c9-46d3-992d-4ad88223d981	\N	\N	2023-10-27 12:31:58.885432+00	2023-10-27 12:31:58.885432+00	\N	26e18b96-c521-4e09-bb93-57b2bbfa572a	\N
2d3c0625-3894-4545-9745-3ba1703bf4aa	\N	\N	2023-10-27 12:34:29.853585+00	2023-10-27 12:34:29.853585+00	\N	4726a730-c52b-4763-891c-850b1a0c406d	\N
e510c4e3-d6df-474d-8b0f-f22b8ef04a0f	\N	\N	2023-10-27 12:35:10.071537+00	2023-10-27 12:35:10.071537+00	\N	055baa61-22ea-49cc-b4e1-4e79958fbb7d	\N
9de4d7f6-e67e-4587-bb01-f3b7996f91c9	\N	\N	2023-10-27 12:58:02.939541+00	2023-10-27 12:58:02.939541+00	\N	23a3c215-b744-4273-ad50-e505d9bdaa69	\N
e2278de8-d85f-4050-825d-955602146716	\N	\N	2023-10-27 12:58:16.485521+00	2023-10-27 12:58:16.485521+00	\N	0d1e6e9b-b393-4297-b0fb-fdc48853543a	\N
a0e27dde-ea71-406f-ba2b-d72419d98be1	Image_created_with_a_mobile_phone.png	https://isadate.piecodes.in/media/Image_created_with_a_mobile_phone.a3565e82-5f54-4b24-9964-a33aa4ba9fc1.png	2023-10-27 15:33:33.222328+00	2023-10-27 15:33:33.222328+00	\N	b9c885fa-b37b-4181-ae20-2ed2c70478ab	\N
651f0679-3e26-4603-85e2-61000e746974	scaled_IMG_20231027_211323.jpg	https://isadate.piecodes.in/media/scaled_IMG_20231027_211323.d48239b5-8961-4f48-9b59-54ca66b75623.jpg	2023-10-27 15:43:46.348959+00	2023-10-27 15:43:46.348959+00	\N	732e9d2f-77f2-46f7-9ff2-a4ea89cb9c5e	\N
4f51f588-f25d-4ba6-923a-3e330a36ea82	scaled_IMG_20231027_211323.jpg	https://isadate.piecodes.in/media/scaled_IMG_20231027_211323.7fd418db-1e9b-41bd-9e97-fd716ea61fb4.jpg	2023-10-27 15:44:58.416713+00	2023-10-27 15:44:58.416713+00	\N	3322a4b3-909a-41be-bf5b-52e5e755606d	\N
031fc5dc-ac49-4e78-a8a5-3c29d156543b	\N	\N	2023-10-23 06:42:31.409836+00	2023-10-23 06:42:31.409836+00	\N	\N	\N
f826e7b2-ac8a-46d5-a404-af752d29a1af	\N	\N	2023-10-23 07:20:00.360724+00	2023-10-23 07:20:00.360724+00	\N	\N	\N
80a89141-5f5a-4ddc-bdef-fa5734116c91	\N	\N	2023-10-23 08:48:45.072457+00	2023-10-23 08:48:45.072457+00	\N	\N	\N
70aa38fe-64f9-4a5c-bda5-ac7e367e0405	\N	\N	2023-10-28 10:27:05.332781+00	2023-10-28 10:27:05.332781+00	\N	f74ec2f7-f1cd-4c93-82d7-2449f27ea91c	\N
3adf7f29-5ef8-419b-8691-e1f931b163ee	\N	\N	2023-10-28 10:27:25.701176+00	2023-10-28 10:27:25.701176+00	\N	0c78a990-e305-4a42-8eec-08f6bd1a36d9	\N
4fbf7dc6-f9c5-4020-a973-9da5b1ca2100	\N	\N	2023-10-28 10:53:10.377526+00	2023-10-28 10:53:10.377526+00	\N	280f328d-0c77-49f3-a102-84e7290ef551	\N
78d333ab-2ed9-4018-ab8d-29b3115a83f6	\N	\N	2023-10-28 10:53:49.146551+00	2023-10-28 10:53:49.146551+00	\N	3e313992-8830-4353-af27-383324cbb99c	\N
f3fe5ce0-7a6d-4461-8d3a-28ea8bbf826e	\N	\N	2023-10-30 07:50:43.236892+00	2023-10-30 07:50:43.236892+00	\N	3c3256e3-301b-401b-b3de-3faf24ea3ac2	\N
a58684dc-8560-455d-84bd-bd6558cce24c	\N	\N	2023-10-30 07:51:15.400265+00	2023-10-30 07:51:15.400265+00	\N	2fee77b7-bcf7-417e-aa50-4dc2e8e2a42f	\N
80ff3856-8ec2-4f08-aae6-b979f63be276	\N	\N	2023-10-31 13:10:23.189814+00	2023-10-31 13:10:23.189814+00	\N	3802dbce-9797-4032-86a1-08e0dfa962ca	\N
72cbde09-4184-4105-97dc-9eb28d2cf8e7	\N	\N	2023-11-01 07:02:28.019018+00	2023-11-01 07:02:28.019018+00	\N	eca782d6-cc79-4dc8-9a85-ef6334271e64	461aa689-5493-4651-933d-bb8b6270ad6d
2e21e896-763c-4988-8605-a26cb1ff954c	\N	\N	2023-11-01 07:19:18.160413+00	2023-11-01 07:19:18.160413+00	\N	16230b8f-9230-46c9-b542-c4b722d82c90	1e8c3028-7a79-48df-ade7-e42300e9c71b
1f5d0103-cffe-4596-8bd0-8a60f9957bc0	Image_created_with_a_mobile_phone.png	https://isadate.piecodes.in/media/Image_created_with_a_mobile_phone.fbbc8884-83b7-492e-beac-8c028b0950fb.png	2023-11-02 09:21:36.830417+00	2023-11-02 09:21:36.830417+00	\N	88b4fc7c-f922-4577-b30f-9f7b07070f14	\N
bfad35c7-a1d8-4cc2-a157-7a14a7180153	scaled_IMG_20231102_144621.jpg	https://isadate.piecodes.in/media/scaled_IMG_20231102_144621.ecba815f-6991-4105-b6e7-8d1f87d24041.jpg	2023-11-02 09:23:47.957876+00	2023-11-02 09:23:47.957876+00	\N	f08150c2-4f13-4d7a-9586-f0f18930bca2	\N
094048c3-01d2-46a2-a7ef-c82492da40a6	\N	\N	2023-11-03 06:00:03.430883+00	2023-11-03 06:00:03.430883+00	\N	0c549b43-c8db-4316-9c73-b15a32bd5933	\N
283199df-7ce3-4f95-af0c-c896618f80e5	\N	\N	2023-11-03 06:01:25.45727+00	2023-11-03 06:01:25.45727+00	\N	c9e335d2-e474-45f4-ab69-6b4a3f56d87a	54bbe1a0-f624-4e5f-8fe3-f59031fb15d7
3dfa0aa0-0906-41e5-a1a6-f74cd0689211	\N	\N	2023-11-03 06:02:03.07686+00	2023-11-03 06:02:03.07686+00	\N	\N	\N
a4ea301b-787d-456f-8ffd-8a7784809cef	scaled_IMG-20231106-WA0020.jpg	https://isadate.piecodes.in/media/scaled_IMG-20231106-WA0020.cee112d8-a784-4468-9464-27bb67abf43d.jpg	2023-11-06 10:03:33.851808+00	2023-11-06 10:03:33.851808+00	\N	ab1b42a1-2df7-4541-a029-fd7fe5b34127	\N
18d73e3e-5275-4b96-8448-a2b86e97b005	\N	\N	2023-11-03 06:03:54.060313+00	2023-11-03 06:03:54.060313+00	\N	\N	\N
007e0759-74fc-45a6-8535-a147f830a9e5	\N	\N	2023-11-03 06:05:50.402882+00	2023-11-03 06:05:50.402882+00	\N	20907430-d424-410f-8597-ccef4aa85667	889a5b43-fd33-4305-be5a-ea2afffa7f94
12dcceaa-a951-4203-abb8-44339c3faed7	\N	\N	2023-11-03 06:09:58.415974+00	2023-11-03 06:09:58.415974+00	\N	4fc0a121-250a-40f2-a69d-9d67bcd05177	\N
7d869856-e99d-4b21-bfd7-1e3f047428db	\N	\N	2023-11-03 06:10:02.885793+00	2023-11-03 06:10:02.885793+00	\N	0a121362-124b-4ba1-b16c-edecf8db4414	\N
a922c047-1f76-46e3-8751-188a4ea6b258	\N	\N	2023-11-03 06:11:11.939645+00	2023-11-03 06:11:11.939645+00	\N	c53c5678-d9ad-4a3d-8a04-23fc4a6ee9b6	\N
b4bb678f-6553-40da-9710-86a8c2f2bfd7	\N	\N	2023-11-03 09:44:28.927807+00	2023-11-03 09:44:28.927807+00	\N	26a101ec-903c-4130-b16f-196ec9697fbd	858d7bd1-9f54-4fe2-b825-4b94f3189452
5d7e857e-3324-4d7d-a437-fce2976eb1c1	\N	\N	2023-11-03 09:44:51.913445+00	2023-11-03 09:44:51.913445+00	\N	\N	\N
3dd6df8f-a708-4290-b321-bd64c247e7c2	\N	\N	2023-11-06 10:04:58.399393+00	2023-11-06 10:04:58.399393+00	\N	b2854b4b-2de1-408e-a58e-4ab357c4f783	82be2cbd-8a07-4ca7-8f58-6e5111ffa02d
f1e35a6d-b0c4-448a-8f75-8a6138ab8b57	\N	\N	2023-11-03 09:43:51.390223+00	2023-11-03 09:43:51.390223+00	\N	\N	\N
182abbcc-b673-442e-9714-0beb18b80107	\N	\N	2023-11-03 10:14:31.814494+00	2023-11-03 10:14:31.814494+00	\N	a5fb5716-2d04-4dff-97e0-012ca0108bfc	\N
b4e64e67-0964-4ace-ba97-a1fd3b5bfc35	\N	\N	2023-11-03 10:14:39.003352+00	2023-11-03 10:14:39.003352+00	\N	d63c41d8-8159-4f72-a2a2-7ab4d4fa4732	\N
ec45c2c1-8350-47fa-8ce8-98d6c054fb1d	scaled_IMG_20231102_144621.jpg	https://isadate.piecodes.in/media/scaled_IMG_20231102_144621.7e927e85-65bf-4527-9d3f-2211f57b934d.jpg	2023-11-03 10:14:57.530676+00	2023-11-03 10:14:57.530676+00	\N	075bbc69-63cb-4302-82eb-a35d5a82f019	\N
406e4f5f-9b72-4715-8505-959592666af0	\N	\N	2023-11-06 09:57:07.845113+00	2023-11-06 09:57:07.845113+00	\N	b9d3c131-5c8e-446c-b5c9-7ef27685e65b	\N
414d75bf-61ae-4bfb-8daf-225f1425eb8b	\N	\N	2023-11-06 10:31:59.000883+00	2023-11-06 10:31:59.000883+00	\N	9cee182f-8fbb-426f-9de7-bb0ccad0e93c	\N
088b67f7-d19c-4bdf-830d-d898b7838eae	\N	\N	2023-11-06 10:32:35.155614+00	2023-11-06 10:32:35.155614+00	\N	eec0bf60-3e6a-46ef-bff3-4fcbee8ef024	f3cf11f9-2914-466f-be2c-452bc42ae2a7
14865892-b08a-49a6-b886-4e399d1885d9	\N	\N	2023-11-06 10:33:04.969413+00	2023-11-06 10:33:04.969413+00	\N	18d2dbf2-5546-4559-bdc5-2dea9a2853c0	\N
ad270b04-d636-49b9-8707-133ec8088b0e	\N	\N	2023-11-06 10:33:45.31093+00	2023-11-06 10:33:45.31093+00	\N	4cf0f2b5-9e14-45a4-979d-a720bd9a473b	\N
e53b3477-d132-4064-b62e-0ef9a0e35c22	\N	\N	2023-11-06 10:34:04.160523+00	2023-11-06 10:34:04.160523+00	\N	d8618c45-6c1e-430c-a94b-1eb528848131	\N
2b492b5d-a255-4028-917c-607878102eda	\N	\N	2023-11-07 13:15:27.383942+00	2023-11-07 13:15:27.383942+00	\N	c823ee90-abc2-49ec-b9cf-b8c86cef696e	\N
02bf2d0b-d8b3-49f0-a2ab-d2da112d52ee	\N	\N	2023-11-07 13:15:47.372068+00	2023-11-07 13:15:47.372068+00	\N	48b679ae-053d-4219-9bc9-69ad1a404df1	\N
ae6c72f0-fa15-495d-bdf1-669355b90a4b	scaled_IMG-20231109-WA0000.jpg	https://isadate.piecodes.in/media/scaled_IMG-20231109-WA0000.b103c5b8-4023-46c3-83b3-6b35df192d1e.jpg	2023-11-09 05:04:35.965183+00	2023-11-09 05:04:35.965183+00	\N	eead2d23-cf58-4dad-a116-5880127c2dc8	\N
2d92abaf-fe0a-43d0-ac68-1a139eac9ff9	\N	\N	2023-11-09 06:31:02.582865+00	2023-11-09 06:31:02.582865+00	\N	95aaa33e-473c-41c7-aa38-529b95f67e81	\N
\.


--
-- Data for Name: event_attendences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_attendences" ("id", "note", "status", "created_at", "updated_at", "user_id", "event_id") FROM stdin;
\.


--
-- Data for Name: event_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_audiences" ("id", "status", "role", "created_at", "updated_at", "user_id", "event_id") FROM stdin;
d2256669-b3b5-4bff-a871-0a9076386af0	accepted	host	2023-10-20 07:15:30.164349+00	2023-10-20 07:15:30.164349+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a	a2bd961c-e371-4deb-b674-091862c3e0e8
f080e10a-ab4c-45d9-bf37-4464905b0f0f	accepted	participant	2023-10-20 07:15:30.164349+00	2023-10-20 07:15:30.164349+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	a2bd961c-e371-4deb-b674-091862c3e0e8
c42d9a55-1ef5-445f-b9bb-3280c0fcded2	accepted	host	2023-10-20 17:04:52.422883+00	2023-10-20 17:04:52.422883+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a	fcf419a7-1cfa-4fc2-a558-839a87d33e27
f1115e87-cea4-4d50-91be-703fd27be28a	accepted	participant	2023-10-25 09:27:46.100032+00	2023-10-25 09:27:46.100032+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	c5ef642a-862d-4b56-a279-77a316867460
bda37e36-8cce-4e81-97b6-12e201d3b25f	accepted	host	2023-10-21 05:15:05.030237+00	2023-10-21 05:15:05.030237+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf	35a0d43c-79ad-4242-ac9a-fc90a1a67b6a
c74002c7-6d92-40a3-aa50-f8a7ccf62954	accepted	participant	2023-10-21 05:15:05.030237+00	2023-10-21 05:15:05.030237+00	d8df09ce-7124-4c28-bb05-662a721dd5be	35a0d43c-79ad-4242-ac9a-fc90a1a67b6a
9861bb3e-fc54-4972-9997-9c87852fcdb1	pending	participant	2023-10-23 06:36:50.463059+00	2023-10-23 06:36:50.463059+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	d0295d3d-fe90-4884-9cc3-3031b726e2f2
2f19a35b-def2-4422-a062-39b8b11624e7	accepted	host	2023-10-23 06:36:50.463059+00	2023-10-23 06:36:50.463059+00	2856a315-f4fb-4e30-8dc5-d614c9c9acce	d0295d3d-fe90-4884-9cc3-3031b726e2f2
8fdceb87-c962-4222-902f-979b6e4b7942	accepted	host	2023-10-23 06:42:10.034686+00	2023-10-23 06:42:10.034686+00	088d5892-bc83-45d7-9147-2106f86757ab	752ca5bd-d548-48b5-85bf-07baa9be82f1
e54881d4-917b-437a-94c3-08240fdd8ed1	rejected	participant	2023-10-23 06:42:10.034686+00	2023-10-23 06:42:10.034686+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	752ca5bd-d548-48b5-85bf-07baa9be82f1
9b897389-276c-41a9-a633-246bffa57600	accepted	host	2023-10-23 08:29:26.509674+00	2023-10-23 08:29:26.509674+00	088d5892-bc83-45d7-9147-2106f86757ab	d3c2ecb0-4bb1-4188-8cca-22918be76d84
15800fd3-0171-4cc0-997b-aacb0a95610f	pending	participant	2023-10-23 08:29:53.206394+00	2023-10-23 08:29:53.206394+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	6d807005-0b74-4bcd-b542-69944b9de2b8
215663f1-5878-47a9-9edb-5539304daf1f	accepted	host	2023-10-23 08:29:53.206394+00	2023-10-23 08:29:53.206394+00	088d5892-bc83-45d7-9147-2106f86757ab	6d807005-0b74-4bcd-b542-69944b9de2b8
f7e14582-c1fc-49ff-ace6-e5d52ae8c2ed	accepted	host	2023-10-23 08:30:07.313542+00	2023-10-23 08:30:07.313542+00	088d5892-bc83-45d7-9147-2106f86757ab	bc2c5daf-779e-4851-b828-d512325c464d
eea2345a-8187-4e64-bb49-6948cdb46b48	pending	participant	2023-10-23 08:30:23.848837+00	2023-10-23 08:30:23.848837+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	391da4d3-9bee-42b6-9076-c30e29445a43
d423a959-f333-440e-aae0-dd32203d738a	accepted	host	2023-10-23 08:30:23.848837+00	2023-10-23 08:30:23.848837+00	088d5892-bc83-45d7-9147-2106f86757ab	391da4d3-9bee-42b6-9076-c30e29445a43
e82e4460-17b6-4ca3-a112-5987595ef661	accepted	host	2023-10-23 08:30:42.286386+00	2023-10-23 08:30:42.286386+00	088d5892-bc83-45d7-9147-2106f86757ab	4a17988f-9601-4bcf-bdc6-6eea56e24ddc
0ceba50b-051e-465f-ac7c-4cf79f764664	accepted	host	2023-10-23 08:31:06.616765+00	2023-10-23 08:31:06.616765+00	088d5892-bc83-45d7-9147-2106f86757ab	7241fe41-a8a9-46ba-b02a-675c8112282e
50da1d36-acc1-4745-b1e7-6e73b9d96e8b	rejected	participant	2023-10-23 08:29:26.509674+00	2023-10-23 08:29:26.509674+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	d3c2ecb0-4bb1-4188-8cca-22918be76d84
31920ba9-3c2f-4bae-9cd4-470122b488ed	rejected	participant	2023-10-23 08:30:07.313542+00	2023-10-23 08:30:07.313542+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	bc2c5daf-779e-4851-b828-d512325c464d
c5ba622a-21e3-4023-b4c2-20adbb186f88	rejected	participant	2023-10-23 08:30:42.286386+00	2023-10-23 08:30:42.286386+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	4a17988f-9601-4bcf-bdc6-6eea56e24ddc
90f09416-1cd1-430c-9c84-f6a9b05c10b3	accepted	participant	2023-10-23 08:31:06.616765+00	2023-10-23 08:31:06.616765+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	7241fe41-a8a9-46ba-b02a-675c8112282e
04cac39e-eba5-4006-9c74-8a4486041e11	accepted	host	2023-10-25 05:31:43.178113+00	2023-10-25 05:31:43.178113+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a	06291fc1-4f49-4e45-841f-5568b38062e9
52852580-70a8-4875-af15-2a8b2b04acfb	accepted	participant	2023-10-25 05:31:43.178113+00	2023-10-25 05:31:43.178113+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	06291fc1-4f49-4e45-841f-5568b38062e9
3bdf3bb6-45a9-4e14-ada3-e1d76c3aa6f1	pending	participant	2023-10-26 12:12:29.741218+00	2023-10-26 12:12:29.741218+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	43047c54-9102-4548-80ac-927e61805502
dd284a92-02b5-4af2-8440-3de4f7815912	pending	participant	2023-10-25 08:59:22.86344+00	2023-10-25 08:59:22.86344+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca	8e681d0d-a9f9-4c74-bd72-c33188a4d88d
2cb73e56-7264-4ad4-954a-e527c811c01c	accepted	host	2023-10-25 08:59:22.86344+00	2023-10-25 08:59:22.86344+00	eefe6b48-f131-41b1-abbc-6b92a05a8569	8e681d0d-a9f9-4c74-bd72-c33188a4d88d
1b6997e5-9103-4941-82cf-bd56853a31a3	rejected	participant	2023-10-25 08:59:22.86344+00	2023-10-25 08:59:22.86344+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	8e681d0d-a9f9-4c74-bd72-c33188a4d88d
b9fcb29b-02c2-468f-9ba9-bd8445539341	pending	participant	2023-10-25 09:27:46.100032+00	2023-10-25 09:27:46.100032+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	c5ef642a-862d-4b56-a279-77a316867460
68cbe813-008d-4900-a834-177603be6bd6	accepted	host	2023-10-25 09:27:46.100032+00	2023-10-25 09:27:46.100032+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a	c5ef642a-862d-4b56-a279-77a316867460
79b1f4c2-5892-4deb-9df6-feb7ec94d073	accepted	host	2023-10-25 09:46:42.153449+00	2023-10-25 09:46:42.153449+00	eefe6b48-f131-41b1-abbc-6b92a05a8569	d026abcf-cd51-4f14-9a34-d110d84dc703
01e52362-f661-4173-9223-9b07661ddf8c	accepted	participant	2023-10-25 09:46:42.153449+00	2023-10-25 09:46:42.153449+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca	d026abcf-cd51-4f14-9a34-d110d84dc703
df899bd3-84c6-4139-a6ce-9cdc1cac3896	pending	participant	2023-10-25 11:07:22.326149+00	2023-10-25 11:07:22.326149+00	eefe6b48-f131-41b1-abbc-6b92a05a8569	6b029f57-9d86-451e-97c7-28d793943064
8cdd302e-67bd-468a-b1d1-1660bcef2f15	accepted	host	2023-10-25 11:07:22.326149+00	2023-10-25 11:07:22.326149+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca	6b029f57-9d86-451e-97c7-28d793943064
2011b44a-2b45-4454-8b30-396a7cfe7816	accepted	host	2023-10-26 05:43:32.090526+00	2023-10-26 05:43:32.090526+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a	fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc
1a963695-c866-435e-a68d-4c6f0af49d3a	accepted	host	2023-10-26 12:12:29.741218+00	2023-10-26 12:12:29.741218+00	af9b1415-ec35-4d98-8720-00838cc9db1c	43047c54-9102-4548-80ac-927e61805502
838aaf51-9015-402e-acfa-50c78c29f449	rejected	participant	2023-10-26 05:43:32.090526+00	2023-10-26 05:43:32.090526+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc
87d8d944-2144-4f6b-b1df-c3d366db25a2	accepted	participant	2023-10-26 11:01:00.337597+00	2023-10-26 11:01:00.337597+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	4cf45361-d2a9-43e5-a44e-326f0ef18537
d8ddba7f-2d9c-472e-94cb-937b14cabb15	accepted	host	2023-10-26 11:01:00.337597+00	2023-10-26 11:01:00.337597+00	31950017-b731-4949-a8f5-3511b0b86b4e	4cf45361-d2a9-43e5-a44e-326f0ef18537
4820eea4-6f04-4663-a1b4-ee437534bfdc	accepted	participant	2023-10-20 17:04:52.422883+00	2023-10-20 17:04:52.422883+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	fcf419a7-1cfa-4fc2-a558-839a87d33e27
e9b45a42-63c3-43d9-8f28-a0a655e73007	accepted	host	2023-10-26 12:38:17.959173+00	2023-10-26 12:38:17.959173+00	af9b1415-ec35-4d98-8720-00838cc9db1c	cc46e975-c089-45b6-b575-df4e32cfc22f
45b837df-dd59-4d40-847b-5538da2e8830	accepted	participant	2023-10-26 12:38:17.959173+00	2023-10-26 12:38:17.959173+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	cc46e975-c089-45b6-b575-df4e32cfc22f
6bdb7a76-852c-44a2-8dad-77dee622236d	pending	participant	2023-10-27 06:45:14.457534+00	2023-10-27 06:45:14.457534+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	250a5702-ac8d-4b8a-bc47-a81bcb8638af
2923640f-7a85-48b9-845a-e2fb56017503	accepted	host	2023-10-27 06:45:14.457534+00	2023-10-27 06:45:14.457534+00	af9b1415-ec35-4d98-8720-00838cc9db1c	250a5702-ac8d-4b8a-bc47-a81bcb8638af
66f86ce9-b883-4525-95ca-12a4e28f2d18	accepted	host	2023-10-27 12:14:04.28438+00	2023-10-27 12:14:04.28438+00	28b72158-d944-4d9f-9923-e4dec3348de1	a98534d0-d188-410f-98d5-f723814b3d5e
872f103e-66df-4e1d-a5f5-5258df30f8e7	accepted	host	2023-10-27 12:14:59.056327+00	2023-10-27 12:14:59.056327+00	28b72158-d944-4d9f-9923-e4dec3348de1	82adf427-10d5-4a1c-a9b0-d036d879e94c
9f490fd2-a1be-4bf4-b38b-3c010350c547	accepted	participant	2023-10-27 12:14:59.056327+00	2023-10-27 12:14:59.056327+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	82adf427-10d5-4a1c-a9b0-d036d879e94c
456d9054-c264-4a02-b555-6937e6fe50e8	pending	participant	2023-10-28 10:28:20.35473+00	2023-10-28 10:28:20.35473+00	088d5892-bc83-45d7-9147-2106f86757ab	424be2ff-868f-454f-b4b5-0acaee1e3d27
0f398d09-6fd4-464e-bbb1-05cfb3e5e9c8	accepted	host	2023-10-28 10:28:20.35473+00	2023-10-28 10:28:20.35473+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	424be2ff-868f-454f-b4b5-0acaee1e3d27
5250ef82-6c19-4ed4-814f-da69c5628cc1	pending	participant	2023-10-28 10:28:54.330455+00	2023-10-28 10:28:54.330455+00	088d5892-bc83-45d7-9147-2106f86757ab	83fe6687-5702-4821-a0b5-6e0cc2caf6a5
bb86fb3b-9c5f-4d0f-bd86-7343ecc84127	accepted	host	2023-10-28 10:28:54.330455+00	2023-10-28 10:28:54.330455+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	83fe6687-5702-4821-a0b5-6e0cc2caf6a5
b96d6407-c7d1-4025-96a4-fb35a8c8da8f	accepted	host	2023-10-28 10:30:28.261614+00	2023-10-28 10:30:28.261614+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	b66ce9dd-77dd-4cc7-854f-788c0cd4365e
923a85bf-8b3c-4041-bd5f-ce8af7992b2f	accepted	host	2023-10-30 07:47:53.588671+00	2023-10-30 07:47:53.588671+00	95109dc9-05d5-48a3-8c46-8f2356993f68	9ecbad76-d8c8-4309-9787-d10e9a2a1f69
22941bc2-0ee3-434f-80d3-4c4458460f29	accepted	participant	2023-10-30 07:47:53.588671+00	2023-10-30 07:47:53.588671+00	af9b1415-ec35-4d98-8720-00838cc9db1c	9ecbad76-d8c8-4309-9787-d10e9a2a1f69
6a973d85-c0a2-4606-9839-88e03cbbf2bc	pending	participant	2023-10-30 15:30:56.914111+00	2023-10-30 15:30:56.914111+00	af9b1415-ec35-4d98-8720-00838cc9db1c	888bdd7b-a83f-4d92-a9db-aa0eb6b608c6
59b3d6c2-4e4f-45ca-bd12-75a5f9ffe0ca	accepted	host	2023-10-30 15:30:56.914111+00	2023-10-30 15:30:56.914111+00	95109dc9-05d5-48a3-8c46-8f2356993f68	888bdd7b-a83f-4d92-a9db-aa0eb6b608c6
8175d270-f263-41ad-9e80-5bc34be5ee77	pending	participant	2023-10-30 15:34:42.872459+00	2023-10-30 15:34:42.872459+00	af9b1415-ec35-4d98-8720-00838cc9db1c	57220ae9-e1bc-4770-90b6-6a55678a1edb
c8b6a3f0-feaa-44f4-92ac-d947be637cf6	accepted	host	2023-10-30 15:34:42.872459+00	2023-10-30 15:34:42.872459+00	95109dc9-05d5-48a3-8c46-8f2356993f68	57220ae9-e1bc-4770-90b6-6a55678a1edb
1e1ea7ab-c243-46ff-aaae-de5af70bc38e	accepted	participant	2023-10-30 15:39:03.457822+00	2023-10-30 15:39:03.457822+00	af9b1415-ec35-4d98-8720-00838cc9db1c	b6101a7f-da54-4120-8c44-bf7738343bbd
26dd6cee-7a0e-4d5d-b423-b01a8ba78e28	accepted	host	2023-10-30 15:39:03.457822+00	2023-10-30 15:39:03.457822+00	95109dc9-05d5-48a3-8c46-8f2356993f68	b6101a7f-da54-4120-8c44-bf7738343bbd
141e0006-58b8-436b-b0c5-86a669fcb738	accepted	participant	2023-10-28 10:30:28.261614+00	2023-10-28 10:30:28.261614+00	088d5892-bc83-45d7-9147-2106f86757ab	b66ce9dd-77dd-4cc7-854f-788c0cd4365e
c8ffb728-b357-4d0a-9b94-46c6c892383f	accepted	host	2023-10-31 13:16:58.848951+00	2023-10-31 13:16:58.848951+00	088d5892-bc83-45d7-9147-2106f86757ab	c7436aa6-7700-4c14-bb24-c5f03e8795bb
8792d9bc-c04c-4042-bfeb-eba493eca496	accepted	host	2023-11-01 07:02:26.286734+00	2023-11-01 07:02:26.286734+00	088d5892-bc83-45d7-9147-2106f86757ab	461aa689-5493-4651-933d-bb8b6270ad6d
d859c763-ebb1-4410-a414-27420f6754d7	accepted	participant	2023-11-01 07:02:26.286734+00	2023-11-01 07:02:26.286734+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	461aa689-5493-4651-933d-bb8b6270ad6d
e305cb30-a286-4616-8670-eb7db4d3fbdf	accepted	host	2023-11-01 07:19:16.652363+00	2023-11-01 07:19:16.652363+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	1e8c3028-7a79-48df-ade7-e42300e9c71b
bf29c9ad-31d5-4831-aee0-d7a44920148f	pending	participant	2023-11-03 05:55:42.333211+00	2023-11-03 05:55:42.333211+00	af9b1415-ec35-4d98-8720-00838cc9db1c	3f4dae34-1378-45c1-9f51-d87fcfd4f236
84c6e917-b9f6-42ed-add7-12b8684dcd0e	accepted	participant	2023-11-01 07:19:16.652363+00	2023-11-01 07:19:16.652363+00	088d5892-bc83-45d7-9147-2106f86757ab	1e8c3028-7a79-48df-ade7-e42300e9c71b
1e280bf9-cd24-4a56-a13c-e9b7f04ef8e3	accepted	host	2023-11-03 05:55:42.333211+00	2023-11-03 05:55:42.333211+00	95109dc9-05d5-48a3-8c46-8f2356993f68	3f4dae34-1378-45c1-9f51-d87fcfd4f236
90a6bdeb-0c38-4cfe-88ee-2be7170b2b5f	pending	participant	2023-11-03 05:56:42.705598+00	2023-11-03 05:56:42.705598+00	af9b1415-ec35-4d98-8720-00838cc9db1c	f84e3ae0-0e65-4008-9bf9-4e2309ba3334
3495029c-c63e-40fd-a0ac-f4675933f8d1	accepted	host	2023-11-03 05:56:42.705598+00	2023-11-03 05:56:42.705598+00	95109dc9-05d5-48a3-8c46-8f2356993f68	f84e3ae0-0e65-4008-9bf9-4e2309ba3334
2e0c8831-1a5e-4c6c-8694-492ecc5f0ba9	pending	participant	2023-11-03 06:01:24.053099+00	2023-11-03 06:01:24.053099+00	af9b1415-ec35-4d98-8720-00838cc9db1c	54bbe1a0-f624-4e5f-8fe3-f59031fb15d7
6d6fa1a7-055a-43ae-b410-996af0a745d4	accepted	host	2023-11-03 06:01:24.053099+00	2023-11-03 06:01:24.053099+00	95109dc9-05d5-48a3-8c46-8f2356993f68	54bbe1a0-f624-4e5f-8fe3-f59031fb15d7
25b945ff-e13e-4c40-91f0-d4a63e717b1f	pending	participant	2023-11-03 06:04:20.595696+00	2023-11-03 06:04:20.595696+00	af9b1415-ec35-4d98-8720-00838cc9db1c	1e402c32-6c79-4623-a6cd-1bc6fd7acb31
b5707890-b4a2-459f-a388-b6f99102d092	accepted	host	2023-11-03 06:04:20.595696+00	2023-11-03 06:04:20.595696+00	95109dc9-05d5-48a3-8c46-8f2356993f68	1e402c32-6c79-4623-a6cd-1bc6fd7acb31
fab62d05-afea-45ab-a08c-67db90bf8001	pending	participant	2023-11-03 06:04:48.801225+00	2023-11-03 06:04:48.801225+00	af9b1415-ec35-4d98-8720-00838cc9db1c	fc403801-43dc-4705-9a73-80b731c81d74
9fce5ce7-eda1-4a8c-b807-727de65d9f77	accepted	host	2023-11-03 06:04:48.801225+00	2023-11-03 06:04:48.801225+00	95109dc9-05d5-48a3-8c46-8f2356993f68	fc403801-43dc-4705-9a73-80b731c81d74
20c542de-555e-499e-87d1-6efd64c33e21	pending	participant	2023-11-03 06:05:48.524164+00	2023-11-03 06:05:48.524164+00	af9b1415-ec35-4d98-8720-00838cc9db1c	889a5b43-fd33-4305-be5a-ea2afffa7f94
6a9bcabc-4450-41d2-ae7c-887a6cbb420d	accepted	host	2023-11-03 06:05:48.524164+00	2023-11-03 06:05:48.524164+00	95109dc9-05d5-48a3-8c46-8f2356993f68	889a5b43-fd33-4305-be5a-ea2afffa7f94
b9a8cea4-507e-49e9-b579-8da5a4e58f87	pending	participant	2023-11-03 06:14:34.838896+00	2023-11-03 06:14:34.838896+00	af9b1415-ec35-4d98-8720-00838cc9db1c	c0f04347-177a-4fb4-aa99-d07544738b93
08a19a36-e61e-4017-a17b-fd5831f57586	accepted	host	2023-11-03 06:14:34.838896+00	2023-11-03 06:14:34.838896+00	95109dc9-05d5-48a3-8c46-8f2356993f68	c0f04347-177a-4fb4-aa99-d07544738b93
aa557bad-9769-44f6-ade0-5db598821ef9	pending	participant	2023-11-03 09:44:27.598794+00	2023-11-03 09:44:27.598794+00	af9b1415-ec35-4d98-8720-00838cc9db1c	858d7bd1-9f54-4fe2-b825-4b94f3189452
c5e010ba-28ab-4b74-89e9-e4ccfbcf5b5e	accepted	host	2023-11-03 09:44:27.598794+00	2023-11-03 09:44:27.598794+00	95109dc9-05d5-48a3-8c46-8f2356993f68	858d7bd1-9f54-4fe2-b825-4b94f3189452
ad361e26-da6c-47c6-bb33-2ffba855f143	accepted	host	2023-11-03 09:58:14.12961+00	2023-11-03 09:58:14.12961+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	c5f91c25-22d8-4954-b03c-ab0c2b2c3134
2fdee6c1-8255-4014-9911-f2cec9a90636	accepted	host	2023-11-06 10:04:56.870153+00	2023-11-06 10:04:56.870153+00	088d5892-bc83-45d7-9147-2106f86757ab	82be2cbd-8a07-4ca7-8f58-6e5111ffa02d
950ea300-8cb9-441e-a808-1fb27e7ea253	accepted	participant	2023-11-06 10:04:56.870153+00	2023-11-06 10:04:56.870153+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	82be2cbd-8a07-4ca7-8f58-6e5111ffa02d
310b9b91-ffde-4400-b276-f845db862bb3	accepted	host	2023-11-06 10:32:33.644996+00	2023-11-06 10:32:33.644996+00	28b72158-d944-4d9f-9923-e4dec3348de1	f3cf11f9-2914-466f-be2c-452bc42ae2a7
2f6053dd-b508-4068-9d84-d6f71d63454d	accepted	host	2023-11-06 11:13:26.132508+00	2023-11-06 11:13:26.132508+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	c20cd722-be19-4538-8f4d-01a46769cc31
5ac5177b-b1b4-4b0a-a851-fa8e0aed3e5b	accepted	participant	2023-11-06 11:13:26.132508+00	2023-11-06 11:13:26.132508+00	088d5892-bc83-45d7-9147-2106f86757ab	c20cd722-be19-4538-8f4d-01a46769cc31
331e0482-ca53-461f-aea0-2351b2d825d4	accepted	host	2023-11-06 11:54:55.103255+00	2023-11-06 11:54:55.103255+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	79f6dbac-1c41-466d-95a6-b0e7d2602fb8
020f4f85-d567-474d-868f-b1072d63abd2	accepted	participant	2023-11-06 11:54:55.103255+00	2023-11-06 11:54:55.103255+00	088d5892-bc83-45d7-9147-2106f86757ab	79f6dbac-1c41-466d-95a6-b0e7d2602fb8
d245edf7-7cc2-4fa9-87d5-4d3de8f316ed	accepted	host	2023-11-06 12:21:43.570674+00	2023-11-06 12:21:43.570674+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	206f9a1f-76e4-44d4-99e9-c154cc48622c
91b60505-1378-4c1b-8304-80fea32148ab	accepted	participant	2023-11-06 12:21:43.570674+00	2023-11-06 12:21:43.570674+00	088d5892-bc83-45d7-9147-2106f86757ab	206f9a1f-76e4-44d4-99e9-c154cc48622c
be8abd09-d8ab-4fee-be85-fb90a4e685d2	accepted	participant	2023-11-07 05:31:40.035355+00	2023-11-07 05:31:40.035355+00	28b72158-d944-4d9f-9923-e4dec3348de1	cd6a016a-cabe-42ae-a038-46dde51a132e
eb97e76c-a4f1-44f1-aef8-af34404a3f93	accepted	participant	2023-11-07 05:31:40.035355+00	2023-11-07 05:31:40.035355+00	af9b1415-ec35-4d98-8720-00838cc9db1c	cd6a016a-cabe-42ae-a038-46dde51a132e
28ac4f2e-968e-4a02-bad5-0286b77440c4	accepted	host	2023-11-07 05:31:40.035355+00	2023-11-07 05:31:40.035355+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	cd6a016a-cabe-42ae-a038-46dde51a132e
1abccefe-2aed-4db6-ae33-6c099015d303	accepted	participant	2023-11-07 05:31:40.035355+00	2023-11-07 05:31:40.035355+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	cd6a016a-cabe-42ae-a038-46dde51a132e
c1f90edc-6a62-4bd9-a4fa-cd47bdebfa38	rejected	participant	2023-11-06 10:32:33.644996+00	2023-11-06 10:32:33.644996+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	f3cf11f9-2914-466f-be2c-452bc42ae2a7
3437c1ba-eeee-4a4f-8868-a56f53dbe356	rejected	participant	2023-10-27 12:14:04.28438+00	2023-10-27 12:14:04.28438+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	a98534d0-d188-410f-98d5-f723814b3d5e
859090ef-e829-41cc-ba67-7b48c4706f36	pending	participant	2023-11-08 17:40:56.772838+00	2023-11-08 17:40:56.772838+00	d8df09ce-7124-4c28-bb05-662a721dd5be	babc1cd1-4639-4724-8091-37ba8887ae96
9216c352-6afc-4e79-b980-2871bb8deb59	accepted	host	2023-11-08 17:40:56.772838+00	2023-11-08 17:40:56.772838+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf	babc1cd1-4639-4724-8091-37ba8887ae96
10b3b158-c182-4490-9c16-c7655161150a	accepted	host	2023-11-10 05:14:00.454746+00	2023-11-10 05:14:00.454746+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a	8fb60e4f-6609-4a82-ba05-a84c8c84c95a
6f0cfc68-b57a-4db1-91a0-af7de7c15b1c	accepted	participant	2023-11-10 05:14:00.454746+00	2023-11-10 05:14:00.454746+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	8fb60e4f-6609-4a82-ba05-a84c8c84c95a
57f8eb5c-7955-47ca-b808-a89ae3ca6c7e	pending	participant	2023-11-10 07:09:34.356414+00	2023-11-10 07:09:34.356414+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	542286e1-d124-451b-9805-922575af6348
e222169c-738b-40b2-9d03-97e2d2a46d56	accepted	host	2023-11-10 07:09:34.356414+00	2023-11-10 07:09:34.356414+00	088d5892-bc83-45d7-9147-2106f86757ab	542286e1-d124-451b-9805-922575af6348
7060c822-c3be-480b-82c1-374e73966f39	pending	participant	2023-11-10 10:15:18.455996+00	2023-11-10 10:15:18.455996+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	51a81443-fe41-4f59-84bf-7b4218464f91
ce46e6b7-28b3-45e4-991a-cb166c3b4eac	accepted	host	2023-11-10 10:15:18.455996+00	2023-11-10 10:15:18.455996+00	088d5892-bc83-45d7-9147-2106f86757ab	51a81443-fe41-4f59-84bf-7b4218464f91
8106e6d7-a260-4af4-baff-a78ea71bab6e	pending	participant	2023-11-10 12:47:41.681482+00	2023-11-10 12:47:41.681482+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5	fb1e782d-a340-4314-b2c7-5720b163814a
79c440a0-91b8-42b0-9e92-4888e1e3ce67	pending	participant	2023-11-10 12:47:41.681482+00	2023-11-10 12:47:41.681482+00	28b72158-d944-4d9f-9923-e4dec3348de1	fb1e782d-a340-4314-b2c7-5720b163814a
ac769512-e0ca-48d3-a8a4-c80e4238b217	accepted	host	2023-11-10 12:47:41.681482+00	2023-11-10 12:47:41.681482+00	088d5892-bc83-45d7-9147-2106f86757ab	fb1e782d-a340-4314-b2c7-5720b163814a
965c213c-dafe-48a3-ab39-e09a2e3dcc00	accepted	host	2023-11-11 06:18:44.268637+00	2023-11-11 06:18:44.268637+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	651e666b-ec1b-4fe6-8b3a-47087a2c93dd
8734ad49-78c7-4be1-94d3-fa6e6071642a	accepted	host	2023-11-16 05:06:04.770675+00	2023-11-16 05:06:04.770675+00	088d5892-bc83-45d7-9147-2106f86757ab	3fc7d154-aced-44d4-b579-476d39c646d7
c2518748-5527-46b3-871c-eff75b80283d	accepted	host	2023-11-16 05:06:40.421551+00	2023-11-16 05:06:40.421551+00	088d5892-bc83-45d7-9147-2106f86757ab	ffc1743d-b8e6-4988-ad1d-4be6742173ca
\.


--
-- Data for Name: friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."friends" ("id", "friend_id", "status", "note", "created_at", "updated_at", "user_id") FROM stdin;
ae2c56b4-53de-4516-b860-fb04f47fd1ff	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	accepted	\N	2023-10-20 07:06:32.938553+00	2023-10-20 07:06:32.938553+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
c025f4df-b54f-4edc-afb0-49e4a00dc017	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	accepted	\N	2023-10-20 16:24:21.380875+00	2023-10-20 16:24:21.380875+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
8163bfae-fb58-480b-ade7-330b4c790fbd	d8df09ce-7124-4c28-bb05-662a721dd5be	accepted	\N	2023-10-21 05:13:33.208088+00	2023-10-21 05:13:33.208088+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
b4af248d-17bc-4eda-b885-d1a6c08172e2	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	pending	\N	2023-10-23 06:35:17.014438+00	2023-10-23 06:35:17.014438+00	2856a315-f4fb-4e30-8dc5-d614c9c9acce
de95b4cc-3cf4-4f99-ae98-9b2d7256661b	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	pending	\N	2023-10-23 06:41:39.245047+00	2023-10-23 06:41:39.245047+00	088d5892-bc83-45d7-9147-2106f86757ab
0bc732cf-ae1f-4f44-a450-f785a09cf6cb	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	accepted	\N	2023-10-24 13:45:15.139878+00	2023-10-24 13:45:15.139878+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
9e94af26-3f35-475d-9057-627abfb7a5a2	eefe6b48-f131-41b1-abbc-6b92a05a8569	accepted	\N	2023-10-25 06:55:05.725514+00	2023-10-25 06:55:05.725514+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
bafb0a0b-9a6a-4069-a1ad-49cbed3dc1b8	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	accepted	\N	2023-10-25 08:05:03.940357+00	2023-10-25 08:05:03.940357+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
280b3e52-6cec-44d4-8f9e-64b851a4904a	eefe6b48-f131-41b1-abbc-6b92a05a8569	accepted	\N	2023-10-25 09:27:07.652602+00	2023-10-25 09:27:07.652602+00	0ede945d-07ef-436c-b70b-e3d15708681c
068c147f-f59f-44f7-a1c6-2ac267eaaf80	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	accepted	\N	2023-10-26 09:09:38.867788+00	2023-10-26 09:09:38.867788+00	31950017-b731-4949-a8f5-3511b0b86b4e
0bb214d7-7535-4434-a521-6ed640a14dba	8f05c522-93da-40bf-b77b-e1e62cf4e42a	pending	\N	2023-10-26 11:03:05.057744+00	2023-10-26 11:03:05.057744+00	31950017-b731-4949-a8f5-3511b0b86b4e
155c4d09-767c-4265-9a1b-f7826cb5a096	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	accepted	\N	2023-10-26 12:06:50.305626+00	2023-10-26 12:06:50.305626+00	af9b1415-ec35-4d98-8720-00838cc9db1c
669f44d7-dd58-4238-b02e-0bc547b52b48	8f05c522-93da-40bf-b77b-e1e62cf4e42a	pending	\N	2023-10-26 12:07:44.043416+00	2023-10-26 12:07:44.043416+00	af9b1415-ec35-4d98-8720-00838cc9db1c
5531bb4a-7040-4610-8a52-53eb9d3c1fb4	af9b1415-ec35-4d98-8720-00838cc9db1c	accepted	\N	2023-10-26 12:50:22.115491+00	2023-10-26 12:50:22.115491+00	d7a79da5-70d7-4800-9ddc-c7f18cd09093
e0f81c1b-6739-4ba6-b4da-28500de9d4be	af9b1415-ec35-4d98-8720-00838cc9db1c	accepted	\N	2023-10-27 06:27:20.811087+00	2023-10-27 06:27:20.811087+00	94a126d0-584b-4c0d-9e73-422f0b117db6
b4224f4c-f6ca-49e6-9aed-a626d692dd0c	af9b1415-ec35-4d98-8720-00838cc9db1c	accepted	\N	2023-10-27 06:43:20.595145+00	2023-10-27 06:43:20.595145+00	c0bd4429-0fc6-400f-9992-96faa6425126
cb37d05d-6b40-4c9d-9d5d-24796f9fc290	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	accepted	\N	2023-10-27 11:53:54.81147+00	2023-10-27 11:53:54.81147+00	28b72158-d944-4d9f-9923-e4dec3348de1
4fa6dac9-cba4-447f-bd1b-73a2a47a83df	088d5892-bc83-45d7-9147-2106f86757ab	accepted	\N	2023-10-28 10:08:37.490888+00	2023-10-28 10:08:37.490888+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
4ad7aeb7-fd66-4001-8ce8-bf45f2664f4f	af9b1415-ec35-4d98-8720-00838cc9db1c	accepted	\N	2023-10-30 07:46:58.346234+00	2023-10-30 07:46:58.346234+00	95109dc9-05d5-48a3-8c46-8f2356993f68
18adcfd7-16de-4828-99c8-c2924cb28554	28b72158-d944-4d9f-9923-e4dec3348de1	accepted	\N	2023-11-01 08:14:26.639339+00	2023-11-01 08:14:26.639339+00	088d5892-bc83-45d7-9147-2106f86757ab
5bbe47bb-6901-4880-9471-496be1763000	28b72158-d944-4d9f-9923-e4dec3348de1	accepted	\N	2023-11-01 08:49:07.036709+00	2023-11-01 08:49:07.036709+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
cd6f3de4-7303-4c68-83e0-081353db53f3	67d69ef7-6df2-40ac-8c97-37ed0a1155f7	accepted	\N	2023-11-07 05:27:01.281198+00	2023-11-07 05:27:01.281198+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."media" ("id", "original_name", "path", "mime_data", "entity_id", "key", "created_at", "updated_at", "user_id") FROM stdin;
dc673250-2973-42ae-a2b8-62ca386cb4f2	scaled_IMG-20231025-WA0021.jpg	https://isadate.piecodes.in/media/scaled_IMG-20231025-WA0021.42cd7812-a6cc-42e4-b880-fc523ce81f57.jpg	application/octet-stream	299c9c34-88bd-468b-a3c1-d99f2044494d	profile_image	2023-10-25 07:26:00.101927+00	2023-10-25 07:26:00.101927+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
5263569e-1ac6-419e-a426-58dc65c8efb8	scaled_aa497b8f-dc4d-4179-8c18-6233aa22422a7165217915324370501.jpg	https://isadate.piecodes.in/media/scaled_aa497b8f-dc4d-4179-8c18-6233aa22422a7165217915324370501.e3f1a033-7ea0-4f34-8f16-ed23595603ba.jpg	application/octet-stream	9e2213f5-5836-4439-88a8-657bb7f92d72	profile_image	2023-10-25 09:23:10.180431+00	2023-10-25 09:23:10.180431+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
c9a482fa-5e16-4998-ab78-a27a9d9185bc	scaled_07865e01-6697-4aeb-90a9-99a755d434d9463414408495723034.jpg	https://isadate.piecodes.in/media/scaled_07865e01-6697-4aeb-90a9-99a755d434d9463414408495723034.6818db9c-2477-4696-9d9b-75de8e06742d.jpg	application/octet-stream	07e64866-254d-48b7-85a9-d3d4d403a379	profile_image	2023-11-11 07:00:48.123638+00	2023-11-11 07:00:48.123638+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
fab3c8d5-7ac7-4bf7-94dc-cc789b7b988b	scaled_0503bed6-1a71-4463-8a8d-4c98e129c5282733787814138610261.jpg	https://isadate.piecodes.in/media/scaled_0503bed6-1a71-4463-8a8d-4c98e129c5282733787814138610261.3ef6959c-79ef-4edd-a695-1b17cd3e24f2.jpg	application/octet-stream	a66e38b6-7540-4df5-8a27-ca79b65a44a0	profile_image	2023-10-25 09:20:24.142792+00	2023-10-25 09:20:24.142792+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
5033de3c-62d9-4bd0-adcb-8b3cf20523a9	image_picker_90003103-09E4-4F61-99AD-DB19A2FCA836-71912-000006A569631AF7.jpg	https://isadate.piecodes.in/media/image_picker_90003103-09E4-4F61-99AD-DB19A2FCA836-71912-000006A569631AF7.b51d6b5b-fb24-41fb-98bb-1ead28901902.jpg	application/octet-stream	af9b1415-ec35-4d98-8720-00838cc9db1c	profile_image	2023-10-26 12:13:34.819243+00	2023-10-26 12:13:34.819243+00	af9b1415-ec35-4d98-8720-00838cc9db1c
d96fd71c-d212-4674-b91d-d32d864341d4	scaled_IMG-20231028-WA0014.jpg	https://isadate.piecodes.in/media/scaled_IMG-20231028-WA0014.e8ec12da-7632-4963-a8f3-0361f3638856.jpg	application/octet-stream	f054af85-b8eb-46cc-bd5d-40b17246ccb1	profile_image	2023-10-28 10:43:03.31964+00	2023-10-28 10:43:03.31964+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
af1658c5-1046-4b5b-ae11-33a65d746e9a	scaled_a53ac56a-fc69-4d2e-86b5-0a18f49d84d33636577984184940761.jpg	https://isadate.piecodes.in/media/scaled_a53ac56a-fc69-4d2e-86b5-0a18f49d84d33636577984184940761.f6867bcf-f974-4838-a2ac-8247fd8d6146.jpg	application/octet-stream	afa393af-9f6c-484d-b1d5-f51d5451ee33	profile_image	2023-11-02 09:48:10.723638+00	2023-11-02 09:48:10.723638+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
cdb1ac0b-7a6c-4a50-aee5-3fc7b8cc52de	scaled_e6d389fd-4102-4b6e-92e3-22ebb11c616f255841020663934130.jpg	https://isadate.piecodes.in/media/scaled_e6d389fd-4102-4b6e-92e3-22ebb11c616f255841020663934130.d2535d09-c244-46d4-b300-6dd03881a6bd.jpg	application/octet-stream	e60b01cf-63f9-439a-9c8e-cb394969d749	profile_image	2023-11-03 06:08:03.599495+00	2023-11-03 06:08:03.599495+00	95109dc9-05d5-48a3-8c46-8f2356993f68
5e073dbf-cd9a-43ba-835c-3cea202a00ce	scaled_IMG-20231103-WA0000.jpg	https://isadate.piecodes.in/media/scaled_IMG-20231103-WA0000.dacd3fc7-5c62-4088-ae36-098d899e60b4.jpg	application/octet-stream	e60b01cf-63f9-439a-9c8e-cb394969d749	profile_image	2023-11-03 06:08:14.187515+00	2023-11-03 06:08:14.187515+00	95109dc9-05d5-48a3-8c46-8f2356993f68
4ddf4405-252f-446c-827b-fa64faf8cc85	isadate.png	https://isadate.piecodes.in/media/isadate.0306a6ca-678e-4758-8283-7694654e0e90.png	image/png	\N	\N	2023-11-09 08:45:16.334677+00	2023-11-09 08:45:16.334677+00	2bc43ef9-7bb1-47d2-8dbd-3532e45082f7
3e1b863d-49fe-4635-abd8-e1742fe77261	scaled_IMG-20231110-WA0006.jpg	https://isadate.piecodes.in/media/scaled_IMG-20231110-WA0006.94e64339-6b3c-4d53-b057-c30cdc18c463.jpg	application/octet-stream	fef1a74c-2152-4108-b2a9-3d2bc89f1e25	profile_image	2023-11-10 10:34:42.937704+00	2023-11-10 10:34:42.937704+00	088d5892-bc83-45d7-9147-2106f86757ab
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notifications" ("id", "description", "title", "status", "data", "created_at", "updated_at", "user_id") FROM stdin;
a2dfc096-93c5-47a1-b505-91635a51e00e	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"9271eedc-86ed-4642-87a5-0de49819b41f"}	2023-10-26 11:47:04.341951+00	2023-10-26 11:47:04.341951+00	31950017-b731-4949-a8f5-3511b0b86b4e
1d801c81-90c2-492e-9da7-15ee68c4578f	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"b5e017cd-5f17-4fd7-8923-349fdf50cee5"}	2023-10-20 07:17:39.796637+00	2023-10-20 07:17:39.796637+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
8af3e061-c828-4ab5-bce8-fcc5fb5c39b5	KrishnaSingh@ has accepted your friend request	Friend request update	read	{"friendship_id":"8f05c522-93da-40bf-b77b-e1e62cf4e42a"}	2023-10-20 07:07:12.290537+00	2023-10-20 07:07:12.290537+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
4d7bce7d-4a89-4bb6-97be-4e992e2ee192	Krishna Singh@ accepted your invitation to a date on @October 21st	Event invitation update	read	{"action":"invite","event_id":"a2bd961c-e371-4deb-b674-091862c3e0e8"}	2023-10-20 07:16:06.655581+00	2023-10-20 07:16:06.655581+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
6250ea9e-1803-4213-871c-4fe74730468b	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"c584bc03-e23d-4398-be75-7a8960b3e645"}	2023-10-20 16:25:13.011272+00	2023-10-20 16:25:13.011272+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
e9e32d6a-0312-40ab-a84b-51951726dab4	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"421d9049-35ef-48d1-af3b-168dc3fd0adb"}	2023-10-20 07:18:23.30721+00	2023-10-20 07:18:23.30721+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
b930e78b-b6d5-46f3-8223-41a1dd23673c	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"fb9f4554-5a72-4070-930d-5277c1cc833f"}	2023-10-20 07:18:51.277775+00	2023-10-20 07:18:51.277775+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
863f6d0a-cbb2-417d-a32a-8edc4472a714	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"898005b5-8d39-4d16-968c-3240d7864f50"}	2023-10-20 07:19:09.926434+00	2023-10-20 07:19:09.926434+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
2cde3c6b-fe0f-4905-addd-73dd9c27dd65	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"43ecd39d-ee7b-4504-aef5-19b4bd6128c1"}	2023-10-20 07:19:19.609142+00	2023-10-20 07:19:19.609142+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
88cc54b1-8246-4c6b-b71a-ff539e300c1c	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"09add2f2-c825-4006-9707-79a279f3f329"}	2023-10-20 07:24:59.942607+00	2023-10-20 07:24:59.942607+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
f097843c-1cc4-438d-a4e6-93084453d647	Isadate Test accepted your invitation to a date on October 22nd	Event invitation update	read	{"action":"invite","event_id":"fcf419a7-1cfa-4fc2-a558-839a87d33e27"}	2023-10-26 11:09:03.975429+00	2023-10-26 11:09:03.975429+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
6ba6566b-0f3a-4d83-b3b2-dca1491898ec	jacky chain sent you an invitation to a date on @October 27th	Event invitation	read	{"action":"invite","event_id":"43047c54-9102-4548-80ac-927e61805502"}	2023-10-26 12:12:30.181058+00	2023-10-26 12:12:30.181058+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
f1df3f7b-6527-4253-80d8-fd916ab2602e	jackychain has accepted your friend request	Friend request update	unread	{"friendship_id":"c0bd4429-0fc6-400f-9992-96faa6425126"}	2023-10-27 06:43:37.26198+00	2023-10-27 06:43:37.26198+00	c0bd4429-0fc6-400f-9992-96faa6425126
48e36f8f-e915-453c-a719-7c704057c03d	Krishna Singh sent you an message	Chat message	read	{"action":"message","message_id":"e644c153-30a0-4c1c-9381-9f85477ad6ad"}	2023-10-27 11:58:23.562727+00	2023-10-27 11:58:23.562727+00	28b72158-d944-4d9f-9923-e4dec3348de1
4956eb7d-91a4-46e4-8f4e-71f23828650b	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"17899590-2abc-4add-bf80-3d985785d8ff"}	2023-10-27 11:58:38.843037+00	2023-10-27 11:58:38.843037+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
fe091baa-3db9-4fd4-b228-6fb10b68c5b5	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"ca47d66f-85b5-45ab-a964-bbbdd7041d64"}	2023-10-27 12:01:22.343346+00	2023-10-27 12:01:22.343346+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
ede7b36d-a623-4831-8b52-11f83448bea9	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"07ec918f-8926-4795-a516-85dd490af3c0"}	2023-10-27 12:07:14.47455+00	2023-10-27 12:07:14.47455+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
9c54f1d1-a2e9-49a0-8f35-f26a9f985aec	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"8e2f055d-6532-456e-9991-746e34234825"}	2023-10-27 12:00:21.029726+00	2023-10-27 12:00:21.029726+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
bbdf58b9-926c-4d6a-a6fc-75cdf0c6f792	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"0c78a990-e305-4a42-8eec-08f6bd1a36d9"}	2023-10-28 10:27:26.142667+00	2023-10-28 10:27:26.142667+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
2f17e97d-a105-4136-ba3b-6e0860a8373f	Apsi Depsi sent you an message	Chat message	read	{"action":"message","message_id":"3e313992-8830-4353-af27-383324cbb99c"}	2023-10-28 10:53:49.574254+00	2023-10-28 10:53:49.574254+00	088d5892-bc83-45d7-9147-2106f86757ab
7b8d2816-7be9-474a-a280-65e2c8c687a2	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"b5e017cd-5f17-4fd7-8923-349fdf50cee5"}	2023-10-20 07:17:39.796637+00	2023-10-20 07:17:39.796637+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
453604a8-b541-4ee2-82a7-9161d1096ed6	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"421d9049-35ef-48d1-af3b-168dc3fd0adb"}	2023-10-20 07:18:23.30721+00	2023-10-20 07:18:23.30721+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
638aa511-6bcf-44d9-bac1-cb1ea2edbf28	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"fb9f4554-5a72-4070-930d-5277c1cc833f"}	2023-10-20 07:18:51.277775+00	2023-10-20 07:18:51.277775+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
28673d0e-4f41-4b8b-9276-e58e4ddbf87c	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"898005b5-8d39-4d16-968c-3240d7864f50"}	2023-10-20 07:19:09.926434+00	2023-10-20 07:19:09.926434+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
8c688ae3-3c0a-4ec5-9687-9dc35e382181	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"43ecd39d-ee7b-4504-aef5-19b4bd6128c1"}	2023-10-20 07:19:19.609142+00	2023-10-20 07:19:19.609142+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
888356ea-a98f-443c-a2d7-2446aa035cf2	jacky Chain sent you an message	Chat message	read	{"action":"message","message_id":"2fee77b7-bcf7-417e-aa50-4dc2e8e2a42f"}	2023-10-30 07:51:15.831107+00	2023-10-30 07:51:15.831107+00	95109dc9-05d5-48a3-8c46-8f2356993f68
0772ef33-bbb5-438e-bb8d-d3fdd06a0a08	User Admin sent you an invitation to a date on @November 2nd	Event invitation	unread	{"action":"invite","event_id":"57220ae9-e1bc-4770-90b6-6a55678a1edb"}	2023-10-30 15:34:43.314298+00	2023-10-30 15:34:43.314298+00	af9b1415-ec35-4d98-8720-00838cc9db1c
15e3fa66-966f-4845-bffa-f50eb0b48572	Apsi Depsi sent you an invitation to a date on @October 29th	Event invitation	read	{"action":"invite","event_id":"83fe6687-5702-4821-a0b5-6e0cc2caf6a5"}	2023-10-28 10:28:54.779148+00	2023-10-28 10:28:54.779148+00	088d5892-bc83-45d7-9147-2106f86757ab
ecc5d052-8e03-48e9-95f6-6a25a80e4565	Sunny Money accepted your invitation to a date on October 29th	Event invitation update	read	{"action":"invite","event_id":"b66ce9dd-77dd-4cc7-854f-788c0cd4365e"}	2023-10-31 13:11:43.890718+00	2023-10-31 13:11:43.890718+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
5a31dd8b-52b6-4f03-a9c1-f92df97e2c20	Apsi Depsi sent you an message	Chat message	read	{"action":"message","message_id":"16230b8f-9230-46c9-b542-c4b722d82c90"}	2023-11-01 07:19:18.591563+00	2023-11-01 07:19:18.591563+00	088d5892-bc83-45d7-9147-2106f86757ab
0ba52a12-fa2b-455b-8954-1e052035fd76	Apsi Depsi accepted your invitation to a date on November 2nd	Event invitation update	read	{"action":"invite","event_id":"461aa689-5493-4651-933d-bb8b6270ad6d"}	2023-11-01 07:13:24.28081+00	2023-11-01 07:13:24.28081+00	088d5892-bc83-45d7-9147-2106f86757ab
130c0635-18f9-49a6-9cf4-d8dc309994d5	jacky chain sent you an message	Chat message	read	{"action":"message","message_id":"c964ea34-5182-4d18-8ff2-532ff85db405"}	2023-10-27 06:18:49.852241+00	2023-10-27 06:18:49.852241+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
42d937ee-6b17-4a3d-ba7a-a4573d1e8aba	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"ca8c4e3b-fd0c-4c5e-afc8-b0be47477497"}	2023-10-27 12:30:32.193383+00	2023-10-27 12:30:32.193383+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
1b438e4c-f239-49e6-ab72-fd8b3c4b4af3	Sunny Money accepted your invitation to a date on November 5th	Event invitation update	read	{"action":"invite","event_id":"1e8c3028-7a79-48df-ade7-e42300e9c71b"}	2023-11-01 07:27:12.48869+00	2023-11-01 07:27:12.48869+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
a5df5974-6d46-4492-9f9b-9a32eb875c5f	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"055baa61-22ea-49cc-b4e1-4e79958fbb7d"}	2023-10-27 12:35:10.520596+00	2023-10-27 12:35:10.520596+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
30ce3805-66d7-4336-8d51-e769052a4ff0	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"09add2f2-c825-4006-9707-79a279f3f329"}	2023-10-20 07:24:59.942607+00	2023-10-20 07:24:59.942607+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
2a9652e6-f5cf-4fe7-bb3d-606f7d70512d	IsadateTest has accepted your friend request	Friend request update	read	{"friendship_id":"8f05c522-93da-40bf-b77b-e1e62cf4e42a"}	2023-10-20 16:24:38.096696+00	2023-10-20 16:24:38.096696+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
c70c9dd8-68ad-47e6-8303-ec8a15b11746	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"b9a160fa-d68c-488b-9c0c-029014d4148a"}	2023-10-20 16:25:21.931923+00	2023-10-20 16:25:21.931923+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
8fadf81f-9dd4-4474-9df9-f3d628071bd0	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"3419508d-2503-470f-9f13-d6f0302b0beb"}	2023-10-20 16:25:40.048282+00	2023-10-20 16:25:40.048282+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
554ff032-9ed3-4f40-acfa-5e4026f75305	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"4487ff40-8aa5-423f-83ee-5f2de9522119"}	2023-10-20 16:26:10.28437+00	2023-10-20 16:26:10.28437+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
073ad7b9-2da5-4670-bb85-25e0db546268	Isadate Test accepted your invitation to a date on October 22nd	Event invitation update	read	{"action":"invite","event_id":"fcf419a7-1cfa-4fc2-a558-839a87d33e27"}	2023-10-26 11:09:05.04285+00	2023-10-26 11:09:05.04285+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
6cab1803-b86e-4383-a993-98f46862af06	Isadate Test accepted your invitation to a date on October 26th	Event invitation update	read	{"action":"invite","event_id":"c5ef642a-862d-4b56-a279-77a316867460"}	2023-10-26 11:09:05.852081+00	2023-10-26 11:09:05.852081+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
056dae27-87e7-48e8-964e-aa17502cee00	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"10e94a87-d20d-4451-bf25-255673af9839"}	2023-10-20 16:25:58.261662+00	2023-10-20 16:25:58.261662+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
faa64404-9eb7-44b9-94fd-54c6ca21fa6a	도연김 has accepted your friend request	Friend request update	read	{"friendship_id":"f6f99898-7726-4f94-be66-c9f72f3f0dcf"}	2023-10-21 05:13:44.429188+00	2023-10-21 05:13:44.429188+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
64da0a79-1156-4275-aee6-f80d21e7279f	도연 김 accepted your invitation to a date on October 22nd	Event invitation update	read	{"action":"invite","event_id":"35a0d43c-79ad-4242-ac9a-fc90a1a67b6a"}	2023-10-21 05:16:44.479554+00	2023-10-21 05:16:44.479554+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
fc06d34d-a38a-4d6f-a166-ad91739fd4b0	Krishna Pal sent you an invitation to a date on @October 21st	Event invitation	read	{"action":"invite","event_id":"97d24dd4-a803-4fad-bdac-dfebf15fdc29"}	2023-10-20 16:46:31.895661+00	2023-10-20 16:46:31.895661+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
8ceb351c-41a8-489f-af0a-0dc79dbf0c63	Sunny Hunny sent you an message	Chat message	read	{"action":"message","message_id":"e13c740a-688f-4a76-8d00-219802da0bec"}	2023-10-23 07:20:00.799143+00	2023-10-23 07:20:00.799143+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
efdb5bda-57d8-4597-873d-d12e9e606151	Sunny Hunny sent you an invitation to a date on @October 23rd	Event invitation	read	{"action":"invite","event_id":"6d807005-0b74-4bcd-b542-69944b9de2b8"}	2023-10-23 08:29:53.631778+00	2023-10-23 08:29:53.631778+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
e3bf289f-13e0-4fe9-aad6-f78721707398	Sunny Hunny sent you an invitation to a date on @October 26th	Event invitation	read	{"action":"invite","event_id":"391da4d3-9bee-42b6-9076-c30e29445a43"}	2023-10-23 08:30:24.277997+00	2023-10-23 08:30:24.277997+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
c4c32cd1-c929-44be-b3a2-60d76a09b581	Aaa Bbb rejected your invitation to a date on October 24th	Event invitation update	read	{"action":"invite","event_id":"752ca5bd-d548-48b5-85bf-07baa9be82f1"}	2023-10-23 06:43:53.666896+00	2023-10-23 06:43:53.666896+00	088d5892-bc83-45d7-9147-2106f86757ab
65cfcbc1-fd60-47af-9637-9b84eb7c1e94	AaaBaa@ has sent a friend request to you	Friend request	read	{"friendship_id":"2856a315-f4fb-4e30-8dc5-d614c9c9acce"}	2023-10-23 06:35:17.388002+00	2023-10-23 06:35:17.388002+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
b651eede-a0ba-4b7a-8f91-254002e379f5	Aaa Baa sent you an invitation to a date on @October 23rd	Event invitation	read	{"action":"invite","event_id":"d0295d3d-fe90-4884-9cc3-3031b726e2f2"}	2023-10-23 06:36:50.937047+00	2023-10-23 06:36:50.937047+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
ed8d7cf8-ef38-43aa-ae14-732537d1b05f	SunnyHunny@ has sent a friend request to you	Friend request	read	{"friendship_id":"088d5892-bc83-45d7-9147-2106f86757ab"}	2023-10-23 06:41:39.594421+00	2023-10-23 06:41:39.594421+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
0f1e158b-7967-4324-bec8-a23aca23d3c5	Sunny Hunny sent you an message	Chat message	read	{"action":"message","message_id":"ec0fc719-3275-46da-9a4e-d8d9d9b6c613"}	2023-10-23 06:42:31.835658+00	2023-10-23 06:42:31.835658+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
32037c69-46a7-4560-b601-4e094cec90f0	jacky chain sent you an invitation to a date on @October 30th	Event invitation	read	{"action":"invite","event_id":"e9191df2-e34a-46d0-b2f3-b82fae5d17ed"}	2023-10-26 12:13:06.706182+00	2023-10-26 12:13:06.706182+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
7168a89a-00f5-41e6-bf51-643803d53be0	IsadateTest has accepted your friend request	Friend request update	read	{"friendship_id":"af9b1415-ec35-4d98-8720-00838cc9db1c"}	2023-10-26 12:06:57.513932+00	2023-10-26 12:06:57.513932+00	af9b1415-ec35-4d98-8720-00838cc9db1c
367508d4-b117-4616-9aa0-6dff4fb7ff1f	AaaBbb has accepted your friend request	Friend request update	read	{"friendship_id":"67d69ef7-6df2-40ac-8c97-37ed0a1155f7"}	2023-10-24 16:20:19.91436+00	2023-10-24 16:20:19.91436+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
b643daad-9500-48c5-a7bb-2037bacbb454	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"4470cb04-8016-4aa6-9d23-715f7c4d89a6"}	2023-10-25 06:56:32.756014+00	2023-10-25 06:56:32.756014+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
468d94e6-e797-4ef4-80d7-0f1994e3cab3	Krishna Pal sent you an invitation to a date on @October 26th	Event invitation	read	{"action":"invite","event_id":"06291fc1-4f49-4e45-841f-5568b38062e9"}	2023-10-25 05:31:43.642799+00	2023-10-25 05:31:43.642799+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
75b2c226-0d06-4989-9a45-6fd703aa012a	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"612241b0-9ab5-430c-9d2e-c37debfeedb5"}	2023-10-25 05:31:45.293325+00	2023-10-25 05:31:45.293325+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
c4ecc3d4-3223-4ee1-8296-890b5c6b47b0	AaaBbb has accepted your friend request	Friend request update	read	{"friendship_id":"eefe6b48-f131-41b1-abbc-6b92a05a8569"}	2023-10-25 08:06:34.925226+00	2023-10-25 08:06:34.925226+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
8cfd112c-9b35-4ddc-be66-7e7c9d600083	AajTak has accepted your friend request	Friend request update	read	{"friendship_id":"15b9a623-1aea-486d-9f0a-0ab90e7b3eca"}	2023-10-25 06:57:04.44594+00	2023-10-25 06:57:04.44594+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
d711dd18-80c6-4edc-bb8e-549a3b919226	Isadate Test accepted your invitation to a date on October 22nd	Event invitation update	read	{"action":"invite","event_id":"fcf419a7-1cfa-4fc2-a558-839a87d33e27"}	2023-10-20 17:15:08.790245+00	2023-10-20 17:15:08.790245+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
a5f1735e-4058-4b21-a9ed-5f5844fcb4f6	Aaj Tak sent you an message	Chat message	read	{"action":"message","message_id":"313b4708-d3fe-47f1-82eb-fdf418850926"}	2023-10-25 09:38:10.517451+00	2023-10-25 09:38:10.517451+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
9d1b3cf3-2659-40a3-9040-b964308f1c7d	Aaa Bbb sent you an message	Chat message	read	{"action":"message","message_id":"76abec0f-8fcc-4330-86c4-f90163fb94ef"}	2023-10-23 08:48:45.503674+00	2023-10-23 08:48:45.503674+00	088d5892-bc83-45d7-9147-2106f86757ab
bc6526b9-e75b-4e93-a0e2-c62972d45335	jacky chain sent you an invitation to a date on @October 28th	Event invitation	read	{"action":"invite","event_id":"250a5702-ac8d-4b8a-bc47-a81bcb8638af"}	2023-10-27 06:45:14.885341+00	2023-10-27 06:45:14.885341+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
614be24f-4294-41fc-a4b2-ce960df131fc	Aaa Bbb rejected your invitation to a date on October 25th	Event invitation update	read	{"action":"invite","event_id":"809f5fec-a310-4335-b5ca-bcff60713da8"}	2023-10-25 08:38:26.662893+00	2023-10-25 08:38:26.662893+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
3b663789-8ce9-41dc-a842-90a9afd0a8df	Aaa Bbb rejected your invitation to a date on October 25th	Event invitation update	read	{"action":"invite","event_id":"8e681d0d-a9f9-4c74-bd72-c33188a4d88d"}	2023-10-25 09:00:17.463333+00	2023-10-25 09:00:17.463333+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
b06cfeaa-bc9d-4d0b-90c5-949aa274e867	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"a85dd7de-8a03-4351-8ea4-ba5a2f9e6496"}	2023-10-25 09:27:47.902462+00	2023-10-25 09:27:47.902462+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
405af9d3-da25-428b-9134-cd85f5b54497	AajTak has accepted your friend request	Friend request update	unread	{"friendship_id":"0ede945d-07ef-436c-b70b-e3d15708681c"}	2023-10-25 09:38:56.881356+00	2023-10-25 09:38:56.881356+00	0ede945d-07ef-436c-b70b-e3d15708681c
11ed1d25-9883-4641-8cc5-d323af3ceaa5	Isadate Test accepted your invitation to a date on October 26th	Event invitation update	read	{"action":"invite","event_id":"c5ef642a-862d-4b56-a279-77a316867460"}	2023-10-26 11:09:05.198093+00	2023-10-26 11:09:05.198093+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
eaeed9b7-92a6-4b2f-b3c4-d59421bbf9ec	jacky chain sent you an invitation to a date on @October 28th	Event invitation	read	{"action":"invite","event_id":"8328597f-38d8-4b14-bb3e-2a356d2a92d0"}	2023-10-26 12:19:09.233187+00	2023-10-26 12:19:09.233187+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
19f06f61-2816-4dd5-aa0d-0cb1838e89b5	jacky chain sent you an message	Chat message	read	{"action":"message","message_id":"09974c63-e3c9-43bc-9efe-4d22fecca6df"}	2023-10-26 12:19:10.670023+00	2023-10-26 12:19:10.670023+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
b2f2b61b-a944-4359-9598-38bdbff385e6	jackychain has accepted your friend request	Friend request update	unread	{"friendship_id":"d7a79da5-70d7-4800-9ddc-c7f18cd09093"}	2023-10-26 12:51:57.417162+00	2023-10-26 12:51:57.417162+00	d7a79da5-70d7-4800-9ddc-c7f18cd09093
9bd3fdbe-e912-4811-8277-467ea7bc08ea	jackychain has accepted your friend request	Friend request update	read	{"friendship_id":"94a126d0-584b-4c0d-9e73-422f0b117db6"}	2023-10-27 06:27:30.445584+00	2023-10-27 06:27:30.445584+00	94a126d0-584b-4c0d-9e73-422f0b117db6
1124b0e6-9921-4106-be71-8ce7d59a91f9	Krishna Pal sent you an invitation to a date on @October 26th	Event invitation	read	{"action":"invite","event_id":"c5ef642a-862d-4b56-a279-77a316867460"}	2023-10-25 09:27:46.542018+00	2023-10-25 09:27:46.542018+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
364a34e0-4195-402b-8941-2720e9f660e3	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"a85dd7de-8a03-4351-8ea4-ba5a2f9e6496"}	2023-10-25 09:27:47.902462+00	2023-10-25 09:27:47.902462+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
3a529d95-ae34-4a43-824a-d487c6e0c41a	Aaj Tak sent you an message	Chat message	read	{"action":"message","message_id":"7902faab-df3c-4e82-875a-06063c2e136a"}	2023-10-25 06:59:20.575692+00	2023-10-25 06:59:20.575692+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
6600708b-e8f1-4568-a9ea-1f832ff72ef0	Aaj Tak sent you an invitation to a date on @October 25th	Event invitation	read	{"action":"invite","event_id":"809f5fec-a310-4335-b5ca-bcff60713da8"}	2023-10-25 08:37:01.786548+00	2023-10-25 08:37:01.786548+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
92178182-cf99-4c68-b226-01ca6eed04e8	Aaj Tak sent you an invitation to a date on @October 25th	Event invitation	read	{"action":"invite","event_id":"8e681d0d-a9f9-4c74-bd72-c33188a4d88d"}	2023-10-25 08:59:23.291838+00	2023-10-25 08:59:23.291838+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
03c0e5b4-b96d-4017-98d5-cb61d524696b	Aaj Tak sent you an invitation to a date on @October 26th	Event invitation	read	{"action":"invite","event_id":"d1bc8154-91ac-44e9-bd9d-5db0daad8d07"}	2023-10-25 09:38:09.03457+00	2023-10-25 09:38:09.03457+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
e663115e-8a9c-4387-b966-6059c03f5259	Krishna Singh sent you an message	Chat message	read	{"action":"message","message_id":"bd9f9d40-48e6-4b80-8afa-3561ab4cf141"}	2023-10-27 12:01:46.064327+00	2023-10-27 12:01:46.064327+00	28b72158-d944-4d9f-9923-e4dec3348de1
38960105-5b11-44d2-b5a8-1db331269a27	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"acd41eaa-8424-438c-9cd1-69ac84fd163e"}	2023-10-27 12:00:56.125726+00	2023-10-27 12:00:56.125726+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
9c221e0c-abab-4004-b299-4900a440648f	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"8735785f-92aa-499b-9d4c-5bf4676578f7"}	2023-10-27 12:01:59.212291+00	2023-10-27 12:01:59.212291+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
d541ce35-be7a-4883-9c06-1669da13f95f	Apsi Depsi sent you an invitation to a date on @October 28th	Event invitation	read	{"action":"invite","event_id":"424be2ff-868f-454f-b4b5-0acaee1e3d27"}	2023-10-28 10:28:20.806931+00	2023-10-28 10:28:20.806931+00	088d5892-bc83-45d7-9147-2106f86757ab
ca45e344-b6d7-495d-9f99-b016b91e045b	Aaa Bbb rejected your invitation to a date on October 27th	Event invitation update	read	{"action":"invite","event_id":"4a17988f-9601-4bcf-bdc6-6eea56e24ddc"}	2023-10-23 08:49:13.291884+00	2023-10-23 08:49:13.291884+00	088d5892-bc83-45d7-9147-2106f86757ab
b0250d4e-c351-4fbd-9bb0-707859e100ed	Aaa Bbb accepted your invitation to a date on October 28th	Event invitation update	read	{"action":"invite","event_id":"7241fe41-a8a9-46ba-b02a-675c8112282e"}	2023-10-23 08:49:18.21072+00	2023-10-23 08:49:18.21072+00	088d5892-bc83-45d7-9147-2106f86757ab
e1dd4630-5cbc-4c0a-b849-adb24d5eec7b	Apsi Depsi sent you an message	Chat message	read	{"action":"message","message_id":"f74ec2f7-f1cd-4c93-82d7-2449f27ea91c"}	2023-10-28 10:27:05.762314+00	2023-10-28 10:27:05.762314+00	088d5892-bc83-45d7-9147-2106f86757ab
09c2a0e5-1bc4-41b2-91c6-bde1b94ebf70	jacky Chain accepted your invitation to a date on October 30th	Event invitation update	read	{"action":"invite","event_id":"9ecbad76-d8c8-4309-9787-d10e9a2a1f69"}	2023-10-30 07:48:32.53323+00	2023-10-30 07:48:32.53323+00	95109dc9-05d5-48a3-8c46-8f2356993f68
9069f79f-df4f-4b93-aa4b-b661410bb3a1	SunnyMoney has accepted your friend request	Friend request update	read	{"friendship_id":"d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5"}	2023-10-28 10:25:58.851483+00	2023-10-28 10:25:58.851483+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
90a82d2d-6b8c-49b4-a7ba-23808d744602	User Admin sent you an invitation to a date on @October 31st	Event invitation	unread	{"action":"invite","event_id":"b6101a7f-da54-4120-8c44-bf7738343bbd"}	2023-10-30 15:29:13.949851+00	2023-10-30 15:29:13.949851+00	af9b1415-ec35-4d98-8720-00838cc9db1c
576e22f4-95c7-40d5-a5af-27b66a9e2d50	Sunny Money sent you an invitation to a date on @November 2nd	Event invitation	read	{"action":"invite","event_id":"461aa689-5493-4651-933d-bb8b6270ad6d"}	2023-11-01 07:02:26.863322+00	2023-11-01 07:02:26.863322+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
1870fea6-0abf-45f8-a851-4dbe1fc5d297	Apsi Depsi sent you an message	Chat message	read	{"action":"message","message_id":"3802dbce-9797-4032-86a1-08e0dfa962ca"}	2023-10-31 13:10:23.704308+00	2023-10-31 13:10:23.704308+00	088d5892-bc83-45d7-9147-2106f86757ab
8f2f2928-716b-434c-8f5e-b5d1760839ac	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"eca782d6-cc79-4dc8-9a85-ef6334271e64"}	2023-11-01 07:02:28.461079+00	2023-11-01 07:02:28.461079+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
d71e109b-b73c-4e3e-aacd-5270fe92190e	Apsi Depsi sent you an invitation to a date on @November 5th	Event invitation	read	{"action":"invite","event_id":"1e8c3028-7a79-48df-ade7-e42300e9c71b"}	2023-11-01 07:19:17.094207+00	2023-11-01 07:19:17.094207+00	088d5892-bc83-45d7-9147-2106f86757ab
a9969d68-9bd8-47c2-abbc-5ced7101f102	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"d870b400-c1e1-4b60-a755-c3f65a55bad6"}	2023-10-27 12:21:45.265626+00	2023-10-27 12:21:45.265626+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
d52b43ab-deb7-45b3-837e-85e7b3c0f9d5	Krishna Singh sent you an message	Chat message	read	{"action":"message","message_id":"732e9d2f-77f2-46f7-9ff2-a4ea89cb9c5e"}	2023-10-27 15:43:46.776523+00	2023-10-27 15:43:46.776523+00	28b72158-d944-4d9f-9923-e4dec3348de1
92e861c8-796e-45ab-9c91-666cab3e8c7d	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"26e18b96-c521-4e09-bb93-57b2bbfa572a"}	2023-10-27 12:31:59.328122+00	2023-10-27 12:31:59.328122+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
371e6c13-26ce-4f36-af57-8bd2bf8e23c2	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"23a3c215-b744-4273-ad50-e505d9bdaa69"}	2023-10-27 12:58:03.376809+00	2023-10-27 12:58:03.376809+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
1abf0695-ebda-4e83-baea-c9f70bb9b4bf	Aaj Tak sent you an message	Chat message	read	{"action":"message","message_id":"2450d84b-47d6-45ed-9c88-4a5fc04f047f"}	2023-10-25 09:46:44.35279+00	2023-10-25 09:46:44.35279+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
a3f1fc20-c116-49af-986e-39b0a8dbdc68	BCC News accepted your invitation to a date on October 25th	Event invitation update	unread	{"action":"invite","event_id":"d026abcf-cd51-4f14-9a34-d110d84dc703"}	2023-10-25 11:06:27.181649+00	2023-10-25 11:06:27.181649+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
fdef9232-018f-4815-9043-7a8cdcfa6fa6	BCC News sent you an invitation to a date on @October 25th	Event invitation	unread	{"action":"invite","event_id":"6b029f57-9d86-451e-97c7-28d793943064"}	2023-10-25 11:07:22.768232+00	2023-10-25 11:07:22.768232+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
173aca13-b046-4f1b-8e54-a358f631a517	BCC News sent you an message	Chat message	unread	{"action":"message","message_id":"6cab0652-133d-4f79-be46-2c8059d92de6"}	2023-10-25 11:07:24.093877+00	2023-10-25 11:07:24.093877+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
acb193eb-9f90-49a0-82f1-290bef3c44ac	Isadate Test accepted your invitation to a date on October 27th	Event invitation update	read	{"action":"invite","event_id":"4cf45361-d2a9-43e5-a44e-326f0ef18537"}	2023-10-26 09:15:14.51571+00	2023-10-26 09:15:14.51571+00	31950017-b731-4949-a8f5-3511b0b86b4e
e1f57c2c-dd8b-426e-9f0f-77ed027e04be	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"a8b198b1-04b2-4b9b-bce3-97dc3118593b"}	2023-10-26 09:25:08.346815+00	2023-10-26 09:25:08.346815+00	31950017-b731-4949-a8f5-3511b0b86b4e
9b98dfdd-d5a8-46bf-852b-b8dbdeb0ab9b	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"8909b827-7dcd-4132-ae28-03ca1e4e3a95"}	2023-10-20 16:46:33.964619+00	2023-10-20 16:46:33.964619+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
450fb596-6bbd-4e8a-add0-df147c68191b	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"55f95847-4d8b-4569-a8f5-0498328ee0bd"}	2023-10-20 17:04:54.739527+00	2023-10-20 17:04:54.739527+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
56dd2102-e26b-4077-af3c-6efd4d93bb07	testdr demo sent you an message	Chat message	read	{"action":"message","message_id":"7adb7085-ef16-4327-9ca8-4fbdab8bc995"}	2023-10-26 09:24:30.592809+00	2023-10-26 09:24:30.592809+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
19cbcd78-befe-4a8a-a8ab-68012713603b	testdr demo sent you an message	Chat message	read	{"action":"message","message_id":"3d79fe28-87ec-4671-80c9-1b24ce8a8347"}	2023-10-26 10:59:54.740716+00	2023-10-26 10:59:54.740716+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
c63cdb0e-cbee-4af2-b133-527960cc7732	Krishna Singh rejected your invitation to a date on October 28th	Event invitation update	read	{"action":"invite","event_id":"fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc"}	2023-10-26 06:06:12.44863+00	2023-10-26 06:06:12.44863+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
a0f25dcd-40e8-4c46-ad69-fd5af3099e9f	Krishna Singh rejected your invitation to a date on October 28th	Event invitation update	read	{"action":"invite","event_id":"fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc"}	2023-10-26 06:04:02.85107+00	2023-10-26 06:04:02.85107+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
6f6a8c15-c392-4c60-9016-01c662f88516	Krishna Pal sent you an invitation to a date on @October 28th	Event invitation	read	{"action":"invite","event_id":"fdd7e0e2-c32a-4cf4-88bb-7fe2c466d8dc"}	2023-10-26 05:43:32.726818+00	2023-10-26 05:43:32.726818+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
7512217a-2078-4cc7-9e5a-322e41f634ee	Krishna Pal sent you an message	Chat message	read	{"action":"message","message_id":"cda75979-fa17-4f21-8170-0f6e9091fa1a"}	2023-10-26 05:43:34.591456+00	2023-10-26 05:43:34.591456+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
2476fac6-3d49-47af-a659-b55c4c8275e9	Isadate Test accepted your invitation to a date on October 30th	Event invitation update	read	{"action":"invite","event_id":"cc46e975-c089-45b6-b575-df4e32cfc22f"}	2023-10-27 06:01:48.356509+00	2023-10-27 06:01:48.356509+00	af9b1415-ec35-4d98-8720-00838cc9db1c
1fb9364d-19f6-483c-9020-a9dcd9aca2a7	IsadateTest has accepted your friend request	Friend request update	read	{"friendship_id":"31950017-b731-4949-a8f5-3511b0b86b4e"}	2023-10-26 09:10:12.32177+00	2023-10-26 09:10:12.32177+00	31950017-b731-4949-a8f5-3511b0b86b4e
896343e8-c2f4-4291-b4eb-161994908543	Krishna Singh accepted your invitation to a date on October 26th	Event invitation update	read	{"action":"invite","event_id":"06291fc1-4f49-4e45-841f-5568b38062e9"}	2023-10-25 06:15:10.599935+00	2023-10-25 06:15:10.599935+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
a3c0b18c-d243-469e-9883-6823595fc0e9	Krishna Singh sent you an message	Chat message	read	{"action":"message","message_id":"20e034bc-8c23-43cc-9091-4cbe28845c7b"}	2023-10-25 06:39:56.80208+00	2023-10-25 06:39:56.80208+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
be1019a8-9820-42dc-96c6-bb662ea897c5	KrishnaSingh has accepted your friend request	Friend request update	read	{"friendship_id":"28b72158-d944-4d9f-9923-e4dec3348de1"}	2023-10-27 11:56:50.551433+00	2023-10-27 11:56:50.551433+00	28b72158-d944-4d9f-9923-e4dec3348de1
498f6bf9-0d79-4501-9ef9-fb9e9674f08e	jacky chain sent you an message	Chat message	read	{"action":"message","message_id":"1083b365-ecd2-4c47-ab96-8cf83acfbdd9"}	2023-10-26 12:09:58.346906+00	2023-10-26 12:09:58.346906+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
9217c6e7-d564-4b16-b7cf-491be258207f	Isadate Test accepted your invitation to a date on October 28th	Event invitation update	read	{"action":"invite","event_id":"8328597f-38d8-4b14-bb3e-2a356d2a92d0"}	2023-10-26 12:21:26.29803+00	2023-10-26 12:21:26.29803+00	af9b1415-ec35-4d98-8720-00838cc9db1c
84c3a2bc-50f2-4013-8b38-2dd5744e85ec	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"45447399-0944-40f7-86bb-378dd85463d2"}	2023-10-27 12:01:16.546998+00	2023-10-27 12:01:16.546998+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
cfab94ae-0c16-4f28-b654-85431ebc5fb6	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"fe5ffb56-fdc0-4aec-9f37-6d2176491211"}	2023-10-27 12:05:23.013748+00	2023-10-27 12:05:23.013748+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
e16c5b93-37ab-4d3d-a3b1-11649bacc1bf	Aaa Bbb rejected your invitation to a date on October 24th	Event invitation update	read	{"action":"invite","event_id":"d3c2ecb0-4bb1-4188-8cca-22918be76d84"}	2023-10-23 08:49:05.097556+00	2023-10-23 08:49:05.097556+00	088d5892-bc83-45d7-9147-2106f86757ab
75f78a69-1a3c-4e12-855c-1c4d195e6044	Aaa Bbb rejected your invitation to a date on October 25th	Event invitation update	read	{"action":"invite","event_id":"bc2c5daf-779e-4851-b828-d512325c464d"}	2023-10-23 08:49:09.573867+00	2023-10-23 08:49:09.573867+00	088d5892-bc83-45d7-9147-2106f86757ab
3a01c9d9-d1dd-46b5-86db-7386323a6b30	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"280f328d-0c77-49f3-a102-84e7290ef551"}	2023-10-28 10:53:10.813054+00	2023-10-28 10:53:10.813054+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
b5e34575-8044-4302-b2bc-997139b51056	User Admin sent you an message	Chat message	unread	{"action":"message","message_id":"3c3256e3-301b-401b-b3de-3faf24ea3ac2"}	2023-10-30 07:50:43.679598+00	2023-10-30 07:50:43.679598+00	af9b1415-ec35-4d98-8720-00838cc9db1c
89ee87df-705f-4fb4-9a04-4e2a00ae6e98	jackyChain has accepted your friend request	Friend request update	read	{"friendship_id":"95109dc9-05d5-48a3-8c46-8f2356993f68"}	2023-10-30 07:47:22.35212+00	2023-10-30 07:47:22.35212+00	95109dc9-05d5-48a3-8c46-8f2356993f68
4498a3d1-a275-4868-a435-d85455b86c8b	User Admin sent you an invitation to a date on @November 1st	Event invitation	unread	{"action":"invite","event_id":"888bdd7b-a83f-4d92-a9db-aa0eb6b608c6"}	2023-10-30 15:30:57.360825+00	2023-10-30 15:30:57.360825+00	af9b1415-ec35-4d98-8720-00838cc9db1c
b6d3b3a2-a30d-458a-92b1-7facb8cfea63	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"2d56b587-f033-4547-b11e-57ac09cb64c4"}	2023-10-27 12:29:50.469697+00	2023-10-27 12:29:50.469697+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
93faf98c-ce75-4ab4-bbed-808520fdd4c9	Krishna Singh accepted your invitation to a date on October 27th	Event invitation update	read	{"action":"invite","event_id":"82adf427-10d5-4a1c-a9b0-d036d879e94c"}	2023-10-27 12:15:15.851195+00	2023-10-27 12:15:15.851195+00	28b72158-d944-4d9f-9923-e4dec3348de1
83682cba-608c-4ee5-bbef-de6c3671e457	Sunny Money accepted your invitation to a date on November 5th	Event invitation update	read	{"action":"invite","event_id":"1e8c3028-7a79-48df-ade7-e42300e9c71b"}	2023-11-01 07:27:03.453436+00	2023-11-01 07:27:03.453436+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
38f6a3f7-7242-4391-be00-040e88f3095c	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"4726a730-c52b-4763-891c-850b1a0c406d"}	2023-10-27 12:34:30.291873+00	2023-10-27 12:34:30.291873+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
3f606f86-50ec-43cd-99d9-6e6b830eaa58	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"3602eadc-40bd-4038-8fa6-aee29ee00c4d"}	2023-11-03 06:03:54.496032+00	2023-11-03 06:03:54.496032+00	af9b1415-ec35-4d98-8720-00838cc9db1c
036b7a3b-a8ce-4170-8c79-bd005aca4d10	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	read	{"action":"invite","event_id":"1e402c32-6c79-4623-a6cd-1bc6fd7acb31"}	2023-11-03 06:04:21.032026+00	2023-11-03 06:04:21.032026+00	af9b1415-ec35-4d98-8720-00838cc9db1c
e326743e-fe66-4447-98c5-041ad09ba2c7	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	read	{"action":"invite","event_id":"fc403801-43dc-4705-9a73-80b731c81d74"}	2023-11-03 06:04:49.236634+00	2023-11-03 06:04:49.236634+00	af9b1415-ec35-4d98-8720-00838cc9db1c
0d308233-207c-49d8-974b-9288f37a32ab	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	read	{"action":"invite","event_id":"889a5b43-fd33-4305-be5a-ea2afffa7f94"}	2023-11-03 06:05:48.962788+00	2023-11-03 06:05:48.962788+00	af9b1415-ec35-4d98-8720-00838cc9db1c
97b2d5b3-e37e-475a-a202-55a3545b5f8a	MarvAlen has accepted your friend request	Friend request update	read	{"friendship_id":"088d5892-bc83-45d7-9147-2106f86757ab"}	2023-11-01 08:14:39.03953+00	2023-11-01 08:14:39.03953+00	088d5892-bc83-45d7-9147-2106f86757ab
b25daa09-ebe6-4eb2-b877-e178cbff140a	Krishna Singh sent you an message	Chat message	read	{"action":"message","message_id":"b9c885fa-b37b-4181-ae20-2ed2c70478ab"}	2023-10-27 15:33:33.654236+00	2023-10-27 15:33:33.654236+00	28b72158-d944-4d9f-9923-e4dec3348de1
5d93dcb7-64a6-4ae3-a286-4c88984188a9	Krishna Singh sent you an message	Chat message	read	{"action":"message","message_id":"3322a4b3-909a-41be-bf5b-52e5e755606d"}	2023-10-27 15:44:58.839864+00	2023-10-27 15:44:58.839864+00	28b72158-d944-4d9f-9923-e4dec3348de1
560b6640-5aa8-435f-85f3-393007cb8df7	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"20907430-d424-410f-8597-ccef4aa85667"}	2023-11-03 06:05:50.840697+00	2023-11-03 06:05:50.840697+00	af9b1415-ec35-4d98-8720-00838cc9db1c
11f6cff4-49a2-4d0d-b673-b2a7b4173d87	Isadate Test sent you an message	Chat message	unread	{"action":"message","message_id":"88b4fc7c-f922-4577-b30f-9f7b07070f14"}	2023-11-02 09:21:37.31343+00	2023-11-02 09:21:37.31343+00	31950017-b731-4949-a8f5-3511b0b86b4e
525792c8-68fc-4bdd-bdbd-e1aa3f691e65	Isadate Test sent you an message	Chat message	unread	{"action":"message","message_id":"f08150c2-4f13-4d7a-9586-f0f18930bca2"}	2023-11-02 09:23:48.397757+00	2023-11-02 09:23:48.397757+00	31950017-b731-4949-a8f5-3511b0b86b4e
980ace3d-43a6-413e-abb2-53db1a912bb2	MarvAlen has accepted your friend request	Friend request update	read	{"friendship_id":"5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f"}	2023-11-01 08:49:16.733986+00	2023-11-01 08:49:16.733986+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
4d239eca-77d7-4f73-a276-b65fa349a535	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	unread	{"action":"invite","event_id":"3f4dae34-1378-45c1-9f51-d87fcfd4f236"}	2023-11-03 05:55:42.903409+00	2023-11-03 05:55:42.903409+00	af9b1415-ec35-4d98-8720-00838cc9db1c
bf3464d2-f3e1-402e-a4a2-ed0b0cd27264	Users Addmin sent you an invitation to a date on @November 5th	Event invitation	unread	{"action":"invite","event_id":"f84e3ae0-0e65-4008-9bf9-4e2309ba3334"}	2023-11-03 05:56:43.145266+00	2023-11-03 05:56:43.145266+00	af9b1415-ec35-4d98-8720-00838cc9db1c
194d4876-da46-4318-8118-b4572d97a6c1	Users Addmin sent you an message	Chat message	unread	{"action":"message","message_id":"0c549b43-c8db-4316-9c73-b15a32bd5933"}	2023-11-03 06:00:03.87264+00	2023-11-03 06:00:03.87264+00	af9b1415-ec35-4d98-8720-00838cc9db1c
31f1cce6-04c6-4966-82af-39afb5c02221	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	unread	{"action":"invite","event_id":"54bbe1a0-f624-4e5f-8fe3-f59031fb15d7"}	2023-11-03 06:01:24.498827+00	2023-11-03 06:01:24.498827+00	af9b1415-ec35-4d98-8720-00838cc9db1c
9d738b8f-d8ee-4a5b-8297-bea22887f382	Users Addmin sent you an message	Chat message	unread	{"action":"message","message_id":"c9e335d2-e474-45f4-ab69-6b4a3f56d87a"}	2023-11-03 06:01:26.07135+00	2023-11-03 06:01:26.07135+00	af9b1415-ec35-4d98-8720-00838cc9db1c
a81a7714-b67e-4289-8fdf-33606a5ae9dd	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	unread	{"action":"invite","event_id":"29eac1a1-6e93-4435-b17d-89ba510a0c7a"}	2023-11-03 06:02:01.779002+00	2023-11-03 06:02:01.779002+00	af9b1415-ec35-4d98-8720-00838cc9db1c
3e82ac70-8116-436e-b6b8-60b9152d1bbb	Users Addmin sent you an message	Chat message	unread	{"action":"message","message_id":"76337295-d74a-4976-8c3b-c003d0bbce20"}	2023-11-03 06:02:03.510493+00	2023-11-03 06:02:03.510493+00	af9b1415-ec35-4d98-8720-00838cc9db1c
98d1e364-c801-4245-a105-8605c205ab02	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	unread	{"action":"invite","event_id":"e40dfc82-3a09-4905-8ccf-f660975437c0"}	2023-11-03 06:03:53.029195+00	2023-11-03 06:03:53.029195+00	af9b1415-ec35-4d98-8720-00838cc9db1c
0882b0cd-45ee-4475-b3e8-09c4aac8a102	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"4fc0a121-250a-40f2-a69d-9d67bcd05177"}	2023-11-03 06:09:58.850308+00	2023-11-03 06:09:58.850308+00	af9b1415-ec35-4d98-8720-00838cc9db1c
4b73d182-64e7-483c-9411-0ba9a03ef918	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"0a121362-124b-4ba1-b16c-edecf8db4414"}	2023-11-03 06:10:03.327424+00	2023-11-03 06:10:03.327424+00	af9b1415-ec35-4d98-8720-00838cc9db1c
275f0f56-c013-4501-8554-6a9f7b3a3236	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"c53c5678-d9ad-4a3d-8a04-23fc4a6ee9b6"}	2023-11-03 06:11:12.380093+00	2023-11-03 06:11:12.380093+00	af9b1415-ec35-4d98-8720-00838cc9db1c
4bffe66b-edbe-4138-9d08-5c5adb9531b5	Users Addmin sent you an invitation to a date on @November 4th	Event invitation	read	{"action":"invite","event_id":"c0f04347-177a-4fb4-aa99-d07544738b93"}	2023-11-03 06:14:35.272814+00	2023-11-03 06:14:35.272814+00	af9b1415-ec35-4d98-8720-00838cc9db1c
1da74b8f-67cf-4bc2-b040-bc0a3f95e4b6	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	read	{"action":"invite","event_id":"b2ac7709-69b9-4aeb-996f-a168f27913c2"}	2023-11-03 09:43:50.357602+00	2023-11-03 09:43:50.357602+00	af9b1415-ec35-4d98-8720-00838cc9db1c
8f8a9421-38f8-4ed0-af77-96331a5c94a2	Isadate Test sent you an message	Chat message	unread	{"action":"message","message_id":"a5fb5716-2d04-4dff-97e0-012ca0108bfc"}	2023-11-03 10:14:32.244561+00	2023-11-03 10:14:32.244561+00	31950017-b731-4949-a8f5-3511b0b86b4e
759deae0-2233-4e54-b181-2c32f18f0988	Isadate Test sent you an message	Chat message	unread	{"action":"message","message_id":"d63c41d8-8159-4f72-a2a2-7ab4d4fa4732"}	2023-11-03 10:14:39.432344+00	2023-11-03 10:14:39.432344+00	31950017-b731-4949-a8f5-3511b0b86b4e
e18ad63b-20ae-4a1d-9ef6-afc682593a64	Isadate Test sent you an message	Chat message	unread	{"action":"message","message_id":"075bbc69-63cb-4302-82eb-a35d5a82f019"}	2023-11-03 10:14:58.05395+00	2023-11-03 10:14:58.05395+00	31950017-b731-4949-a8f5-3511b0b86b4e
7bb8e2ff-cc50-4378-9349-74693d6baa34	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"cff19d6d-3fca-4342-91c1-a12363979ac3"}	2023-11-03 09:43:51.906813+00	2023-11-03 09:43:51.906813+00	af9b1415-ec35-4d98-8720-00838cc9db1c
0c5e170d-aed0-431d-9e45-0db3dc158b2d	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	read	{"action":"invite","event_id":"858d7bd1-9f54-4fe2-b825-4b94f3189452"}	2023-11-03 09:44:28.033022+00	2023-11-03 09:44:28.033022+00	af9b1415-ec35-4d98-8720-00838cc9db1c
cae3a23e-5b23-41f2-a8c0-aef5b0c104c6	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"26a101ec-903c-4130-b16f-196ec9697fbd"}	2023-11-03 09:44:29.361255+00	2023-11-03 09:44:29.361255+00	af9b1415-ec35-4d98-8720-00838cc9db1c
5d45225b-1280-4e93-a638-ad78d4f46e2d	Users Addmin sent you an invitation to a date on @November 3rd	Event invitation	read	{"action":"invite","event_id":"f0e85e1b-ff81-4e56-98f7-8250a7848ed2"}	2023-11-03 09:44:50.838298+00	2023-11-03 09:44:50.838298+00	af9b1415-ec35-4d98-8720-00838cc9db1c
8c2133da-bc9e-4c38-aa36-3b4839296f02	Users Addmin sent you an message	Chat message	read	{"action":"message","message_id":"beeb73ad-a0c3-4831-b9a4-5fd0c62630a0"}	2023-11-03 09:44:52.441822+00	2023-11-03 09:44:52.441822+00	af9b1415-ec35-4d98-8720-00838cc9db1c
797c412d-e0ee-400b-a1d1-0dd98355f5e8	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"b9d3c131-5c8e-446c-b5c9-7ef27685e65b"}	2023-11-06 09:57:08.310754+00	2023-11-06 09:57:08.310754+00	28b72158-d944-4d9f-9923-e4dec3348de1
38136697-f3b9-4c4f-910b-aed8fcb8856f	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"b9d3c131-5c8e-446c-b5c9-7ef27685e65b"}	2023-11-06 09:57:08.310754+00	2023-11-06 09:57:08.310754+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
0442fa31-73a1-40e0-8015-9ff73dcc02b8	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"ab1b42a1-2df7-4541-a029-fd7fe5b34127"}	2023-11-06 10:03:34.373968+00	2023-11-06 10:03:34.373968+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
f1b2dbc6-19ca-4e67-9217-fe9587602b51	Sunny Money sent you an invitation to a date on @November 6th	Event invitation	read	{"action":"invite","event_id":"82be2cbd-8a07-4ca7-8f58-6e5111ffa02d"}	2023-11-06 10:04:57.347554+00	2023-11-06 10:04:57.347554+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
426793b2-32a2-4b8e-ac69-42c65b0d3e2e	Sunny Money sent you an message	Chat message	read	{"action":"message","message_id":"b2854b4b-2de1-408e-a58e-4ab357c4f783"}	2023-11-06 10:04:58.931276+00	2023-11-06 10:04:58.931276+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
565ace4d-70bf-4273-b8cd-fe7085a80e63	Sunny Money accepted your invitation to a date on November 6th	Event invitation update	read	{"action":"invite","event_id":"c20cd722-be19-4538-8f4d-01a46769cc31"}	2023-11-06 11:53:23.108954+00	2023-11-06 11:53:23.108954+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
7eff9395-0e83-423e-94f7-331c5cd6d898	Isadate Test sent you an invitation to a date on @November 7th	Event invitation	unread	{"action":"invite","event_id":"cd6a016a-cabe-42ae-a038-46dde51a132e"}	2023-11-07 05:20:55.824342+00	2023-11-07 05:20:55.824342+00	af9b1415-ec35-4d98-8720-00838cc9db1c
ee43f45c-6dab-41ea-b91e-7323daca07f3	Isadate Test sent you an invitation to a date on @November 7th	Event invitation	unread	{"action":"invite","event_id":"cd6a016a-cabe-42ae-a038-46dde51a132e"}	2023-11-07 05:20:55.824342+00	2023-11-07 05:20:55.824342+00	28b72158-d944-4d9f-9923-e4dec3348de1
095c73c5-2643-402e-9ee4-a4d3093b4089	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"0d1e6e9b-b393-4297-b0fb-fdc48853543a"}	2023-10-27 12:58:16.926208+00	2023-10-27 12:58:16.926208+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
ae5375d0-8ecd-4e5b-afda-263fa479f3fe	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"9cee182f-8fbb-426f-9de7-bb0ccad0e93c"}	2023-11-06 10:31:59.454604+00	2023-11-06 10:31:59.454604+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
c98bc5d8-2441-4a5c-bf04-83200f9f3eb8	Krishna Singh rejected your invitation to a date on October 28th	Event invitation update	unread	{"action":"invite","event_id":"a98534d0-d188-410f-98d5-f723814b3d5e"}	2023-11-07 13:18:04.883485+00	2023-11-07 13:18:04.883485+00	28b72158-d944-4d9f-9923-e4dec3348de1
6825539f-d92f-4c7c-8965-b1c64bcb30b1	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"eec0bf60-3e6a-46ef-bff3-4fcbee8ef024"}	2023-11-06 10:32:35.595305+00	2023-11-06 10:32:35.595305+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
2e76fb44-0b46-4f97-b48e-cef4974fc4f6	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"18d2dbf2-5546-4559-bdc5-2dea9a2853c0"}	2023-11-06 10:33:05.412302+00	2023-11-06 10:33:05.412302+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
b767918a-6ffc-4c74-a55b-e131c624eba6	KrishnaSingh has accepted your friend request	Friend request update	read	{"friendship_id":"5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f"}	2023-11-07 05:27:07.812702+00	2023-11-07 05:27:07.812702+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
d85bbff9-a7a8-494a-a670-2839d0cd837b	Krishna Singh accepted your invitation to a date on November 7th	Event invitation update	read	{"action":"invite","event_id":"cd6a016a-cabe-42ae-a038-46dde51a132e"}	2023-11-07 05:31:49.332775+00	2023-11-07 05:31:49.332775+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
8779e9ae-1e6d-41c9-b337-f5bf61069587	Krishna Singh sent you an message	Chat message	unread	{"action":"message","message_id":"c823ee90-abc2-49ec-b9cf-b8c86cef696e"}	2023-11-07 13:15:27.860433+00	2023-11-07 13:15:27.860433+00	28b72158-d944-4d9f-9923-e4dec3348de1
c2066b8e-f45f-45c9-aae8-0b8c4a307c35	Krishna Singh sent you an message	Chat message	unread	{"action":"message","message_id":"48b679ae-053d-4219-9bc9-69ad1a404df1"}	2023-11-07 13:15:47.807287+00	2023-11-07 13:15:47.807287+00	28b72158-d944-4d9f-9923-e4dec3348de1
409380da-6888-40aa-9e85-3e46a75296b1	Krishna Singh rejected your invitation to a date on November 6th	Event invitation update	unread	{"action":"invite","event_id":"f3cf11f9-2914-466f-be2c-452bc42ae2a7"}	2023-11-07 13:17:49.95195+00	2023-11-07 13:17:49.95195+00	28b72158-d944-4d9f-9923-e4dec3348de1
afc73cef-29dc-4499-8153-1f72ef4bf593	Aris Au sent you an invitation to a date on @November 13th	Event invitation	unread	{"action":"invite","event_id":"babc1cd1-4639-4724-8091-37ba8887ae96"}	2023-11-08 17:40:57.34842+00	2023-11-08 17:40:57.34842+00	d8df09ce-7124-4c28-bb05-662a721dd5be
dd6a1b33-d01f-4f84-b59b-21e0f87b85d8	Krishna Singh rejected your invitation to a date on November 6th	Event invitation update	unread	{"action":"invite","event_id":"f3cf11f9-2914-466f-be2c-452bc42ae2a7"}	2023-11-07 13:17:50.950922+00	2023-11-07 13:17:50.950922+00	28b72158-d944-4d9f-9923-e4dec3348de1
2f5fa309-2267-4891-b741-ededd037ac8b	Sunny Money accepted your invitation to a date on November 6th	Event invitation update	read	{"action":"invite","event_id":"79f6dbac-1c41-466d-95a6-b0e7d2602fb8"}	2023-11-06 11:55:16.970569+00	2023-11-06 11:55:16.970569+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
098760e1-e885-4bd9-9d32-0372d87acbff	Sunny Money accepted your invitation to a date on November 6th	Event invitation update	read	{"action":"invite","event_id":"206f9a1f-76e4-44d4-99e9-c154cc48622c"}	2023-11-06 12:22:46.430755+00	2023-11-06 12:22:46.430755+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
bb645553-648d-443e-adbd-e22ee4dcaa5b	An important event- Meeting at Guna, Madhya Pradesh, India is happening November 9th	Event reminder	read	{"action":"reminder","event_id":"0ddddce7-ef30-442f-a7a4-57b00e6c4780"}	2023-11-09 05:40:11.600031+00	2023-11-09 05:40:11.600031+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
37449cb9-915a-4641-bfff-32f655443e3d	Isadate Test accepted your invitation to a date on November 11th	Event invitation update	read	{"action":"invite","event_id":"8fb60e4f-6609-4a82-ba05-a84c8c84c95a"}	2023-11-10 05:24:06.255311+00	2023-11-10 05:24:06.255311+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
fbea9bf5-1d23-4727-a261-945558e0153a	Sunny Money sent you an invitation to a date on @November 10th	Event invitation	unread	{"action":"invite","event_id":"542286e1-d124-451b-9805-922575af6348"}	2023-11-10 07:09:34.82988+00	2023-11-10 07:09:34.82988+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
63fae2f1-e61c-4949-872d-bfece21ccf50	Sunny Money sent you an invitation to a date on @November 10th	Event invitation	unread	{"action":"invite","event_id":"51a81443-fe41-4f59-84bf-7b4218464f91"}	2023-11-10 10:15:18.968558+00	2023-11-10 10:15:18.968558+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
a742cabd-67ce-4a8c-a238-9f0684c1cea2	An important event - Meeting at Indore, Madhya Pradesh, India is happening on November 11th	Event reminder	read	{"action":"reminder","event_id":"8fb60e4f-6609-4a82-ba05-a84c8c84c95a","type":"45minago"}	2023-11-11 02:00:01.450673+00	2023-11-11 02:00:01.450673+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
87e0bafb-da47-48c8-a3d9-795c602d7a9e	An important event - Date at Guna is happening on November 11th	Event reminder	read	{"action":"reminder","event_id":"9d82eb56-722d-4fa8-8f11-a042bd65845c","type":"45minago"}	2023-11-11 02:00:01.907894+00	2023-11-11 02:00:01.907894+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
f96b3b0a-c0cb-47a9-b9ed-7d46819724ce	Apsi Depsi accepted your invitation to a date on November 6th	Event invitation update	read	{"action":"invite","event_id":"82be2cbd-8a07-4ca7-8f58-6e5111ffa02d"}	2023-11-06 10:06:30.764317+00	2023-11-06 10:06:30.764317+00	088d5892-bc83-45d7-9147-2106f86757ab
47d2b1a9-1184-4115-8696-520c3a03a7f2	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"4cf0f2b5-9e14-45a4-979d-a720bd9a473b"}	2023-11-06 10:33:45.752256+00	2023-11-06 10:33:45.752256+00	088d5892-bc83-45d7-9147-2106f86757ab
0493bf56-60b0-4f2c-83ef-b177dc8c685f	Marv Alen sent you an message	Chat message	read	{"action":"message","message_id":"d8618c45-6c1e-430c-a94b-1eb528848131"}	2023-11-06 10:34:04.603991+00	2023-11-06 10:34:04.603991+00	088d5892-bc83-45d7-9147-2106f86757ab
c48cbb4b-7c12-4291-a276-208ce145ac8c	Apsi Depsi sent you an message	Chat message	read	{"action":"message","message_id":"eead2d23-cf58-4dad-a116-5880127c2dc8"}	2023-11-09 05:04:36.477808+00	2023-11-09 05:04:36.477808+00	088d5892-bc83-45d7-9147-2106f86757ab
c5e5d247-c839-4ca0-bf66-9077f05c7c89	Apsi Depsi sent you an message	Chat message	read	{"action":"message","message_id":"95aaa33e-473c-41c7-aa38-529b95f67e81"}	2023-11-09 06:31:03.063691+00	2023-11-09 06:31:03.063691+00	088d5892-bc83-45d7-9147-2106f86757ab
46686062-5c6f-4037-bb78-4774b5b19358	Sunny Money sent you an invitation to a date on @November 10th	Event invitation	unread	{"action":"invite","event_id":"fb1e782d-a340-4314-b2c7-5720b163814a"}	2023-11-10 12:47:42.114755+00	2023-11-10 12:47:42.114755+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
fedaa7d9-15ab-4622-a864-e247a92c04e7	Sunny Money sent you an invitation to a date on @November 10th	Event invitation	unread	{"action":"invite","event_id":"fb1e782d-a340-4314-b2c7-5720b163814a"}	2023-11-10 12:47:42.114755+00	2023-11-10 12:47:42.114755+00	28b72158-d944-4d9f-9923-e4dec3348de1
8790485d-2195-4e0b-bb5c-a86d8bc2355b	An important event - Meeting at Indore, Madhya Pradesh, India is happening on November 11th	Event reminder	unread	{"action":"reminder","event_id":"8fb60e4f-6609-4a82-ba05-a84c8c84c95a","type":"45minago"}	2023-11-11 02:00:01.450673+00	2023-11-11 02:00:01.450673+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
1c29cf93-2f71-43c5-b206-93c8ddeed11e	An important event - Date at Guna is happening on November 11th	Event reminder	unread	{"action":"reminder","event_id":"9d82eb56-722d-4fa8-8f11-a042bd65845c","type":"45minago"}	2023-11-11 02:00:01.907894+00	2023-11-11 02:00:01.907894+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
77c05648-9b56-442c-b849-1e76b2fbbb94	An important event - Date at Guna is happening on November 11th	Event reminder	unread	{"action":"reminder","event_id":"9d82eb56-722d-4fa8-8f11-a042bd65845c","type":"45minago"}	2023-11-11 02:00:01.907894+00	2023-11-11 02:00:01.907894+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
38f2dcfa-f671-41c8-b5f2-b6eed9e151a2	An important event - Date at Guna is happening on November 11th	Event reminder	read	{"action":"reminder","event_id":"9d82eb56-722d-4fa8-8f11-a042bd65845c","type":"45minago"}	2023-11-11 02:00:01.907894+00	2023-11-11 02:00:01.907894+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
8e7a0037-a814-4711-8477-110dda613c45	An important event- Meeting at Guntur, Andhra Pradesh, India is happening November 11th	Event reminder	read	{"action":"reminder","event_id":"b9532cce-fd59-4dbc-a2f1-30bd396d8ddd"}	2023-11-11 06:00:01.80213+00	2023-11-11 06:00:01.80213+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
35eb5d55-3045-455c-b20a-c7351d6fe965	An important event- Dinner at Goa, India is happening November 11th	Event reminder	read	{"action":"reminder","event_id":"4a10ff25-a290-4b17-94fe-e2d0131b17ee"}	2023-11-11 06:10:01.444558+00	2023-11-11 06:10:01.444558+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
eae14b25-3953-4cde-aa18-47ecda688625	An important event- Brunch at Gwalior, Madhya Pradesh, India is happening November 13th	Event reminder	unread	{"action":"reminder","event_id":"651e666b-ec1b-4fe6-8b3a-47087a2c93dd"}	2023-11-13 00:00:01.40394+00	2023-11-13 00:00:01.40394+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
a712a643-dea7-4d43-a706-06fbc003e880	An important event- Date at Germany is happening November 16th	Event reminder	unread	{"action":"reminder","event_id":"3fc7d154-aced-44d4-b579-476d39c646d7"}	2023-11-16 05:00:02.366363+00	2023-11-16 05:00:02.366363+00	088d5892-bc83-45d7-9147-2106f86757ab
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sessions" ("id", "device_id", "access_token", "created_at", "updated_at", "user_id") FROM stdin;
17b852c2-b0b2-4f7e-a6a5-b2ab9f059143	2YWqjqH4rE2Fx8tnFxjoW	3f631726-adad-4b9e-9398-573708477aa4	2023-10-20 14:05:26.569494+00	2023-10-20 14:05:26.569494+00	ef273cf7-49bf-4f08-ab94-9f7a8818839b
3bfc4db1-010e-463b-adf3-605ce24f9822	F_bOwLcuGRuTGW6x7xw5-	9ceccd28-98f6-43ed-821c-e6c39bba16ff	2023-10-20 17:04:24.731009+00	2023-10-20 17:04:24.731009+00	1401947e-9975-48a4-b63d-6fa8fdee922c
4197a077-387e-4763-a846-f6a6f40936e7	DRn5mc1THQ-3YQwexel-E	90bba518-bb15-44a7-aeb5-b8143b851b22	2023-10-21 05:11:48.29993+00	2023-10-21 05:11:48.29993+00	d8df09ce-7124-4c28-bb05-662a721dd5be
2167dbca-b22a-4223-83ce-cd3e79edc9de	LWFJc8FJPYopYmyNtrqyU	5c218eed-4836-4528-97f9-8bd58d46eaa3	2023-10-23 05:22:14.282388+00	2023-10-23 05:22:14.282388+00	cadebe4c-5eee-46fa-97ea-e62a149772f2
4092861a-ec89-467c-a261-e250a73f7e12	XncZENxnnZiNAkOqYo30U	54ec3e88-7971-4efb-85fc-438c970a0067	2023-11-02 07:03:42.023946+00	2023-11-02 07:03:42.023946+00	95109dc9-05d5-48a3-8c46-8f2356993f68
25c4baa7-4740-4842-8a51-bc5286df41d2	bVwaHdlYziHT4iqJmyxZO	0a7d2d5b-9a7a-40e4-80b9-f244eedd98ca	2023-11-06 07:36:20.061107+00	2023-11-06 07:36:20.061107+00	af9b1415-ec35-4d98-8720-00838cc9db1c
86df7849-f058-4be7-837e-95e8b009ca2b	mtry9G4j8jqQMiMTMlsdf	e346a792-7e6d-4627-9dce-fbbcd2de9fca	2023-10-23 06:10:26.970645+00	2023-10-23 06:10:26.970645+00	2ba5824f-702f-4ff6-a899-0f7370ee7bad
1771d40d-537e-459e-ae5e-4129e0b372da	TPzUoyOJW3wzS7q5c0Ixb	2720d846-7ee8-4f7d-95f5-c2d5a1f1a1a7	2023-11-07 06:55:30.778614+00	2023-11-07 06:55:30.778614+00	04fa1794-617a-49a2-b7ba-d416f8423077
9e4eb3dc-2a8f-48a3-809b-61a5d94f6ba4	Uo7dBi3BAk1CpOIGHxiwh	bace5245-f967-46f1-ae79-860375a0a41e	2023-11-07 06:56:53.282099+00	2023-11-07 06:56:53.282099+00	c0bd4429-0fc6-400f-9992-96faa6425126
bdf0b74f-dcf9-4df3-baae-7c52edda4f03	vw1sCl_6rpCBhh_B7KpWM	7680a9c1-6176-4ac0-ac5b-ec72ac78ffbc	2023-11-07 06:57:45.166224+00	2023-11-07 06:57:45.166224+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
f3fb0f77-9c5e-4955-9bdb-38752d9faf68	wd8xXp28r_FaFm8CmauzK	e159759a-c749-4f31-9951-e405bc310bb2	2023-11-08 11:20:45.0641+00	2023-11-08 11:20:45.0641+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
7b75f419-7c2a-4290-9fa6-d6317404f67e	oppof9pro	2a88ba77-0a28-4a79-8ee6-b249ae752fd1	2023-11-09 08:43:59.560159+00	2023-11-09 08:43:59.560159+00	2bc43ef9-7bb1-47d2-8dbd-3532e45082f7
e5aea0f0-4470-420f-90d4-32cacc53f72e	28J-W5WNslgC2LeyQp-n1	061711e7-8524-43c9-b863-529c15c18f8b	2023-11-09 11:12:33.237096+00	2023-11-09 11:12:33.237096+00	d26ccbfa-deef-4a0f-9a1c-6f5bb2bc23b5
a5c85c34-be65-45e0-a28d-0b6c6b1381ea	jKHU7pMyGmkBLzDakvhi_	50e1d20e-343d-46d5-9cc1-4cd928ce9347	2023-11-10 05:13:10.842754+00	2023-11-10 05:13:10.842754+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
40a278d3-e302-4bd2-9a8b-e0f0b0ac34d9	pG_1DWORtvkj3e0u4sBXB	abc170c7-24e9-4597-b561-709241d99e56	2023-11-11 04:55:46.394959+00	2023-11-11 04:55:46.394959+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
e29e1a89-92c9-4fbd-b705-a003e0ed40dc	ihSG2EaM2a1k_DLuUtfLx	02a5246a-bb11-4dd2-85c5-6d310430a9fc	2023-11-16 04:54:47.151862+00	2023-11-16 04:54:47.151862+00	088d5892-bc83-45d7-9147-2106f86757ab
9b2dff0e-59b0-44fe-b484-f19242f7fca2	iSd4GdDHkw8YXJL9yjeJt	b285001e-ae98-42af-9288-c13acaab6f27	2023-10-25 09:26:14.097316+00	2023-10-25 09:26:14.097316+00	0ede945d-07ef-436c-b70b-e3d15708681c
e8e8d608-8cd5-4f73-8ced-2513276118a5	4KAuAiYla0mWDfxGzMb69	8d758a27-ca56-4f3e-9b27-e39b3a6169b3	2023-10-25 10:44:07.666474+00	2023-10-25 10:44:07.666474+00	2856a315-f4fb-4e30-8dc5-d614c9c9acce
01d2ee6e-46b1-4703-b51d-7ad9d1d24aec	fs1yQcEthO_9Cbb7grfRP	6808b941-95aa-4bc2-bed4-13c9c92ba4ff	2023-10-25 10:45:13.022309+00	2023-10-25 10:45:13.022309+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
58213927-b73f-44ce-b52d-cf6e4f735e88	_1eJ_s4L7dvqduBZ3DUfb	652dc649-a1c8-4963-88a1-32e6a9aa20bf	2023-10-25 11:04:59.576749+00	2023-10-25 11:04:59.576749+00	15b9a623-1aea-486d-9f0a-0ab90e7b3eca
2ff0e719-85b7-40a9-a68b-7599c3a530d6	OBm6ByHgw3RAWTxIcAgKm	f79aa472-91a3-4bd3-80a6-2c2c5a34c8f5	2023-10-25 11:08:18.906121+00	2023-10-25 11:08:18.906121+00	eefe6b48-f131-41b1-abbc-6b92a05a8569
5220b790-5636-4c6a-a402-d142de78bfcb	08kJdjgp30pkVf_6ZSSSF	db7eb6e2-d14c-4c47-8d48-a023016137fe	2023-10-26 08:55:45.540142+00	2023-10-26 08:55:45.540142+00	31950017-b731-4949-a8f5-3511b0b86b4e
71129b08-1927-4495-96d8-ad5341a8f90b	A2RUCPpHSfeL1Sgx3jN9o	372fa3f1-0e92-4625-892e-3c3ade558174	2023-10-26 12:46:46.492575+00	2023-10-26 12:46:46.492575+00	124ba34e-7b20-4843-91e7-56d2d568111f
5062a82e-6d96-4f3e-b281-670369f8f6d3	_AiGUde_-XoQXCzNd1MoH	0839d9ec-1604-4e57-a5e5-450eee0e4adf	2023-10-26 12:49:00.491794+00	2023-10-26 12:49:00.491794+00	d7a79da5-70d7-4800-9ddc-c7f18cd09093
61b7b99b-2c99-411f-ab92-e0b1b6a8d8d6	v3n5yiLUYL3RIBB4osJhC	614d5500-a55c-43d3-bc26-e3b65321d645	2023-10-27 06:26:02.942102+00	2023-10-27 06:26:02.942102+00	94a126d0-584b-4c0d-9e73-422f0b117db6
dced93be-4d2e-4eb7-8b8e-fc46716b0f83	_CJkrzNyYR0_cfe78wZKk	836fae8b-25fb-43d4-93df-7f28c8857b15	2023-10-27 06:35:09.635838+00	2023-10-27 06:35:09.635838+00	42ad0fc3-591c-4178-a38a-b38f5d6882d9
f3d91e75-53fb-4caf-90cd-2aef1b2edc54	pgbU6OP_SpsBflS1rHBiA	9778e26e-b872-47a8-b440-e7cb90628a8f	2023-10-27 07:32:03.066543+00	2023-10-27 07:32:03.066543+00	28b72158-d944-4d9f-9923-e4dec3348de1
fc856fcf-71d7-4bce-9287-b079e56050fe	iWuUknooCcFO_i1S3CxR5	c3b2801f-75f7-455c-a4a0-4f749efc049c	2023-10-28 05:26:14.192318+00	2023-10-28 05:26:14.192318+00	4fba49bf-fd42-45f1-abc5-1b2be1da82e0
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
