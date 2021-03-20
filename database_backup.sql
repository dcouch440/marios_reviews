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
6	Gorgeous Concrete Shoes	34.46	Cape Verde
7	Mediocre Linen Bag	120.43	Albania
8	Mediocre Cotton Keyboard	42.34	Saint Martin
9	Awesome Steel Bag	213.47	Cook Islands
10	Fantastic Concrete Gloves	244.65	Liechtenstein
11	Sleek Rubber Shirt	127.73	Turks and Caicos Islands
12	Sleek Aluminum Gloves	85.78	Saudi Arabia
13	Aerodynamic Leather Car	4.96	Tokelau
14	Heavy Duty Granite Computer	57.39	Benin
15	Awesome Steel Bottle	68.1	French Southern Territories
16	Lightweight Leather Pants	291.62	Saint Lucia
17	Practical Wooden Hat	247.05	Cayman Islands
18	Enormous Cotton Bottle	149.66	Niger
19	Incredible Concrete Plate	66.53	Gibraltar
20	Durable Plastic Car	191.35	Sri Lanka
21	Ergonomic Concrete Pants	198.49	Singapore
22	Enormous Concrete Shirt	284.52	Mali
23	Awesome Steel Shirt	69.94	Gabon
24	Fantastic Concrete Table	6.18	Sierra Leone
25	Heavy Duty Aluminum Keyboard	36.31	Russian Federation
26	Incredible Plastic Clock	132.25	Isle of Man
27	Awesome Marble Table	89.3	Lithuania
28	Incredible Cotton Coat	244.44	Liechtenstein
29	Gorgeous Linen Computer	271.97	Seychelles
30	Practical Wool Shoes	172.78	Honduras
31	Aerodynamic Steel Shirt	104.03	Bahamas
32	Lightweight Wooden Pants	140.02	Equatorial Guinea
33	Rustic Bronze Computer	148.96	Saint Pierre and Miquelon
34	Sleek Linen Shoes	102.07	Turks and Caicos Islands
35	Practical Linen Table	277.38	Saint Martin
36	Fantastic Rubber Knife	67.64	Netherlands Antilles
37	Heavy Duty Marble Coat	219.3	Cyprus
38	Ergonomic Concrete Lamp	161.14	Antarctica (the territory South of 60 deg S)
39	Awesome Linen Wallet	190.75	Barbados
40	Ergonomic Wooden Bench	236.96	Peru
41	Heavy Duty Bronze Keyboard	105.7	Niue
42	Practical Cotton Bottle	18.32	Netherlands
43	Fantastic Steel Knife	62.1	Ecuador
44	Incredible Paper Chair	152.22	Mayotte
45	Lightweight Wool Bottle	290.64	Netherlands Antilles
46	Incredible Cotton Bag	157.43	Papua New Guinea
47	Rustic Paper Gloves	130.91	United Arab Emirates
48	Aerodynamic Silk Clock	0.44	Italy
49	Lightweight Leather Bag	242.33	Serbia
50	Heavy Duty Iron Plate	286.46	Spain
51	Mediocre Granite Knife	236.4	Austria
52	Incredible Leather Pants	23.79	Norfolk Island
53	Small Granite Table	174.47	Malaysia
54	Awesome Aluminum Plate	150.02	Gambia
55	Rustic Wool Bench	7.5	Jamaica
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.reviews (id, author, content_body, rating, product_id) FROM stdin;
1	Mckinley Yost	Exercitationem ut dolores est est incidunt alias molestias facilis quisquam dolorum deleniti neque voluptatibus qui quia quia minima.	2	6
2	Debrah Flatley MD	Ullam nihil quasi dolore nihil quos voluptas vel in et qui.	1	6
3	Teddy McClure	Illo quia architecto facilis tempora exercitationem doloribus in ipsum aliquam.	2	6
4	Jarred Renner	Aut ab in magni aut et est itaque quam et totam odio qui.	4	6
5	Pia D'Amore	Minus occaecati non est voluptates quod ut nemo temporibus quia quo sint voluptas consequuntur ut sit vel.	1	6
6	Sherman Corwin	Ut quam suscipit animi ut repellendus porro molestias sed omnis qui fuga quae est rerum enim dignissimos soluta non.	5	7
7	Genaro Schultz	Sequi possimus quasi saepe quae repellendus tempore quis dolores explicabo enim fugit laboriosam omnis assumenda.	3	7
8	Margaret Kshlerin	Et distinctio aut suscipit labore optio debitis omnis voluptatem blanditiis assumenda animi ea.	3	7
9	Lyndsay Mraz	Autem facilis qui consequatur rem quia eaque incidunt laudantium optio.	4	7
10	Karyl VonRueden	Molestias earum sequi sit officiis ad recusandae aut dolore facere laborum assumenda corporis.	2	7
11	Dewey Reinger	Dolor beatae deleniti consequatur unde vel labore ut dolor tenetur sunt ea culpa qui dolore.	4	8
12	Kayleigh Funk	Deleniti exercitationem laboriosam asperiores corporis est modi nostrum eaque aliquam sint odit rerum eum.	3	8
13	Jerrod Walter	Numquam qui et blanditiis optio laborum enim beatae error architecto modi mollitia debitis.	5	8
14	Fr. Freddie Schinner	Dicta error eius ipsam mollitia pariatur iste quasi ea quis eum minus eligendi at quas ea.	4	8
15	Rev. Lane Osinski	Velit nesciunt consequatur adipisci facilis id deserunt velit et nisi quod at aut et repellat enim illo in.	2	8
16	Selina Schamberger	Et aliquid suscipit amet quia iure veritatis vel aut eos aut.	5	9
17	Rowena Kihn	Ut sint quia dolorum placeat mollitia nobis eum accusantium est dolorem enim reiciendis.	4	9
18	Kimiko Murazik Sr.	Quas et sit exercitationem cumque earum magnam impedit odit repudiandae quia molestiae quo.	1	9
19	Murray Stokes	Numquam sunt consequatur dolor quibusdam enim impedit facilis culpa adipisci et non at.	2	9
20	Cindy Kautzer II	Libero aut id ullam ducimus eius qui praesentium pariatur natus enim aut corrupti et ipsum consequatur aliquam.	5	9
21	Msgr. Melonie Nicolas	Accusamus et minus hic molestiae libero numquam modi fuga dolorum eaque consequuntur eum sunt voluptas perspiciatis.	1	10
22	Antione Kris V	Ipsa qui porro et quae qui suscipit rerum iure et omnis iusto maiores.	1	10
23	Mrs. Danilo Larson	Non ut aut in totam animi illum aliquid nisi sapiente incidunt quis pariatur consequuntur recusandae sunt.	3	10
24	Edie Jaskolski	Voluptatem et inventore esse animi porro optio velit accusamus sunt.	4	10
25	Rosendo Crist	Exercitationem architecto natus est velit nihil est saepe id id tempora doloribus non animi sint.	4	10
26	Garland McGlynn III	Ut est et placeat repellat voluptatem reiciendis est perspiciatis et aut.	1	11
27	Amb. Dalila Corkery	Accusantium hic cumque facere laudantium iure provident odit voluptate iusto enim sint quia unde doloremque et aperiam rerum mollitia.	5	11
28	Archie Pfannerstill	Consequatur architecto animi pariatur magni non perferendis alias optio perspiciatis reiciendis soluta voluptates tempore rerum harum.	2	11
29	Fr. Irwin Howe	Accusantium rerum sapiente et ipsum est voluptatibus consequatur eaque ipsa sunt est maiores reprehenderit inventore ut.	3	11
30	Antwan Schmeler Sr.	Fugiat ut est sunt ut et occaecati dicta temporibus fugit aut possimus recusandae qui facere odit voluptas.	2	11
31	Vicente Larkin	Voluptates sapiente animi voluptatem omnis repudiandae nostrum aut a voluptas temporibus unde recusandae molestiae ipsa est eos quo dolore.	4	12
32	Cheryle Hane	Quidem deserunt accusamus ipsa ab sit nisi exercitationem et sit accusantium non praesentium velit et occaecati.	3	12
33	Ms. Rene O'Keefe	Aut voluptatum corporis nemo quo itaque consectetur dignissimos ea sed laboriosam ullam.	1	12
34	Bertha Carter	Eum qui id tempore totam unde aspernatur dolor vero voluptas eos nam.	4	12
35	Burton Treutel	Voluptatibus et debitis id ad sed omnis velit inventore et sint reprehenderit aliquam quod.	2	12
36	Vertie Morar	Vero quisquam iusto similique quia laudantium atque deserunt ratione cumque dolorem sit molestias ut.	3	13
37	Columbus Hegmann	Harum laborum sint voluptatem sit aspernatur sed et aut voluptatibus laudantium quis totam voluptatum officia explicabo ut similique.	3	13
38	Hertha McLaughlin	Occaecati iure minima consequatur sint numquam quibusdam sit eius quo repudiandae molestiae velit nisi veritatis.	2	13
39	Donnie Conroy	Accusamus numquam eaque odio quia et blanditiis error voluptatum culpa nam.	5	13
40	Alden Corwin	Reiciendis inventore est repellendus quod velit dolore blanditiis aut temporibus enim quo quidem soluta accusamus quasi quam.	5	13
41	Alfredo Swaniawski	Repudiandae ut repellat molestias sed consequuntur facere ut beatae nisi voluptates sed soluta illum ut.	4	14
42	Deandre Nolan	Quo et in aut ipsam ex animi cum dignissimos modi quam iusto.	3	14
43	Rick Gutkowski	Et reiciendis ipsa quis tenetur architecto voluptas est maiores veniam rerum eaque dolorum saepe.	3	14
44	Msgr. Doris Bartoletti	Quisquam sint dolor numquam voluptatem ut enim tempora quas totam explicabo quis distinctio doloremque odio exercitationem amet consequatur placeat.	3	14
45	Freddy Beier	Distinctio earum laborum architecto perspiciatis at consequatur suscipit quia iure amet non fugiat.	4	14
46	Rev. Alfred Feest	Cumque consequuntur quam ut totam nisi ut quidem ea quae quia libero quo autem expedita ut quia fugiat.	1	15
47	Micheal DuBuque	Ullam excepturi molestias ratione maxime consequatur quo ea tenetur optio omnis maiores vel velit perferendis quos qui.	5	15
48	Ismael Runte	Reprehenderit eligendi ut voluptas culpa ea ad eum quaerat saepe repudiandae voluptatem quas laborum qui animi.	3	15
49	Bethel Conn CPA	Quis sequi sit aut aut aut quia quis cum et.	1	15
99	Mrs. Vince Schumm	Ut minus maxime commodi doloremque dolor cupiditate et ut autem facilis suscipit esse.	4	25
50	Prof. Loreen Becker	Adipisci omnis repellendus eveniet saepe corporis magnam optio laboriosam nesciunt hic dolores earum amet laudantium.	5	15
51	Ervin Simonis	Odit sit exercitationem autem quisquam maiores ipsa unde perferendis non nesciunt corporis minima aliquam nemo sed.	3	16
52	Noe Jerde	Dolores repudiandae deserunt id modi commodi earum distinctio ratione corrupti ducimus dolorem illo doloremque qui iure delectus eos.	5	16
53	Ms. Jewel Klocko	Nobis et inventore quis sint exercitationem at qui quae non.	3	16
54	Garrett Ryan	Corrupti itaque non sunt consectetur ad autem tempore est pariatur quis rerum vel est et qui.	3	16
55	Prof. Jae Deckow	Cumque voluptates aut eos rerum enim et reprehenderit dolorem natus distinctio nihil atque sit hic quia in.	2	16
56	Cornelia Hilpert	Pariatur eos fuga dolorem aut sunt autem necessitatibus consequuntur nesciunt hic officia rem quidem praesentium sed.	2	17
57	Wilda Dicki	Deleniti sit fugit ratione aut omnis quos aperiam impedit cum magni et.	2	17
58	Nadia Lowe	Molestias placeat cumque maiores ipsam incidunt inventore nesciunt velit ut tenetur et autem dolorem sed consequuntur nulla.	3	17
59	Jeffrey Brekke	Minus aut expedita quod aliquid ab soluta qui quis voluptates.	2	17
60	Savanna Haley	Et ratione voluptas quae voluptatibus voluptatem aliquid ut commodi distinctio id saepe ipsa totam est.	4	17
61	Nickolas Davis DVM	Laboriosam mollitia aut autem occaecati reiciendis beatae quia rerum quia accusamus nihil aliquid dicta corrupti consequatur.	3	18
62	Leighann Wisozk	Ut nam fugit et dolorum ut aut eos est et placeat nostrum ea est.	5	18
63	Felix Cole	Aut fugit quas quo vero quisquam similique magnam accusantium incidunt.	5	18
64	Fr. Al Bogan	Libero neque quasi et eveniet error quisquam velit quia qui quam consequuntur sint.	2	18
65	Eloy Dietrich	Quas porro impedit dolor veniam quasi quia omnis doloremque nesciunt unde.	5	18
66	Larraine Windler	Explicabo accusantium earum qui soluta ut placeat dolores velit sed natus ipsa aspernatur ab odio quos possimus.	1	19
67	Pres. Nelson Hettinger	Nihil magni consequuntur explicabo quis temporibus qui atque rerum incidunt repudiandae facere.	1	19
68	Roberta Deckow PhD	Debitis tempore ipsam animi quis et similique consequuntur quia labore minus distinctio aut et minima et impedit qui.	2	19
69	Dr. Guillermo Ratke	Natus explicabo voluptatem ut sed voluptas velit est perspiciatis totam quas nihil ut unde aspernatur dolor magni quis.	3	19
70	Mr. Huey Turner	Autem velit minima debitis sit dolor qui consequatur incidunt qui delectus odit aliquam qui quam est.	3	19
71	Edmond Abbott	Harum veniam voluptatem assumenda dolores voluptas quas vitae voluptatum quia nam minus porro sit ut qui omnis.	2	20
72	Markus Braun	Suscipit est aut vero deserunt dicta omnis hic sit delectus debitis similique rem eum quibusdam dolores quas.	4	20
73	The Hon. Lloyd Brakus	Officiis rerum ut aspernatur dolore iure amet praesentium sint quia quia aliquam et.	3	20
74	Nigel Hagenes	Similique aut odit earum ad et ut voluptas voluptatum cum facere et rerum.	5	20
75	Dr. Thad Greenholt	Non error neque vero ullam voluptates tempora et sint voluptatem quia deserunt non esse.	3	20
76	Deirdre Vandervort DC	Totam dolore non enim corrupti est quae quas consectetur perferendis earum laudantium aliquam facere impedit consequatur nostrum omnis velit.	5	21
77	Audria Sporer	Atque quis quaerat omnis autem doloribus quasi odit nemo nam perferendis.	4	21
78	Keith MacGyver I	Et et ratione suscipit earum qui aperiam amet expedita sint doloribus excepturi hic perferendis aut esse sed occaecati sunt.	3	21
79	Darrin Grimes	Reprehenderit reiciendis repudiandae assumenda nihil porro nostrum consequatur id quo ipsam nam quis ratione.	3	21
80	Olin Huels	Libero perspiciatis corrupti rerum molestiae quo voluptatibus hic et debitis consequatur.	4	21
81	Gregorio Beatty	Reiciendis maxime sed cumque eius ab velit accusantium et et voluptatibus autem at.	4	22
82	Sherry Davis Sr.	Quam hic corrupti voluptas sit dolorum quos veniam et odio tenetur enim soluta molestiae quia expedita repellat.	3	22
83	Walton Mueller DVM	Hic odit rerum nihil sit optio laboriosam dolor eaque voluptas voluptatem vel animi vero.	4	22
84	Dr. Shantell Kuphal	Rerum amet cum earum consequatur consequuntur similique est consequatur aliquid ad debitis aut possimus quia ut vitae in.	1	22
85	Sharla Kulas	Incidunt dolores cupiditate dolor itaque facere sed temporibus ea dolore rerum hic.	5	22
86	Carmel Hayes	Excepturi sapiente fugit facilis numquam voluptatem aut dolorum dolores laudantium labore dolorem quae eos est et accusantium hic.	4	23
87	Rev. Antoine Quitzon	Cum tenetur nulla vero amet eveniet enim sint sunt ex nesciunt iusto sequi alias laudantium omnis.	1	23
88	Amb. Porter Reynolds	Quas architecto nemo sed dignissimos inventore autem consequatur dolorum quo molestiae eius error aut asperiores nostrum.	2	23
89	Gene Ledner	Rerum illum veniam et sed consectetur libero tempora pariatur quisquam esse nesciunt.	5	23
90	January Frami	Perspiciatis ipsum aspernatur enim quaerat nemo est provident nihil ducimus quo quae eligendi voluptates praesentium quis id.	5	23
91	Edmond Wintheiser	Repellat illum corporis autem omnis est et accusantium eius qui ut quibusdam aut.	5	24
92	Teddy Swift	Perspiciatis nihil laborum libero ut ea ut quis repellat ut ea est modi.	2	24
93	Malcolm Shanahan Sr.	Omnis soluta ratione consequuntur impedit at enim velit a blanditiis.	4	24
94	Carmella Hodkiewicz	Qui quia dignissimos est sapiente omnis ut dolorem eligendi explicabo.	1	24
95	Pres. Vaughn Kassulke	Iure est molestiae et quaerat velit sequi dolores excepturi corrupti sed qui soluta quidem voluptatem minus esse voluptas ipsa.	5	24
96	Willis Cartwright	Nulla minus commodi quia sit eos laborum quia aut eaque ab officia accusamus repudiandae itaque animi perspiciatis autem.	4	25
97	Janita Mraz	Suscipit alias est quo et voluptates velit voluptatibus quod sapiente aut fugiat.	5	25
98	Kristin Cruickshank IV	Ad sit ducimus quas maiores tenetur in sint deserunt ut qui nulla eligendi repudiandae rerum quis quaerat.	5	25
100	Pres. Ana Wyman	Quo pariatur reprehenderit consequuntur tempore eligendi perspiciatis adipisci doloribus dolores eaque non.	5	25
101	Jovan Kiehn	Et officiis quia cum itaque est adipisci exercitationem minus voluptates voluptatibus facilis aut nostrum dolorem ut unde saepe.	3	26
102	Wallace Kuhn	Consequuntur cumque qui non dolorum temporibus eveniet a assumenda omnis dolore.	3	26
103	Tashia Rutherford	Est excepturi et dolor ratione accusantium nesciunt quibusdam reprehenderit consequuntur qui minima neque modi consequatur aut quis ipsum aut.	3	26
104	Marnie Boyer	Cumque est aut sit inventore corrupti ut sapiente debitis esse omnis reiciendis adipisci quia saepe.	1	26
105	Merrilee Towne	Nostrum incidunt commodi deleniti aut dolorem in quisquam qui doloremque saepe illo quia consequatur vitae aspernatur et quis.	4	26
106	Stacy Kreiger Jr.	Perspiciatis voluptas ducimus molestiae similique provident eos nobis blanditiis est consequatur et voluptatem et voluptatum animi.	4	27
107	Shad Hilll	Illum qui aspernatur qui magnam dolorem asperiores et laboriosam et voluptatem est.	4	27
108	Bryan Thiel	Aut omnis repudiandae nostrum ut molestias voluptas ut sed non aut dolores soluta molestiae.	3	27
109	Julienne Heidenreich	Explicabo quas voluptatem qui at doloremque minima quos reiciendis consequatur nesciunt tempore nisi quae repellendus qui nihil.	5	27
110	Josue Schiller	Sapiente harum porro saepe molestiae exercitationem fugit illo quae id.	5	27
111	Velma Von PhD	Tempora consequuntur qui ea voluptatum et et provident quis deleniti facilis aliquid fuga.	3	28
112	Charleen Torphy	Quia dolores odit itaque eum sunt est ut eaque ratione aperiam.	5	28
113	Carrol Erdman	Sed vel voluptatem voluptatibus aperiam et necessitatibus non eius voluptatem eos eaque qui illum perferendis laboriosam ea maxime voluptas.	3	28
114	Agustin Mitchell	Iste et unde quidem molestias perspiciatis ut veritatis sequi architecto aspernatur dolorum iusto consequatur natus numquam quos.	3	28
115	Yolando Mohr	Ratione excepturi molestias culpa neque reprehenderit ab qui nihil facere voluptatem est hic asperiores optio ut rerum delectus.	3	28
116	Charisse Hayes II	Quia aliquid quia nihil totam velit ratione sint atque consequatur voluptatem occaecati voluptate a temporibus.	2	29
117	Amie Harris MD	Esse in voluptatem eos veniam delectus architecto rem officia quo non fugit explicabo nam soluta fuga nihil.	5	29
118	Gertie Aufderhar	Velit repellat corrupti vero ipsam iure non consectetur a ut ratione quia explicabo incidunt quia laudantium.	2	29
119	Lincoln Gerlach	Iste provident sed vel voluptates voluptatem vero omnis hic est quia repellendus quae dolores.	2	29
120	Princess Fadel	Veritatis ab nihil eius id perferendis inventore aliquid error quidem repellat sint officiis sapiente optio quia et placeat.	5	29
121	Lia Spencer	Voluptatem quibusdam exercitationem consequuntur repudiandae dignissimos dolore accusantium consequatur iste voluptates et aperiam voluptatum non architecto quia harum ratione.	2	30
122	Marshall Will VM	Porro rerum sed quo vel adipisci aut minus eos eligendi excepturi veritatis.	5	30
123	Rolland Haley	Vitae cupiditate beatae nisi consequuntur corporis dolorem nesciunt voluptatem laudantium perferendis a nam consequatur quam.	5	30
124	Russel Cremin	Pariatur sed voluptatem tempora officia adipisci voluptates iste quo in repellat voluptas optio vel.	4	30
125	Porfirio Trantow	Fugit rem quisquam error pariatur quia voluptates aperiam excepturi impedit eos.	5	30
126	The Hon. Erasmo Bernhard	Quam incidunt omnis id non et inventore et nostrum maiores vel ratione sed adipisci amet consequatur commodi vitae.	3	31
127	Asuncion Douglas	Numquam adipisci voluptas rerum tempore ab molestias blanditiis eos minus iusto sint quia et excepturi beatae aut debitis non.	2	31
128	Darren Stiedemann	Molestiae ad culpa harum recusandae error optio nihil debitis quidem molestiae earum qui necessitatibus repellat maxime.	2	31
129	Etsuko Koss	Ducimus maiores dolorum aut omnis numquam rem pariatur soluta illo aperiam.	5	31
130	Sharlene Predovic V	Fugiat velit odit et sit molestias doloribus maiores minima aut molestiae dignissimos accusamus voluptatem vitae aspernatur quo.	5	31
131	Kenisha Dickinson Esq.	Atque eaque dolorem at vitae reprehenderit soluta est unde vel quod non amet.	2	32
132	Samuel Zemlak	Unde incidunt qui quia dolore voluptas quas qui aut deserunt nam est harum sed quae accusantium.	1	32
133	Filiberto Champlin	Cupiditate veritatis rerum explicabo dolores aut architecto hic repellendus fuga est.	1	32
134	Twanda Braun CPA	Nulla occaecati perspiciatis aut veniam laboriosam quod temporibus officia odit sed quia.	3	32
135	Giuseppe Kub	Iusto quos quo et in exercitationem aliquid dicta voluptas alias assumenda mollitia tempore ipsa.	4	32
136	Olen Lynch	Et debitis ducimus aut eos laudantium reiciendis nesciunt minus hic voluptatum est aperiam dicta est accusantium animi autem.	2	33
137	Ms. Cortez Hartmann	Vitae iure eaque voluptatem debitis doloribus sunt tenetur molestiae molestiae illo voluptatem non animi occaecati ut sequi corrupti.	4	33
138	Keenan Sanford	Itaque non fugiat omnis consequuntur rerum et laudantium nobis voluptas.	5	33
139	Vincenzo Sauer LLD	Id sint dolor quod sint dicta quibusdam velit ut autem.	1	33
140	Lizbeth Rosenbaum	Reprehenderit voluptas cupiditate qui quia rerum quia beatae aliquam et harum quibusdam vitae debitis voluptates sapiente.	1	33
141	Dr. Lexie Lemke	Et fugiat id dolores autem adipisci est eius laudantium facere dicta quaerat omnis.	5	34
142	Ron Kertzmann	Sequi illo et recusandae ullam mollitia accusamus consequatur maxime dolorum officiis dolores rerum suscipit nihil inventore amet commodi quo.	3	34
143	Aletha Nolan	Odio consequatur praesentium recusandae autem omnis sed nulla ut quis labore quaerat.	2	34
144	Cristie Klocko LLD	Nemo qui tenetur dicta et at numquam eos non perspiciatis reprehenderit.	4	34
145	Mrs. Gudrun Grady	Qui labore et veritatis voluptates aut quam perspiciatis nihil et voluptate sed dolorum cupiditate cum sint fugiat.	5	34
146	Michel Wehner	Facere asperiores a quae velit et numquam error quisquam et eos possimus veritatis nulla.	4	35
147	Joey Orn	At modi qui sed nulla voluptas consectetur quas veritatis qui minima nobis sapiente voluptatem culpa officia rerum animi sint.	2	35
148	Ned Gerhold	Temporibus non aut aut eos perspiciatis itaque omnis vel aut dolores voluptatem aliquid et quia ducimus.	1	35
149	Leroy Osinski	Cumque distinctio dicta nostrum sed ut voluptatem eum sunt itaque dolorum omnis aliquam aspernatur magni est vero.	2	35
150	Mai Spencer	Nostrum at pariatur aspernatur dolores est qui consectetur ipsam laborum facere voluptatem ut quod dolor quia beatae fuga.	2	35
151	Cecilia Pagac	Delectus at totam ratione quo impedit dolorum ut modi accusamus inventore iusto est dolorem quisquam harum consequatur.	2	36
152	Andrew Barrows	Pariatur reiciendis repellendus dignissimos accusantium mollitia consequatur similique perferendis in dolorem tempora aut.	2	36
153	The Hon. Krystin Cormier	Ex quaerat porro laudantium earum veritatis unde repellat neque occaecati tempora quo.	5	36
154	Stewart Heller VM	Aut iure quia odio sunt eius reiciendis hic mollitia quae necessitatibus voluptatem atque vero est accusamus itaque consequatur fugiat.	1	36
155	Dallas Sauer	Enim dignissimos provident est officiis in unde veniam maiores sed cum quasi minus quia aspernatur quidem explicabo quod.	2	36
156	Rev. Lady Weber	Inventore pariatur sunt aspernatur et voluptas voluptas nobis itaque veritatis at repellendus hic reiciendis voluptas excepturi.	3	37
157	Jena Schoen	Laborum voluptatem alias illum rerum id quasi non id sunt et eos quaerat nisi nemo consequatur.	4	37
158	Elton Franecki JD	Et voluptatem officiis numquam repellat dolorem voluptas perspiciatis fugiat saepe.	2	37
159	Assunta Aufderhar I	Nisi esse deleniti rem qui hic sunt ut itaque aperiam.	1	37
160	Titus Lindgren	Asperiores debitis ad aspernatur enim voluptas quia minima unde quia qui voluptatibus assumenda rerum labore distinctio fugiat suscipit.	1	37
161	Msgr. Ernest Hermann	Ea et quo illo impedit eos omnis dolor quis iusto debitis.	1	38
162	Phil Flatley	Quidem quis inventore animi quisquam sed aliquam optio laborum nostrum repudiandae.	4	38
163	Fletcher Thompson	At dignissimos consequatur est ut ipsam ad assumenda dolore dolorem porro sed sit aut tenetur cumque sunt in.	3	38
164	Rod Keebler	Accusamus nostrum optio adipisci a enim ex omnis sint et eveniet voluptas ipsa.	3	38
165	Woodrow Welch	Dolores ut dolor error rerum sit sit possimus porro odio maxime sed.	4	38
166	Sen. Marilee Beatty	Dolore id autem quo aut doloremque facilis aut dolorem atque inventore fugit consectetur eaque.	3	39
167	Edgardo Beahan	Voluptatem temporibus hic ab assumenda quia odio id magni iusto aut ut excepturi illo in minima voluptas.	5	39
168	Amy O'Hara	Autem perferendis atque quia repudiandae voluptates illo illum veniam et earum distinctio qui corrupti qui.	4	39
169	Corie Morissette	Quaerat soluta amet autem voluptatum quam a harum id dignissimos aut voluptatem eius vero.	3	39
170	Karmen Lang	Voluptatum quasi et labore iste ut debitis nulla repellat quam veritatis perspiciatis optio fugiat quo.	2	39
171	Dorathy O'Hara	Consequuntur vero dicta et in molestias quam et ratione explicabo hic ut ex dolores aut dolorem distinctio blanditiis.	3	40
172	Ilene Rippin JD	Officia corrupti earum placeat molestiae quos inventore ab esse et rerum et exercitationem et ipsam.	1	40
173	Garfield O'Keefe	Esse nisi fuga autem sed eum cum maxime magnam tempore voluptatem.	3	40
174	Sebastian Shields	Ut sed commodi consequatur id ipsa qui ab natus illo quae quibusdam et alias voluptas dignissimos modi.	5	40
175	Shelby Okuneva	Iusto reiciendis perspiciatis unde et distinctio fuga aut sint qui omnis dignissimos dolores maxime expedita eaque molestias labore.	3	40
176	Rev. Jeanelle Shanahan	Provident voluptatem perspiciatis tenetur facilis dicta ab magni incidunt ex quae mollitia id ut.	5	41
177	Luigi Block Sr.	Minima atque et mollitia ea iusto quo magnam voluptatum quasi.	1	41
178	Guadalupe Rice	Laborum omnis voluptas ipsam nemo sit et animi ex architecto nostrum laudantium nisi qui asperiores provident nihil perspiciatis tempore.	3	41
179	Charolette Stehr	Recusandae distinctio harum reiciendis voluptatem repellat dolor temporibus mollitia doloribus in fuga blanditiis dolores.	2	41
180	Fr. Marcus Cronin	Facilis neque totam aliquam doloremque optio culpa labore ullam at earum fugiat repellendus ratione.	1	41
181	Toby McCullough	Fugit nisi atque expedita numquam dolore animi autem doloremque qui explicabo quo dolores dignissimos aut repellat ut molestias beatae.	2	42
182	Buford Wolf	Pariatur minus laborum sit porro distinctio et accusamus explicabo aut et at rerum rerum facilis.	2	42
183	Sha Dietrich	Architecto et alias ratione omnis delectus ipsa quia quia non repudiandae ut veritatis ad est.	2	42
184	Gena Stokes	Esse sit fugit ut doloribus est aspernatur eum nobis ipsam vel rerum dolores eos ut magnam reiciendis qui molestiae.	5	42
185	Douglas Grant	Fugit alias facere laborum qui nesciunt quis nobis illum accusamus ratione quis aut recusandae voluptas tenetur ea praesentium culpa.	1	42
186	Justin Prohaska	Eaque et praesentium odio magnam sunt rerum non dolorem numquam mollitia laboriosam at.	1	43
187	Kelley Yost	Quo aut aut voluptatum temporibus eum sequi quam magni quia assumenda aperiam vitae.	3	43
188	Joseph Fay	Facere dolor et eum beatae aspernatur eum et quas et provident distinctio est.	2	43
189	Jen Kuhic	Rem eaque iste quibusdam reiciendis laborum quasi expedita ut sed est ratione non autem quos enim odio consectetur voluptatum.	4	43
190	Chong Stroman	Omnis error optio voluptatem vel sint vitae inventore voluptas iure necessitatibus iusto et sed debitis ab aperiam.	3	43
191	Jerald Lang MD	Labore quaerat consectetur nulla illum asperiores accusantium et et et amet.	1	44
192	Deandre Mraz Sr.	Modi architecto magni ea sint deserunt et aut aperiam ducimus enim laborum illo officiis sint vel.	4	44
193	Jarrett Marks	Totam animi rerum dolorum adipisci occaecati sapiente quidem delectus alias aspernatur voluptatem sed et culpa ut ut.	3	44
194	Carole VonRueden	Laudantium voluptatem consequatur assumenda repellat rerum veritatis iusto dolorem dolorem aliquam repudiandae.	2	44
195	Shirley Effertz	Impedit non veritatis aut est ullam exercitationem ea velit corporis laboriosam placeat quo tenetur aliquid beatae qui et quod.	1	44
196	Rubye Haag	Est sit a cum dolore quasi quia hic quo quis deserunt assumenda vel qui vitae.	3	45
197	Meri Tillman	Tempora et iusto esse sit ex quidem mollitia ut dolore quia ratione et voluptatem.	4	45
198	Brenton Goyette Jr.	Cumque optio ullam ut esse velit ad excepturi animi sint qui aut modi dicta alias consequuntur.	1	45
199	Msgr. Arron Hane	Unde sit modi eveniet sunt dolor distinctio et mollitia fugiat qui est.	5	45
200	Thuy Anderson	Aut magnam quasi soluta assumenda porro enim odit perferendis accusantium necessitatibus mollitia nam cumque nostrum quod dolores officia.	2	45
201	Hank Buckridge	Velit dolorem nihil earum ipsa dignissimos possimus quas repellat autem eum laborum voluptas sint suscipit consequatur.	2	46
202	Wanita Bailey	Sint impedit cupiditate commodi deleniti nisi perspiciatis voluptatem explicabo ipsa ab illum quia.	3	46
203	Kieth Heidenreich	Est deleniti in occaecati modi labore expedita maiores non rerum vitae eos dignissimos eaque.	2	46
204	Francina Murazik	Modi maxime quaerat et illo enim quia quis adipisci repellat consequatur est.	1	46
205	Sheldon Lynch	Eos cum eum assumenda velit sed est consequuntur quo est.	2	46
206	Rosaura Weber	Consequuntur est quia similique culpa recusandae qui dolor dolorum eaque repellat odit omnis nisi cupiditate exercitationem.	1	47
207	Lyman Keeling	Qui nesciunt et et sint eum at et et placeat est et harum veritatis voluptas.	1	47
208	Dr. Shaina Beier	Quia ea quisquam aliquam aut in dolorum reiciendis alias quae sint eum soluta et dolor eius voluptatem rerum vel.	2	47
209	Randolph Larson	Nesciunt a ut et ipsam id quas autem iusto aut in.	3	47
210	Gertrud Stehr	Ut magni ut repellendus facere placeat eveniet dolore dolor eum cum molestiae soluta dolores inventore nobis.	4	47
211	Dr. Tyson Rempel	Rem accusantium quod repellendus delectus praesentium tenetur voluptatum velit quasi sed maxime vel in iure eos pariatur.	2	48
212	Mamie Lemke	Magni ut animi aut est soluta vitae iste labore cum fuga nihil.	1	48
213	Arleen Kassulke	Atque adipisci omnis nesciunt molestiae qui voluptates praesentium quis dolores neque pariatur et omnis eveniet cumque dolores.	5	48
214	Rep. Delmer Herzog	Ad eos ea eius inventore voluptatem dolores et maxime doloremque nam est aliquid ut unde aut.	5	48
215	Barton Durgan	Molestias sed nisi ratione repellat quasi quidem ut autem ex laudantium sequi omnis culpa sint explicabo magni ipsam facere.	1	48
216	Willie Becker	Sunt enim architecto rem corrupti atque et dolores libero nihil aut exercitationem.	5	49
217	Andrew Tromp	Et omnis expedita cumque quaerat temporibus doloribus amet dolorum suscipit esse odio fuga vel error consequatur.	5	49
218	Sindy Zulauf	Nihil dolores consequuntur sequi velit aperiam est est aut porro ex ipsam ullam consequatur in.	3	49
219	Sid Murray	Non dolorem aliquam expedita fugit nobis minima aperiam quia dolorum sed iste numquam dolores id est omnis.	1	49
220	Vito McKenzie I	Vero pariatur aut vel et deleniti error voluptate quibusdam eum provident non in repellendus voluptas rerum corrupti porro.	5	49
221	Lean Douglas	Quo totam repellat voluptatum quia qui autem sunt mollitia quasi magnam omnis sint.	5	50
222	Garrett Stamm Ret.	Asperiores ipsum rerum sed facilis optio quo ea non voluptas vel officiis rerum sapiente perspiciatis libero ea ut neque.	2	50
223	Tomeka McLaughlin	Est repellendus omnis voluptatem quia soluta eius fugiat ad eos nulla velit quisquam.	1	50
224	Jan Carroll	Libero error optio iusto quo et officiis natus quas neque.	3	50
225	Merna Pfannerstill	Aliquam est omnis quia unde tempore cupiditate maiores sed sint.	3	50
226	The Hon. Karina Greenholt	Maiores repellendus est veritatis eum soluta eius voluptatibus recusandae qui qui non explicabo quia qui ad.	2	51
227	Glenn Weissnat	Ut et placeat rerum voluptatem rem rerum soluta est vero fugiat sit corporis nobis quos voluptas ut eligendi.	5	51
228	Kenna Fahey Ret.	Harum sapiente ipsam in veniam sit enim sed rem expedita provident ea.	1	51
229	Amb. Fumiko Sawayn	Sint dolor et ullam mollitia earum recusandae perferendis et delectus sunt unde possimus autem.	1	51
230	Lashaun Weimann	Illo vel iure maxime labore dolorum vero delectus iste repellat inventore aspernatur minus provident facilis explicabo.	5	51
231	Lanny Koch	Voluptatem et consectetur omnis quisquam officiis eaque molestiae minima dolor explicabo mollitia nihil consequatur.	4	52
232	Elden Bednar	Dolor velit doloribus nam qui adipisci facere quas voluptatum maxime consequatur pariatur voluptatem autem officia numquam cumque voluptas dicta.	2	52
233	Kaycee Nicolas Esq.	Qui consequatur et pariatur vitae ratione unde aliquam quos quisquam quia ut accusantium minima voluptates laboriosam dolorum vero doloribus.	2	52
234	Maria Quitzon	Voluptatem qui labore error voluptatem aut vel aut et ipsam amet aut alias dolorem saepe.	1	52
235	Elmer Schowalter	Fugit non magnam quia nostrum accusamus et dolores eveniet dolores voluptas quaerat inventore aliquid exercitationem aliquam et sunt.	4	52
236	Mack Rolfson	Incidunt omnis ducimus rerum non quia doloribus odit dolor numquam est voluptate et doloremque porro molestiae eligendi veritatis nisi.	4	53
237	Toi Wisozk	Aut dolorem modi unde eius hic ullam explicabo eum odio error quos aut cum est enim porro.	5	53
238	Birgit Legros	Soluta culpa impedit numquam in assumenda et voluptatum iure consequuntur et omnis delectus.	2	53
239	Olin Block	Quis eum porro dolorum et quia modi necessitatibus beatae culpa et et aperiam ut rerum nostrum molestias ut.	2	53
240	Clayton West	Eveniet placeat repellendus possimus vel accusamus a commodi dolorem ut occaecati fugit.	2	53
241	The Hon. Enola Krajcik	Quae mollitia et sint eos eveniet tenetur iusto vitae ipsam molestiae libero dolorem id.	3	54
242	Kathline Kohler	Dolorem quae sed repellendus error pariatur libero molestiae aspernatur ipsam eligendi et optio amet aut eum nulla rerum.	2	54
243	Irena Gutkowski CPA	Voluptatem sed laboriosam eius officiis corporis optio et nam inventore sit possimus sed qui.	1	54
244	Myles Batz Jr.	Impedit et at odio debitis sint quisquam ut beatae sit facilis occaecati numquam similique laudantium autem ut provident sapiente.	5	54
245	Enrique Schmitt	Consequatur quasi sed provident atque voluptas sequi molestiae ipsum aperiam voluptatem qui beatae voluptatem officiis blanditiis rerum sunt.	3	54
246	Msgr. Novella MacGyver	Natus cumque magni delectus nulla facilis et consectetur et nobis necessitatibus praesentium accusamus.	5	55
247	May Nolan	Et quaerat accusamus quae labore cumque eaque eveniet perspiciatis voluptatem nobis id sed molestiae modi qui quo harum.	1	55
248	Carmen Schaden	Totam sapiente repellat vero incidunt eos ad dolor exercitationem omnis necessitatibus laudantium labore molestiae aut ratione.	5	55
249	Dan Murphy	Modi similique expedita a fuga exercitationem quia cum est impedit officiis deserunt facere qui praesentium temporibus.	4	55
250	Elijah Hansen	Ipsum laborum fugit eum corrupti explicabo veniam molestiae cumque hic perspiciatis.	3	55
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

SELECT pg_catalog.setval('public.products_id_seq', 56, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.reviews_id_seq', 250, true);


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

