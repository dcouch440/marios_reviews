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
    product_id integer,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO "HB";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: HB
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO "HB";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: HB
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


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
368	Fantastic Steel Gloves	43.27	Congo
369	Durable Bronze Bench	227.95	Mauritius
370	Heavy Duty Marble Pants	5.25	France
371	Mediocre Cotton Gloves	196.67	Turks and Caicos Islands
372	Intelligent Concrete Hat	109.13	Gabon
373	Awesome Wool Bag	123.11	Cote d'Ivoire
374	Intelligent Cotton Clock	117.85	Kazakhstan
375	Synergistic Bronze Bench	99.07	Haiti
376	Awesome Cotton Plate	164.74	Austria
377	Heavy Duty Leather Chair	263.56	Madagascar
378	Lightweight Leather Table	43.12	Peru
379	Practical Steel Watch	209.03	Austria
380	Aerodynamic Silk Shirt	246.0	Maldives
381	Practical Concrete Wallet	140.74	Falkland Islands (Malvinas)
382	Mediocre Iron Shirt	115.81	Saudi Arabia
383	Enormous Plastic Plate	107.97	Cameroon
384	Incredible Bronze Chair	134.73	United States of America
385	Practical Copper Knife	228.12	Japan
386	Enormous Paper Coat	81.47	Pitcairn Islands
387	Gorgeous Granite Shirt	67.14	Thailand
388	Practical Leather Keyboard	251.09	Yemen
389	Ergonomic Cotton Watch	4.01	Philippines
390	Fantastic Aluminum Computer	202.87	Ecuador
391	Durable Leather Bag	291.73	French Polynesia
392	Ergonomic Wooden Wallet	225.89	Senegal
393	Awesome Concrete Pants	101.46	China
394	Durable Aluminum Bag	59.63	Moldova
395	Heavy Duty Paper Gloves	72.09	Guadeloupe
396	Durable Marble Lamp	275.54	Lithuania
397	Intelligent Bronze Bottle	0.37	Tokelau
398	Heavy Duty Silk Shoes	72.44	Falkland Islands (Malvinas)
399	Incredible Steel Plate	295.76	Kiribati
400	Rustic Marble Chair	96.46	Kiribati
401	Rustic Linen Plate	128.25	Montserrat
402	Enormous Cotton Plate	186.87	Colombia
403	Ergonomic Silk Watch	42.66	Mauritius
404	Intelligent Bronze Bag	107.64	Montserrat
405	Small Steel Coat	113.0	United Arab Emirates
406	Enormous Cotton Table	230.28	Seychelles
407	Durable Copper Bench	141.89	Costa Rica
408	Durable Plastic Knife	239.55	Ghana
409	Practical Leather Watch	287.88	New Caledonia
410	Awesome Copper Clock	250.15	Belgium
411	Rustic Paper Bag	114.61	United Kingdom
412	Ergonomic Bronze Gloves	281.85	Vanuatu
413	Gorgeous Wool Computer	242.66	British Indian Ocean Territory (Chagos Archipelago)
414	Mediocre Wooden Hat	141.36	Montserrat
415	Awesome Cotton Wallet	148.78	Saint Pierre and Miquelon
416	Intelligent Linen Plate	191.65	Cook Islands
417	Small Marble Watch	107.97	Samoa
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.reviews (id, author, content_body, rating, product_id, user_id) FROM stdin;
1902	Barbra Schoen	AMAZING! Oh Joy! What A Treat!	5	397	21
1903	Rueben Deckow	It was not the worst but I found it to be pretty bad.	2	397	21
1904	Ehtel Cartwright	Actually pretty good, would buy again.	4	397	21
1905	Ricki Okuneva	It was not the worst but I found it to be pretty bad.	2	398	21
1906	Justine Rippin	Decent but not the best.	3	398	21
1907	Ike Kunze	Actually pretty good, would buy again.	4	398	21
1908	Erasmo Collins	AMAZING! Oh Joy! What A Treat!	5	398	21
1909	Deandre Price	AMAZING! Oh Joy! What A Treat!	5	398	21
1910	Harley Batz	TERRIBLE! DO NOT BUY!	1	399	21
1911	Nichelle Bruen	It was not the worst but I found it to be pretty bad.	2	399	21
1912	Fr. Sunshine Schimmel	AMAZING! Oh Joy! What A Treat!	5	399	21
1913	Prof. Regina Bauch	Decent but not the best.	3	399	21
1914	Alphonse Bauch IV	Decent but not the best.	3	399	21
1915	Pres. Solomon Brown	AMAZING! Oh Joy! What A Treat!	5	400	21
1916	Dustin Schmidt	AMAZING! Oh Joy! What A Treat!	5	400	21
1917	Joanna Hand	Actually pretty good, would buy again.	4	400	21
1918	Corrie Shields	Decent but not the best.	3	400	21
1919	Rev. Edgar Parker	AMAZING! Oh Joy! What A Treat!	5	400	21
1920	Amb. Gwyn Boyer	Actually pretty good, would buy again.	4	401	21
1921	Joane Ebert	TERRIBLE! DO NOT BUY!	1	401	21
1922	Miss Rolland Greenholt	Decent but not the best.	3	401	21
1923	Adan Stoltenberg	Actually pretty good, would buy again.	4	401	21
1924	Oneida Cole	Actually pretty good, would buy again.	4	401	21
1925	Maxwell Moen	TERRIBLE! DO NOT BUY!	1	402	21
1926	Charlsie Runolfsson III	TERRIBLE! DO NOT BUY!	1	402	21
1927	Miss Jaymie Tremblay	AMAZING! Oh Joy! What A Treat!	5	402	21
1928	Rep. Katheleen Hartmann	Decent but not the best.	3	402	21
1929	Jeremiah Kuhic	It was not the worst but I found it to be pretty bad.	2	402	21
1930	Sierra Effertz	It was not the worst but I found it to be pretty bad.	2	403	21
1931	Javier Schaefer	It was not the worst but I found it to be pretty bad.	2	403	21
1932	Assunta Klein	Actually pretty good, would buy again.	4	403	21
1933	Grace Bernier	It was not the worst but I found it to be pretty bad.	2	403	21
1934	Sierra Koelpin	TERRIBLE! DO NOT BUY!	1	403	21
1935	Denny Reichel	AMAZING! Oh Joy! What A Treat!	5	404	21
1936	Genie Renner CPA	It was not the worst but I found it to be pretty bad.	2	404	21
1937	Clyde Walsh	It was not the worst but I found it to be pretty bad.	2	404	21
1938	Lewis Hirthe	It was not the worst but I found it to be pretty bad.	2	404	21
1939	Laila Glover	Actually pretty good, would buy again.	4	404	21
1940	Tyrone Friesen DC	AMAZING! Oh Joy! What A Treat!	5	405	21
1941	Marcia Thiel DDS	TERRIBLE! DO NOT BUY!	1	405	21
1942	Herman Spencer IV	It was not the worst but I found it to be pretty bad.	2	405	21
1943	Clifton Kilback	TERRIBLE! DO NOT BUY!	1	405	21
1944	Jackie Kilback	Decent but not the best.	3	405	21
1945	Alberta Corkery	Actually pretty good, would buy again.	4	406	21
1946	Miss Hiram McDermott	TERRIBLE! DO NOT BUY!	1	406	21
1947	Illa Bergstrom	Actually pretty good, would buy again.	4	406	21
1948	Lois Schimmel LLD	Actually pretty good, would buy again.	4	406	21
1949	Rod Streich	Decent but not the best.	3	406	21
1950	Rogelio Barton	Decent but not the best.	3	407	21
1951	Emmaline Lubowitz	Actually pretty good, would buy again.	4	407	21
1952	Sharie Lakin	AMAZING! Oh Joy! What A Treat!	5	407	21
1953	Gayle Barrows	Decent but not the best.	3	407	21
1954	Rev. Sid Kovacek	Actually pretty good, would buy again.	4	407	21
1955	Lizabeth Mertz	TERRIBLE! DO NOT BUY!	1	408	21
1956	Amb. Willette Bayer	TERRIBLE! DO NOT BUY!	1	408	21
1957	Zachary Kozey	AMAZING! Oh Joy! What A Treat!	5	408	21
1958	Soraya DuBuque DVM	It was not the worst but I found it to be pretty bad.	2	408	21
1959	Ruben Ankunding JD	Decent but not the best.	3	408	21
1960	Reta Swift	TERRIBLE! DO NOT BUY!	1	409	21
1961	Faustino Dooley	TERRIBLE! DO NOT BUY!	1	409	21
1962	Ken Parisian	It was not the worst but I found it to be pretty bad.	2	409	21
1963	Milagros Tremblay	AMAZING! Oh Joy! What A Treat!	5	409	21
1964	Markita Rosenbaum	TERRIBLE! DO NOT BUY!	1	409	21
1965	Carmen Wiza	TERRIBLE! DO NOT BUY!	1	410	21
1966	Barton O'Conner	Actually pretty good, would buy again.	4	410	21
1967	Criselda Adams	Actually pretty good, would buy again.	4	410	21
1968	Omar Abbott	TERRIBLE! DO NOT BUY!	1	410	21
1969	Marylee Bartoletti	AMAZING! Oh Joy! What A Treat!	5	410	21
1970	Janiece Hartmann	Actually pretty good, would buy again.	4	411	21
1971	Sen. Cecil Kshlerin	Actually pretty good, would buy again.	4	411	21
1972	Russell Dicki V	It was not the worst but I found it to be pretty bad.	2	411	21
1973	Shelby Beier	It was not the worst but I found it to be pretty bad.	2	411	21
1974	Avery Pacocha DC	Decent but not the best.	3	411	21
1975	Lillian Davis	Decent but not the best.	3	412	21
1976	Jamee Paucek	AMAZING! Oh Joy! What A Treat!	5	412	21
1977	Scott Tromp DO	Actually pretty good, would buy again.	4	412	21
1978	Eliza Heidenreich	It was not the worst but I found it to be pretty bad.	2	412	21
1979	Lloyd Gerlach	TERRIBLE! DO NOT BUY!	1	412	21
1980	Lanie Schumm	TERRIBLE! DO NOT BUY!	1	413	21
1981	Joaquina McClure	It was not the worst but I found it to be pretty bad.	2	413	21
1982	Mr. Russell Keebler	It was not the worst but I found it to be pretty bad.	2	413	21
1983	Melonie Kuhlman	AMAZING! Oh Joy! What A Treat!	5	413	21
1984	Lizabeth Will	AMAZING! Oh Joy! What A Treat!	5	413	21
1985	Jone Graham	It was not the worst but I found it to be pretty bad.	2	414	21
1986	Josette Sipes	AMAZING! Oh Joy! What A Treat!	5	414	21
1987	Tracey Jacobs DVM	Actually pretty good, would buy again.	4	414	21
1988	Chris Wisoky	Actually pretty good, would buy again.	4	414	21
1989	Ellsworth Konopelski	It was not the worst but I found it to be pretty bad.	2	414	21
1990	Trista Champlin IV	It was not the worst but I found it to be pretty bad.	2	415	21
1991	Candis Nicolas	Decent but not the best.	3	415	21
1992	Carmelia Hackett	It was not the worst but I found it to be pretty bad.	2	415	21
1993	Dorcas Weimann V	TERRIBLE! DO NOT BUY!	1	415	21
1994	Mitzi Hane	It was not the worst but I found it to be pretty bad.	2	415	21
1995	Audrea King	AMAZING! Oh Joy! What A Treat!	5	416	21
1996	Dan Hyatt	Decent but not the best.	3	416	21
1997	Mr. Shemeka Hudson	AMAZING! Oh Joy! What A Treat!	5	416	21
1998	Ms. Christopher Kunze	TERRIBLE! DO NOT BUY!	1	416	21
1999	Fr. Melvin Spencer	Decent but not the best.	3	416	21
2000	Cristie Konopelski	Decent but not the best.	3	417	21
2001	Ericka Rohan	TERRIBLE! DO NOT BUY!	1	417	21
2002	Calvin Adams	Decent but not the best.	3	417	21
2003	Kyle Bailey	AMAZING! Oh Joy! What A Treat!	5	417	21
2004	Theodora Torphy	It was not the worst but I found it to be pretty bad.	2	417	21
1755	Carleen Gerhold VM	Decent but not the best.	3	368	21
1756	Erich Hudson	Decent but not the best.	3	368	21
1757	Miss Trent Kassulke	Actually pretty good, would buy again.	4	368	21
1758	Leia Lemke	It was not the worst but I found it to be pretty bad.	2	368	21
1759	Suzan Reinger	AMAZING! Oh Joy! What A Treat!	5	368	21
1760	Almeda McKenzie	AMAZING! Oh Joy! What A Treat!	5	369	21
1761	Bettye Denesik VM	Actually pretty good, would buy again.	4	369	21
1762	Rep. Randolph Strosin	Decent but not the best.	3	369	21
1763	Prof. Quinton Tillman	AMAZING! Oh Joy! What A Treat!	5	369	21
1764	Mrs. Maryjo Rohan	Decent but not the best.	3	369	21
1765	Richard Pouros	TERRIBLE! DO NOT BUY!	1	370	21
1766	Hipolito Gulgowski	Decent but not the best.	3	370	21
1767	Geraldine Hand	TERRIBLE! DO NOT BUY!	1	370	21
1768	Pearly Wehner	AMAZING! Oh Joy! What A Treat!	5	370	21
1769	Edgardo Gorczany DVM	Actually pretty good, would buy again.	4	370	21
1770	Fr. Terisa Rutherford	AMAZING! Oh Joy! What A Treat!	5	371	21
1771	Quyen Anderson	TERRIBLE! DO NOT BUY!	1	371	21
1772	Daron Sipes LLD	It was not the worst but I found it to be pretty bad.	2	371	21
1773	Miss Valencia Krajcik	AMAZING! Oh Joy! What A Treat!	5	371	21
1774	Joana Bradtke MD	Decent but not the best.	3	371	21
1775	Daryl Mertz LLD	AMAZING! Oh Joy! What A Treat!	5	372	21
1776	Consuelo Goldner	AMAZING! Oh Joy! What A Treat!	5	372	21
1777	Kym Rowe	TERRIBLE! DO NOT BUY!	1	372	21
1778	Bert Collier	Decent but not the best.	3	372	21
1779	Gary Grady	Actually pretty good, would buy again.	4	372	21
1780	Sidney Orn	AMAZING! Oh Joy! What A Treat!	5	373	21
1781	Jamison Kuhic	Decent but not the best.	3	373	21
1782	Donovan Auer	Decent but not the best.	3	373	21
1783	Rep. Gene Swaniawski	Actually pretty good, would buy again.	4	373	21
1784	Bess Bahringer	Actually pretty good, would buy again.	4	373	21
1785	Felix Cruickshank	AMAZING! Oh Joy! What A Treat!	5	374	21
1786	Consuelo Halvorson	Actually pretty good, would buy again.	4	374	21
1787	Gale Heaney	TERRIBLE! DO NOT BUY!	1	374	21
1788	Grady Volkman	It was not the worst but I found it to be pretty bad.	2	374	21
1789	Katherine Weimann JD	Actually pretty good, would buy again.	4	374	21
1790	Thurman Sanford	Decent but not the best.	3	375	21
1791	Claude Bashirian	It was not the worst but I found it to be pretty bad.	2	375	21
1792	Marion Streich	Decent but not the best.	3	375	21
1793	Prof. Eric Orn	Actually pretty good, would buy again.	4	375	21
1794	Tony McLaughlin	Actually pretty good, would buy again.	4	375	21
1795	Juana Predovic	AMAZING! Oh Joy! What A Treat!	5	376	21
1796	Dominick Graham MD	It was not the worst but I found it to be pretty bad.	2	376	21
1797	Anglea Collier	Decent but not the best.	3	376	21
1798	Pres. Jesica Orn	Actually pretty good, would buy again.	4	376	21
1799	Von Gibson	AMAZING! Oh Joy! What A Treat!	5	376	21
1800	Ramiro Towne	Actually pretty good, would buy again.	4	377	21
1801	Leon Erdman	Actually pretty good, would buy again.	4	377	21
1802	Zelma MacGyver	Decent but not the best.	3	377	21
1803	Jeremy Romaguera	It was not the worst but I found it to be pretty bad.	2	377	21
1804	Frederick Labadie Sr.	Actually pretty good, would buy again.	4	377	21
1805	Rob Harris	Actually pretty good, would buy again.	4	378	21
1806	Ricky Fadel	It was not the worst but I found it to be pretty bad.	2	378	21
1807	Donald Schultz	TERRIBLE! DO NOT BUY!	1	378	21
1808	Fr. Lynetta Hane	It was not the worst but I found it to be pretty bad.	2	378	21
1809	Sam Crooks VM	AMAZING! Oh Joy! What A Treat!	5	378	21
1810	Shannan Schroeder	TERRIBLE! DO NOT BUY!	1	379	21
1811	Lamont Gleichner	It was not the worst but I found it to be pretty bad.	2	379	21
1812	Mitchell Rutherford JD	AMAZING! Oh Joy! What A Treat!	5	379	21
1813	Hassie Schamberger	Decent but not the best.	3	379	21
1814	Alvin Trantow	AMAZING! Oh Joy! What A Treat!	5	379	21
1815	Mr. Bok Cummerata	TERRIBLE! DO NOT BUY!	1	380	21
1816	Phebe Willms	TERRIBLE! DO NOT BUY!	1	380	21
1817	Buddy Graham II	It was not the worst but I found it to be pretty bad.	2	380	21
1818	Fermina Ritchie	AMAZING! Oh Joy! What A Treat!	5	380	21
1819	Mr. Chantelle Kertzmann	AMAZING! Oh Joy! What A Treat!	5	380	21
1820	Martina Hartmann	Actually pretty good, would buy again.	4	381	21
1821	Leigh Haag	AMAZING! Oh Joy! What A Treat!	5	381	21
1822	Gaston Bode	Actually pretty good, would buy again.	4	381	21
1823	Roxy Kuhlman	It was not the worst but I found it to be pretty bad.	2	381	21
1824	Jerrell Gutkowski	TERRIBLE! DO NOT BUY!	1	381	21
1825	Pres. Cinda Oberbrunner	AMAZING! Oh Joy! What A Treat!	5	382	21
1826	Porsche Smith JD	Decent but not the best.	3	382	21
1827	Josef Dickinson	AMAZING! Oh Joy! What A Treat!	5	382	21
1828	Joel Daugherty III	TERRIBLE! DO NOT BUY!	1	382	21
1829	Ken Breitenberg	It was not the worst but I found it to be pretty bad.	2	382	21
1830	Blair Ernser	TERRIBLE! DO NOT BUY!	1	383	21
1831	Cleveland Conroy	Decent but not the best.	3	383	21
1832	Leandro Boyer	Decent but not the best.	3	383	21
1833	The Hon. Phil Gorczany	It was not the worst but I found it to be pretty bad.	2	383	21
1834	Marylin Schaden	Decent but not the best.	3	383	21
1835	Ignacia Quitzon	Decent but not the best.	3	384	21
1836	Arlie Huel	AMAZING! Oh Joy! What A Treat!	5	384	21
1837	Caitlin Willms	Decent but not the best.	3	384	21
1838	Orlando Schimmel VM	Decent but not the best.	3	384	21
1839	Leo McCullough	It was not the worst but I found it to be pretty bad.	2	384	21
1840	Joe Rice	Decent but not the best.	3	385	21
1841	Mr. Deshawn Swaniawski	Decent but not the best.	3	385	21
1842	Dorotha Ernser	Actually pretty good, would buy again.	4	385	21
1843	Brittaney Kemmer III	Decent but not the best.	3	385	21
1844	Sarita Donnelly	It was not the worst but I found it to be pretty bad.	2	385	21
1845	Shawnda Adams	It was not the worst but I found it to be pretty bad.	2	386	21
1846	Tinisha Mraz	Decent but not the best.	3	386	21
1847	Fritz Spencer	AMAZING! Oh Joy! What A Treat!	5	386	21
1848	Rep. Stephine Reichel	Actually pretty good, would buy again.	4	386	21
1849	Tim Cartwright	Actually pretty good, would buy again.	4	386	21
1850	Margarett Schaefer Ret.	Actually pretty good, would buy again.	4	387	21
1851	Cesar Sawayn	AMAZING! Oh Joy! What A Treat!	5	387	21
1852	Debi Schiller	AMAZING! Oh Joy! What A Treat!	5	387	21
1853	Pamela Altenwerth	AMAZING! Oh Joy! What A Treat!	5	387	21
1854	The Hon. Leonora Wolff	TERRIBLE! DO NOT BUY!	1	387	21
1855	Gerard Toy	Actually pretty good, would buy again.	4	388	21
1856	Etha Flatley	AMAZING! Oh Joy! What A Treat!	5	388	21
1857	Allie Smith	Decent but not the best.	3	388	21
1858	Dr. Therese Okuneva	AMAZING! Oh Joy! What A Treat!	5	388	21
1859	Blake Fisher DDS	Decent but not the best.	3	388	21
1860	Armand Wehner	It was not the worst but I found it to be pretty bad.	2	389	21
1861	Noel Rolfson	TERRIBLE! DO NOT BUY!	1	389	21
1862	Manuela Kirlin	It was not the worst but I found it to be pretty bad.	2	389	21
1863	Magda Beier	Actually pretty good, would buy again.	4	389	21
1864	Hayley Beahan I	It was not the worst but I found it to be pretty bad.	2	389	21
1865	Chas Wiegand	AMAZING! Oh Joy! What A Treat!	5	390	21
1866	Nichol Braun	AMAZING! Oh Joy! What A Treat!	5	390	21
1867	Morgan Jones	AMAZING! Oh Joy! What A Treat!	5	390	21
1868	Gertrude Tremblay	Decent but not the best.	3	390	21
1869	Gianna Rosenbaum	Decent but not the best.	3	390	21
1870	Dr. Yer Ortiz	Actually pretty good, would buy again.	4	391	21
1871	Son Wilderman	Decent but not the best.	3	391	21
1872	Kizzie Romaguera	TERRIBLE! DO NOT BUY!	1	391	21
1873	Tyron Anderson	TERRIBLE! DO NOT BUY!	1	391	21
1874	Ahmed Strosin	TERRIBLE! DO NOT BUY!	1	391	21
1875	Vernon Rempel	It was not the worst but I found it to be pretty bad.	2	392	21
1876	Vince Schuppe	Decent but not the best.	3	392	21
1877	Lia Schmidt	AMAZING! Oh Joy! What A Treat!	5	392	21
1878	Giovanna Kautzer	TERRIBLE! DO NOT BUY!	1	392	21
1879	Phil Hoeger	Actually pretty good, would buy again.	4	392	21
1880	Rudy Schiller	TERRIBLE! DO NOT BUY!	1	393	21
1881	Mackenzie Johnston	It was not the worst but I found it to be pretty bad.	2	393	21
1882	Bryant Hane	AMAZING! Oh Joy! What A Treat!	5	393	21
1883	Grant Wilderman DVM	Actually pretty good, would buy again.	4	393	21
1884	Carolyne Wintheiser CPA	TERRIBLE! DO NOT BUY!	1	393	21
1885	Milan Grant	Decent but not the best.	3	394	21
1886	Alvaro Ullrich	Decent but not the best.	3	394	21
1887	Fr. Jacob Kovacek	AMAZING! Oh Joy! What A Treat!	5	394	21
1888	Phillip MacGyver	Actually pretty good, would buy again.	4	394	21
1889	Jordon Borer	Actually pretty good, would buy again.	4	394	21
1890	Quincy Flatley	It was not the worst but I found it to be pretty bad.	2	395	21
1891	Lincoln Raynor Sr.	TERRIBLE! DO NOT BUY!	1	395	21
1892	Brain Kunde	It was not the worst but I found it to be pretty bad.	2	395	21
1893	Lanora Funk	Actually pretty good, would buy again.	4	395	21
1894	Amb. Ira Price	It was not the worst but I found it to be pretty bad.	2	395	21
1895	Zula Deckow	It was not the worst but I found it to be pretty bad.	2	396	21
1896	Hyacinth Crona V	TERRIBLE! DO NOT BUY!	1	396	21
1897	Pearlene Greenholt	It was not the worst but I found it to be pretty bad.	2	396	21
1898	Rufus Littel I	AMAZING! Oh Joy! What A Treat!	5	396	21
1899	Ahmed Bogan	AMAZING! Oh Joy! What A Treat!	5	396	21
1900	Glenn Abernathy	TERRIBLE! DO NOT BUY!	1	397	21
1901	Isadora Frami	Decent but not the best.	3	397	21
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.schema_migrations (version) FROM stdin;
20210319174050
20210326153153
20210326164011
20210326171258
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, admin) FROM stdin;
20	admin@admin.com	$2a$12$LFe1q1y6P0ZjsyPjMBKyKuzvINrVG7nFHjY3brHYwXK9y/B80p5WC	\N	\N	\N	2021-03-26 23:24:54.698912	2021-03-26 23:24:54.698912	t
21	user@user.com	$2a$12$.DE7FdZOCCXckAvwvGucYO1SpucJj2Ll5yrNIQciWlBYmoC.u/fxO	\N	\N	\N	2021-03-26 23:24:54.886496	2021-03-26 23:24:54.886496	f
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.products_id_seq', 417, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.reviews_id_seq', 2004, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.users_id_seq', 21, true);


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
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: HB
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: HB
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: reviews fk_rails_74a66bd6c5; Type: FK CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_74a66bd6c5 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

