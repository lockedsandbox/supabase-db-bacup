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
67d69ef7-6df2-40ac-8c97-37ed0a1155f7	krishna1	Krishna	Singh	krishnapal@piecodes.in	other	1998-10-20	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	feCUNGjBQ6au8bHE2Txe-z:APA91bGg-D1A53DKm3F0e84k7bWjlUGGa9ckuAlt_q2VHGENzlcVS80-7zQCEuiL0TTEzsaojl5pwpaQEZeU0gY87zurUw-N-usTNyqj-aUvRHSdVbcJ6gP7Quor9K-SwT6mLcCKrPXA	{"deviceId":"TE1A.220922.033","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}	2023-10-20 06:53:54.534684+00	2023-10-20 06:53:54.534684+00
f6f99898-7726-4f94-be66-c9f72f3f0dcf	aris	Aris	Au	singular.aris@gmail.com	other	1992-01-27	\N	active	Mon, Tue, Wed, Thu, Fri	08:00 - 18:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	00:00 - 08:00	\N	\N	fXcVM0Q7v0c-iT5hDHISTI:APA91bErFhDateG8JftwkLSRbSMTGpR6hqGXXx2qi7Co9Tea8QmWe3pGhkyOUvNr_uUFs0bjXxTelXjXChwD_v_TXJ8vvO4Jf8HQGahjmqOenlyHDQdmq3Ql6tpJiuewx83vy689jRzd	{"deviceId":"E1A06B36-7817-4048-953B-B4853B1885ED","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-20 12:16:47.482081+00	2023-10-20 12:16:47.482081+00
ef273cf7-49bf-4f08-ab94-9f7a8818839b	\N	Ray	Ong	glamourousbuddha@gmail.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-20 14:05:26.208619+00	2023-10-20 14:05:26.208619+00
d8df09ce-7124-4c28-bb05-662a721dd5be	ann	도연	김	rlaeh7348@gmail.com	other	2000-11-22	\N	active	Mon, Tue, Wed, Thu, Fri	08:00 - 17:00	Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dmQEGWEmS0ykrOQWnqsvl8:APA91bFWWgDgyGXgS16yLsCh9Wfio0qsJGt0hldZ5-wJgBXFfebh9T3jQGBT96vSqw8HZx8T8HU65KOQre8pndaoFEmwY7PhHxDrPS6s1LtKe2hYkY_JGzpDnXO1UyAUHn4aoyz4FNnQ	{"deviceId":"TP1A.220624.014","device":"dm3q","baseOS":"","manufacturer":"samsung","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"SM-S918N"}	2023-10-21 05:11:11.93942+00	2023-10-21 05:11:11.93942+00
5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	isadate_test	Isadate	Test	isadate@mailinator.com	other	2000-10-20	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	c9xza3BNuEX9k3JDa0mA_j:APA91bE9xKsb0PxbkignHrSwH6r1H5i1QJeUkDEltO3lIV_dnNYqO6oFT-uf1frJTxdlxgrJ6ySNdlp2M1gGnZ4Qpi97JCcxpzxGsNUM9y6hhTnRZdk8GUA0h3jUUqdMDlwq-P26hVN1	{"deviceId":"8025CE48-E68F-4333-9ABF-73F9AE9D5554","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone 15 Plus"}	2023-10-20 10:05:19.213665+00	2023-10-20 10:05:19.213665+00
8f05c522-93da-40bf-b77b-e1e62cf4e42a	pal_singh	Krishna	Pal	krishna756629@gmail.com	other	2008-10-20	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	clYozU_MTw6w4wMEGrcKa1:APA91bHLw-veLALW-tYLp6v8oKdH3-hdA2PAtZ000eF2r4bG-aFVxROkXC1Ih5wssz7N47woclgJySCuRCDQul802SQSNYtg2wPbmEc_ZV_4dBOsTGcfXCqLzWhGSNIpMc1kJw1T6cPk	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-10-20 06:53:57.82774+00	2023-10-20 06:53:57.82774+00
cadebe4c-5eee-46fa-97ea-e62a149772f2	zyx@xyz	Zyx		zyx@mailinator.com	other	2023-10-23	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 05:21:37.06589+00	2023-10-23 05:21:37.06589+00
2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06	a	Aaa	Bbb	abc@mailinator.com	other	2023-10-23	\N	active	Mon	10:00 - 19:00	Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:19:56.693037+00	2023-10-23 06:19:56.693037+00
2ba5824f-702f-4ff6-a899-0f7370ee7bad	s	Sourabh	Shrivastava	sourabhshrivastava0801@gmail.com	other	2023-10-23	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:09:02.999908+00	2023-10-23 06:09:02.999908+00
4fba49bf-fd42-45f1-abc5-1b2be1da82e0	r	Rowdy	Baby	rowdybaby03337@gmail.com	other	2023-10-23	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 05:33:42.445287+00	2023-10-23 05:33:42.445287+00
2856a315-f4fb-4e30-8dc5-d614c9c9acce	aa	Aaa	Baa	bbc@mailinator.com	other	2023-10-23	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:25:39.683291+00	2023-10-23 06:25:39.683291+00
088d5892-bc83-45d7-9147-2106f86757ab	sunny	Sunny		sunny@mailinator.com	other	2023-10-23	\N	active	Mon, Fri	10:00 - 23:00	Mon, Tue, Fri, Sat, Sun	15:00 - 06:18	\N	\N	fZ5i3CCdRkGsEpWCf-U1JR:APA91bG3d2BlXM1q6pCoymvXFYa79aKQ139W6u4RVJ4lHeX-onEAYSr_cmk_5XgCZUOaa460gnwS8HmArr-JFjEb4Vkqawb9SNQZSPB2w8QEw7J7qhnsvWPsBL9e2ZKwpi_whdMNC8Dy	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-23 06:40:01.247857+00	2023-10-23 06:40:01.247857+00
\.


--
-- Data for Name: chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chats" ("id", "status", "chat_type", "chat_name", "created_at", "updated_at", "user_id") FROM stdin;
b9179e90-1343-4e33-8012-7739573be39d	active	onetoone	Krishna & Krishna	2023-10-20 07:17:38.252731+00	2023-10-20 07:17:38.252731+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
42371582-c666-45d3-a4ae-b1b9478f801a	active	onetoone	Krishna & Isadate	2023-10-20 16:25:04.969562+00	2023-10-20 16:25:04.969562+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
6e57bad9-eb12-4b19-a24b-829e3635d676	active	onetoone	Sunny & Aaa	2023-10-23 06:42:30.401282+00	2023-10-23 06:42:30.401282+00	088d5892-bc83-45d7-9147-2106f86757ab
be988360-8e69-470f-9b4f-b5cd49de459f	active	group	Friend 	2023-10-23 07:39:02.537925+00	2023-10-23 07:39:02.537925+00	088d5892-bc83-45d7-9147-2106f86757ab
79a466bb-a56c-4df3-9710-aeabbcd48f03	active	group	Tttt	2023-10-23 08:07:36.686454+00	2023-10-23 08:07:36.686454+00	088d5892-bc83-45d7-9147-2106f86757ab
7d750269-96da-4d17-b3c4-09dd34c61514	active	group	Group1	2023-10-24 15:23:36.897597+00	2023-10-24 15:23:36.897597+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
52401ddc-b3c2-4960-be8d-5866b33c4ac2	active	group	Group1	2023-10-24 16:03:16.825293+00	2023-10-24 16:03:16.825293+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
\.


--
-- Data for Name: chat_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_audiences" ("id", "role", "status", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
f9bd0457-5478-45e6-a71f-b275267db5a1	user	active	2023-10-20 07:17:38.341097+00	2023-10-20 07:17:38.341097+00	b9179e90-1343-4e33-8012-7739573be39d	8f05c522-93da-40bf-b77b-e1e62cf4e42a
f0170bdf-d7d5-492e-a0e0-f115be64367b	user	active	2023-10-20 07:17:38.341097+00	2023-10-20 07:17:38.341097+00	b9179e90-1343-4e33-8012-7739573be39d	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
615b60ec-e88e-4011-845d-a63ee375a3f5	user	active	2023-10-20 16:25:05.060343+00	2023-10-20 16:25:05.060343+00	42371582-c666-45d3-a4ae-b1b9478f801a	8f05c522-93da-40bf-b77b-e1e62cf4e42a
9fd6ebda-53de-4b2d-85ad-f6abdc84a7d7	user	active	2023-10-20 16:25:05.060343+00	2023-10-20 16:25:05.060343+00	42371582-c666-45d3-a4ae-b1b9478f801a	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
6183809b-bb0d-42de-af7a-1bc5562e2998	user	active	2023-10-23 06:42:30.487179+00	2023-10-23 06:42:30.487179+00	6e57bad9-eb12-4b19-a24b-829e3635d676	088d5892-bc83-45d7-9147-2106f86757ab
7cba19f8-6d27-47bf-9343-1bf2f1431e73	user	active	2023-10-23 06:42:30.487179+00	2023-10-23 06:42:30.487179+00	6e57bad9-eb12-4b19-a24b-829e3635d676	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
7c1d1007-0026-4325-9f28-e8e8a43d4d7b	user	active	2023-10-23 07:39:02.628221+00	2023-10-23 07:39:02.628221+00	be988360-8e69-470f-9b4f-b5cd49de459f	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
9e171bf9-5925-4108-9c8f-9bface69444c	admin	active	2023-10-23 07:39:02.628221+00	2023-10-23 07:39:02.628221+00	be988360-8e69-470f-9b4f-b5cd49de459f	088d5892-bc83-45d7-9147-2106f86757ab
813c7df2-59fd-4ce7-b54c-69d1ec5c7e2b	user	active	2023-10-24 15:23:36.986218+00	2023-10-24 15:23:36.986218+00	7d750269-96da-4d17-b3c4-09dd34c61514	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
f05b7304-1ec0-4f05-b2f5-b9f58df81e71	user	active	2023-10-24 15:23:36.986218+00	2023-10-24 15:23:36.986218+00	7d750269-96da-4d17-b3c4-09dd34c61514	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
b18fc586-ef31-434f-b2c5-95cd47bb7458	admin	active	2023-10-24 15:23:36.986218+00	2023-10-24 15:23:36.986218+00	7d750269-96da-4d17-b3c4-09dd34c61514	8f05c522-93da-40bf-b77b-e1e62cf4e42a
325fdcc7-c587-4997-8db0-3e6c60b92f93	user	active	2023-10-24 16:03:16.913232+00	2023-10-24 16:03:16.913232+00	52401ddc-b3c2-4960-be8d-5866b33c4ac2	8f05c522-93da-40bf-b77b-e1e62cf4e42a
2ee37517-b03a-4237-ad41-c1e6ebc87c45	admin	active	2023-10-24 16:03:16.913232+00	2023-10-24 16:03:16.913232+00	52401ddc-b3c2-4960-be8d-5866b33c4ac2	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
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
ec0fc719-3275-46da-9a4e-d8d9d9b6c613	Hello	2023-10-23 06:42:31.324217+00	2023-10-23 06:42:31.324217+00	6e57bad9-eb12-4b19-a24b-829e3635d676	088d5892-bc83-45d7-9147-2106f86757ab
e13c740a-688f-4a76-8d00-219802da0bec	Hii	2023-10-23 07:20:00.271704+00	2023-10-23 07:20:00.271704+00	6e57bad9-eb12-4b19-a24b-829e3635d676	088d5892-bc83-45d7-9147-2106f86757ab
76abec0f-8fcc-4330-86c4-f90163fb94ef	Hii	2023-10-23 08:48:44.985335+00	2023-10-23 08:48:44.985335+00	6e57bad9-eb12-4b19-a24b-829e3635d676	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."events" ("id", "title", "venue", "description", "reminder", "is_reminder_sent", "is_early_reminder", "is_solo", "is_important", "start_date", "end_date", "start_time", "end_time", "status", "venue_long", "venue_lat", "created_at", "updated_at", "user_id") FROM stdin;
a2bd961c-e371-4deb-b674-091862c3e0e8	Meeting	Guna		sameday	t	f	f	f	2023-10-21	2023-10-21	100	200	active	\N	\N	2023-10-20 07:15:30.074237+00	2023-10-20 07:15:30.074237+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
fcf419a7-1cfa-4fc2-a558-839a87d33e27	Brunch	Guna		sameday	t	f	f	f	2023-10-22	2023-10-22	800	900	active	\N	\N	2023-10-20 17:04:52.331439+00	2023-10-20 17:04:52.331439+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
35a0d43c-79ad-4242-ac9a-fc90a1a67b6a	Date	Hehe		sameday	t	f	f	f	2023-10-22	2023-10-22	100	200	active	\N	\N	2023-10-21 05:15:04.938352+00	2023-10-21 05:15:04.938352+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
f3bf0d48-edca-4bd8-aa26-49c1b4bb703e	Date	Home		sameday	f	f	t	f	2023-10-23	2023-10-23	1200	1300	active	\N	\N	2023-10-23 06:01:11.369805+00	2023-10-23 06:01:11.369805+00	4fba49bf-fd42-45f1-abc5-1b2be1da82e0
83724c51-fc75-4d55-9333-da12c7cd8a6e	Meeting	Home		sameday	f	f	t	f	2023-11-01	2023-11-01	100	200	active	\N	\N	2023-10-23 06:01:55.119177+00	2023-10-23 06:01:55.119177+00	4fba49bf-fd42-45f1-abc5-1b2be1da82e0
d0295d3d-fe90-4884-9cc3-3031b726e2f2	Date	Ggg		sameday	t	f	f	f	2023-10-23	2023-10-23	1300	1400	active	\N	\N	2023-10-23 06:36:50.372636+00	2023-10-23 06:36:50.372636+00	2856a315-f4fb-4e30-8dc5-d614c9c9acce
752ca5bd-d548-48b5-85bf-07baa9be82f1	Date	Date		sameday	t	f	f	f	2023-10-24	2023-10-24	0	100	active	\N	\N	2023-10-23 06:42:09.948185+00	2023-10-23 06:42:09.948185+00	088d5892-bc83-45d7-9147-2106f86757ab
6d807005-0b74-4bcd-b542-69944b9de2b8	Brunch	Ggg		sameday	t	f	f	f	2023-10-23	2023-10-23	1400	1500	active	\N	\N	2023-10-23 08:29:53.120471+00	2023-10-23 08:29:53.120471+00	088d5892-bc83-45d7-9147-2106f86757ab
391da4d3-9bee-42b6-9076-c30e29445a43	Dinner	Vbb		sameday	t	f	f	t	2023-10-26	2023-10-26	100	200	active	\N	\N	2023-10-23 08:30:23.762538+00	2023-10-23 08:30:23.762538+00	088d5892-bc83-45d7-9147-2106f86757ab
d3c2ecb0-4bb1-4188-8cca-22918be76d84	Meeting	Gvv		sameday	t	f	f	f	2023-10-24	2023-10-24	0	100	active	\N	\N	2023-10-23 08:29:26.419385+00	2023-10-23 08:29:26.419385+00	088d5892-bc83-45d7-9147-2106f86757ab
bc2c5daf-779e-4851-b828-d512325c464d	Brunch	Vvv		sameday	t	f	f	f	2023-10-25	2023-10-25	100	200	active	\N	\N	2023-10-23 08:30:07.225832+00	2023-10-23 08:30:07.225832+00	088d5892-bc83-45d7-9147-2106f86757ab
4a17988f-9601-4bcf-bdc6-6eea56e24ddc	Dinner	Vbb. 		sameday	t	f	f	t	2023-10-27	2023-10-27	100	200	active	\N	\N	2023-10-23 08:30:42.19638+00	2023-10-23 08:30:42.19638+00	088d5892-bc83-45d7-9147-2106f86757ab
7241fe41-a8a9-46ba-b02a-675c8112282e	Brunch	Hhb		sameday	t	f	f	f	2023-10-28	2023-10-28	100	200	active	\N	\N	2023-10-23 08:31:06.526455+00	2023-10-23 08:31:06.526455+00	088d5892-bc83-45d7-9147-2106f86757ab
08b15901-6221-4b51-9390-cc83b68553ea	Graduation 	Venue 		sameday	f	f	t	f	2023-10-28	2023-10-28	0	100	active	\N	\N	2023-10-24 12:34:04.758644+00	2023-10-24 12:34:04.758644+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
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
031fc5dc-ac49-4e78-a8a5-3c29d156543b	\N	\N	2023-10-23 06:42:31.409836+00	2023-10-23 06:42:31.409836+00	\N	ec0fc719-3275-46da-9a4e-d8d9d9b6c613	\N
f826e7b2-ac8a-46d5-a404-af752d29a1af	\N	\N	2023-10-23 07:20:00.360724+00	2023-10-23 07:20:00.360724+00	\N	e13c740a-688f-4a76-8d00-219802da0bec	\N
80a89141-5f5a-4ddc-bdef-fa5734116c91	\N	\N	2023-10-23 08:48:45.072457+00	2023-10-23 08:48:45.072457+00	\N	76abec0f-8fcc-4330-86c4-f90163fb94ef	\N
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
4820eea4-6f04-4663-a1b4-ee437534bfdc	accepted	participant	2023-10-20 17:04:52.422883+00	2023-10-20 17:04:52.422883+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f	fcf419a7-1cfa-4fc2-a558-839a87d33e27
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
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."media" ("id", "original_name", "path", "mime_data", "entity_id", "key", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notifications" ("id", "description", "title", "status", "data", "created_at", "updated_at", "user_id") FROM stdin;
6250ea9e-1803-4213-871c-4fe74730468b	Krishna Pal sent you an message	Chat message	unread	{"action":"message","message_id":"c584bc03-e23d-4398-be75-7a8960b3e645"}	2023-10-20 16:25:13.011272+00	2023-10-20 16:25:13.011272+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
1d801c81-90c2-492e-9da7-15ee68c4578f	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"b5e017cd-5f17-4fd7-8923-349fdf50cee5"}	2023-10-20 07:17:39.796637+00	2023-10-20 07:17:39.796637+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
8af3e061-c828-4ab5-bce8-fcc5fb5c39b5	KrishnaSingh@ has accepted your friend request	Friend request update	read	{"friendship_id":"8f05c522-93da-40bf-b77b-e1e62cf4e42a"}	2023-10-20 07:07:12.290537+00	2023-10-20 07:07:12.290537+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
4d7bce7d-4a89-4bb6-97be-4e992e2ee192	Krishna Singh@ accepted your invitation to a date on @October 21st	Event invitation update	read	{"action":"invite","event_id":"a2bd961c-e371-4deb-b674-091862c3e0e8"}	2023-10-20 07:16:06.655581+00	2023-10-20 07:16:06.655581+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
e9e32d6a-0312-40ab-a84b-51951726dab4	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"421d9049-35ef-48d1-af3b-168dc3fd0adb"}	2023-10-20 07:18:23.30721+00	2023-10-20 07:18:23.30721+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
b930e78b-b6d5-46f3-8223-41a1dd23673c	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"fb9f4554-5a72-4070-930d-5277c1cc833f"}	2023-10-20 07:18:51.277775+00	2023-10-20 07:18:51.277775+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
863f6d0a-cbb2-417d-a32a-8edc4472a714	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"898005b5-8d39-4d16-968c-3240d7864f50"}	2023-10-20 07:19:09.926434+00	2023-10-20 07:19:09.926434+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
2cde3c6b-fe0f-4905-addd-73dd9c27dd65	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"43ecd39d-ee7b-4504-aef5-19b4bd6128c1"}	2023-10-20 07:19:19.609142+00	2023-10-20 07:19:19.609142+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
88cc54b1-8246-4c6b-b71a-ff539e300c1c	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"09add2f2-c825-4006-9707-79a279f3f329"}	2023-10-20 07:24:59.942607+00	2023-10-20 07:24:59.942607+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
7b8d2816-7be9-474a-a280-65e2c8c687a2	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"b5e017cd-5f17-4fd7-8923-349fdf50cee5"}	2023-10-20 07:17:39.796637+00	2023-10-20 07:17:39.796637+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
453604a8-b541-4ee2-82a7-9161d1096ed6	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"421d9049-35ef-48d1-af3b-168dc3fd0adb"}	2023-10-20 07:18:23.30721+00	2023-10-20 07:18:23.30721+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
638aa511-6bcf-44d9-bac1-cb1ea2edbf28	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"fb9f4554-5a72-4070-930d-5277c1cc833f"}	2023-10-20 07:18:51.277775+00	2023-10-20 07:18:51.277775+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
28673d0e-4f41-4b8b-9276-e58e4ddbf87c	Krishna Singh@sent you an message	Chat message	read	{"action":"message","message_id":"898005b5-8d39-4d16-968c-3240d7864f50"}	2023-10-20 07:19:09.926434+00	2023-10-20 07:19:09.926434+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
8c688ae3-3c0a-4ec5-9687-9dc35e382181	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"43ecd39d-ee7b-4504-aef5-19b4bd6128c1"}	2023-10-20 07:19:19.609142+00	2023-10-20 07:19:19.609142+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
056dae27-87e7-48e8-964e-aa17502cee00	Krishna Pal sent you an message	Chat message	unread	{"action":"message","message_id":"10e94a87-d20d-4451-bf25-255673af9839"}	2023-10-20 16:25:58.261662+00	2023-10-20 16:25:58.261662+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
30ce3805-66d7-4336-8d51-e769052a4ff0	Krishna Pal@sent you an message	Chat message	read	{"action":"message","message_id":"09add2f2-c825-4006-9707-79a279f3f329"}	2023-10-20 07:24:59.942607+00	2023-10-20 07:24:59.942607+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
2a9652e6-f5cf-4fe7-bb3d-606f7d70512d	IsadateTest has accepted your friend request	Friend request update	read	{"friendship_id":"8f05c522-93da-40bf-b77b-e1e62cf4e42a"}	2023-10-20 16:24:38.096696+00	2023-10-20 16:24:38.096696+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
c70c9dd8-68ad-47e6-8303-ec8a15b11746	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"b9a160fa-d68c-488b-9c0c-029014d4148a"}	2023-10-20 16:25:21.931923+00	2023-10-20 16:25:21.931923+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
8fadf81f-9dd4-4474-9df9-f3d628071bd0	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"3419508d-2503-470f-9f13-d6f0302b0beb"}	2023-10-20 16:25:40.048282+00	2023-10-20 16:25:40.048282+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
554ff032-9ed3-4f40-acfa-5e4026f75305	Isadate Test sent you an message	Chat message	read	{"action":"message","message_id":"4487ff40-8aa5-423f-83ee-5f2de9522119"}	2023-10-20 16:26:10.28437+00	2023-10-20 16:26:10.28437+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
fc06d34d-a38a-4d6f-a166-ad91739fd4b0	Krishna Pal sent you an invitation to a date on @October 21st	Event invitation	unread	{"action":"invite","event_id":"97d24dd4-a803-4fad-bdac-dfebf15fdc29"}	2023-10-20 16:46:31.895661+00	2023-10-20 16:46:31.895661+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
9b98dfdd-d5a8-46bf-852b-b8dbdeb0ab9b	Krishna Pal sent you an message	Chat message	unread	{"action":"message","message_id":"8909b827-7dcd-4132-ae28-03ca1e4e3a95"}	2023-10-20 16:46:33.964619+00	2023-10-20 16:46:33.964619+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
cf4914fe-c6bb-43ec-b5fb-dc6ef355d773	Krishna Pal sent you an invitation to a date on @October 22nd	Event invitation	unread	{"action":"invite","event_id":"fcf419a7-1cfa-4fc2-a558-839a87d33e27"}	2023-10-20 17:04:52.872144+00	2023-10-20 17:04:52.872144+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
450fb596-6bbd-4e8a-add0-df147c68191b	Krishna Pal sent you an message	Chat message	unread	{"action":"message","message_id":"55f95847-4d8b-4569-a8f5-0498328ee0bd"}	2023-10-20 17:04:54.739527+00	2023-10-20 17:04:54.739527+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
d711dd18-80c6-4edc-bb8e-549a3b919226	Isadate Test accepted your invitation to a date on October 22nd	Event invitation update	unread	{"action":"invite","event_id":"fcf419a7-1cfa-4fc2-a558-839a87d33e27"}	2023-10-20 17:15:08.790245+00	2023-10-20 17:15:08.790245+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
faa64404-9eb7-44b9-94fd-54c6ca21fa6a	도연김 has accepted your friend request	Friend request update	read	{"friendship_id":"f6f99898-7726-4f94-be66-c9f72f3f0dcf"}	2023-10-21 05:13:44.429188+00	2023-10-21 05:13:44.429188+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
64da0a79-1156-4275-aee6-f80d21e7279f	도연 김 accepted your invitation to a date on October 22nd	Event invitation update	read	{"action":"invite","event_id":"35a0d43c-79ad-4242-ac9a-fc90a1a67b6a"}	2023-10-21 05:16:44.479554+00	2023-10-21 05:16:44.479554+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
9d1b3cf3-2659-40a3-9040-b964308f1c7d	Aaa Bbb sent you an message	Chat message	unread	{"action":"message","message_id":"76abec0f-8fcc-4330-86c4-f90163fb94ef"}	2023-10-23 08:48:45.503674+00	2023-10-23 08:48:45.503674+00	088d5892-bc83-45d7-9147-2106f86757ab
8ceb351c-41a8-489f-af0a-0dc79dbf0c63	Sunny Hunny sent you an message	Chat message	read	{"action":"message","message_id":"e13c740a-688f-4a76-8d00-219802da0bec"}	2023-10-23 07:20:00.799143+00	2023-10-23 07:20:00.799143+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
efdb5bda-57d8-4597-873d-d12e9e606151	Sunny Hunny sent you an invitation to a date on @October 23rd	Event invitation	read	{"action":"invite","event_id":"6d807005-0b74-4bcd-b542-69944b9de2b8"}	2023-10-23 08:29:53.631778+00	2023-10-23 08:29:53.631778+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
e3bf289f-13e0-4fe9-aad6-f78721707398	Sunny Hunny sent you an invitation to a date on @October 26th	Event invitation	read	{"action":"invite","event_id":"391da4d3-9bee-42b6-9076-c30e29445a43"}	2023-10-23 08:30:24.277997+00	2023-10-23 08:30:24.277997+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
c4c32cd1-c929-44be-b3a2-60d76a09b581	Aaa Bbb rejected your invitation to a date on October 24th	Event invitation update	read	{"action":"invite","event_id":"752ca5bd-d548-48b5-85bf-07baa9be82f1"}	2023-10-23 06:43:53.666896+00	2023-10-23 06:43:53.666896+00	088d5892-bc83-45d7-9147-2106f86757ab
65cfcbc1-fd60-47af-9637-9b84eb7c1e94	AaaBaa@ has sent a friend request to you	Friend request	read	{"friendship_id":"2856a315-f4fb-4e30-8dc5-d614c9c9acce"}	2023-10-23 06:35:17.388002+00	2023-10-23 06:35:17.388002+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
b651eede-a0ba-4b7a-8f91-254002e379f5	Aaa Baa sent you an invitation to a date on @October 23rd	Event invitation	read	{"action":"invite","event_id":"d0295d3d-fe90-4884-9cc3-3031b726e2f2"}	2023-10-23 06:36:50.937047+00	2023-10-23 06:36:50.937047+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
ed8d7cf8-ef38-43aa-ae14-732537d1b05f	SunnyHunny@ has sent a friend request to you	Friend request	read	{"friendship_id":"088d5892-bc83-45d7-9147-2106f86757ab"}	2023-10-23 06:41:39.594421+00	2023-10-23 06:41:39.594421+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
e16c5b93-37ab-4d3d-a3b1-11649bacc1bf	Aaa Bbb rejected your invitation to a date on October 24th	Event invitation update	unread	{"action":"invite","event_id":"d3c2ecb0-4bb1-4188-8cca-22918be76d84"}	2023-10-23 08:49:05.097556+00	2023-10-23 08:49:05.097556+00	088d5892-bc83-45d7-9147-2106f86757ab
0f1e158b-7967-4324-bec8-a23aca23d3c5	Sunny Hunny sent you an message	Chat message	read	{"action":"message","message_id":"ec0fc719-3275-46da-9a4e-d8d9d9b6c613"}	2023-10-23 06:42:31.835658+00	2023-10-23 06:42:31.835658+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
75f78a69-1a3c-4e12-855c-1c4d195e6044	Aaa Bbb rejected your invitation to a date on October 25th	Event invitation update	unread	{"action":"invite","event_id":"bc2c5daf-779e-4851-b828-d512325c464d"}	2023-10-23 08:49:09.573867+00	2023-10-23 08:49:09.573867+00	088d5892-bc83-45d7-9147-2106f86757ab
ca45e344-b6d7-495d-9f99-b016b91e045b	Aaa Bbb rejected your invitation to a date on October 27th	Event invitation update	unread	{"action":"invite","event_id":"4a17988f-9601-4bcf-bdc6-6eea56e24ddc"}	2023-10-23 08:49:13.291884+00	2023-10-23 08:49:13.291884+00	088d5892-bc83-45d7-9147-2106f86757ab
b0250d4e-c351-4fbd-9bb0-707859e100ed	Aaa Bbb accepted your invitation to a date on October 28th	Event invitation update	unread	{"action":"invite","event_id":"7241fe41-a8a9-46ba-b02a-675c8112282e"}	2023-10-23 08:49:18.21072+00	2023-10-23 08:49:18.21072+00	088d5892-bc83-45d7-9147-2106f86757ab
367508d4-b117-4616-9aa0-6dff4fb7ff1f	AaaBbb has accepted your friend request	Friend request update	unread	{"friendship_id":"67d69ef7-6df2-40ac-8c97-37ed0a1155f7"}	2023-10-24 16:20:19.91436+00	2023-10-24 16:20:19.91436+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sessions" ("id", "device_id", "access_token", "created_at", "updated_at", "user_id") FROM stdin;
587fbffa-b173-4bcf-9a9b-4c231cc59891	RsYeEYUnLYPuGeRxcA-H2	5a9d60d0-e736-49b2-82f9-044c1e73d126	2023-10-20 12:18:11.65466+00	2023-10-20 12:18:11.65466+00	f6f99898-7726-4f94-be66-c9f72f3f0dcf
17b852c2-b0b2-4f7e-a6a5-b2ab9f059143	2YWqjqH4rE2Fx8tnFxjoW	3f631726-adad-4b9e-9398-573708477aa4	2023-10-20 14:05:26.569494+00	2023-10-20 14:05:26.569494+00	ef273cf7-49bf-4f08-ab94-9f7a8818839b
cf36fa3e-b7ab-4d10-af5d-13bc1306eb33	2wWxjQqjxG1zLQsaLpRA9	6e4eac5b-e347-4f06-aaeb-326a284554c6	2023-10-20 16:15:17.652066+00	2023-10-20 16:15:17.652066+00	5fe1aa61-57ab-4fff-a97a-bcdeb1b8926f
f4e73e90-7602-4dd9-9e73-67346e4ffe2a	q8PEbrl9fJDz7nZ22YtIv	8d66af88-e02d-48d9-9580-84fd6a62299c	2023-10-20 16:23:48.891615+00	2023-10-20 16:23:48.891615+00	8f05c522-93da-40bf-b77b-e1e62cf4e42a
3bfc4db1-010e-463b-adf3-605ce24f9822	F_bOwLcuGRuTGW6x7xw5-	9ceccd28-98f6-43ed-821c-e6c39bba16ff	2023-10-20 17:04:24.731009+00	2023-10-20 17:04:24.731009+00	1401947e-9975-48a4-b63d-6fa8fdee922c
4197a077-387e-4763-a846-f6a6f40936e7	DRn5mc1THQ-3YQwexel-E	90bba518-bb15-44a7-aeb5-b8143b851b22	2023-10-21 05:11:48.29993+00	2023-10-21 05:11:48.29993+00	d8df09ce-7124-4c28-bb05-662a721dd5be
2167dbca-b22a-4223-83ce-cd3e79edc9de	LWFJc8FJPYopYmyNtrqyU	5c218eed-4836-4528-97f9-8bd58d46eaa3	2023-10-23 05:22:14.282388+00	2023-10-23 05:22:14.282388+00	cadebe4c-5eee-46fa-97ea-e62a149772f2
4ec6d4cc-c9b8-4aba-9e9e-4a69d118c3ce	OUyR52BFj3ADPJD3DpSUM	449f222e-c83a-414f-bf47-f7fdbaaba583	2023-10-23 06:08:19.172926+00	2023-10-23 06:08:19.172926+00	4fba49bf-fd42-45f1-abc5-1b2be1da82e0
86df7849-f058-4be7-837e-95e8b009ca2b	mtry9G4j8jqQMiMTMlsdf	e346a792-7e6d-4627-9dce-fbbcd2de9fca	2023-10-23 06:10:26.970645+00	2023-10-23 06:10:26.970645+00	2ba5824f-702f-4ff6-a899-0f7370ee7bad
6e8097f0-b3f3-4721-9052-a8f293c41c13	6zqA3QA5OcnO_6JhufRc7	26ae689b-6616-49e9-ab8e-e5d18a152056	2023-10-23 06:25:57.217438+00	2023-10-23 06:25:57.217438+00	2856a315-f4fb-4e30-8dc5-d614c9c9acce
eee92ede-4c8b-4500-bc81-dccc28540452	_aK6Jfe9x3aptyEsirJkU	9a8e340d-11e8-438f-bf8e-e3a315a9f941	2023-10-23 06:44:32.160713+00	2023-10-23 06:44:32.160713+00	088d5892-bc83-45d7-9147-2106f86757ab
5b7eca78-1a49-4f94-8f0a-2b0341671ebd	7vJ_uOySfK_TPPCAFJBl_	6595ded7-bbd4-436f-8e29-e2d0b42d0903	2023-10-23 08:48:32.572297+00	2023-10-23 08:48:32.572297+00	2a3d79d4-11fe-4f2c-b79b-ce972e3a0a06
1095a806-1aae-49e4-991f-54e9b05f1b14	ZpTZKvKjPp_m7-jhsZS27	2ba0ffaf-353d-4233-81fb-2aae7b669b5c	2023-10-24 15:37:16.042558+00	2023-10-24 15:37:16.042558+00	67d69ef7-6df2-40ac-8c97-37ed0a1155f7
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
