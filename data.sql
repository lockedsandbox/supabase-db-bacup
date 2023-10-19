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
dd527457-5404-4a88-813a-a53a6135a808	sandbox	Sandbox	Project	sandbox4project@gmail.com	other	1996-07-08	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	eVkevNi_SDGS0oNJIAwc7m:APA91bHLpP3Hr12A_Sa_48lLtqAZlbsp8mHNsDm9qbobUhERDgOGMuvQJ84TI__lMrMVup027Wtz82iG4On1tcio1fenPWgoK1XmvOU3sfL7JiCEa8IRPV2tWz0ijPjd9hZcKU1UGg9O	{"deviceId":"RKQ1.201217.002","device":"OnePlus6T","baseOS":"","manufacturer":"OnePlus","apiLevel":30,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"ONEPLUS A6010"}	2023-09-29 06:26:26.809722+00	2023-09-29 06:26:26.809722+00
b9662afc-a325-4d9a-81ce-593e81569b4f	\N	\N	\N	neha12345tiwari12345@gmail.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-29 07:30:22.358993+00	2023-09-29 07:30:22.358993+00
9ac99b85-3f98-456a-9c60-8a18c2055f60	\N	\N	\N	kp@mailinator.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-29 07:35:26.516514+00	2023-09-29 07:35:26.516514+00
374ae3b6-926a-48ef-b0b1-5ac5eef68c2f	kp	Kp	Singh	kpsingh@mailinator.com	other	2002-09-29	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fKrdKiUvS66g7VB6B7xOoe:APA91bG_q4tlemHvesiNeb9FHGk7umhgzqzQAqoxGyx13_WBGhy5l6SGT9cc2zDZB5vzq7j6Sk0fOnwL0CF8qWIyOiqqPOehfYakjhIy0IhPPOeYrl9k9GSFLcZPKTj8lWdhiLtAtHRp	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-09-29 07:26:50.849997+00	2023-09-29 07:26:50.849997+00
a14b5d88-bfc5-44c5-9a57-9d25022a2c75	krishna1	Krishna	Kumar	krishna756629@gmail.com	other	1996-11-25	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	du_PIKCKSViMtEsp7d2pt0:APA91bF4g3Q_HxmDBN5inEy4r4x9bp0xk-GnT1CWhIxCVLiaOcpTQduSDkAMw9qkcVjISt686QOLHMhPR5Bk6lsDm7ngwhys_iQ_jFQNhFjIRECryFYGeTy-H-d_fY9k9eA-Z76BctPX	{"deviceId":"TP1A.220624.014","device":"2012","baseOS":"","manufacturer":"vivo","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"I2012"}	2023-09-29 06:51:38.46974+00	2023-09-29 06:51:38.46974+00
c3287cc0-e3d8-4ddf-bf99-99a7784afec9	ravi@123	Ravi	Sharma	ravi@piecodes.in	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-09-30 05:34:46.907007+00	2023-09-30 05:34:46.907007+00
2048a71a-93a8-4720-a64c-0c225b8e0d6b	krishna_singh	KrishnaPal	Singh	krishnapal@piecodes.in	other	1949-09-30	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	feCUNGjBQ6au8bHE2Txe-z:APA91bGZFqqx-g9PBzgNskx7EzE3Uv1e2U8xwFOhzE0A6WF-NXaZv-wZjeCrZgCG0jc5uSMIt4WDYDy9q_J0zI7lzDBNVW6tZG9H6uXIRpoiSN_X9Qv_NerPOvuDzgJUfQZ8aJLLlzIQ	{"deviceId":"TE1A.220922.033","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}	2023-09-30 06:12:37.694439+00	2023-09-30 06:12:37.694439+00
b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	imsateesh	Sateesh	Raghuwanshi	aasra.sateesh@gmail.com	other	2023-08-29	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	10:57 - 06:00	\N	\N	fHey3Viu40BSjr06WnPBRM:APA91bFNq9zD0dk7C3Of9FTmSRjxVVZo3WCa1yRS6OzAzz1JK2OJBOZVTwHnnYGbryHM_t-g7Ov3ALvvSdxEM9ZYHTRA4MiQZKq1Bs9Uk7Q2nUSsZlaVduyDQnJk5s35r_m0mPYTnuGZ	{"deviceId":"46CE61E8-C723-4273-9C2E-0FE3C0ACFADA","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.2","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-09-29 06:28:12.477319+00	2023-09-29 06:28:12.477319+00
5b5f4294-da38-4fc3-aa9b-21c40c13d7b1	neha2000	Neha	Tiwari	2000nehatiwari@gmail.com	other	2004-11-03	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dXfkK_hiSq6ESoQn7PanqJ:APA91bFqrXqzEnVni73rBW_DIPsQAjp1HK3FayHT4AJd4MiJjbUsnH5LEWsqZSUTgcYR_yRnCQC_5c31IB5MnistlXhJG-UJ5vruXdQrL9S6Z7dwoxq8BxibtMCdCg75QZ9Wy4W_42fU	{"deviceId":"RP1A.200720.011","device":"merlin","baseOS":"","manufacturer":"Xiaomi","apiLevel":30,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"M2003J15SC"}	2023-10-03 14:59:05.122657+00	2023-10-03 14:59:05.122657+00
feca5824-2205-4cfa-885c-5bcb492172a4	gaurav@321	Gaurav	Bhargava	gaurav@piecodes.in	other	1995-04-29	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	duSN4tOMQcaX-s9NWfMzHn:APA91bEFsC8W0OVq6cHlXy10-ZzK1fXROzHIv0TVx_s4eoKOeaLIGmrHEMBn2iCo170rALZFcn7sjl3WvGWnI2hwGl6AlAek6MZK0dF_AR-ArHoHLLVk_OatkUuZv1u0W7Vt5cG7jh0j	{"deviceId":"QP1A.190711.020","device":"CPH1823","baseOS":"","manufacturer":"OPPO","apiLevel":29,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"CPH1823"}	2023-09-29 06:55:24.651596+00	2023-09-29 06:55:24.651596+00
e4fc4e1a-038e-452a-98fd-16f79526df7d	satendr0408	Satendra	Prajapati	satendra@piecodes.in	other	1997-05-08	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	du3izm3eQzW9ICXh_dkhXO:APA91bEo2NPKrmYeZTxUGTkywU7F85uyDSQuPTuzi3aAT904g2ao-fRpx3jrjU6BnpWq3Rj3zlmBmpuOWwjdn0G-3B1D4OU1ZyYFKU7sXXoY0ZWlPWGyQ0IpkkJ8VGQSjwIJIYEAk9rg	{"deviceId":"TP1A.220905.001","device":"OP555BL1","baseOS":"","manufacturer":"OnePlus","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"IV2201"}	2023-10-05 14:24:52.072372+00	2023-10-05 14:24:52.072372+00
fb8821c0-7f83-4e1f-a524-9cae3be130c2	code_sandbox	Code	Sandbox	lockedsandbox@gmail.com	other	2002-09-30	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fHey3Viu40BSjr06WnPBRM:APA91bFNq9zD0dk7C3Of9FTmSRjxVVZo3WCa1yRS6OzAzz1JK2OJBOZVTwHnnYGbryHM_t-g7Ov3ALvvSdxEM9ZYHTRA4MiQZKq1Bs9Uk7Q2nUSsZlaVduyDQnJk5s35r_m0mPYTnuGZ	{"deviceId":"46CE61E8-C723-4273-9C2E-0FE3C0ACFADA","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.2","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-09-30 05:49:14.977144+00	2023-09-30 05:49:14.977144+00
4e1b4ece-0f8b-49b4-82f7-a2ea0d4eba77	vishal.ojha	Vishal	Ojha	vishal.ojha@piecodes.in	other	1999-06-28	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	di84P9xbTTa3kNeqrgaJ0Y:APA91bHzjpSlTFtS-LqZUiMu_OceLyiKByF5hVeJhfjc1pajd0PdMZJZrBG7749kDhqiJvWTMxlfN2vfc0vucD3xj2BUkuyfbdxe-b-2hEE0rLysHsbCLYL0A1Kgnr3LxmWcq9_v95fj	{"deviceId":"PKQ1.180904.001","device":"tulip","baseOS":"","manufacturer":"Xiaomi","apiLevel":28,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"Redmi Note 6 Pro"}	2023-10-05 14:26:37.111548+00	2023-10-05 14:26:37.111548+00
4629cfc2-4a74-4b7d-8dd2-0d6643436006	isadate_test	Isadate	Test	isadate@mailinator.com	other	1990-09-29	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	feCUNGjBQ6au8bHE2Txe-z:APA91bGZFqqx-g9PBzgNskx7EzE3Uv1e2U8xwFOhzE0A6WF-NXaZv-wZjeCrZgCG0jc5uSMIt4WDYDy9q_J0zI7lzDBNVW6tZG9H6uXIRpoiSN_X9Qv_NerPOvuDzgJUfQZ8aJLLlzIQ	{"deviceId":"TE1A.220922.033","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}	2023-09-29 07:46:47.432939+00	2023-09-29 07:46:47.432939+00
506f6e49-5b9e-4a31-b03c-92a6cd264cac	\N	Marta	Garner	martagarner.79328@gmail.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-12 12:32:57.355157+00	2023-10-12 12:32:57.355157+00
90e15b72-7d81-4f04-a341-28087ac2a0f3	notches	Ray	Ong	glamourousbuddha@gmail.com	other	1990-06-09	\N	active	Mon, Tue, Wed, Thu, Fri	09:00 - 18:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 07:30	\N	\N	fcu5gHFLwkd7nm0X4ECixq:APA91bH6WECz2dGw6zGHfbRv2yIhT0aNcAvcewR5Ui8XImh4CWdLRusCPptCYM9Rwc3xojcpzs5q7sHtgLUpuu4BDBlQvLLSqXPROkAYPNfB6rRxaYIHebie6og9LAvdtIZKGnJY14m8	{"deviceId":"8A6DA3DB-337F-4D39-911B-596F9670965D","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-12 13:12:34.66896+00	2023-10-12 13:12:34.66896+00
c3013992-f792-4009-a8e5-7d2d93a7d32d	\N	null	null	rjy85wm2yx@privaterelay.appleid.com	other	\N	\N	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-12 21:13:35.164826+00	2023-10-12 21:13:35.164826+00
bdb0cccd-1798-4022-bb07-7269b2c051cf	usertest	User	Test	isadate.app@gmail.com	other	2000-01-01	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	doxifBXET8aoBQNCfi3Fcw:APA91bGdhKSvPNi2WQzOSCsHvQiktkPqq3uCmwgUwmyRWhZi25fWGk6HsX5qTCrCNGtIHk6kgnLr9wlbpDi7uAyenjMjTInaSLP-brdo_mbFVLqfj9NxtCKg4goZ98Qmg3egQlc9NeEL	{"deviceId":"SP1A.210812.016","device":"a12s","baseOS":"","manufacturer":"samsung","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"SM-A127F"}	2023-10-12 08:29:42.637559+00	2023-10-12 08:29:42.637559+00
9e78770f-46ff-4a48-b7c2-46f42b728c19	aris	Aris	Au	singular.aris@gmail.com	other	1992-01-01	\N	active	Mon, Tue, Wed, Thu, Fri	08:00 - 06:00	Wed, Thu, Fri, Sat, Sun, Mon, Tue	00:00 - 08:00	\N	\N	fXcVM0Q7v0c-iT5hDHISTI:APA91bErFhDateG8JftwkLSRbSMTGpR6hqGXXx2qi7Co9Tea8QmWe3pGhkyOUvNr_uUFs0bjXxTelXjXChwD_v_TXJ8vvO4Jf8HQGahjmqOenlyHDQdmq3Ql6tpJiuewx83vy689jRzd	{"deviceId":"E1A06B36-7817-4048-953B-B4853B1885ED","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-06 08:17:07.726915+00	2023-10-06 08:17:07.726915+00
7e386c31-dfac-4f14-8fb5-50da0406bb84	abc@xyz	Abc		abc@mailinator.com	male	2023-07-16	\N	deleted	Sun	10:00 - 18:00	Mon	23:00 - 06:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bHCUMf0I3ofbyiVsKi2n1ei4M29q_CzkRlhdKCfKl3HSvsODBSmUK2sI-T8-Zh4nYM-eIe0FSREgLJg45DwAsKH6JI-L0WsvdodE4qUjEcamUlYyy49QphJ4uPG_lzXA5NubEby	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-16 06:13:23.859836+00	2023-10-16 06:13:23.859836+00
72e7db9e-ac95-4d5e-ae59-d4f9ba534850	\N	\N	\N	zxy@mailinator.com	other	\N	916874	active	\N	\N	\N	\N	\N	\N	\N	\N	2023-10-16 07:07:31.905567+00	2023-10-16 07:07:31.905567+00
724e0cde-1a97-4d4e-80c2-bec4cde02b3b	aristest	aris	au	chaos8rt@gmail.com	other	2000-10-12	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fXcVM0Q7v0c-iT5hDHISTI:APA91bErFhDateG8JftwkLSRbSMTGpR6hqGXXx2qi7Co9Tea8QmWe3pGhkyOUvNr_uUFs0bjXxTelXjXChwD_v_TXJ8vvO4Jf8HQGahjmqOenlyHDQdmq3Ql6tpJiuewx83vy689jRzd	{"deviceId":"E1A06B36-7817-4048-953B-B4853B1885ED","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0.3","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone"}	2023-10-12 09:17:18.277745+00	2023-10-12 09:17:18.277745+00
57d90944-e284-46c8-856b-ac753ae3f7b3	zyx@zyx	Zyx	Xyz	zyx@mailinator.com	other	2023-10-16	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	dxQTHK5_TZqC2Vv0VTEAmJ:APA91bHCUMf0I3ofbyiVsKi2n1ei4M29q_CzkRlhdKCfKl3HSvsODBSmUK2sI-T8-Zh4nYM-eIe0FSREgLJg45DwAsKH6JI-L0WsvdodE4qUjEcamUlYyy49QphJ4uPG_lzXA5NubEby	{"deviceId":"S2RUBS32.51-15-9-11","device":"corfur","baseOS":"","manufacturer":"motorola","apiLevel":31,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"moto g71 5G"}	2023-10-16 07:08:27.4904+00	2023-10-16 07:08:27.4904+00
da89cd94-7f3e-4941-aed8-c746e1164f9b	xyz@xyz	Xyz	Zx	xyz@mailinator.com	other	2023-10-16	\N	deleted	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	feCUNGjBQ6au8bHE2Txe-z:APA91bGZFqqx-g9PBzgNskx7EzE3Uv1e2U8xwFOhzE0A6WF-NXaZv-wZjeCrZgCG0jc5uSMIt4WDYDy9q_J0zI7lzDBNVW6tZG9H6uXIRpoiSN_X9Qv_NerPOvuDzgJUfQZ8aJLLlzIQ	{"deviceId":"TE1A.220922.033","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}	2023-10-16 07:04:03.226303+00	2023-10-16 07:04:03.226303+00
36ed1a4e-e3a2-4775-9512-08bea2459ab5	test_singh	Test	Singh	test@mailinator.com	other	1999-10-16	\N	active	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	eX7rWawIbU7YjBuWisJkd5:APA91bHuSG-WpAUPvJPw8d38FuT_p30YCMQNZMXrtrAzO_FsrQpxRt-zwqYsiogcNaCGSKfGXZ64Z2DakjOirqoxzpiJyaVRIiJB0ZSI3PftWufkDnJf40LvKbyQDOmYCFJ9ASSLqNlw	{"deviceId":"C849975C-DE64-440F-A207-38D3201520FA","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone 15 Plus"}	2023-10-16 07:18:26.895436+00	2023-10-16 07:18:26.895436+00
\.


--
-- Data for Name: chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chats" ("id", "status", "chat_type", "chat_name", "created_at", "updated_at", "user_id") FROM stdin;
9506ff5b-9931-46e1-80b6-f9a790209353	active	onetoone	Sateesh Raghuwanshi 	2023-09-29 06:37:15.356969+00	2023-09-29 06:37:15.356969+00	dd527457-5404-4a88-813a-a53a6135a808
83f55e09-a147-4527-a86b-e66057916156	active	onetoone	Sateesh Raghuwanshi 	2023-09-29 06:37:16.005556+00	2023-09-29 06:37:16.005556+00	dd527457-5404-4a88-813a-a53a6135a808
da1e5d61-bddd-407d-8de4-ea65738f0789	active	onetoone	Sateesh Raghuwanshi 	2023-09-29 06:37:16.27105+00	2023-09-29 06:37:16.27105+00	dd527457-5404-4a88-813a-a53a6135a808
25b8a79c-e097-4171-8c13-14ea749ac5ee	active	onetoone	Sateesh Raghuwanshi&Krishna Singh	2023-09-30 10:26:40.297722+00	2023-09-30 10:26:40.297722+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
ea186723-fe4f-4302-87de-628d82912b9d	active	group	Group Chat	2023-09-30 10:28:00.875366+00	2023-09-30 10:28:00.875366+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
bab9dac2-eac5-4609-b30f-e2a852a3e4b8	active	onetoone	KrishnaPal Singh&Krishna Singh	2023-10-04 10:05:44.908985+00	2023-10-04 10:05:44.908985+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
00b93376-b30e-42cd-b071-92ede5a6a404	active	group	Piecodes	2023-10-05 14:29:46.901365+00	2023-10-05 14:29:46.901365+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
149721b0-758f-45db-a8a3-2bd19842cd6a	active	onetoone	Code Sandbox&Krishna Singh	2023-10-06 07:17:38.557035+00	2023-10-06 07:17:38.557035+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2
8bdb177e-c659-47bb-81be-80a72c759301	active	onetoone	Gaurav Bhargava&Krishna Singh	2023-10-06 07:19:38.467112+00	2023-10-06 07:19:38.467112+00	feca5824-2205-4cfa-885c-5bcb492172a4
c2cd8e08-fc17-42f4-bda5-c9b50f96565b	active	onetoone	Aris Au&User Test	2023-10-12 09:22:08.324215+00	2023-10-12 09:22:08.324215+00	9e78770f-46ff-4a48-b7c2-46f42b728c19
2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	active	onetoone	Ray Ong&aris au	2023-10-12 13:30:56.860177+00	2023-10-12 13:30:56.860177+00	90e15b72-7d81-4f04-a341-28087ac2a0f3
fcf5d445-dd3a-47f2-b80a-1df2885f74ff	active	onetoone	Krishna & Neha	2023-10-14 10:23:27.126018+00	2023-10-14 10:23:27.126018+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
c265ac0c-17c9-47d7-bdf0-217a8388bfd3	active	onetoone	Xyz & Zyx	2023-10-16 08:22:56.557358+00	2023-10-16 08:22:56.557358+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
dc91c654-b64f-4766-84ec-bf175e2594bb	active	group		2023-10-16 08:27:03.969047+00	2023-10-16 08:27:03.969047+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
9edf085f-6d05-4bd4-b5f4-aa3c7570ba5e	active	group		2023-10-16 08:27:05.276746+00	2023-10-16 08:27:05.276746+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
c1919a74-f228-4356-8be7-ca2604cd3b58	active	onetoone	Xyz & Zyx	2023-10-16 08:41:40.972259+00	2023-10-16 08:41:40.972259+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
bd1fa180-b85c-4062-9ab6-a046239969b2	active	onetoone	Xyz & Zyx	2023-10-16 08:47:28.281019+00	2023-10-16 08:47:28.281019+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
1caa0764-22a0-477a-b862-6f29bd5f59b2	active	onetoone	Xyz & Zyx	2023-10-16 08:47:37.542809+00	2023-10-16 08:47:37.542809+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
\.


--
-- Data for Name: chat_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_audiences" ("id", "role", "status", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
3e9f0d3c-d55a-4386-810a-15ebbfd78592	user	active	2023-09-29 06:37:15.444857+00	2023-09-29 06:37:15.444857+00	9506ff5b-9931-46e1-80b6-f9a790209353	dd527457-5404-4a88-813a-a53a6135a808
e773d42d-ea20-46e4-a490-68f9a65f446b	user	active	2023-09-29 06:37:15.444857+00	2023-09-29 06:37:15.444857+00	9506ff5b-9931-46e1-80b6-f9a790209353	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
af693379-4cad-4603-969a-7cc27b9c270a	user	active	2023-09-29 06:37:16.195918+00	2023-09-29 06:37:16.195918+00	83f55e09-a147-4527-a86b-e66057916156	dd527457-5404-4a88-813a-a53a6135a808
6df54e95-1314-406a-95e7-bba114c093a3	user	active	2023-09-29 06:37:16.195918+00	2023-09-29 06:37:16.195918+00	83f55e09-a147-4527-a86b-e66057916156	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
dd245497-ec5a-430e-ba25-c84bffc2ba15	user	active	2023-09-29 06:37:16.370821+00	2023-09-29 06:37:16.370821+00	da1e5d61-bddd-407d-8de4-ea65738f0789	dd527457-5404-4a88-813a-a53a6135a808
31873699-3658-4e05-b910-83eabeae9dec	user	active	2023-09-29 06:37:16.370821+00	2023-09-29 06:37:16.370821+00	da1e5d61-bddd-407d-8de4-ea65738f0789	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
76009ee5-a675-47ae-bf3b-b6bf1d2548f1	user	active	2023-09-30 10:26:40.387139+00	2023-09-30 10:26:40.387139+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
1107ab7f-e9ea-4868-abed-3bbb7fc1df0c	user	active	2023-09-30 10:26:40.387139+00	2023-09-30 10:26:40.387139+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
621209aa-255d-45ef-a687-ac7e8befa7de	user	active	2023-09-30 10:28:00.960689+00	2023-09-30 10:28:00.960689+00	ea186723-fe4f-4302-87de-628d82912b9d	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
d894c391-bda3-4692-9708-86e69f8421d2	user	active	2023-09-30 10:28:00.960689+00	2023-09-30 10:28:00.960689+00	ea186723-fe4f-4302-87de-628d82912b9d	dd527457-5404-4a88-813a-a53a6135a808
4443db29-43a5-4ce5-bbad-7a64dd7270f3	admin	active	2023-09-30 10:28:00.960689+00	2023-09-30 10:28:00.960689+00	ea186723-fe4f-4302-87de-628d82912b9d	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
1ebb8b66-a945-4466-b61a-668e7dba4da6	user	active	2023-10-04 10:05:44.99922+00	2023-10-04 10:05:44.99922+00	bab9dac2-eac5-4609-b30f-e2a852a3e4b8	2048a71a-93a8-4720-a64c-0c225b8e0d6b
72370a37-a422-4844-bc2f-d29cf2de7d67	user	active	2023-10-04 10:05:44.99922+00	2023-10-04 10:05:44.99922+00	bab9dac2-eac5-4609-b30f-e2a852a3e4b8	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
2b9e0bd2-ee7b-48d3-802a-c1e746a17c5d	user	active	2023-10-05 14:29:46.989815+00	2023-10-05 14:29:46.989815+00	00b93376-b30e-42cd-b071-92ede5a6a404	5b5f4294-da38-4fc3-aa9b-21c40c13d7b1
635d5d60-5922-43d2-956d-954513c8672c	user	active	2023-10-05 14:29:46.989815+00	2023-10-05 14:29:46.989815+00	00b93376-b30e-42cd-b071-92ede5a6a404	feca5824-2205-4cfa-885c-5bcb492172a4
71d8fee7-2554-43a1-9a7c-20f9f6334181	user	active	2023-10-05 14:29:46.989815+00	2023-10-05 14:29:46.989815+00	00b93376-b30e-42cd-b071-92ede5a6a404	e4fc4e1a-038e-452a-98fd-16f79526df7d
0e7a13da-a3ef-407f-a243-7bcde2690553	user	active	2023-10-05 14:29:46.989815+00	2023-10-05 14:29:46.989815+00	00b93376-b30e-42cd-b071-92ede5a6a404	4e1b4ece-0f8b-49b4-82f7-a2ea0d4eba77
ba703139-89fb-4519-a8a7-2ddcd6843e25	admin	active	2023-10-05 14:29:46.989815+00	2023-10-05 14:29:46.989815+00	00b93376-b30e-42cd-b071-92ede5a6a404	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
8c41e20c-f00a-4c6e-bfd4-7b353c976a62	user	active	2023-10-06 07:17:38.651165+00	2023-10-06 07:17:38.651165+00	149721b0-758f-45db-a8a3-2bd19842cd6a	fb8821c0-7f83-4e1f-a524-9cae3be130c2
b445d992-2677-4bee-9541-56bf4386bc3b	user	active	2023-10-06 07:17:38.651165+00	2023-10-06 07:17:38.651165+00	149721b0-758f-45db-a8a3-2bd19842cd6a	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
736eb1cc-98c3-4f01-91a7-50777b94d4a6	user	active	2023-10-06 07:19:38.557446+00	2023-10-06 07:19:38.557446+00	8bdb177e-c659-47bb-81be-80a72c759301	feca5824-2205-4cfa-885c-5bcb492172a4
93eada6a-6a8b-4c02-9d3e-d9567f0a8894	user	active	2023-10-06 07:19:38.557446+00	2023-10-06 07:19:38.557446+00	8bdb177e-c659-47bb-81be-80a72c759301	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
6d91eca1-40f4-4308-bff3-836662d2ef33	user	active	2023-10-12 09:22:08.412404+00	2023-10-12 09:22:08.412404+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	9e78770f-46ff-4a48-b7c2-46f42b728c19
08b2625a-bc8e-4fff-91a6-5728099a85de	user	active	2023-10-12 09:22:08.412404+00	2023-10-12 09:22:08.412404+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	bdb0cccd-1798-4022-bb07-7269b2c051cf
ef85377c-2d4e-4d61-a6f2-6a5b03565be8	user	active	2023-10-12 13:30:56.949368+00	2023-10-12 13:30:56.949368+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	90e15b72-7d81-4f04-a341-28087ac2a0f3
a5b92141-5e84-47ec-b8b1-f85384cc88ce	user	active	2023-10-12 13:30:56.949368+00	2023-10-12 13:30:56.949368+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
1aea209f-b834-44cf-8a06-3aea3d4fa85b	user	active	2023-10-14 10:23:27.21561+00	2023-10-14 10:23:27.21561+00	fcf5d445-dd3a-47f2-b80a-1df2885f74ff	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
0fa60013-ef51-4852-8016-1f3f8ebcf3c5	user	active	2023-10-14 10:23:27.21561+00	2023-10-14 10:23:27.21561+00	fcf5d445-dd3a-47f2-b80a-1df2885f74ff	5b5f4294-da38-4fc3-aa9b-21c40c13d7b1
d3ac4a4f-7dad-438b-8ab8-72b7121bd034	user	active	2023-10-16 08:22:56.645118+00	2023-10-16 08:22:56.645118+00	c265ac0c-17c9-47d7-bdf0-217a8388bfd3	da89cd94-7f3e-4941-aed8-c746e1164f9b
93b8ea5b-0122-4b2f-8ce0-6906e852c14c	user	active	2023-10-16 08:22:56.645118+00	2023-10-16 08:22:56.645118+00	c265ac0c-17c9-47d7-bdf0-217a8388bfd3	57d90944-e284-46c8-856b-ac753ae3f7b3
d6a5060d-4729-4f75-9143-331110deb426	user	active	2023-10-16 08:27:04.056935+00	2023-10-16 08:27:04.056935+00	dc91c654-b64f-4766-84ec-bf175e2594bb	57d90944-e284-46c8-856b-ac753ae3f7b3
c752879d-7b51-4a3b-bb56-f9f45d08607f	admin	active	2023-10-16 08:27:04.056935+00	2023-10-16 08:27:04.056935+00	dc91c654-b64f-4766-84ec-bf175e2594bb	da89cd94-7f3e-4941-aed8-c746e1164f9b
dc12645b-6adf-4074-8241-df1516fb9d1c	user	active	2023-10-16 08:27:05.367313+00	2023-10-16 08:27:05.367313+00	9edf085f-6d05-4bd4-b5f4-aa3c7570ba5e	57d90944-e284-46c8-856b-ac753ae3f7b3
12c3472e-57f1-4a32-8931-a486819be157	admin	active	2023-10-16 08:27:05.367313+00	2023-10-16 08:27:05.367313+00	9edf085f-6d05-4bd4-b5f4-aa3c7570ba5e	da89cd94-7f3e-4941-aed8-c746e1164f9b
de203fb8-5ce9-4266-8780-c7e14b3e79ce	user	active	2023-10-16 08:41:41.059233+00	2023-10-16 08:41:41.059233+00	c1919a74-f228-4356-8be7-ca2604cd3b58	da89cd94-7f3e-4941-aed8-c746e1164f9b
dcaf1357-b99c-4959-861e-d77b8a7c9ee3	user	active	2023-10-16 08:41:41.059233+00	2023-10-16 08:41:41.059233+00	c1919a74-f228-4356-8be7-ca2604cd3b58	57d90944-e284-46c8-856b-ac753ae3f7b3
58f2908a-1cfd-492d-8402-1e8c231c7e73	user	active	2023-10-16 08:47:28.366906+00	2023-10-16 08:47:28.366906+00	bd1fa180-b85c-4062-9ab6-a046239969b2	da89cd94-7f3e-4941-aed8-c746e1164f9b
4e471648-f1a3-4808-b0dd-00dd175136df	user	active	2023-10-16 08:47:28.366906+00	2023-10-16 08:47:28.366906+00	bd1fa180-b85c-4062-9ab6-a046239969b2	57d90944-e284-46c8-856b-ac753ae3f7b3
d87a06bd-16d7-4a5c-8de0-8590e8b0b380	user	active	2023-10-16 08:47:37.62798+00	2023-10-16 08:47:37.62798+00	1caa0764-22a0-477a-b862-6f29bd5f59b2	da89cd94-7f3e-4941-aed8-c746e1164f9b
972957b5-5d31-4f3c-a751-9ff25c77f652	user	active	2023-10-16 08:47:37.62798+00	2023-10-16 08:47:37.62798+00	1caa0764-22a0-477a-b862-6f29bd5f59b2	57d90944-e284-46c8-856b-ac753ae3f7b3
\.


--
-- Data for Name: chat_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_messages" ("id", "message", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
fa51ba3d-27e9-406a-8c39-4b7a81442cc4	Hello	2023-09-29 06:37:16.442632+00	2023-09-29 06:37:16.442632+00	9506ff5b-9931-46e1-80b6-f9a790209353	dd527457-5404-4a88-813a-a53a6135a808
b1942bfa-8a6c-4ab2-b6c6-5e4f41e81b37	Hello Sandbox	2023-09-29 06:38:33.76474+00	2023-09-29 06:38:33.76474+00	da1e5d61-bddd-407d-8de4-ea65738f0789	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
5334abea-4646-49cb-8477-f8725b6e4b18	Hello	2023-09-29 06:38:49.968507+00	2023-09-29 06:38:49.968507+00	da1e5d61-bddd-407d-8de4-ea65738f0789	dd527457-5404-4a88-813a-a53a6135a808
030cee99-bbfb-4699-93c5-2aa4f27ab659	Hey	2023-09-29 06:39:01.72625+00	2023-09-29 06:39:01.72625+00	da1e5d61-bddd-407d-8de4-ea65738f0789	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
915c7a37-0d5d-4770-89ca-e3042d2ab3e9	This is sonu	2023-09-29 06:39:36.130219+00	2023-09-29 06:39:36.130219+00	da1e5d61-bddd-407d-8de4-ea65738f0789	dd527457-5404-4a88-813a-a53a6135a808
799a9e77-449d-4d0d-bc5f-93d32ffe7561	Hi	2023-09-30 10:26:41.259515+00	2023-09-30 10:26:41.259515+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
28519f2e-fa69-460c-a2e7-bac51949c0b0	Hello	2023-09-30 10:26:50.04598+00	2023-09-30 10:26:50.04598+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
9e5b85d9-d7f8-4f4b-ac3e-3b01f64bcba2	Hello	2023-09-30 10:26:50.758146+00	2023-09-30 10:26:50.758146+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
a8843aaa-be38-462c-9020-89fb7801f789	How r u	2023-09-30 10:26:57.753246+00	2023-09-30 10:26:57.753246+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
a3940f4d-5e20-491a-ba2c-009c69dae95c	Hello	2023-09-30 10:28:06.970988+00	2023-09-30 10:28:06.970988+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
3866ad2d-b5af-4cd5-a8dd-f17afe30af35	Hi	2023-09-30 10:28:16.083125+00	2023-09-30 10:28:16.083125+00	ea186723-fe4f-4302-87de-628d82912b9d	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
3a49da12-6ddc-4945-b1fa-e438893f6ee1	Hello	2023-09-30 10:28:25.328966+00	2023-09-30 10:28:25.328966+00	ea186723-fe4f-4302-87de-628d82912b9d	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
799c6b15-a82c-4f0d-8d64-d29235422e5c	gh	2023-10-04 10:05:46.074356+00	2023-10-04 10:05:46.074356+00	bab9dac2-eac5-4609-b30f-e2a852a3e4b8	2048a71a-93a8-4720-a64c-0c225b8e0d6b
31d73bdb-d3ef-4bbe-a091-78d61127450d	Hello everyone 	2023-10-05 14:29:59.248032+00	2023-10-05 14:29:59.248032+00	00b93376-b30e-42cd-b071-92ede5a6a404	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
05df135a-c413-42f5-96bc-e55af9bf131c	Hey	2023-10-05 14:30:02.974835+00	2023-10-05 14:30:02.974835+00	00b93376-b30e-42cd-b071-92ede5a6a404	feca5824-2205-4cfa-885c-5bcb492172a4
51f48ddd-d9a2-4790-aab3-c965ddcee0bc	Heyy	2023-10-05 14:30:11.507018+00	2023-10-05 14:30:11.507018+00	00b93376-b30e-42cd-b071-92ede5a6a404	4e1b4ece-0f8b-49b4-82f7-a2ea0d4eba77
2b4c6e9f-2397-4194-920b-018e95c63701	Hi	2023-10-05 14:30:16.950753+00	2023-10-05 14:30:16.950753+00	00b93376-b30e-42cd-b071-92ede5a6a404	e4fc4e1a-038e-452a-98fd-16f79526df7d
4f14172c-0faf-470f-b53b-0c76a51ed82b	Kaise ho satendra sir	2023-10-05 14:30:28.851511+00	2023-10-05 14:30:28.851511+00	00b93376-b30e-42cd-b071-92ede5a6a404	feca5824-2205-4cfa-885c-5bcb492172a4
eb5dab1b-e7dd-4f2a-8710-361d59369993	?	2023-10-05 14:31:51.217585+00	2023-10-05 14:31:51.217585+00	00b93376-b30e-42cd-b071-92ede5a6a404	feca5824-2205-4cfa-885c-5bcb492172a4
df308764-149d-45fa-a6b6-5ce3798a618d	hlw everyone	2023-10-05 14:33:02.126281+00	2023-10-05 14:33:02.126281+00	00b93376-b30e-42cd-b071-92ede5a6a404	5b5f4294-da38-4fc3-aa9b-21c40c13d7b1
332e6646-75ea-4445-8e03-5b2297997ebc	Hello	2023-10-05 14:33:09.296815+00	2023-10-05 14:33:09.296815+00	00b93376-b30e-42cd-b071-92ede5a6a404	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
0e518475-a9fb-4b96-b9f5-6158cf77b245	Hello 	2023-10-06 07:17:39.544873+00	2023-10-06 07:17:39.544873+00	149721b0-758f-45db-a8a3-2bd19842cd6a	fb8821c0-7f83-4e1f-a524-9cae3be130c2
2b0c03e9-fe8a-47fb-ad74-e5d41d7997d3	Hello sir 	2023-10-06 07:18:21.380753+00	2023-10-06 07:18:21.380753+00	149721b0-758f-45db-a8a3-2bd19842cd6a	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
034823f6-ec26-41a1-9081-bee9ae5237cc	Hey	2023-10-06 07:19:39.662067+00	2023-10-06 07:19:39.662067+00	8bdb177e-c659-47bb-81be-80a72c759301	feca5824-2205-4cfa-885c-5bcb492172a4
7fe59ac1-9ff1-48d9-af60-633591eef968	Hey	2023-10-12 09:22:09.474054+00	2023-10-12 09:22:09.474054+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	9e78770f-46ff-4a48-b7c2-46f42b728c19
ff1489c6-d289-4499-a5c0-610ddb8aa73b	Hello	2023-10-12 09:36:43.359046+00	2023-10-12 09:36:43.359046+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	bdb0cccd-1798-4022-bb07-7269b2c051cf
ecf72b2c-e086-40af-a116-290d822ca6b4	Sup	2023-10-12 09:37:12.368237+00	2023-10-12 09:37:12.368237+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	9e78770f-46ff-4a48-b7c2-46f42b728c19
b7627f41-0e4c-48f4-8889-868a114c0b69	Cool dude	2023-10-12 09:41:19.648786+00	2023-10-12 09:41:19.648786+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	bdb0cccd-1798-4022-bb07-7269b2c051cf
d47cd6f8-9673-4c35-a1ab-7dd0bdff861e	Hello	2023-10-12 10:21:12.534986+00	2023-10-12 10:21:12.534986+00	c2cd8e08-fc17-42f4-bda5-c9b50f96565b	9e78770f-46ff-4a48-b7c2-46f42b728c19
5f23dee7-e11d-4a29-8550-b2021b7fdcb8	ARIS	2023-10-12 13:30:57.85693+00	2023-10-12 13:30:57.85693+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	90e15b72-7d81-4f04-a341-28087ac2a0f3
85d43b60-6105-40d9-80f4-1685f75dfdee	HELLOOOOOOO	2023-10-12 13:31:03.223341+00	2023-10-12 13:31:03.223341+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	90e15b72-7d81-4f04-a341-28087ac2a0f3
9b54c030-5ec6-4d5a-bd8a-4293d784512c	GU GU JIAOOOOOO	2023-10-12 13:31:09.91839+00	2023-10-12 13:31:09.91839+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	90e15b72-7d81-4f04-a341-28087ac2a0f3
f23ade73-d18f-42ad-932f-533336f44354	Hello	2023-10-12 13:31:27.646762+00	2023-10-12 13:31:27.646762+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
4fbcc54d-3162-43cb-8663-1c462b9ac621	The chat is in reverse now lol	2023-10-12 13:31:37.371684+00	2023-10-12 13:31:37.371684+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
8efb6ba2-4b7d-449d-b8fe-cddb67c167d2	Somemore need to back and forth to refresh the chat, damn lame	2023-10-12 13:32:10.326831+00	2023-10-12 13:32:10.326831+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
023f6570-d5d6-476e-a302-95dc4c95edee	Now I realised if the text is too long it just cut off LOLL shit	2023-10-12 13:32:48.019373+00	2023-10-12 13:32:48.019373+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
c6dd3389-fc27-4a56-82cf-255451723f1d	Now I realised if the text is too long it just cut off LOLL shit	2023-10-12 13:32:48.572951+00	2023-10-12 13:32:48.572951+00	2e9b62c5-dc2f-47f5-8708-7c85adaa99ed	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
cedf2f0e-c935-4614-aefa-36774eb403e0	Hlw	2023-10-14 10:20:48.64928+00	2023-10-14 10:20:48.64928+00	25b8a79c-e097-4171-8c13-14ea749ac5ee	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
a0225586-dd15-42b8-a5f5-e99e8af66297	Hlw mam	2023-10-14 10:23:28.34766+00	2023-10-14 10:23:28.34766+00	fcf5d445-dd3a-47f2-b80a-1df2885f74ff	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
58c75f33-5a05-4cc2-b289-9f3797708a45	Hello dear 	2023-10-16 08:22:57.753115+00	2023-10-16 08:22:57.753115+00	c265ac0c-17c9-47d7-bdf0-217a8388bfd3	da89cd94-7f3e-4941-aed8-c746e1164f9b
4e001e5b-be6f-4288-8c3e-a10e4b2eaa4a	Hello	2023-10-16 08:37:31.274809+00	2023-10-16 08:37:31.274809+00	dc91c654-b64f-4766-84ec-bf175e2594bb	da89cd94-7f3e-4941-aed8-c746e1164f9b
3a805073-fe24-46b7-9efc-b5350d9eefc7	Hiii	2023-10-16 08:40:53.784123+00	2023-10-16 08:40:53.784123+00	dc91c654-b64f-4766-84ec-bf175e2594bb	da89cd94-7f3e-4941-aed8-c746e1164f9b
5692bae3-f01d-4c3c-b822-fea40e66d347	Brother 	2023-10-16 08:41:09.127243+00	2023-10-16 08:41:09.127243+00	9edf085f-6d05-4bd4-b5f4-aa3c7570ba5e	da89cd94-7f3e-4941-aed8-c746e1164f9b
c022980a-eb29-43a3-8fc8-9f54ad4a9e88	My self 	2023-10-16 08:41:42.124938+00	2023-10-16 08:41:42.124938+00	c1919a74-f228-4356-8be7-ca2604cd3b58	da89cd94-7f3e-4941-aed8-c746e1164f9b
124bd35f-a396-4d2f-83c2-ce1c9f8ef549	New chat	2023-10-16 08:47:29.632922+00	2023-10-16 08:47:29.632922+00	bd1fa180-b85c-4062-9ab6-a046239969b2	da89cd94-7f3e-4941-aed8-c746e1164f9b
94f1401e-4212-4791-8f2f-c78dea4fb5d1	Hello dost 	2023-10-16 08:47:38.491778+00	2023-10-16 08:47:38.491778+00	1caa0764-22a0-477a-b862-6f29bd5f59b2	da89cd94-7f3e-4941-aed8-c746e1164f9b
21be6de7-e46f-4cb9-9b62-3569f42f1d77	I m good dear	2023-10-16 09:17:05.912489+00	2023-10-16 09:17:05.912489+00	c265ac0c-17c9-47d7-bdf0-217a8388bfd3	57d90944-e284-46c8-856b-ac753ae3f7b3
8628c874-9b0a-45f7-ab21-3ec3f317cdad	Hey 	2023-10-18 17:16:55.48685+00	2023-10-18 17:16:55.48685+00	8bdb177e-c659-47bb-81be-80a72c759301	feca5824-2205-4cfa-885c-5bcb492172a4
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."events" ("id", "title", "venue", "description", "reminder", "is_reminder_sent", "is_solo", "is_important", "start_date", "end_date", "start_time", "end_time", "venue_long", "venue_lat", "created_at", "updated_at", "user_id", "is_early_reminder", "status") FROM stdin;
1f4087a3-6528-496b-b7ef-190b7d3bc972	Meeting	Piecodes		10minsbefore	t	f	t	2023-09-29	2023-09-29	1400	1500	\N	\N	2023-09-29 06:41:49.672338+00	2023-09-29 06:41:49.672338+00	dd527457-5404-4a88-813a-a53a6135a808	f	\N
6f0f0482-a3ea-40db-9a51-d0f32c5709c0	Meeting	Test		sameday	t	f	f	2023-10-13	2023-10-13	1800	1900	\N	\N	2023-10-13 08:58:00.570322+00	2023-10-13 08:58:00.570322+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
05eee544-3507-4beb-943e-0e29af91e31b	Brunch	Guna		sameday	t	f	f	2023-10-03	2023-10-03	1900	2000	\N	\N	2023-10-03 12:53:45.797152+00	2023-10-03 12:53:45.797152+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	f	\N
a69d1caa-1df9-4688-92cf-9ba8c72072c0	Meeting Forbug Fixes	Pircodes Conference hall		sameday	t	f	f	2023-09-30	2023-09-30	0	100	\N	\N	2023-09-29 06:45:32.298517+00	2023-09-29 06:45:32.298517+00	dd527457-5404-4a88-813a-a53a6135a808	f	\N
e9f453a4-f4e0-45ab-a928-8861b1a673c9	Meeting for IsaDate issues	PieCodes conference hall		15minsbefore	t	f	f	2023-09-29	2023-09-29	1300	1400	\N	\N	2023-09-29 06:42:17.271822+00	2023-09-29 06:42:17.271822+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	f	\N
655764f6-861e-4dc3-bf2c-c1ccaa54c04d	Meeting	Guna		sameday	t	f	f	2023-10-03	2023-10-03	1300	1400	\N	\N	2023-10-03 06:54:02.581229+00	2023-10-03 06:54:02.581229+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b	f	\N
cca234a4-261c-4a63-8e32-22721ede6a4b	Meeting	Hshsh		sameday	t	f	f	2023-10-03	2023-10-03	2100	2200	\N	\N	2023-10-03 15:00:47.247999+00	2023-10-03 15:00:47.247999+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	f	\N
2484c7be-ba02-45e8-859f-9db49dd5d6a7	Date	Park		5minsbefore	f	t	f	2023-10-16	2023-10-16	1300	1400	\N	\N	2023-10-16 07:18:56.502839+00	2023-10-16 07:18:56.502839+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
addd4eca-0352-4a76-b6bd-209fe63f29b3	Birthday Party party party	Guna		sameday	t	f	f	2023-09-30	2023-09-30	1700	1800	\N	\N	2023-09-29 09:45:38.074584+00	2023-09-29 09:45:38.074584+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	f	\N
1a745ccb-6807-4f70-9f67-746253dca9db	Meeting	Guna		sameday	f	t	t	2023-09-29	2023-09-29	1700	1800	\N	\N	2023-09-29 11:02:49.747908+00	2023-09-29 11:02:49.747908+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	f	\N
44f3c450-599d-4b20-a899-d2352f068e9e	Meeting Meeting Hai Bhai Gwl Ka Hai Kya 	Guna		sameday	f	t	f	2023-09-29	2023-09-29	2300	2400	\N	\N	2023-09-29 16:47:00.749261+00	2023-09-29 16:47:00.749261+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	f	\N
a157e5b4-7dac-4f46-8789-2652d23af688	Brunch	Loan		sameday	t	f	f	2023-10-16	2023-10-16	1600	0	\N	\N	2023-10-16 07:28:36.999716+00	2023-10-16 07:28:36.999716+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
fbfb57af-c4c2-4a14-9bbe-6fd325a3eb05	Meeting	Guna		sameday	t	f	t	2023-10-04	2023-10-04	1400	1500	\N	\N	2023-10-04 05:25:13.399377+00	2023-10-04 05:25:13.399377+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	f	\N
670297fd-595a-4548-acca-c996343b4912	Date	Abc		sameday	t	f	f	2023-10-17	2023-10-17	0	100	\N	\N	2023-10-16 08:18:18.622386+00	2023-10-16 08:18:18.622386+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
ee4a0ea5-1f32-4ec0-a36d-508c234fc6d3	Meeting For USA hahha	Over The Zoom		5minsbefore	t	f	f	2023-10-06	2023-10-06	1400	1500	\N	\N	2023-10-06 07:16:00.587347+00	2023-10-06 07:16:00.587347+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2	f	\N
e1fa18ec-976f-4ebe-a19e-8eda01d38e67	Meeting	Zoom		sameday	f	t	f	2023-10-08	2023-10-08	0	100	\N	\N	2023-10-06 08:30:59.037245+00	2023-10-06 08:30:59.037245+00	9e78770f-46ff-4a48-b7c2-46f42b728c19	f	\N
62b89a56-4774-4149-8f68-010af4a740c1	Meeting	Office		sameday	t	f	f	2023-10-01	2023-10-01	100	200	\N	\N	2023-09-30 10:12:41.136617+00	2023-09-30 10:12:41.136617+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	f	\N
39bfa14a-724b-4b34-8502-636c1456fa67	Date	Test		sameday	f	t	f	2023-10-06	2023-10-06	1700	1800	\N	\N	2023-10-06 08:33:08.464828+00	2023-10-06 08:33:08.464828+00	9e78770f-46ff-4a48-b7c2-46f42b728c19	f	\N
beed9fcd-20a8-40b7-8f2a-ae87eb55f4d8	Meeting	Test		10minsbefore	f	t	t	2023-10-06	2023-10-06	2000	2100	\N	\N	2023-10-06 11:27:22.014634+00	2023-10-06 11:27:22.014634+00	9e78770f-46ff-4a48-b7c2-46f42b728c19	f	\N
fc86a278-9823-4962-8436-745a0363519e	Date	Test		sameday	f	t	f	2023-10-14	2023-10-14	1900	2000	\N	\N	2023-10-06 13:08:18.045687+00	2023-10-06 13:08:18.045687+00	9e78770f-46ff-4a48-b7c2-46f42b728c19	f	\N
b62b8250-7239-4010-948f-06aaa32e1052	Brunchhjj	Ghh		sameday	t	f	f	2023-10-18	2023-10-18	2200	0	\N	\N	2023-10-18 10:03:51.877354+00	2023-10-18 10:03:51.877354+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
59709b47-4767-44ba-881a-e3a72b4a2f97	Brunch	Aaa		sameday	t	f	f	2023-10-18	2023-10-18	0	100	\N	\N	2023-10-16 08:19:02.714357+00	2023-10-16 08:19:02.714357+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
c921e731-743e-4e4b-bf0d-725fcd714deb	Meeting	Guna		sameday	t	f	f	2023-10-09	2023-10-09	1400	1500	\N	\N	2023-10-09 07:20:44.718063+00	2023-10-09 07:20:44.718063+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	f	\N
812a2949-9192-46f3-bedb-bc62cca3e3e5	Date	Eggs		sameday	t	f	f	2023-10-15	2023-10-15	0	100	\N	\N	2023-10-14 11:30:20.587964+00	2023-10-14 11:30:20.587964+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
c8e2ea45-304c-4873-8aed-2dc6e4e3cd1d	Dinner	indore		sameday	t	f	t	2023-10-09	2023-10-09	1300	1400	\N	\N	2023-10-09 07:25:18.336471+00	2023-10-09 07:25:18.336471+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	f	\N
26efffac-0125-44f3-82cb-5ee1c0110f77	Date	Test		sameday	f	t	t	2023-10-13	2023-10-13	0	100	\N	\N	2023-10-12 07:36:01.533484+00	2023-10-12 07:36:01.533484+00	9e78770f-46ff-4a48-b7c2-46f42b728c19	f	\N
bb94e2cd-5742-4e32-8367-f256df496aaf	Meeting	Ghh		sameday	t	f	f	2023-10-19	2023-10-19	100	200	\N	\N	2023-10-16 08:20:27.980705+00	2023-10-16 08:20:27.980705+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
2b0a5b63-0715-47cc-90dd-258072613c51	Meeting	Test		sameday	t	f	f	2023-10-15	2023-10-15	0	100	\N	\N	2023-10-12 14:36:36.086821+00	2023-10-12 14:36:36.086821+00	bdb0cccd-1798-4022-bb07-7269b2c051cf	f	\N
15f16921-db90-4b55-ae3e-3b733aae1d18	Brunch	Guhh		sameday	t	f	f	2023-10-20	2023-10-20	200	300	\N	\N	2023-10-16 08:21:02.866942+00	2023-10-16 08:21:02.866942+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
fa34f2af-dadf-4942-9e36-cd03aca2295d	Dinner	1233		1hourbefore	t	f	f	2023-10-21	2023-10-21	200	300	\N	\N	2023-10-16 08:21:27.431538+00	2023-10-16 08:21:27.431538+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
b129be90-b323-4726-b7d8-c252ad75ad66	Meeting	Gxcy		sameday	t	f	f	2023-10-14	2023-10-14	0	100	\N	\N	2023-10-13 10:32:58.752816+00	2023-10-13 10:32:58.752816+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
48ebffbf-1e36-4e9d-8744-2f17afe69af6	Date	Test		sameday	t	f	f	2023-10-15	2023-10-15	2200	2300	\N	\N	2023-10-12 13:33:40.652831+00	2023-10-12 13:33:40.652831+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
b7dacf18-fa70-401a-829e-f9cd1350fdbe	Meeting	Ghh		sameday	t	f	t	2023-10-22	2023-10-22	400	500	\N	\N	2023-10-16 08:21:56.254836+00	2023-10-16 08:21:56.254836+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
b4fb3cef-8795-45dc-b0c6-47c522a13d05	Meeting	Parking 		10minsbefore	t	f	t	2023-10-16	2023-10-16	1400	1500	\N	\N	2023-10-16 07:19:59.56352+00	2023-10-16 07:19:59.56352+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	f	active
fc740463-09ca-4286-820c-e513251df0d2	Brunch	Ghju		sameday	t	f	f	2023-10-16	2023-10-16	1500	1600	\N	\N	2023-10-16 09:26:03.049287+00	2023-10-16 09:26:03.049287+00	57d90944-e284-46c8-856b-ac753ae3f7b3	f	active
3b8c4ee6-d5b0-46bb-86b9-f38f66cc8fb2	Date	Marina square		1hourbefore	t	f	f	2023-10-17	2023-10-17	1800	2000	\N	\N	2023-10-16 16:18:34.285088+00	2023-10-16 16:18:34.285088+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
282f6d9e-e1a0-454f-baf1-77da0e43fcb3	Meeting	Guna		sameday	f	t	t	2023-10-17	2023-10-17	1850	1900	\N	\N	2023-10-17 12:18:21.238195+00	2023-10-17 12:18:21.238195+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	f	active
32250db7-ea0b-4cae-906f-d5fd98b34b6e	Meeting	ㅅ		sameday	f	t	f	2023-10-22	2023-10-22	0	100	\N	\N	2023-10-17 14:43:43.752306+00	2023-10-17 14:43:43.752306+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	f	\N
\.


--
-- Data for Name: chat_message_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_message_attachments" ("id", "file_name", "url", "created_at", "updated_at", "chat_id", "message_id", "event_id") FROM stdin;
11840121-1a6e-4352-8e4f-8d9fd8da85b0	\N	\N	2023-10-14 10:20:48.742212+00	2023-10-14 10:20:48.742212+00	\N	cedf2f0e-c935-4614-aefa-36774eb403e0	\N
2ab5d7c9-7e44-4a14-bee3-c63c9a6eada4	\N	\N	2023-10-14 10:23:28.435197+00	2023-10-14 10:23:28.435197+00	\N	a0225586-dd15-42b8-a5f5-e99e8af66297	\N
9d3511ef-f4c8-4e72-8cc1-400aa3c160de	\N	\N	2023-10-16 08:22:57.839265+00	2023-10-16 08:22:57.839265+00	\N	58c75f33-5a05-4cc2-b289-9f3797708a45	\N
525db265-b5ea-4018-9461-cad58a760689	\N	\N	2023-10-16 08:37:31.36681+00	2023-10-16 08:37:31.36681+00	\N	4e001e5b-be6f-4288-8c3e-a10e4b2eaa4a	\N
d238ba41-75b8-4dfe-8198-e425e932a9c5	\N	\N	2023-10-16 08:40:53.872286+00	2023-10-16 08:40:53.872286+00	\N	3a805073-fe24-46b7-9efc-b5350d9eefc7	\N
852fdef5-8e8c-4746-9b2c-ffb9af7fd762	\N	\N	2023-10-16 08:41:09.215519+00	2023-10-16 08:41:09.215519+00	\N	5692bae3-f01d-4c3c-b822-fea40e66d347	\N
6cfa4a38-83f1-4b1e-9c03-29dcd2e4d65d	\N	\N	2023-10-16 08:41:42.216641+00	2023-10-16 08:41:42.216641+00	\N	c022980a-eb29-43a3-8fc8-9f54ad4a9e88	\N
b6d1c5f0-2e5f-4d8b-bb8d-60dc43991780	\N	\N	2023-10-16 08:47:29.719904+00	2023-10-16 08:47:29.719904+00	\N	124bd35f-a396-4d2f-83c2-ce1c9f8ef549	\N
c9957aba-d03d-4adb-9b7a-f3c23da8f15b	\N	\N	2023-10-16 08:47:38.581161+00	2023-10-16 08:47:38.581161+00	\N	94f1401e-4212-4791-8f2f-c78dea4fb5d1	\N
b487df1f-12ef-49f9-b4f9-d21e1fe1d718	\N	\N	2023-10-16 09:17:06.001727+00	2023-10-16 09:17:06.001727+00	\N	21be6de7-e46f-4cb9-9b62-3569f42f1d77	\N
5133e51a-5901-4c9d-af5d-4f77b0013af0	Screenshot 2023-10-10 at 11.13.33 AM.png	https://isadate.piecodes.in/Screenshot 2023-10-10 at 11.467e81be-e455-4716-be8c-691aaa95420a.13.33 AM.png	2023-10-10 05:44:20.954064+00	2023-10-10 05:44:20.954064+00	\N	\N	\N
43559716-f497-4c85-bb5d-e9573c3ee02c	\N	\N	2023-10-18 17:16:55.577125+00	2023-10-18 17:16:55.577125+00	\N	8628c874-9b0a-45f7-ab21-3ec3f317cdad	\N
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
1a69a776-935b-4936-b205-7ccf659f3326	pending	participant	2023-09-29 06:41:49.759596+00	2023-09-29 06:41:49.759596+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	1f4087a3-6528-496b-b7ef-190b7d3bc972
534e483e-f3f6-4a66-a71d-c51eff976be9	accepted	host	2023-09-29 06:41:49.759596+00	2023-09-29 06:41:49.759596+00	dd527457-5404-4a88-813a-a53a6135a808	1f4087a3-6528-496b-b7ef-190b7d3bc972
055386b7-9b27-41f6-9d46-afb1a3060574	accepted	host	2023-10-03 15:00:47.337728+00	2023-10-03 15:00:47.337728+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	cca234a4-261c-4a63-8e32-22721ede6a4b
bcac7059-74f6-4867-971a-c9faff48279a	accepted	participant	2023-10-03 15:00:47.337728+00	2023-10-03 15:00:47.337728+00	5b5f4294-da38-4fc3-aa9b-21c40c13d7b1	cca234a4-261c-4a63-8e32-22721ede6a4b
c6f450c4-633b-4cdf-8b4b-fbe886566db0	accepted	host	2023-09-29 06:45:32.385994+00	2023-09-29 06:45:32.385994+00	dd527457-5404-4a88-813a-a53a6135a808	a69d1caa-1df9-4688-92cf-9ba8c72072c0
669c8398-70f8-4be8-b501-a837512ac9e7	accepted	participant	2023-09-29 06:45:32.385994+00	2023-09-29 06:45:32.385994+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	a69d1caa-1df9-4688-92cf-9ba8c72072c0
6721f9b9-f5dc-46f3-9271-55a83d04d3f7	pending	participant	2023-09-29 06:58:06.764414+00	2023-09-29 06:58:06.764414+00	dd527457-5404-4a88-813a-a53a6135a808	e9f453a4-f4e0-45ab-a928-8861b1a673c9
596206e2-fb11-40ee-a01d-aa1b01691682	accepted	host	2023-09-29 06:58:06.764414+00	2023-09-29 06:58:06.764414+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	e9f453a4-f4e0-45ab-a928-8861b1a673c9
0ac491bb-7f9e-4e3d-911d-0769d8fceb3f	accepted	participant	2023-09-29 06:58:06.764414+00	2023-09-29 06:58:06.764414+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	e9f453a4-f4e0-45ab-a928-8861b1a673c9
d1faa0e9-741b-419d-8290-9dd96648ccbd	accepted	participant	2023-10-04 05:26:23.518679+00	2023-10-04 05:26:23.518679+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	fbfb57af-c4c2-4a14-9bbe-6fd325a3eb05
f55de43c-ea4a-4c8f-ba42-c7c25f099796	accepted	host	2023-10-04 05:26:23.518679+00	2023-10-04 05:26:23.518679+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	fbfb57af-c4c2-4a14-9bbe-6fd325a3eb05
0e4b3629-b9ab-4fd4-88f0-ba7d887f3c0e	accepted	host	2023-10-06 07:16:00.678181+00	2023-10-06 07:16:00.678181+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2	ee4a0ea5-1f32-4ec0-a36d-508c234fc6d3
85e65d31-24a3-43b6-9928-7acefc864b58	accepted	participant	2023-10-06 07:16:00.678181+00	2023-10-06 07:16:00.678181+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	ee4a0ea5-1f32-4ec0-a36d-508c234fc6d3
32d2a0d1-2d02-461d-9e31-04cfcbdbc870	accepted	host	2023-10-09 07:20:44.81114+00	2023-10-09 07:20:44.81114+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	c921e731-743e-4e4b-bf0d-725fcd714deb
3e1c7729-fe37-4366-91e3-6d8f6954dde7	accepted	participant	2023-10-09 07:20:44.81114+00	2023-10-09 07:20:44.81114+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	c921e731-743e-4e4b-bf0d-725fcd714deb
31bbd7d6-265d-4563-82dc-071f71c19e7c	pending	participant	2023-09-29 11:05:31.16022+00	2023-09-29 11:05:31.16022+00	374ae3b6-926a-48ef-b0b1-5ac5eef68c2f	addd4eca-0352-4a76-b6bd-209fe63f29b3
fee4022c-a44d-465f-a8ae-0db685dfe263	accepted	host	2023-09-29 11:05:31.16022+00	2023-09-29 11:05:31.16022+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	addd4eca-0352-4a76-b6bd-209fe63f29b3
defe7da4-fa6f-487d-806a-426935d875bd	accepted	host	2023-10-09 07:25:18.425775+00	2023-10-09 07:25:18.425775+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006	c8e2ea45-304c-4873-8aed-2dc6e4e3cd1d
d047a274-98c1-4d95-aedf-db46093e395a	accepted	participant	2023-10-09 07:25:18.425775+00	2023-10-09 07:25:18.425775+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	c8e2ea45-304c-4873-8aed-2dc6e4e3cd1d
ec40ac4a-59ec-43fb-953f-b463d725346f	accepted	host	2023-10-12 13:34:07.123843+00	2023-10-12 13:34:07.123843+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	48ebffbf-1e36-4e9d-8744-2f17afe69af6
4a1bf98f-6ad9-4f6e-9daf-1d5d49271bfb	pending	participant	2023-10-12 14:36:36.177505+00	2023-10-12 14:36:36.177505+00	9e78770f-46ff-4a48-b7c2-46f42b728c19	2b0a5b63-0715-47cc-90dd-258072613c51
33d4fd53-acb4-4ab8-9616-c66d5dbcfb3c	accepted	host	2023-10-12 14:36:36.177505+00	2023-10-12 14:36:36.177505+00	bdb0cccd-1798-4022-bb07-7269b2c051cf	2b0a5b63-0715-47cc-90dd-258072613c51
b9e82993-989a-440b-a615-b6c44698c969	accepted	host	2023-10-13 08:58:00.664939+00	2023-10-13 08:58:00.664939+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	6f0f0482-a3ea-40db-9a51-d0f32c5709c0
cf9dcdee-f3f6-4555-a471-d30a9e70d0a1	accepted	host	2023-09-30 10:12:41.225354+00	2023-09-30 10:12:41.225354+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	62b89a56-4774-4149-8f68-010af4a740c1
dce7953e-661c-4ff4-8ffd-0a4e4f27086f	accepted	participant	2023-09-30 10:12:41.225354+00	2023-09-30 10:12:41.225354+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	62b89a56-4774-4149-8f68-010af4a740c1
cca55ab6-15ab-4e38-be38-503702653d78	accepted	participant	2023-10-13 08:58:00.664939+00	2023-10-13 08:58:00.664939+00	90e15b72-7d81-4f04-a341-28087ac2a0f3	6f0f0482-a3ea-40db-9a51-d0f32c5709c0
8c9a50aa-1261-4452-bc29-87937bc0ae50	pending	participant	2023-10-03 12:53:45.883926+00	2023-10-03 12:53:45.883926+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	05eee544-3507-4beb-943e-0e29af91e31b
56f9ec8f-2a19-4e2f-beb8-f7c24fa24dc1	accepted	host	2023-10-03 12:53:45.883926+00	2023-10-03 12:53:45.883926+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	05eee544-3507-4beb-943e-0e29af91e31b
fdabeb3e-4ada-4759-ab2a-d176c6d9f8ae	accepted	host	2023-10-13 10:32:58.841729+00	2023-10-13 10:32:58.841729+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	b129be90-b323-4726-b7d8-c252ad75ad66
d0b785ac-57fc-41ae-9c76-bdfd020bbec6	accepted	host	2023-10-14 11:30:20.675912+00	2023-10-14 11:30:20.675912+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	812a2949-9192-46f3-bedb-bc62cca3e3e5
c1ffeda4-4d94-4a9c-bb09-00f7e8c3301a	pending	participant	2023-10-03 07:00:19.668219+00	2023-10-03 07:00:19.668219+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	655764f6-861e-4dc3-bf2c-c1ccaa54c04d
c04173a1-a403-4421-9b4c-22e44eed3100	accepted	host	2023-10-03 07:00:19.668219+00	2023-10-03 07:00:19.668219+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b	655764f6-861e-4dc3-bf2c-c1ccaa54c04d
bea9b40a-7c11-4d78-8f9f-d45556259d30	accepted	host	2023-10-16 07:29:43.111525+00	2023-10-16 07:29:43.111525+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	a157e5b4-7dac-4f46-8789-2652d23af688
3844629f-a5f7-436f-8791-05284e68fbaf	accepted	host	2023-10-16 07:31:11.416915+00	2023-10-16 07:31:11.416915+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	b4fb3cef-8795-45dc-b0c6-47c522a13d05
d7208abd-b290-47b3-bc53-f25bffd3abaf	accepted	host	2023-10-16 08:18:18.712839+00	2023-10-16 08:18:18.712839+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	670297fd-595a-4548-acca-c996343b4912
b1ffa6f2-b0dd-4365-be04-a84e692ce70a	accepted	host	2023-10-16 08:19:02.802686+00	2023-10-16 08:19:02.802686+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	59709b47-4767-44ba-881a-e3a72b4a2f97
d32572ed-27bc-4496-9d7e-61c04450f390	accepted	host	2023-10-16 08:20:28.068478+00	2023-10-16 08:20:28.068478+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	bb94e2cd-5742-4e32-8367-f256df496aaf
4a86f2c7-5b43-47e4-b8fe-1c35ba5f212b	accepted	host	2023-10-16 08:21:02.954441+00	2023-10-16 08:21:02.954441+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	15f16921-db90-4b55-ae3e-3b733aae1d18
a0d70b82-fc20-491f-9e37-0b7662331cae	accepted	host	2023-10-16 08:21:27.519392+00	2023-10-16 08:21:27.519392+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	fa34f2af-dadf-4942-9e36-cd03aca2295d
4193a8f6-e869-48d9-84ed-4fb8fbd0e984	accepted	host	2023-10-16 08:21:56.340507+00	2023-10-16 08:21:56.340507+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	b7dacf18-fa70-401a-829e-f9cd1350fdbe
c9c155e3-4a01-482b-8fda-3c1cb3842b63	accepted	participant	2023-10-16 07:31:11.416915+00	2023-10-16 07:31:11.416915+00	57d90944-e284-46c8-856b-ac753ae3f7b3	b4fb3cef-8795-45dc-b0c6-47c522a13d05
dd3b9a2d-1477-4376-85bf-fcd541561a05	accepted	participant	2023-10-16 07:29:43.111525+00	2023-10-16 07:29:43.111525+00	57d90944-e284-46c8-856b-ac753ae3f7b3	a157e5b4-7dac-4f46-8789-2652d23af688
64bdbf23-897e-4124-b157-e93fd81e04f6	accepted	participant	2023-10-16 08:18:18.712839+00	2023-10-16 08:18:18.712839+00	57d90944-e284-46c8-856b-ac753ae3f7b3	670297fd-595a-4548-acca-c996343b4912
3009db13-e91a-4e77-87fe-65005d0dc149	accepted	participant	2023-10-16 08:19:02.802686+00	2023-10-16 08:19:02.802686+00	57d90944-e284-46c8-856b-ac753ae3f7b3	59709b47-4767-44ba-881a-e3a72b4a2f97
30ec8f66-4443-4abc-a561-fd095fb55213	accepted	host	2023-10-16 16:18:34.375647+00	2023-10-16 16:18:34.375647+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	3b8c4ee6-d5b0-46bb-86b9-f38f66cc8fb2
2131881d-2005-45ce-be00-d700023ad9e4	accepted	participant	2023-10-16 08:20:28.068478+00	2023-10-16 08:20:28.068478+00	57d90944-e284-46c8-856b-ac753ae3f7b3	bb94e2cd-5742-4e32-8367-f256df496aaf
109239dc-e51b-4bab-81a2-f5e2a53c5b87	accepted	participant	2023-10-16 08:21:02.954441+00	2023-10-16 08:21:02.954441+00	57d90944-e284-46c8-856b-ac753ae3f7b3	15f16921-db90-4b55-ae3e-3b733aae1d18
02dbf6d3-266b-4924-8f27-fe93de90ce0c	accepted	participant	2023-10-16 08:21:27.519392+00	2023-10-16 08:21:27.519392+00	57d90944-e284-46c8-856b-ac753ae3f7b3	fa34f2af-dadf-4942-9e36-cd03aca2295d
2e866e3b-4a26-4d6f-b780-9e4ab60ee2e6	accepted	participant	2023-10-16 16:18:34.375647+00	2023-10-16 16:18:34.375647+00	90e15b72-7d81-4f04-a341-28087ac2a0f3	3b8c4ee6-d5b0-46bb-86b9-f38f66cc8fb2
ddba86fb-ea34-4d7a-bcde-8169794bff7d	accepted	participant	2023-10-16 08:21:56.340507+00	2023-10-16 08:21:56.340507+00	57d90944-e284-46c8-856b-ac753ae3f7b3	b7dacf18-fa70-401a-829e-f9cd1350fdbe
666d01d8-c1e0-4671-9519-d5184f21b42e	pending	participant	2023-10-16 09:26:03.140693+00	2023-10-16 09:26:03.140693+00	da89cd94-7f3e-4941-aed8-c746e1164f9b	fc740463-09ca-4286-820c-e513251df0d2
eb033dd4-896d-4399-8ea9-cdc4b152faf9	accepted	host	2023-10-16 09:26:03.140693+00	2023-10-16 09:26:03.140693+00	57d90944-e284-46c8-856b-ac753ae3f7b3	fc740463-09ca-4286-820c-e513251df0d2
b3b1a67b-542d-4503-a1f9-d876d6fc5a05	accepted	host	2023-10-18 10:03:51.968344+00	2023-10-18 10:03:51.968344+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b	b62b8250-7239-4010-948f-06aaa32e1052
ac5fe99c-e8d7-4b15-9e18-dccf33fbbded	accepted	participant	2023-10-18 10:03:51.968344+00	2023-10-18 10:03:51.968344+00	90e15b72-7d81-4f04-a341-28087ac2a0f3	b62b8250-7239-4010-948f-06aaa32e1052
eecf22c0-be51-4b6c-8e83-3b39d9057e75	accepted	participant	2023-10-14 11:30:20.675912+00	2023-10-14 11:30:20.675912+00	90e15b72-7d81-4f04-a341-28087ac2a0f3	812a2949-9192-46f3-bedb-bc62cca3e3e5
5eccdf2a-7f1f-4879-a349-ccdd4b7ae062	accepted	participant	2023-10-13 10:32:58.841729+00	2023-10-13 10:32:58.841729+00	90e15b72-7d81-4f04-a341-28087ac2a0f3	b129be90-b323-4726-b7d8-c252ad75ad66
315705d0-e59e-4d76-8ca0-9d2420894d36	accepted	participant	2023-10-12 13:34:07.123843+00	2023-10-12 13:34:07.123843+00	90e15b72-7d81-4f04-a341-28087ac2a0f3	48ebffbf-1e36-4e9d-8744-2f17afe69af6
\.


--
-- Data for Name: friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."friends" ("id", "friend_id", "status", "note", "created_at", "updated_at", "user_id") FROM stdin;
ec46c3fd-5e7d-4b57-a2a1-546fdbe48dc9	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	accepted	\N	2023-09-29 06:31:15.433937+00	2023-09-29 06:31:15.433937+00	dd527457-5404-4a88-813a-a53a6135a808
ff802749-1cdd-4039-b2a4-ca77e572c70d	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	accepted	\N	2023-09-29 06:54:28.123177+00	2023-09-29 06:54:28.123177+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
be769263-8deb-4fa3-a252-8a59b5ad14b3	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	pending	\N	2023-09-29 06:58:16.359+00	2023-09-29 06:58:16.359+00	dd527457-5404-4a88-813a-a53a6135a808
523a2de8-06b4-418b-96b0-36fa5042d061	feca5824-2205-4cfa-885c-5bcb492172a4	accepted	\N	2023-09-29 06:57:45.285135+00	2023-09-29 06:57:45.285135+00	dd527457-5404-4a88-813a-a53a6135a808
3778ee63-1361-4250-bd6f-4fbe741f117d	374ae3b6-926a-48ef-b0b1-5ac5eef68c2f	accepted	\N	2023-09-29 07:52:43.963054+00	2023-09-29 07:52:43.963054+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
0691d5d2-b9eb-48b7-b167-b9bb8a373b63	dd527457-5404-4a88-813a-a53a6135a808	pending	\N	2023-09-29 07:54:41.540157+00	2023-09-29 07:54:41.540157+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
b461217d-2b70-48ac-b30f-c0e56133bfe6	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	pending	\N	2023-09-29 09:44:19.737423+00	2023-09-29 09:44:19.737423+00	feca5824-2205-4cfa-885c-5bcb492172a4
855258a6-60ae-4950-b0d8-77469b19803f	4629cfc2-4a74-4b7d-8dd2-0d6643436006	accepted	\N	2023-09-29 09:47:22.485264+00	2023-09-29 09:47:22.485264+00	feca5824-2205-4cfa-885c-5bcb492172a4
a768bdaa-1e31-4d59-9e2e-e2065203d1cc	4629cfc2-4a74-4b7d-8dd2-0d6643436006	pending	\N	2023-09-30 05:36:26.994392+00	2023-09-30 05:36:26.994392+00	c3287cc0-e3d8-4ddf-bf99-99a7784afec9
fa0fc4e3-cecc-428b-a973-3de91e6d9e24	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	accepted	\N	2023-10-03 06:53:01.930756+00	2023-10-03 06:53:01.930756+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
50091f59-2485-43a4-bcd6-1c6634864d9f	5b5f4294-da38-4fc3-aa9b-21c40c13d7b1	accepted	\N	2023-10-03 14:59:51.145254+00	2023-10-03 14:59:51.145254+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
e7ac2809-017e-4ecd-b03d-5ba0d98ff939	4629cfc2-4a74-4b7d-8dd2-0d6643436006	accepted	\N	2023-10-05 14:06:50.351696+00	2023-10-05 14:06:50.351696+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
f06f16a9-4d0c-4d5a-b027-54c0919f1384	e4fc4e1a-038e-452a-98fd-16f79526df7d	accepted	\N	2023-10-05 14:26:12.051423+00	2023-10-05 14:26:12.051423+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
e2ec36f5-f6cc-4e12-b9f9-0bffec5866cf	4e1b4ece-0f8b-49b4-82f7-a2ea0d4eba77	pending	\N	2023-10-05 14:28:26.431218+00	2023-10-05 14:28:26.431218+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
912c685f-cc1c-47b8-a09a-2e3b75a403d4	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	accepted	\N	2023-10-06 07:13:44.019914+00	2023-10-06 07:13:44.019914+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2
a98a5e9c-0473-4d1d-a14f-d80027f771c7	9e78770f-46ff-4a48-b7c2-46f42b728c19	accepted	\N	2023-10-12 09:15:12.907168+00	2023-10-12 09:15:12.907168+00	bdb0cccd-1798-4022-bb07-7269b2c051cf
139c243d-c736-4e59-8f65-af6892251927	90e15b72-7d81-4f04-a341-28087ac2a0f3	accepted	\N	2023-10-12 13:30:31.350125+00	2023-10-12 13:30:31.350125+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
a2b5410b-f3d7-4fc9-bb08-48eb06efe504	da89cd94-7f3e-4941-aed8-c746e1164f9b	accepted	\N	2023-10-16 07:10:19.01489+00	2023-10-16 07:10:19.01489+00	57d90944-e284-46c8-856b-ac753ae3f7b3
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."media" ("id", "original_name", "path", "mime_data", "entity_id", "key", "created_at", "updated_at", "user_id") FROM stdin;
f7dc9d35-4bea-4548-8ea2-f733e540aa9c	scaled_5890e2d3-31e0-48dd-bbcd-31b94c2d05642748581216810973828.jpg	https://isadate.piecodes.in/media/scaled_5890e2d3-31e0-48dd-bbcd-31b94c2d05642748581216810973828.6a4c77b0-0524-4c86-9817-80471017a3bc.jpg	application/octet-stream	374ae3b6-926a-48ef-b0b1-5ac5eef68c2f	profile_image	2023-09-29 07:39:08.707523+00	2023-09-29 07:39:08.707523+00	374ae3b6-926a-48ef-b0b1-5ac5eef68c2f
f09cac39-6b10-43ce-a510-5e0c28d9bd8f	image_picker_C690F5DB-36AA-46B1-AEB5-B10159D7828D-21871-000001FCDF5131FB.jpg	https://isadate.piecodes.in/media/image_picker_C690F5DB-36AA-46B1-AEB5-B10159D7828D-21871-000001FCDF5131FB.7aeaefc4-6214-4e8e-b0a4-4c0d58a4a044.jpg	application/octet-stream	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7	profile_image	2023-09-29 06:47:49.871169+00	2023-09-29 06:47:49.871169+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
944aa94b-68be-4151-9155-7796420d205d	scaled_8878e4de-e021-481c-a93f-b7b57317ef1b5319798239830420144.jpg	https://isadate.piecodes.in/media/scaled_8878e4de-e021-481c-a93f-b7b57317ef1b5319798239830420144.7ee33912-3bdc-4d27-90cf-2ab4e01c478d.jpg	application/octet-stream	a14b5d88-bfc5-44c5-9a57-9d25022a2c75	profile_image	2023-10-06 07:19:06.328129+00	2023-10-06 07:19:06.328129+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
e2011ab8-8b64-480b-95a6-101a2c7dfe37	image_picker_581C6E7F-F619-47F5-8989-98DF0BF47163-1637-000000D6563DFA71.jpg	https://isadate.piecodes.in/media/image_picker_581C6E7F-F619-47F5-8989-98DF0BF47163-1637-000000D6563DFA71.f763873f-f3c3-477e-b4c6-a08dc7eb20c5.jpg	application/octet-stream	9e78770f-46ff-4a48-b7c2-46f42b728c19	profile_image	2023-10-07 03:26:48.865904+00	2023-10-07 03:26:48.865904+00	9e78770f-46ff-4a48-b7c2-46f42b728c19
70be87c1-9999-40d5-96e2-d13ccfc56885	scaled_64a09137-a79d-4d5f-989e-d44606eb859a6741200685507689116.jpg	https://isadate.piecodes.in/media/scaled_64a09137-a79d-4d5f-989e-d44606eb859a6741200685507689116.f574ebd7-fabf-4c82-9216-0f6f30d16388.jpg	application/octet-stream	4629cfc2-4a74-4b7d-8dd2-0d6643436006	profile_image	2023-10-10 06:08:27.61917+00	2023-10-10 06:08:27.61917+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notifications" ("id", "description", "title", "status", "data", "created_at", "updated_at", "user_id") FROM stdin;
88a7eb85-12e2-4719-bb7d-09560af2d18e	@SateeshRaghuwanshi  has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:33:27.757439+00	2023-09-29 06:33:27.757439+00	dd527457-5404-4a88-813a-a53a6135a808
d1257ed0-a9d8-4909-a8cb-b1e247737e63	@SateeshRaghuwanshi  has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:34:27.601446+00	2023-09-29 06:34:27.601446+00	dd527457-5404-4a88-813a-a53a6135a808
7320bc25-ad06-4afa-b1a3-688d6ee5e70e	@SateeshRaghuwanshi  has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:34:46.887+00	2023-09-29 06:34:46.887+00	dd527457-5404-4a88-813a-a53a6135a808
d2c0d04c-b7d4-4cef-b9a6-67626e2ec738	@SateeshRaghuwanshi  has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:35:08.628847+00	2023-09-29 06:35:08.628847+00	dd527457-5404-4a88-813a-a53a6135a808
7ed5adab-c300-450c-a2af-2cd2d16aba9b	@SateeshRaghuwanshi  has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:35:24.40093+00	2023-09-29 06:35:24.40093+00	dd527457-5404-4a88-813a-a53a6135a808
acbb4aaf-80bd-4cfc-9ae0-9accb4b5754e	@SateeshRaghuwanshi  has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:35:36.888093+00	2023-09-29 06:35:36.888093+00	dd527457-5404-4a88-813a-a53a6135a808
d1f1a014-8e82-4888-b236-90d30dcd0985	Sandbox Project sent you an invitation to a date on 2023-09-29	Event invitation	unread	{"action":"invite","event_id":"1f4087a3-6528-496b-b7ef-190b7d3bc972"}	2023-09-29 06:41:50.102319+00	2023-09-29 06:41:50.102319+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
163d0d53-7464-490e-bb9f-9d17dd26c2e3	Sandbox Project accepted your invitation to a date on 2023-09-29	Event invitation update	unread	{"action":"invite","event_id":"e9f453a4-f4e0-45ab-a928-8861b1a673c9"}	2023-09-29 06:43:32.807015+00	2023-09-29 06:43:32.807015+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
151b358f-f85e-4aad-b1c5-d3ee739074e4	Sandbox Project accepted your invitation to a date on 2023-09-29	Event invitation update	unread	{"action":"invite","event_id":"e9f453a4-f4e0-45ab-a928-8861b1a673c9"}	2023-09-29 06:43:38.226962+00	2023-09-29 06:43:38.226962+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
a7b3072c-a515-46a0-80bb-6636ba6313bd	Sateesh Raghuwanshi  accepted your invitation to a date on 2023-09-30	Event invitation update	unread	{"action":"invite","event_id":"a69d1caa-1df9-4688-92cf-9ba8c72072c0"}	2023-09-29 06:46:09.215649+00	2023-09-29 06:46:09.215649+00	dd527457-5404-4a88-813a-a53a6135a808
cb1cdcf9-efa6-4004-b567-fc0fe24b34ea	@KrishnaSingh has accepted your friend request	Friend request update	unread	{"friendship_id":"b6d1446b-43cd-4215-a7d8-dd8f629b7bb7"}	2023-09-29 06:56:29.518867+00	2023-09-29 06:56:29.518867+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
4c19ba56-df16-4fde-925f-5f4a0e8ecea5	@KrishnaSingh has accepted your friend request	Friend request update	unread	{"friendship_id":"b6d1446b-43cd-4215-a7d8-dd8f629b7bb7"}	2023-09-29 06:57:18.769037+00	2023-09-29 06:57:18.769037+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
05f6d511-4154-49af-bf4e-cd5feee4268b	@KrishnaSingh has accepted your friend request	Friend request update	unread	{"friendship_id":"b6d1446b-43cd-4215-a7d8-dd8f629b7bb7"}	2023-09-29 06:57:26.550804+00	2023-09-29 06:57:26.550804+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
954ba39a-c877-4599-8d98-da19f70b148c	@KrishnaSingh has accepted your friend request	Friend request update	unread	{"friendship_id":"b6d1446b-43cd-4215-a7d8-dd8f629b7bb7"}	2023-09-29 06:57:34.343559+00	2023-09-29 06:57:34.343559+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
e00fb3cd-e4f7-4baa-b681-9e5baa1fdcd5	Krishna Singh accepted your invitation to a date on 2023-09-29	Event invitation update	unread	{"action":"invite","event_id":"e9f453a4-f4e0-45ab-a928-8861b1a673c9"}	2023-09-29 06:58:52.501435+00	2023-09-29 06:58:52.501435+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
cc8d358d-3870-4478-aac8-f1dd08cd40cb	@GauravBhargava has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 07:00:11.136701+00	2023-09-29 07:00:11.136701+00	dd527457-5404-4a88-813a-a53a6135a808
61f53f86-90d6-4afc-81a5-7ab9435e7417	@GauravBhargava has accepted your friend request	Friend request update	unread	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 07:00:19.678812+00	2023-09-29 07:00:19.678812+00	dd527457-5404-4a88-813a-a53a6135a808
9b77a295-03df-45c8-a7cf-26275132e3da	@IsadateTest has sent a friend request to you	Friend request	unread	{"friendship_id":"4629cfc2-4a74-4b7d-8dd2-0d6643436006"}	2023-09-29 07:54:41.800366+00	2023-09-29 07:54:41.800366+00	dd527457-5404-4a88-813a-a53a6135a808
df9f3da6-dcbf-47e2-823c-77d30cfd008b	@IsadateTest has accepted your friend request	Friend request update	unread	{"friendship_id":"feca5824-2205-4cfa-885c-5bcb492172a4"}	2023-09-29 11:11:54.664158+00	2023-09-29 11:11:54.664158+00	feca5824-2205-4cfa-885c-5bcb492172a4
9a4cc4c6-34dc-4c1d-8bc3-93294e9616da	Sandbox Project accepted your invitation to a date on 2023-09-30	Event invitation update	unread	{"action":"invite","event_id":"f2ef5a40-7aa8-4811-ac4c-9d47a779c4b1"}	2023-09-30 09:43:26.188919+00	2023-09-30 09:43:26.188919+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
2188541b-e240-4b5f-a890-4958d10867bf	Krishna Singh accepted your invitation to a date on October 3rd	Event invitation update	unread	{"action":"invite","event_id":"2baaf52a-f219-45d8-a4b0-320afa03a839"}	2023-10-03 06:43:21.888986+00	2023-10-03 06:43:21.888986+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
8b3ef279-09ab-4841-8019-915c3ef7e41a	@KrishnaSingh has accepted your friend request	Friend request update	unread	{"friendship_id":"2048a71a-93a8-4720-a64c-0c225b8e0d6b"}	2023-10-03 06:53:39.969812+00	2023-10-03 06:53:39.969812+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
51385221-9b05-4fc3-be7c-d3a5e6747eb8	Krishna Singh accepted your invitation to a date on October 3rd	Event invitation update	unread	{"action":"invite","event_id":"655764f6-861e-4dc3-bf2c-c1ccaa54c04d"}	2023-10-03 06:54:09.710874+00	2023-10-03 06:54:09.710874+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
19ef3bf0-ccd8-4b94-be4a-35239e71ec30	Krishna Singh sent you an invitation to a date on October 4th	Event invitation	unread	{"action":"invite","event_id":"0946118b-4797-487b-a769-361d962160d0"}	2023-10-03 09:29:31.163654+00	2023-10-03 09:29:31.163654+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
795f9199-a836-4c39-82c0-eb5d0cfd0dd9	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"8c8b5233-6940-4576-9bad-7bbfcda45d06"}	2023-10-03 09:31:26.1303+00	2023-10-03 09:31:26.1303+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
46e13d79-d8a3-4eb5-a05e-72fa8f5819c7	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"e75efe46-d441-495c-afad-a4c4e0466f58"}	2023-10-03 09:45:34.676431+00	2023-10-03 09:45:34.676431+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
a0a7b627-e5f7-4ccc-adaa-9a903887940d	@Kp        Test has accepted your friend request	Friend request update	read	{"friendship_id":"4629cfc2-4a74-4b7d-8dd2-0d6643436006"}	2023-09-29 07:53:09.003305+00	2023-09-29 07:53:09.003305+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
1b6bee14-264f-4922-9d03-56f53976b76f	Kp Singh accepted your invitation to a date on 2023-09-30	Event invitation update	read	{"action":"invite","event_id":"addd4eca-0352-4a76-b6bd-209fe63f29b3"}	2023-09-29 10:42:43.674016+00	2023-09-29 10:42:43.674016+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
18790a88-3c9b-4c41-b921-d17a2f54cfa9	@RaviSharma has sent a friend request to you	Friend request	read	{"friendship_id":"c3287cc0-e3d8-4ddf-bf99-99a7784afec9"}	2023-09-30 05:36:27.254352+00	2023-09-30 05:36:27.254352+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
f20687e2-5d8c-4ae5-b865-c11a00bf007c	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"d2d84bdc-8008-4d1c-9c54-2fd8d7991e6a"}	2023-10-03 09:53:25.18791+00	2023-10-03 09:53:25.18791+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
ee3f6939-5c23-4b76-ba35-50ec9c8d7f36	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"9f441944-cfbf-4064-a2f0-4f5f21b901b6"}	2023-10-03 09:54:44.654605+00	2023-10-03 09:54:44.654605+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
aadc365a-bbb0-4714-afaa-db2b3b4160fa	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"1d3f573d-7f14-4d81-bbb3-cfe4b0ad4ded"}	2023-10-03 09:58:35.106975+00	2023-10-03 09:58:35.106975+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
d98635d9-c957-4686-9442-f98a72a1519d	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"0c8c7001-8d19-45be-b28b-0d3b6b3d2869"}	2023-10-03 09:58:55.893119+00	2023-10-03 09:58:55.893119+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
f0728587-dd37-4f25-98e0-6e86b2519188	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"1d9ea6e2-b418-4adc-9eba-a947c6973916"}	2023-10-03 10:22:27.374607+00	2023-10-03 10:22:27.374607+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
a748a173-45f3-40b3-bca4-8a4ae51dd510	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"a72a62d2-e4b6-48a3-a9f4-109e3ce3c6a0"}	2023-10-03 10:23:14.252172+00	2023-10-03 10:23:14.252172+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
0459aaf3-d77f-4711-b175-1cb060ae7002	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"54536047-96d8-494b-9d2f-aaafad7ab6cb"}	2023-10-03 10:24:34.433604+00	2023-10-03 10:24:34.433604+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
d2f551ae-8a42-46f7-b931-e577069bfea9	Krishna Singh sent you an invitation to a date on October 4th	Event invitation	unread	{"action":"invite","event_id":"ec1a6b9b-3f44-4606-88ee-763014eb572b"}	2023-10-03 10:25:57.503605+00	2023-10-03 10:25:57.503605+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
8caa9c98-d5c5-4f3e-bdbb-7d9e396a79e5	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"98e89fc5-fd93-4413-a9de-624a5aade60f"}	2023-10-03 10:27:15.703723+00	2023-10-03 10:27:15.703723+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
8e9d6641-a70f-4d56-b2b1-e0aa0e50be6c	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"34205b1e-4faa-4953-b436-e20435799b98"}	2023-10-03 10:30:37.744442+00	2023-10-03 10:30:37.744442+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
0c4876ed-1122-468b-9a83-dbe74621d771	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"49f0d81e-7430-423d-a0bb-e145392a6e3c"}	2023-10-03 10:34:29.935478+00	2023-10-03 10:34:29.935478+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
0c6761d1-f225-4e57-a577-0a0b1d6609d9	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"6d43cbca-cded-4492-b6e5-65136946a508"}	2023-10-03 10:37:27.964666+00	2023-10-03 10:37:27.964666+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
db31dcf7-5ae9-4baa-8d12-644627a1dab8	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"9a8b9afa-bf72-495f-b620-75673f346d9d"}	2023-10-03 10:41:00.276549+00	2023-10-03 10:41:00.276549+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
5ed6298f-b512-4167-9671-9dee02c15ed4	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"f01d5fe5-33da-4d17-bfc6-77174953ae61"}	2023-10-03 10:53:03.249585+00	2023-10-03 10:53:03.249585+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
36601f8a-f299-4729-9944-9c9ded09565a	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"a64622a6-8d1a-45f2-b9e3-e2311af7ee69"}	2023-10-03 10:55:28.594565+00	2023-10-03 10:55:28.594565+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
a49833a5-049e-4201-8075-95e8ce5a4317	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"51dd0d95-4cc5-4230-a2d0-ead41091a71a"}	2023-10-03 12:51:06.647647+00	2023-10-03 12:51:06.647647+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
d1e60579-67af-4ede-8125-4669e91f339a	Krishna Singh sent you an invitation to a date on October 4th	Event invitation	unread	{"action":"invite","event_id":"e12250ad-03ed-4891-85ae-9e55529960d6"}	2023-10-03 13:01:13.162635+00	2023-10-03 13:01:13.162635+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
16bcef69-4151-4ecd-91c5-11aa94e0d53a	Krishna Singh sent you an invitation to a date on October 4th	Event invitation	unread	{"action":"invite","event_id":"7d707bfc-b785-4200-bffc-da1b8e85fa53"}	2023-10-03 13:09:39.175247+00	2023-10-03 13:09:39.175247+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
de7b89b2-ed91-4957-9500-dde11600a2f9	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"34d9c080-23f2-4d2c-a604-5d78579e5c05"}	2023-10-03 13:09:52.085574+00	2023-10-03 13:09:52.085574+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
6517e5d2-351d-47a4-a38a-8d528958a7e3	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"403ce377-92af-4ac1-b7ef-61604bc2a787"}	2023-10-03 13:10:38.132567+00	2023-10-03 13:10:38.132567+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
51657df7-d79b-4b1a-babe-babf077a7b36	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"316e6caa-f4c2-4ca0-bc5d-e76930010aee"}	2023-10-03 13:25:17.071256+00	2023-10-03 13:25:17.071256+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
c258a17c-6bd8-4cdd-b09f-73972c913ccd	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"04dd962c-78d1-412f-93a5-f1f5d4d6576f"}	2023-10-03 13:25:52.503261+00	2023-10-03 13:25:52.503261+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
af6d25e2-2f3c-456e-8b7c-03ce9429d82d	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"94459dce-7ac4-401a-aba3-a1fde9e5dc85"}	2023-10-03 13:35:57.270088+00	2023-10-03 13:35:57.270088+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
1204b828-0447-4ee3-8025-16c3dbaab7df	Krishna Singh sent you an invitation to a date on October 4th	Event invitation	unread	{"action":"invite","event_id":"12c3360b-0575-4425-b769-3aa609ab918b"}	2023-10-03 14:16:52.079324+00	2023-10-03 14:16:52.079324+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
351c2556-b9e7-477b-b79f-19b1fd1bafeb	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"2eaa62e7-2c2c-4fe8-8c31-405f37b23b1f"}	2023-10-03 14:17:28.064093+00	2023-10-03 14:17:28.064093+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
4db4e7c1-d8c5-4eab-9281-0874bb1cd0d6	Krishna Singh sent you an invitation to a date on October 5th	Event invitation	unread	{"action":"invite","event_id":"bc16882e-9eb7-480e-8a27-57811bd50e14"}	2023-10-03 14:18:23.839991+00	2023-10-03 14:18:23.839991+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
45901c38-36bd-4c6e-b3ab-ebc69307b997	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"4fb2f8b5-ddcf-48fc-8742-58de7ccf587a"}	2023-10-03 14:18:39.74606+00	2023-10-03 14:18:39.74606+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
634b0706-57cc-4643-aa8e-6e3b01ad9ed3	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"f9ebad4c-6761-41bd-a068-61acfcb4fab6"}	2023-10-03 14:19:44.777621+00	2023-10-03 14:19:44.777621+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
cec25643-af1b-4947-9f6f-36e3a6a85b93	Sateesh Raghuwanshi accepted your invitation to a date on October 3rd	Event invitation update	read	{"action":"invite","event_id":"1d3d9524-48dd-4bd6-aa73-6dc511f0f0b9"}	2023-10-03 12:52:11.053149+00	2023-10-03 12:52:11.053149+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
755111a3-fa28-4086-ab41-29e587613d28	Sateesh Raghuwanshi sent you an invitation to a date on October 3rd	Event invitation	read	{"action":"invite","event_id":"05eee544-3507-4beb-943e-0e29af91e31b"}	2023-10-03 12:53:46.228355+00	2023-10-03 12:53:46.228355+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
0e514f39-10aa-401d-997f-48fc65390a1f	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"c6de6d64-b299-4bee-b1ca-c07a7a97ace5"}	2023-10-03 14:20:05.540214+00	2023-10-03 14:20:05.540214+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
88dbe09e-7de7-4e35-9d08-f7a64c7229af	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"0c499865-1993-4d57-a83a-116e4216bd95"}	2023-10-03 14:20:22.22154+00	2023-10-03 14:20:22.22154+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
5547580e-2bc6-456a-bdb6-e7fad37956d2	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"d3dc85c9-8511-475f-a424-816e01dae44a"}	2023-10-03 14:20:35.647682+00	2023-10-03 14:20:35.647682+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
a0c917ce-4a2f-4bc5-86c7-5b4dde1e9321	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"3a8e0c8d-79dc-4837-ae59-ac0e0c6d8be7"}	2023-10-03 14:21:30.441572+00	2023-10-03 14:21:30.441572+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
31618a09-1c19-46d7-a701-79752bb32774	Krishna Singh sent you an invitation to a date on October 3rd	Event invitation	unread	{"action":"invite","event_id":"183dda29-5e81-4097-9950-58349fdaa0b4"}	2023-10-03 14:21:49.796622+00	2023-10-03 14:21:49.796622+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
5330172f-5ea5-4ef2-82af-dea61b92e692	Krishna Singh accepted your invitation to a date on October 4th	Event invitation update	unread	{"action":"invite","event_id":"fbfb57af-c4c2-4a14-9bbe-6fd325a3eb05"}	2023-10-04 05:25:21.699564+00	2023-10-04 05:25:21.699564+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
65112526-2a1a-4e5d-b59f-9896fde2b4bd	@KrishnaSingh has accepted your friend request	Friend request update	unread	{"friendship_id":"fb8821c0-7f83-4e1f-a524-9cae3be130c2"}	2023-10-06 07:14:27.244101+00	2023-10-06 07:14:27.244101+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2
933ebcee-19ab-45fa-866b-b465b85206ea	Krishna Singh accepted your invitation to a date on October 6th	Event invitation update	unread	{"action":"invite","event_id":"ee4a0ea5-1f32-4ec0-a36d-508c234fc6d3"}	2023-10-06 07:16:35.235174+00	2023-10-06 07:16:35.235174+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2
78a469cb-2394-4494-a6dc-93cb919ba5f0	@ArisAu has accepted your friend request	Friend request update	unread	{"friendship_id":"bdb0cccd-1798-4022-bb07-7269b2c051cf"}	2023-10-12 09:19:08.327228+00	2023-10-12 09:19:08.327228+00	bdb0cccd-1798-4022-bb07-7269b2c051cf
c0c15e8f-29ee-4ada-8237-138117b7e680	@RayOng has accepted your friend request	Friend request update	unread	{"friendship_id":"724e0cde-1a97-4d4e-80c2-bec4cde02b3b"}	2023-10-12 13:30:39.336714+00	2023-10-12 13:30:39.336714+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
1000f14f-5f31-4600-9b58-ffb36426fa8a	User Test sent you an invitation to a date on October 15th	Event invitation	unread	{"action":"invite","event_id":"2b0a5b63-0715-47cc-90dd-258072613c51"}	2023-10-12 14:36:36.526871+00	2023-10-12 14:36:36.526871+00	9e78770f-46ff-4a48-b7c2-46f42b728c19
76fbdea8-5bf5-4609-8935-2f9b8f0f960a	Ray Ong accepted your invitation to a date on October 13th	Event invitation update	unread	{"action":"invite","event_id":"6f0f0482-a3ea-40db-9a51-d0f32c5709c0"}	2023-10-13 09:01:38.063719+00	2023-10-13 09:01:38.063719+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
0e648cf5-5f97-47f0-9cc6-ba53adde206e	Krishna Kumar accepted your invitation to a date on October 9th	Event invitation update	read	{"action":"invite","event_id":"c8e2ea45-304c-4873-8aed-2dc6e4e3cd1d"}	2023-10-09 07:25:36.144898+00	2023-10-09 07:25:36.144898+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
9c404bf8-fe32-4327-8ea1-d5f48ccb7f96	@SandboxProject has sent a friend request to you	Friend request	read	{"friendship_id":"dd527457-5404-4a88-813a-a53a6135a808"}	2023-09-29 06:58:16.621534+00	2023-09-29 06:58:16.621534+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
5f0f9f70-979f-461d-a435-bc79ec66abb5	@GauravBhargava has sent a friend request to you	Friend request	read	{"friendship_id":"feca5824-2205-4cfa-885c-5bcb492172a4"}	2023-09-29 09:44:19.994747+00	2023-09-29 09:44:19.994747+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
34c340f9-d860-44ad-9a3d-790bee9d1804	Sateesh Raghuwanshi sent you an invitation to a date on 2023-09-30	Event invitation	read	{"action":"invite","event_id":"f2ef5a40-7aa8-4811-ac4c-9d47a779c4b1"}	2023-09-30 09:05:32.711119+00	2023-09-30 09:05:32.711119+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
afceb9ca-09b5-41f3-bc42-68cbdab78edf	Sateesh Raghuwanshi accepted your invitation to a date on 2023-10-01	Event invitation update	read	{"action":"invite","event_id":"62b89a56-4774-4149-8f68-010af4a740c1"}	2023-09-30 10:15:23.868038+00	2023-09-30 10:15:23.868038+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
ab48a687-9571-4a0c-a8b4-b04b2ab8751d	Sateesh Raghuwanshi accepted your invitation to a date on October 3rd	Event invitation update	read	{"action":"invite","event_id":"154236a2-caf4-4c27-9313-01d91ca92692"}	2023-10-03 06:47:43.791391+00	2023-10-03 06:47:43.791391+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
e7f4c5c4-39b0-43c2-bc79-33ea98456e9c	KrishnaPal Singh accepted your invitation to a date on October 3rd	Event invitation update	read	{"action":"invite","event_id":"ba217484-9483-4c15-8788-ea6a078dada3"}	2023-10-03 06:55:24.471725+00	2023-10-03 06:55:24.471725+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
959198be-13ab-4700-8406-b625398ad3a9	Sateesh Raghuwanshi sent you an invitation to a date on October 5th	Event invitation	read	{"action":"invite","event_id":"ca6572c2-ea00-4374-8900-a3c6b07057b6"}	2023-10-03 12:54:28.545929+00	2023-10-03 12:54:28.545929+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
64cf8806-5e80-4b8d-b0c5-4564daeebe2b	Sateesh Raghuwanshi accepted your invitation to a date on October 3rd	Event invitation update	read	{"action":"invite","event_id":"e7c8749b-8078-4148-b4d6-d8b2c6105391"}	2023-10-03 13:02:24.88603+00	2023-10-03 13:02:24.88603+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
16e599f0-6c29-4667-a456-268692108468	@NehaTiwari has accepted your friend request	Friend request update	read	{"friendship_id":"a14b5d88-bfc5-44c5-9a57-9d25022a2c75"}	2023-10-03 15:00:04.301545+00	2023-10-03 15:00:04.301545+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
f81c1910-47c6-47ce-bfab-dc708ca9025d	Neha Tiwari accepted your invitation to a date on October 3rd	Event invitation update	read	{"action":"invite","event_id":"cca234a4-261c-4a63-8e32-22721ede6a4b"}	2023-10-03 15:00:59.438469+00	2023-10-03 15:00:59.438469+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
34761723-7339-41d2-a92e-7b1cc81c9858	@IsadateTest has accepted your friend request	Friend request update	read	{"friendship_id":"a14b5d88-bfc5-44c5-9a57-9d25022a2c75"}	2023-10-05 14:06:57.746992+00	2023-10-05 14:06:57.746992+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
13d46fde-2952-4fe2-aa3d-ff6f9cb0768f	@SatendraPrajapati has accepted your friend request	Friend request update	read	{"friendship_id":"a14b5d88-bfc5-44c5-9a57-9d25022a2c75"}	2023-10-05 14:26:27.846415+00	2023-10-05 14:26:27.846415+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
0069467b-4640-4f96-b522-9441f7d5f74e	Isadate Test accepted your invitation to a date on October 9th	Event invitation update	read	{"action":"invite","event_id":"c921e731-743e-4e4b-bf0d-725fcd714deb"}	2023-10-09 07:21:13.705512+00	2023-10-09 07:21:13.705512+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
2fd693d6-969d-4f23-90c9-9c32e6b53c2e	@XyzZx has accepted your friend request	Friend request update	read	{"friendship_id":"57d90944-e284-46c8-856b-ac753ae3f7b3"}	2023-10-16 07:12:11.339925+00	2023-10-16 07:12:11.339925+00	57d90944-e284-46c8-856b-ac753ae3f7b3
fd8489aa-9649-4563-9507-6684b73eb93b	Zyx Xyz accepted your invitation to a date on October 16th	Event invitation update	unread	{"action":"invite","event_id":"b4fb3cef-8795-45dc-b0c6-47c522a13d05"}	2023-10-16 09:15:06.805733+00	2023-10-16 09:15:06.805733+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
8c41900d-ae8d-4ff4-bd5f-462e299bafee	Zyx Xyz accepted your invitation to a date on October 16th	Event invitation update	unread	{"action":"invite","event_id":"a157e5b4-7dac-4f46-8789-2652d23af688"}	2023-10-16 09:15:10.714893+00	2023-10-16 09:15:10.714893+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
5f9228b4-36a9-4bc4-a6e1-730697a8233e	Zyx Xyz accepted your invitation to a date on October 17th	Event invitation update	unread	{"action":"invite","event_id":"670297fd-595a-4548-acca-c996343b4912"}	2023-10-16 09:15:18.260546+00	2023-10-16 09:15:18.260546+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
4d7de5df-2764-4f31-8ad5-b3fbeeeebe60	Zyx Xyz accepted your invitation to a date on October 18th	Event invitation update	unread	{"action":"invite","event_id":"59709b47-4767-44ba-881a-e3a72b4a2f97"}	2023-10-16 09:15:21.963949+00	2023-10-16 09:15:21.963949+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
68a28ccc-50c5-4e55-885d-b0489743204d	Zyx Xyz accepted your invitation to a date on October 18th	Event invitation update	unread	{"action":"invite","event_id":"59709b47-4767-44ba-881a-e3a72b4a2f97"}	2023-10-16 09:15:22.507891+00	2023-10-16 09:15:22.507891+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
5496d96a-95af-4301-b68a-ca495c1d59fc	Zyx Xyz accepted your invitation to a date on October 19th	Event invitation update	unread	{"action":"invite","event_id":"bb94e2cd-5742-4e32-8367-f256df496aaf"}	2023-10-16 09:15:25.729792+00	2023-10-16 09:15:25.729792+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
b76baa3e-9beb-4b73-8623-d54eb7b5d3fb	Zyx Xyz accepted your invitation to a date on October 19th	Event invitation update	unread	{"action":"invite","event_id":"bb94e2cd-5742-4e32-8367-f256df496aaf"}	2023-10-16 09:15:26.369244+00	2023-10-16 09:15:26.369244+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
9ceeea85-988b-415b-a79a-72026eb151c0	Zyx Xyz accepted your invitation to a date on October 20th	Event invitation update	unread	{"action":"invite","event_id":"15f16921-db90-4b55-ae3e-3b733aae1d18"}	2023-10-16 09:16:02.193004+00	2023-10-16 09:16:02.193004+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
71ae12fe-e479-44a6-b8cc-1668b0fcdd41	Zyx Xyz accepted your invitation to a date on October 21st	Event invitation update	unread	{"action":"invite","event_id":"fa34f2af-dadf-4942-9e36-cd03aca2295d"}	2023-10-16 09:16:08.218042+00	2023-10-16 09:16:08.218042+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
777fd19d-455d-4238-8286-283adf5815dd	Zyx Xyz accepted your invitation to a date on October 22nd	Event invitation update	unread	{"action":"invite","event_id":"b7dacf18-fa70-401a-829e-f9cd1350fdbe"}	2023-10-16 09:16:13.976832+00	2023-10-16 09:16:13.976832+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
d1ace963-1e88-480e-97ce-67fd5f346b2a	Zyx Xyz accepted your invitation to a date on October 22nd	Event invitation update	unread	{"action":"invite","event_id":"b7dacf18-fa70-401a-829e-f9cd1350fdbe"}	2023-10-16 09:16:15.086011+00	2023-10-16 09:16:15.086011+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
0e93a6ef-1ee6-4c0d-b0b3-b8e5cc1e5962	Zyx Xyz sent you an invitation to a date on October 16th	Event invitation	unread	{"action":"invite","event_id":"fc740463-09ca-4286-820c-e513251df0d2"}	2023-10-16 09:26:03.587348+00	2023-10-16 09:26:03.587348+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
11d5a79b-f129-4fb4-8c30-94b446f4f03b	Ray Ong accepted your invitation to a date on October 17th	Event invitation update	unread	{"action":"invite","event_id":"3b8c4ee6-d5b0-46bb-86b9-f38f66cc8fb2"}	2023-10-16 16:18:49.162258+00	2023-10-16 16:18:49.162258+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
cac5b986-fe26-480c-a4c3-d8c3b8e4f258	Ray Ong accepted your invitation to a date on October 18th	Event invitation update	unread	{"action":"invite","event_id":"b62b8250-7239-4010-948f-06aaa32e1052"}	2023-10-18 10:38:00.798849+00	2023-10-18 10:38:00.798849+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
ab4b1c8d-119e-44bb-8826-9081841b488d	Ray Ong accepted your invitation to a date on October 15th	Event invitation update	unread	{"action":"invite","event_id":"812a2949-9192-46f3-bedb-bc62cca3e3e5"}	2023-10-18 10:38:05.717446+00	2023-10-18 10:38:05.717446+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
82881de3-8dc6-4da0-b6e0-27b09e4daf9c	Ray Ong accepted your invitation to a date on October 14th	Event invitation update	unread	{"action":"invite","event_id":"b129be90-b323-4726-b7d8-c252ad75ad66"}	2023-10-18 10:38:09.184753+00	2023-10-18 10:38:09.184753+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
ab5aa11c-859e-420c-afef-43103252c93a	Ray Ong accepted your invitation to a date on October 15th	Event invitation update	unread	{"action":"invite","event_id":"48ebffbf-1e36-4e9d-8744-2f17afe69af6"}	2023-10-18 10:38:12.548562+00	2023-10-18 10:38:12.548562+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sessions" ("id", "device_id", "access_token", "created_at", "updated_at", "user_id") FROM stdin;
0926b300-5862-443b-b0e4-3f14ed55310b	cK8QtBEFCx34X-8_ZaqHp	46eab572-27ca-46b0-a091-b2f05f39f97e	2023-09-29 06:26:27.185098+00	2023-09-29 06:26:27.185098+00	dd527457-5404-4a88-813a-a53a6135a808
12bae739-f513-4652-a159-a873b3dc677c	OehNMMB-WiANprZv4cKiV	50cedb60-cbd2-439c-996a-feb9da213ff8	2023-09-29 07:28:23.755004+00	2023-09-29 07:28:23.755004+00	374ae3b6-926a-48ef-b0b1-5ac5eef68c2f
a607e6f6-a569-4eab-ab76-2b2a81b498ad	mNtERdBxDNIDz4KbA2obb	e895d7f3-05ce-4963-9878-2f4c91ec7379	2023-09-29 07:31:04.076491+00	2023-09-29 07:31:04.076491+00	b9662afc-a325-4d9a-81ce-593e81569b4f
01f8317c-cba1-4c44-b8ed-41157b995a30	YXqIzDEqug7OlLjNLKbr5	e37a9fc3-b466-448d-8be4-7f620ad58634	2023-09-29 07:35:45.763911+00	2023-09-29 07:35:45.763911+00	9ac99b85-3f98-456a-9c60-8a18c2055f60
1da56520-6c2e-471f-b03f-9b8c4b6770f3	oppof9pro	47b302dd-c9ee-4b5a-98a0-bb7375e054fa	2023-09-30 05:35:11.476962+00	2023-09-30 05:35:11.476962+00	c3287cc0-e3d8-4ddf-bf99-99a7784afec9
2c9eedf6-0dd7-429e-a2ee-41b87194a9b7	XTLN1iNKw9ekAzoLMUBI3	be292055-4c0b-4d88-bd17-284ac9ef01f0	2023-10-03 14:59:05.481078+00	2023-10-03 14:59:05.481078+00	5b5f4294-da38-4fc3-aa9b-21c40c13d7b1
226c6578-1616-4058-a368-d37044e321f7	3pfmT525BAdlU-jOrD1gZ	cdcccc49-add1-4f74-804a-584523895d98	2023-10-05 14:18:46.037896+00	2023-10-05 14:18:46.037896+00	feca5824-2205-4cfa-885c-5bcb492172a4
21baef7a-ff27-41cd-9e47-4ab772709c1b	HrzKSIUaPxOw_hhioEVCn	6b1b6078-a200-45fa-8200-71a28f2c113a	2023-10-05 14:25:13.553661+00	2023-10-05 14:25:13.553661+00	e4fc4e1a-038e-452a-98fd-16f79526df7d
2cf51ddb-d4fc-4075-9c78-f69a74e13114	IjySJ2BiNUoeGdbEkC3sU	90de8226-f287-4054-b8be-736740dd6ec2	2023-10-05 14:27:15.575042+00	2023-10-05 14:27:15.575042+00	4e1b4ece-0f8b-49b4-82f7-a2ea0d4eba77
d59c650c-278b-463c-8b85-ad270c63fce1	BzQUhZ5bVUeV4KpoOudVk	cb748cd5-f446-4221-a9f1-605e2fd606a0	2023-10-06 07:03:36.87397+00	2023-10-06 07:03:36.87397+00	b6d1446b-43cd-4215-a7d8-dd8f629b7bb7
4d871c6e-c542-41c8-aea0-56b332149983	muu2TOlyi0uDX-javm0-7	69275b4f-ffce-4685-96f9-58c604de1883	2023-10-06 07:05:30.517626+00	2023-10-06 07:05:30.517626+00	fb8821c0-7f83-4e1f-a524-9cae3be130c2
d141d897-618f-4353-a12f-125abbfd8f20	yY_WsUg9vu2EloGjJ0UXW	bd18f77a-d5cf-42da-a206-8c08826e5ac8	2023-10-09 07:24:53.538281+00	2023-10-09 07:24:53.538281+00	a14b5d88-bfc5-44c5-9a57-9d25022a2c75
26f93cb2-8153-4762-be74-7259ac435df7	N1ee71pGBwcofYDx236SW	5f62301e-675a-4310-b30e-ef6399cb4278	2023-10-12 09:36:28.46508+00	2023-10-12 09:36:28.46508+00	bdb0cccd-1798-4022-bb07-7269b2c051cf
10ae386b-e3c9-41ad-b49f-e7edeb9ab857	d2no2c2U08P7IpfyO_OM3	289d7ef3-75bc-4ffa-9646-92bf0122d503	2023-10-12 10:20:52.878426+00	2023-10-12 10:20:52.878426+00	9e78770f-46ff-4a48-b7c2-46f42b728c19
26bcdb20-f487-41d6-8a83-1e64bf073f54	dY-RPhx_iheY7v9cDXNqX	a9b4d87d-9ee7-441d-b1bc-5158c264544f	2023-10-12 12:25:10.290817+00	2023-10-12 12:25:10.290817+00	724e0cde-1a97-4d4e-80c2-bec4cde02b3b
7a8408b1-43cb-45bc-b64c-b00e1cca36d7	KmCSNP5f8HAPlKUwVMHca	2f91195a-c4de-475d-ae04-a1cf431bb97b	2023-10-12 12:32:57.72741+00	2023-10-12 12:32:57.72741+00	506f6e49-5b9e-4a31-b03c-92a6cd264cac
6af3eabe-bf48-4884-adef-8c6f2228d66f	6gK-t1GCLa1UikII3mPUW	79ea338a-a154-4f64-9dcb-4b77da61447f	2023-10-12 13:12:35.019487+00	2023-10-12 13:12:35.019487+00	90e15b72-7d81-4f04-a341-28087ac2a0f3
50340055-c4dc-4460-a29e-1c72aed5ed71	QtEe1GxUd_4E3iw7_Tvkd	87f55fa9-9f23-40a4-a17b-0e3b38091fba	2023-10-12 21:13:35.537197+00	2023-10-12 21:13:35.537197+00	c3013992-f792-4009-a8e5-7d2d93a7d32d
d0beab52-c47d-4147-b223-c12007be35c0	Lkl2Otha675ZQGLUkWkWt	18da2221-a117-4749-8053-2686cae03b97	2023-10-16 06:14:10.416801+00	2023-10-16 06:14:10.416801+00	7e386c31-dfac-4f14-8fb5-50da0406bb84
7b1a4ea2-dd39-4da3-a342-40613a537a43	WqKZfHc1dAZmoxvjZu3-X	5eeed13e-3727-4692-ad2c-ddc6912aa3a6	2023-10-16 07:56:11.902834+00	2023-10-16 07:56:11.902834+00	36ed1a4e-e3a2-4775-9512-08bea2459ab5
934a6bf8-c9d0-4167-a6b4-1843740d4719	RvYhJKZk-4sGSJh5uVxsG	8ca18634-fc2f-4341-8b48-f7b670ec2530	2023-10-16 09:09:56.090764+00	2023-10-16 09:09:56.090764+00	57d90944-e284-46c8-856b-ac753ae3f7b3
0f9c0b34-8aec-4020-a3d7-52fbbc8391e9	iuahlpEfyvGS-C2WeEo-r	c08bdc89-9aba-445e-a0ca-0313cf886f42	2023-10-16 12:17:36.712051+00	2023-10-16 12:17:36.712051+00	2048a71a-93a8-4720-a64c-0c225b8e0d6b
5e53e574-7b32-4e59-93f6-aed631e82506	bGYO-0iY-fIKmtSJM0IvD	b7804e96-1ba1-47a6-900c-fee700f5ed6c	2023-10-17 11:38:32.689697+00	2023-10-17 11:38:32.689697+00	da89cd94-7f3e-4941-aed8-c746e1164f9b
66d1186c-53a8-4fdb-9254-387aadc2ea20	cIOguS6Y3fnUQiT1vA0Xy	f5e3e9e8-417c-497b-aa16-dda010dd2170	2023-10-17 12:02:09.975925+00	2023-10-17 12:02:09.975925+00	4629cfc2-4a74-4b7d-8dd2-0d6643436006
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
