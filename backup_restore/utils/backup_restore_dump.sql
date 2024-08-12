--
-- PostgreSQL database dump
--

-- Dumped from database version 10.19 (Debian 10.19-1.pgdg90+1)
-- Dumped by pg_dump version 10.19 (Debian 10.19-1.pgdg90+1)

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: criminal_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.criminal_records (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    felony character varying(30) NOT NULL,
    ssn character varying(11) NOT NULL,
    home_address character varying(100) NOT NULL,
    entry timestamp without time zone NOT NULL,
    city character varying(100) NOT NULL,
    status character varying(16) NOT NULL
);


ALTER TABLE public.criminal_records OWNER TO postgres;

--
-- Name: criminal_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.criminal_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.criminal_records_id_seq OWNER TO postgres;

--
-- Name: criminal_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.criminal_records_id_seq OWNED BY public.criminal_records.id;


--
-- Name: criminal_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criminal_records ALTER COLUMN id SET DEFAULT nextval('public.criminal_records_id_seq'::regclass);


--
-- Data for Name: criminal_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.criminal_records (id, name, felony, ssn, home_address, entry, city, status) FROM stdin;
1	Brianna Garcia	Arson	073-46-3286	706 Daniel Plains	2004-09-10 00:00:00	New Darlenebury, MT 68409-4687	terminated
2	Mr. Johnny Owens PhD	Perjury	841-52-7131	24132 Hines Land	2021-02-17 00:00:00	Roweburgh, CA 18097-5745	terminated
3	Nathan Ellis	Animal cruelty	645-71-0960	9574 Brandon Route	1988-05-28 00:00:00	North Timothy, FM 36781-7956	alive
4	James Cortez Jr.	Larceny	166-43-8046	17098 Alexander Trace Apt. 450	1999-10-24 00:00:00	East Kelseyside, MP 61069-1034	alive
5	Holly Clark	Obstruction of justice	475-69-0306	8926 Craig Lane	2000-12-30 00:00:00	Mooremouth, MP 10987	alive
6	Elizabeth Johnson	Perjury	120-92-7296	418 Jorge Tunnel	1973-06-22 00:00:00	Alexisburgh, SC 29047	terminated
7	Morgan Baker	Manslaughter	704-58-5646	0281 Gonzalez Rapids	1984-09-04 00:00:00	Lake Pamela, CO 65421	missing
8	Linda Stephens	Perjury	794-87-3215	816 Lawrence Drive Suite 155	1985-01-07 00:00:00	East Chrisside, AZ 30724-2153	missing
9	Cheryl Lam	Obstruction of justice	788-35-0115	221 Ward Vista Apt. 862	2010-04-24 00:00:00	Pacefurt, ID 84321-0673	missing
10	Kerri Allen	Animal cruelty	129-11-2775	6235 Nicholson Turnpike Suite 388	2008-09-17 00:00:00	Ethanport, KY 88477	alive
11	Jason Ramirez	Perjury	624-39-0112	297 Michael Bridge Suite 873	2011-03-17 00:00:00	Lake Waltertown, IN 42677	missing
12	Lawrence Norton	Tax evasion	240-57-9830	82569 Kathleen Lakes	2018-12-13 00:00:00	Lake Cindy, SD 37862-8623	terminated
13	Christopher Palmer	Obstruction of justice	558-77-7092	125 Farrell Greens Suite 100	2009-11-16 00:00:00	Sergiostad, MH 40102	alive
14	Pamela Collins	Tax evasion	291-84-8362	3310 Johnny Spurs	2005-01-10 00:00:00	South Stevenfurt, FM 79715	alive
15	Steven Shelton	Perjury	133-44-8182	730 Lane Mountains Suite 861	2004-06-30 00:00:00	Hallstad, NH 07591-2541	alive
16	Nicole Wright	Arson	688-70-4198	6660 Tammy Point	1984-08-13 00:00:00	North Evelyn, CT 25792-6170	alive
17	Sarah Anderson	Manslaughter	164-26-0170	457 Jackie Lodge Apt. 016	1977-03-07 00:00:00	North Richard, KS 87669-3257	alive
18	Anthony Jones	Obstruction of justice	879-10-7862	08654 Richard Canyon	1978-11-03 00:00:00	Robertstad, DE 02578-0428	alive
19	Christopher Lawrence	Manslaughter	136-54-7859	USS James	2012-09-17 00:00:00	FPO AP 93831	terminated
20	Amanda Nicholson	Tax evasion	740-36-1940	8253 Maddox Bypass Suite 742	1989-02-13 00:00:00	Port Lindsey, SD 42354	alive
21	Matthew Cunningham	Arson	089-81-3267	252 Eric Loop	2011-11-16 00:00:00	Brookeburgh, VI 96787	alive
22	April Fox	Tax evasion	390-56-4202	3753 Odonnell Roads Suite 822	1985-07-27 00:00:00	Andrewshire, SC 88479-8103	alive
23	Jon Herman	Burglary	490-06-2235	35616 Richard Crest Suite 720	1976-04-02 00:00:00	Robertport, CT 95669	alive
24	Phillip Sutton	Perjury	463-47-3532	432 Elizabeth Village	2005-12-16 00:00:00	East Janet, VT 20508	missing
25	Nancy Rose	Check fraud	799-36-3230	5536 Carr Mill Apt. 556	2004-11-24 00:00:00	Combshaven, ND 80984-6017	alive
26	Chelsea Mclean	Vehicular homicide	156-23-6282	34962 Jennifer Walk	1985-10-09 00:00:00	Bowmanside, KS 06028	missing
27	Kyle Parker	Perjury	665-79-3868	01340 Miller Glens Suite 139	2008-08-22 00:00:00	Gregorymouth, AK 42780-6986	terminated
28	Jerry Huber	Larceny	731-89-1916	686 Rogers Tunnel Suite 700	2024-01-29 00:00:00	Sanchezborough, SD 87174-8548	alive
29	Lauren Barnes	Manslaughter	327-70-2720	979 Sandra Branch Suite 179	2012-01-11 00:00:00	North Wendychester, NH 05646-0663	missing
30	Brian Moreno	Obstruction of justice	096-60-6602	32754 Ariana Ford Suite 435	1989-10-27 00:00:00	Beasleystad, AR 55215	terminated
31	Shelley Porter	Obstruction of justice	659-92-8584	173 Peggy Stream	2001-09-26 00:00:00	Alexanderton, MD 98508-0465	alive
32	Ryan Johnson	Larceny	365-15-2292	1619 Wilson Mountain Apt. 445	2018-05-01 00:00:00	Port Patricia, AS 79760-4509	missing
33	Thomas Knight	Check fraud	781-08-6653	65380 Smith Cliffs Suite 811	1971-10-20 00:00:00	Holdenbury, MP 60555	terminated
34	Daniel Johnson	Tax evasion	250-70-5464	9209 Riley Centers	2008-10-26 00:00:00	Alvarezmouth, CO 88403	terminated
35	Samuel Townsend	Burglary	172-24-6735	896 Sarah Burgs	2004-03-29 00:00:00	North Thomas, FM 16173-0163	alive
36	Michele Steele	Check fraud	195-78-8742	7183 Richard Bridge Suite 685	2010-04-21 00:00:00	Davidfurt, IL 51849-9279	terminated
37	Karen Foster	Check fraud	368-69-7190	2248 Betty Alley Apt. 062	2015-05-15 00:00:00	South Jenniferville, ID 33509-3440	terminated
38	Matthew Peterson	Burglary	144-76-9179	928 Patrick Drives Suite 437	1975-02-11 00:00:00	East Kimberlyport, SC 29737	terminated
39	Ellen Kelly	Manslaughter	869-61-0777	6977 Christopher Orchard	1982-02-23 00:00:00	East Laura, MT 91797-2808	missing
40	Nicole Herrera	Tax evasion	059-78-3370	PSC 5347, Box 5505	2022-09-27 00:00:00	APO AP 92366-0950	missing
41	Brian Pierce	Tax evasion	395-11-0590	89998 Deanna Mission	2022-01-05 00:00:00	Lake Steven, NH 20400-5808	missing
42	Katherine Pierce	Manslaughter	623-30-4358	9412 Anderson Shoal Apt. 778	1989-04-17 00:00:00	North Justin, NM 35593-4434	missing
43	Nicole Garcia	Arson	215-27-9788	5544 Smith Springs	1991-05-04 00:00:00	Port Stacy, VT 99483	alive
44	Summer Bullock	Larceny	319-50-7399	3661 Diaz Loop Apt. 351	1983-09-10 00:00:00	Clineland, MT 48205	missing
45	Jared Vega	Animal cruelty	409-94-1323	489 Johnson Burgs	2015-11-05 00:00:00	West Peterfort, MS 68700-5663	terminated
46	Pamela Thompson	Manslaughter	102-64-5711	016 Phillip Gardens Apt. 654	2020-06-04 00:00:00	New Patriciaburgh, PR 44654	missing
47	Lacey Henderson	Perjury	643-12-9804	42398 Burke Mall Apt. 472	1974-09-09 00:00:00	Lake Donaldchester, ME 81805-2434	alive
48	Stephen Ward	Arson	335-03-8509	79366 Harris Cove Suite 515	2010-11-17 00:00:00	North Dwayne, IN 85234-2318	missing
49	Jennifer Mcguire	Arson	291-42-5136	78483 Cheryl Park Suite 401	2006-06-20 00:00:00	Port Baileymouth, PR 97442	terminated
50	Brenda Randall	Animal cruelty	586-06-7921	4689 Ramos Greens Suite 544	2018-02-07 00:00:00	South Joshua, NY 26723	terminated
51	Kelly Sandoval	Burglary	524-65-6389	042 Griffin Turnpike Suite 897	1993-08-03 00:00:00	South Brendan, MN 25424	missing
52	Eric Browning	Burglary	165-15-0088	747 Figueroa Parkway	1971-10-03 00:00:00	South Kathleen, FL 93168	alive
53	Amy Silva	Tax evasion	086-57-7788	573 Shannon Island	1973-07-12 00:00:00	East Jeremy, NH 35861	terminated
54	Matthew James	Larceny	628-42-9179	8596 Edward Knolls Apt. 376	1989-10-07 00:00:00	Susanshire, CO 78737-7262	terminated
55	Jill Martin	Burglary	806-85-1421	64228 Linda Ways	2016-08-25 00:00:00	New Thomasbury, NY 15521-0536	missing
56	Robert Romero	Burglary	156-57-5347	155 Kelsey Forest	1990-09-04 00:00:00	New Anthony, IA 54517-0968	terminated
57	David Martin II	Animal cruelty	006-32-0315	USCGC Pearson	1974-10-20 00:00:00	FPO AE 68111	missing
58	Kristen Gould	Manslaughter	709-98-3901	USNV Perez	1995-04-13 00:00:00	FPO AE 17535	alive
59	Daniel Adams	Tax evasion	670-59-2842	813 Perez Springs	2016-10-04 00:00:00	Simpsonland, TX 51617	alive
60	Dennis Coleman	Obstruction of justice	773-51-1931	558 Benjamin Throughway Suite 337	1981-12-19 00:00:00	Sotomouth, WA 64952	alive
61	Ryan Arnold	Check fraud	801-10-5197	333 Johnson Fork	1977-04-08 00:00:00	Gonzalesmouth, ME 46385-6616	alive
62	Lauren Schroeder	Manslaughter	443-76-1756	USS Brady	1974-04-12 00:00:00	FPO AP 82687	missing
63	Anna Richards	Larceny	724-24-8336	612 Norris Mountain Apt. 033	2001-03-31 00:00:00	East Christopher, VA 62510-3750	alive
64	Troy Patterson	Arson	366-15-5896	7036 Chloe Coves	1982-07-22 00:00:00	North Davidmouth, FM 63389-6657	missing
65	John Campbell	Burglary	063-64-8960	4351 Dylan Prairie Apt. 762	2012-02-24 00:00:00	Gonzalezville, PW 99432	terminated
66	Gina Cisneros	Perjury	681-28-3093	5652 Mark Terrace	2015-05-19 00:00:00	Moralesland, VT 17342	terminated
67	James Griffith	Check fraud	319-80-9929	USCGC Reilly	1993-05-21 00:00:00	FPO AP 48242	terminated
68	Debra Armstrong	Perjury	391-19-7993	35324 Amber Inlet Apt. 929	1979-08-30 00:00:00	East Anneshire, SD 30288	missing
69	Michelle Holt	Tax evasion	743-49-9554	5035 Kimberly Road	2011-03-18 00:00:00	Bullockstad, NE 44536	terminated
70	Cheryl Newton	Perjury	459-71-6087	129 Jerry Village Suite 806	2012-01-26 00:00:00	Graveston, MA 93777	alive
71	Barbara Lynn PhD	Manslaughter	364-96-2132	09951 Laura Oval Suite 926	1985-09-09 00:00:00	East Reneeton, GU 91443-3872	missing
72	Alexander Sharp	Obstruction of justice	748-90-1589	0517 Jessica Drive	2017-05-12 00:00:00	South Calebside, CT 54319-4166	missing
73	William Waters	Perjury	707-05-2116	26429 Smith Keys	2022-06-21 00:00:00	Ruiztown, MA 35191	terminated
\.


--
-- Name: criminal_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.criminal_records_id_seq', 73, true);


--
-- Name: criminal_records criminal_records_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criminal_records
    ADD CONSTRAINT criminal_records_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

