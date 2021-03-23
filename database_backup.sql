--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "HB";

--
-- Name: products; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost numeric,
    country_of_origin character varying
);


ALTER TABLE public.products OWNER TO "HB";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: HB
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO "HB";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: HB
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO "HB";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: HB
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO "HB";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: HB
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "HB";

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-03-19 19:42:50.486465	2021-03-19 19:42:50.486465
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.products (id, name, cost, country_of_origin) FROM stdin;
211	Durable Marble Gloves	100.02	Jersey
212	Practical Plastic Bottle	282.0	Sierra Leone
213	Enormous Marble Table	159.66	Nepal
214	Fantastic Plastic Bench	87.14	Guinea
215	Incredible Cotton Shirt	160.47	French Guiana
216	Ergonomic Linen Pants	124.2	Paraguay
217	Ergonomic Aluminum Knife	107.38	Malaysia
218	Intelligent Rubber Keyboard	2.13	Maldives
219	Heavy Duty Copper Hat	284.89	Mauritius
220	Ergonomic Bronze Watch	217.91	Congo
221	Aerodynamic Silk Gloves	251.5	Romania
222	Enormous Aluminum Shirt	40.07	Pitcairn Islands
223	Ergonomic Granite Bottle	207.33	Uruguay
224	Enormous Granite Computer	218.55	Australia
225	Sleek Iron Clock	71.89	Montenegro
226	Lightweight Leather Hat	143.66	Madagascar
227	Fantastic Concrete Knife	85.65	Madagascar
228	Enormous Linen Car	135.78	Brazil
229	Lightweight Silk Bench	42.67	Poland
230	Sleek Copper Shoes	215.85	Libyan Arab Jamahiriya
231	Sleek Copper Keyboard	88.48	Solomon Islands
232	Intelligent Copper Keyboard	214.79	Guinea-Bissau
233	Aerodynamic Leather Pants	73.4	Cocos (Keeling) Islands
234	Ergonomic Wooden Pants	277.63	Timor-Leste
235	Sleek Paper Computer	13.65	Bermuda
236	Rustic Aluminum Plate	9.83	Hong Kong
237	Aerodynamic Linen Shoes	135.09	Algeria
238	Lightweight Plastic Shoes	276.12	Saint Pierre and Miquelon
239	Sleek Marble Table	130.32	Armenia
240	Aerodynamic Leather Bottle	64.52	British Indian Ocean Territory (Chagos Archipelago)
241	Durable Silk Keyboard	136.88	Switzerland
242	Fantastic Wooden Wallet	233.24	Heard Island and McDonald Islands
243	Incredible Bronze Shoes	179.22	Bahrain
244	Awesome Granite Pants	48.03	Saint Martin
245	Mediocre Steel Gloves	232.18	Algeria
246	Small Aluminum Car	254.53	Wallis and Futuna
247	Mediocre Concrete Knife	196.15	Saint Barthelemy
248	Small Leather Clock	222.98	Bermuda
249	Sleek Paper Bag	256.53	Bolivia
250	Practical Aluminum Chair	290.43	Barbados
251	Mediocre Concrete Table	93.32	Solomon Islands
252	Fantastic Linen Coat	9.08	Tajikistan
253	Sleek Plastic Watch	239.7	Croatia
254	Aerodynamic Linen Keyboard	118.84	Kazakhstan
255	Fantastic Wool Chair	80.46	Malaysia
256	Enormous Leather Bench	0.33	Mauritania
257	Gorgeous Concrete Gloves	139.04	Armenia
258	Aerodynamic Steel Table	146.03	Gambia
259	Awesome Iron Watch	181.09	French Polynesia
260	Ergonomic Leather Wallet	166.56	Niger
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.reviews (id, author, content_body, rating, product_id) FROM stdin;
1002	Rev. Wilbert Murazik	AMAZING! Oh Joy! What A Treat!	5	211
1003	Jenny Hintz	AMAZING! Oh Joy! What A Treat!	5	211
1004	Rep. Kit Padberg	It was not the worst but I found it to be pretty bad.	2	211
1005	Chastity Gerlach	Actually pretty good, would buy again.	4	211
1006	Mrs. Steve White	Decent but not the best.	3	211
1007	Beverlee Ruecker	Actually pretty good, would buy again.	4	212
1008	Junior Nitzsche Sr.	Decent but not the best.	3	212
1009	Samara Doyle DO	It was not the worst but I found it to be pretty bad.	2	212
1010	Blaine Monahan	TERRIBLE! DO NOT BUY!	1	212
1011	Annamae Borer	Actually pretty good, would buy again.	4	212
1012	Glen Muller	TERRIBLE! DO NOT BUY!	1	213
1013	Deena Rosenbaum	Decent but not the best.	3	213
1014	Evan Sporer PhD	Actually pretty good, would buy again.	4	213
1015	Cody Bayer	TERRIBLE! DO NOT BUY!	1	213
1016	Lucien Padberg	Decent but not the best.	3	213
1017	Hailey Wolf	AMAZING! Oh Joy! What A Treat!	5	214
1018	Shiloh Nolan	TERRIBLE! DO NOT BUY!	1	214
1019	Jospeh Feest	TERRIBLE! DO NOT BUY!	1	214
1020	Dona Konopelski	Actually pretty good, would buy again.	4	214
1021	Dannielle Heller	Decent but not the best.	3	214
1022	Edward Schmitt VM	It was not the worst but I found it to be pretty bad.	2	215
1023	Jefferson Hauck	Actually pretty good, would buy again.	4	215
1024	Jody Jacobson	Decent but not the best.	3	215
1025	Anita Bergnaum	Decent but not the best.	3	215
1026	Paul Cormier	AMAZING! Oh Joy! What A Treat!	5	215
1027	Prof. Sherie Thompson	TERRIBLE! DO NOT BUY!	1	216
1028	Sen. Claud Kirlin	Decent but not the best.	3	216
1029	Lazaro Schmidt PhD	Actually pretty good, would buy again.	4	216
1030	Msgr. Williemae Jerde	It was not the worst but I found it to be pretty bad.	2	216
1031	Domingo Hudson	Decent but not the best.	3	216
1032	Elissa Mills	Actually pretty good, would buy again.	4	217
1033	Pres. Israel Jaskolski	It was not the worst but I found it to be pretty bad.	2	217
1034	Kiyoko Hodkiewicz	TERRIBLE! DO NOT BUY!	1	217
1035	Cathryn Veum VM	It was not the worst but I found it to be pretty bad.	2	217
1036	The Hon. Benedict Wintheiser	AMAZING! Oh Joy! What A Treat!	5	217
1037	Emmitt Conroy	Decent but not the best.	3	218
1038	Miss Ira Schulist	Actually pretty good, would buy again.	4	218
1039	Jake Beier	It was not the worst but I found it to be pretty bad.	2	218
1040	Zachary Cormier	Decent but not the best.	3	218
1041	Alonzo Daniel Sr.	AMAZING! Oh Joy! What A Treat!	5	218
1042	Modesto Lindgren Esq.	It was not the worst but I found it to be pretty bad.	2	219
1043	Arlen Ritchie	AMAZING! Oh Joy! What A Treat!	5	219
1044	Venita McCullough DC	AMAZING! Oh Joy! What A Treat!	5	219
1045	Lorna Oberbrunner	TERRIBLE! DO NOT BUY!	1	219
1046	Lavonia Kutch	Actually pretty good, would buy again.	4	219
1047	Erick McGlynn	Decent but not the best.	3	220
1048	Jami Hermiston	Decent but not the best.	3	220
1049	Dreama Nader	It was not the worst but I found it to be pretty bad.	2	220
1050	Erik Breitenberg	TERRIBLE! DO NOT BUY!	1	220
1051	Korey Rath PhD	AMAZING! Oh Joy! What A Treat!	5	220
1052	The Hon. Camellia Prohaska	Actually pretty good, would buy again.	4	221
1053	Ali Lind VM	TERRIBLE! DO NOT BUY!	1	221
1054	Corey Strosin	AMAZING! Oh Joy! What A Treat!	5	221
1055	Hobert Fahey	It was not the worst but I found it to be pretty bad.	2	221
1056	Everett Batz	Decent but not the best.	3	221
1057	Sterling Zieme	Decent but not the best.	3	222
1058	Kaci Ankunding	Decent but not the best.	3	222
1059	Stanton Brown	It was not the worst but I found it to be pretty bad.	2	222
1060	Ralph Rohan	AMAZING! Oh Joy! What A Treat!	5	222
1061	Edgar Kunze	It was not the worst but I found it to be pretty bad.	2	222
1062	Miss Samella Hessel	AMAZING! Oh Joy! What A Treat!	5	223
1063	Lizette Walter	It was not the worst but I found it to be pretty bad.	2	223
1064	Sen. Ila Daniel	AMAZING! Oh Joy! What A Treat!	5	223
1065	Samara Parker	Decent but not the best.	3	223
1066	Talia Stoltenberg II	It was not the worst but I found it to be pretty bad.	2	223
1067	Ara Stokes	AMAZING! Oh Joy! What A Treat!	5	224
1068	Robyn Christiansen	Actually pretty good, would buy again.	4	224
1069	Msgr. Ozzie Russel	Actually pretty good, would buy again.	4	224
1070	Earle Koelpin VM	TERRIBLE! DO NOT BUY!	1	224
1071	The Hon. Juliane Gislason	TERRIBLE! DO NOT BUY!	1	224
1072	Hung Willms	Actually pretty good, would buy again.	4	225
1073	Howard Predovic	Actually pretty good, would buy again.	4	225
1074	Ruth Toy	It was not the worst but I found it to be pretty bad.	2	225
1075	Paul Becker	AMAZING! Oh Joy! What A Treat!	5	225
1076	Kraig Labadie	TERRIBLE! DO NOT BUY!	1	225
1077	Ms. Suzan McDermott	AMAZING! Oh Joy! What A Treat!	5	226
1078	Chadwick Larkin	AMAZING! Oh Joy! What A Treat!	5	226
1079	Morton Lowe	Decent but not the best.	3	226
1080	Ricardo Kautzer	TERRIBLE! DO NOT BUY!	1	226
1081	Sharron Stiedemann	Decent but not the best.	3	226
1082	Shondra Gutmann	It was not the worst but I found it to be pretty bad.	2	227
1083	Fr. Marielle Heller	TERRIBLE! DO NOT BUY!	1	227
1084	Marion Bailey	TERRIBLE! DO NOT BUY!	1	227
1085	Jesusa Pacocha	TERRIBLE! DO NOT BUY!	1	227
1086	Jeanna Krajcik	AMAZING! Oh Joy! What A Treat!	5	227
1087	Rep. Jere Kiehn	Decent but not the best.	3	228
1088	Mia Hintz	AMAZING! Oh Joy! What A Treat!	5	228
1089	Clyde Boehm	It was not the worst but I found it to be pretty bad.	2	228
1090	Chuck Kirlin	Actually pretty good, would buy again.	4	228
1091	Edna Gerlach	Decent but not the best.	3	228
1092	Marilou Collier	It was not the worst but I found it to be pretty bad.	2	229
1093	Annemarie Mosciski	AMAZING! Oh Joy! What A Treat!	5	229
1094	Nolan Denesik	TERRIBLE! DO NOT BUY!	1	229
1095	Ligia Huel	TERRIBLE! DO NOT BUY!	1	229
1096	Pearle Bogisich	TERRIBLE! DO NOT BUY!	1	229
1097	Karlene Fadel	It was not the worst but I found it to be pretty bad.	2	230
1098	Dave Becker	AMAZING! Oh Joy! What A Treat!	5	230
1099	Miss Romona Batz	AMAZING! Oh Joy! What A Treat!	5	230
1100	Jean Nitzsche	Decent but not the best.	3	230
1101	Lindsey Hodkiewicz	It was not the worst but I found it to be pretty bad.	2	230
1102	Louis Legros	It was not the worst but I found it to be pretty bad.	2	231
1103	Cristin Yost	AMAZING! Oh Joy! What A Treat!	5	231
1104	Kelsi Walter	Decent but not the best.	3	231
1105	Lourdes Lueilwitz	AMAZING! Oh Joy! What A Treat!	5	231
1106	Heriberto Abernathy	AMAZING! Oh Joy! What A Treat!	5	231
1107	Denese Hermiston	It was not the worst but I found it to be pretty bad.	2	232
1108	Rory Howe	Decent but not the best.	3	232
1109	Marcelle Mayert	Actually pretty good, would buy again.	4	232
1110	Amb. Doloris Schulist	It was not the worst but I found it to be pretty bad.	2	232
1111	Candi Kling	TERRIBLE! DO NOT BUY!	1	232
1112	Alex Lind	TERRIBLE! DO NOT BUY!	1	233
1113	Dewey Senger	TERRIBLE! DO NOT BUY!	1	233
1114	Lucius Murray Ret.	Decent but not the best.	3	233
1115	Amb. Lloyd Rempel	Decent but not the best.	3	233
1116	Chanell Rogahn	It was not the worst but I found it to be pretty bad.	2	233
1117	Efrain Nitzsche	Actually pretty good, would buy again.	4	234
1118	Dee White DC	TERRIBLE! DO NOT BUY!	1	234
1119	Chelsea Kertzmann II	TERRIBLE! DO NOT BUY!	1	234
1120	Louetta Ankunding	It was not the worst but I found it to be pretty bad.	2	234
1121	Walter Lakin IV	AMAZING! Oh Joy! What A Treat!	5	234
1122	Delisa Mitchell	Actually pretty good, would buy again.	4	235
1123	Royal Schmeler	TERRIBLE! DO NOT BUY!	1	235
1124	Windy Powlowski	Actually pretty good, would buy again.	4	235
1125	Nichelle Pfeffer	AMAZING! Oh Joy! What A Treat!	5	235
1126	Jarvis Casper Jr.	TERRIBLE! DO NOT BUY!	1	235
1127	The Hon. Gerry Kozey	Actually pretty good, would buy again.	4	236
1128	Prof. Michaele Strosin	Decent but not the best.	3	236
1129	Ellsworth Koelpin	TERRIBLE! DO NOT BUY!	1	236
1130	Lonnie DuBuque Jr.	Actually pretty good, would buy again.	4	236
1131	Glenn Hirthe	Decent but not the best.	3	236
1132	Huong Hoeger	TERRIBLE! DO NOT BUY!	1	237
1133	Terry Skiles JD	Actually pretty good, would buy again.	4	237
1134	Fausto Yost	AMAZING! Oh Joy! What A Treat!	5	237
1135	Morton Walsh DVM	Decent but not the best.	3	237
1136	Mario Blanda	TERRIBLE! DO NOT BUY!	1	237
1137	Clifton Herzog	Decent but not the best.	3	238
1138	Melita Quigley	Actually pretty good, would buy again.	4	238
1139	Miguel Ledner	Decent but not the best.	3	238
1140	Kira Kris	TERRIBLE! DO NOT BUY!	1	238
1141	Bernice McGlynn	It was not the worst but I found it to be pretty bad.	2	238
1142	German Bartell CPA	Actually pretty good, would buy again.	4	239
1143	Chantal Sanford	Actually pretty good, would buy again.	4	239
1144	Blair Bogisich	AMAZING! Oh Joy! What A Treat!	5	239
1145	Rigoberto Lakin	Actually pretty good, would buy again.	4	239
1146	Agueda Shields	Actually pretty good, would buy again.	4	239
1147	Rodger Blanda Sr.	TERRIBLE! DO NOT BUY!	1	240
1148	Buffy Kling Ret.	TERRIBLE! DO NOT BUY!	1	240
1149	Merideth Green DC	Decent but not the best.	3	240
1150	Taisha Frami	Actually pretty good, would buy again.	4	240
1151	Darlena Gusikowski	TERRIBLE! DO NOT BUY!	1	240
1152	Lorenza Morissette	AMAZING! Oh Joy! What A Treat!	5	241
1153	Terrilyn Ritchie	Decent but not the best.	3	241
1154	The Hon. Cara Ullrich	Decent but not the best.	3	241
1155	Gov. Lilliana Powlowski	AMAZING! Oh Joy! What A Treat!	5	241
1156	Winfred Goldner	Decent but not the best.	3	241
1157	Sen. Clemente Krajcik	It was not the worst but I found it to be pretty bad.	2	242
1158	Arnulfo Wintheiser	Actually pretty good, would buy again.	4	242
1159	Laine McCullough	It was not the worst but I found it to be pretty bad.	2	242
1160	Julio Terry	Decent but not the best.	3	242
1161	Marisha Hagenes	Actually pretty good, would buy again.	4	242
1162	Sen. Magdalene Mann	It was not the worst but I found it to be pretty bad.	2	243
1163	The Hon. Magan Haley	Actually pretty good, would buy again.	4	243
1164	Gov. Rea Dietrich	AMAZING! Oh Joy! What A Treat!	5	243
1165	Gus O'Conner JD	AMAZING! Oh Joy! What A Treat!	5	243
1166	Brigid Hills	Actually pretty good, would buy again.	4	243
1167	Cassie Batz	Actually pretty good, would buy again.	4	244
1168	Ellen Crist	TERRIBLE! DO NOT BUY!	1	244
1169	Altha West DVM	Decent but not the best.	3	244
1170	Johnathon Schamberger	Decent but not the best.	3	244
1171	Trent Mertz	AMAZING! Oh Joy! What A Treat!	5	244
1172	Reynaldo Torphy	Decent but not the best.	3	245
1173	Erica O'Kon	It was not the worst but I found it to be pretty bad.	2	245
1174	Emmanuel Mayert	It was not the worst but I found it to be pretty bad.	2	245
1175	Oleta Shanahan	Decent but not the best.	3	245
1176	The Hon. Ernesto Borer	TERRIBLE! DO NOT BUY!	1	245
1177	Dominic Jaskolski	TERRIBLE! DO NOT BUY!	1	246
1178	Travis Vandervort	TERRIBLE! DO NOT BUY!	1	246
1179	Delores Hackett MD	It was not the worst but I found it to be pretty bad.	2	246
1180	Huey Weissnat	Actually pretty good, would buy again.	4	246
1181	Adolfo Lubowitz Ret.	TERRIBLE! DO NOT BUY!	1	246
1182	Lonny Schultz	It was not the worst but I found it to be pretty bad.	2	247
1183	Joe Quitzon	Decent but not the best.	3	247
1184	Jorge Schroeder	Actually pretty good, would buy again.	4	247
1185	Mayra Nader	TERRIBLE! DO NOT BUY!	1	247
1186	Stephine Price	TERRIBLE! DO NOT BUY!	1	247
1187	Lino Crooks III	AMAZING! Oh Joy! What A Treat!	5	248
1188	Esteban Klein	AMAZING! Oh Joy! What A Treat!	5	248
1189	Gertude Champlin	AMAZING! Oh Joy! What A Treat!	5	248
1190	Ezekiel Howe	Decent but not the best.	3	248
1191	Basil Tillman Jr.	It was not the worst but I found it to be pretty bad.	2	248
1192	Conrad Sauer	Decent but not the best.	3	249
1193	Elwanda Hand VM	TERRIBLE! DO NOT BUY!	1	249
1194	Clyde Aufderhar MD	Actually pretty good, would buy again.	4	249
1195	Shae Keebler	It was not the worst but I found it to be pretty bad.	2	249
1196	Gladys Yundt	Actually pretty good, would buy again.	4	249
1197	Nichol Simonis V	Decent but not the best.	3	250
1198	Spring Legros	AMAZING! Oh Joy! What A Treat!	5	250
1199	Fr. Kenneth Lebsack	Decent but not the best.	3	250
1200	Kasey Volkman	TERRIBLE! DO NOT BUY!	1	250
1201	Gov. Twyla Beatty	It was not the worst but I found it to be pretty bad.	2	250
1202	Bryon Kreiger	TERRIBLE! DO NOT BUY!	1	251
1203	Ailene Gutkowski DC	Actually pretty good, would buy again.	4	251
1204	Elliot Williamson	AMAZING! Oh Joy! What A Treat!	5	251
1205	Adelia Windler II	Actually pretty good, would buy again.	4	251
1206	Deloise Bechtelar	Decent but not the best.	3	251
1207	Sonny Prohaska	Decent but not the best.	3	252
1208	Aundrea Walsh	TERRIBLE! DO NOT BUY!	1	252
1209	Haydee Connelly	Decent but not the best.	3	252
1210	The Hon. Ray Yundt	TERRIBLE! DO NOT BUY!	1	252
1211	Jamey D'Amore	It was not the worst but I found it to be pretty bad.	2	252
1212	Ms. Bryon Trantow	Actually pretty good, would buy again.	4	253
1213	Detra Jacobs	AMAZING! Oh Joy! What A Treat!	5	253
1214	Cythia Heaney	AMAZING! Oh Joy! What A Treat!	5	253
1215	Melodee Howell	Actually pretty good, would buy again.	4	253
1216	Candyce Jast	Actually pretty good, would buy again.	4	253
1217	Kareem Schimmel	AMAZING! Oh Joy! What A Treat!	5	254
1218	Rosario Ebert	Actually pretty good, would buy again.	4	254
1219	Manual Kessler	AMAZING! Oh Joy! What A Treat!	5	254
1220	Allan Murphy	Decent but not the best.	3	254
1221	Mr. Yajaira Klocko	Decent but not the best.	3	254
1222	Lavone Ondricka I	Decent but not the best.	3	255
1223	Msgr. Sandee Becker	TERRIBLE! DO NOT BUY!	1	255
1224	Chauncey Klocko	AMAZING! Oh Joy! What A Treat!	5	255
1225	Setsuko Lesch LLD	Actually pretty good, would buy again.	4	255
1226	Jerrod Rodriguez	Decent but not the best.	3	255
1227	Curtis Daugherty DVM	It was not the worst but I found it to be pretty bad.	2	256
1228	Nada Ebert	Decent but not the best.	3	256
1229	Missy Jast	It was not the worst but I found it to be pretty bad.	2	256
1230	Miranda Shields	Actually pretty good, would buy again.	4	256
1231	Luis Bernhard	AMAZING! Oh Joy! What A Treat!	5	256
1232	Jesica Tromp	It was not the worst but I found it to be pretty bad.	2	257
1233	Lorene Emmerich	Actually pretty good, would buy again.	4	257
1234	Petronila Osinski	It was not the worst but I found it to be pretty bad.	2	257
1235	Rosella Johns	AMAZING! Oh Joy! What A Treat!	5	257
1236	Sen. Nicolasa Jones	It was not the worst but I found it to be pretty bad.	2	257
1237	Angelia Schulist	Decent but not the best.	3	258
1238	Shirlene Schiller	AMAZING! Oh Joy! What A Treat!	5	258
1239	Allyson Miller	TERRIBLE! DO NOT BUY!	1	258
1240	Faustino Keebler	Decent but not the best.	3	258
1241	Farrah Rempel	TERRIBLE! DO NOT BUY!	1	258
1242	Vivienne Miller	Decent but not the best.	3	259
1243	Elton Gleason Sr.	Decent but not the best.	3	259
1244	Dario Stark	AMAZING! Oh Joy! What A Treat!	5	259
1245	Hilario O'Conner	TERRIBLE! DO NOT BUY!	1	259
1246	Miss Terica Skiles	It was not the worst but I found it to be pretty bad.	2	259
1247	Ms. Babette Crona	It was not the worst but I found it to be pretty bad.	2	260
1248	Destiny Harris	Actually pretty good, would buy again.	4	260
1249	Nobuko Brekke	It was not the worst but I found it to be pretty bad.	2	260
1250	Zulma MacGyver	Decent but not the best.	3	260
1251	Rosalind Funk MD	It was not the worst but I found it to be pretty bad.	2	260
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.schema_migrations (version) FROM stdin;
20210319174050
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.products_id_seq', 260, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1251, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

