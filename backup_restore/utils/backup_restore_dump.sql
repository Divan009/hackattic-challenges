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
1	Brianna Garcia	Check fraud	073-46-3286	706 Daniel Plains	2004-09-10 00:00:00	New Darlenebury, MT 68409-4687	terminated
2	Mr. Johnny Owens PhD	Tax evasion	841-52-7131	24132 Hines Land	2021-02-17 00:00:00	Roweburgh, CA 18097-5745	terminated
3	Nathan Ellis	Manslaughter	645-71-0960	9574 Brandon Route	1988-05-28 00:00:00	North Timothy, FM 36781-7956	terminated
4	James Cortez Jr.	Larceny	166-43-8046	17098 Alexander Trace Apt. 450	1999-10-24 00:00:00	East Kelseyside, MP 61069-1034	alive
5	Holly Clark	Vehicular homicide	475-69-0306	8926 Craig Lane	2000-12-30 00:00:00	Mooremouth, MP 10987	terminated
6	Elizabeth Johnson	Vehicular homicide	120-92-7296	418 Jorge Tunnel	1973-06-22 00:00:00	Alexisburgh, SC 29047	terminated
7	Morgan Baker	Animal cruelty	704-58-5646	0281 Gonzalez Rapids	1984-09-04 00:00:00	Lake Pamela, CO 65421	missing
8	Linda Stephens	Vehicular homicide	794-87-3215	816 Lawrence Drive Suite 155	1985-01-07 00:00:00	East Chrisside, AZ 30724-2153	alive
9	Cheryl Lam	Tax evasion	788-35-0115	221 Ward Vista Apt. 862	2010-04-24 00:00:00	Pacefurt, ID 84321-0673	alive
10	Kerri Allen	Manslaughter	129-11-2775	6235 Nicholson Turnpike Suite 388	2008-09-17 00:00:00	Ethanport, KY 88477	missing
11	Jason Ramirez	Animal cruelty	624-39-0112	297 Michael Bridge Suite 873	2011-03-17 00:00:00	Lake Waltertown, IN 42677	missing
12	Lawrence Norton	Tax evasion	240-57-9830	82569 Kathleen Lakes	2018-12-13 00:00:00	Lake Cindy, SD 37862-8623	alive
13	Christopher Palmer	Tax evasion	558-77-7092	125 Farrell Greens Suite 100	2009-11-16 00:00:00	Sergiostad, MH 40102	missing
14	Pamela Collins	Animal cruelty	291-84-8362	3310 Johnny Spurs	2005-01-10 00:00:00	South Stevenfurt, FM 79715	terminated
15	Steven Shelton	Burglary	133-44-8182	730 Lane Mountains Suite 861	2004-06-30 00:00:00	Hallstad, NH 07591-2541	terminated
16	Nicole Wright	Perjury	688-70-4198	6660 Tammy Point	1984-08-13 00:00:00	North Evelyn, CT 25792-6170	terminated
17	Sarah Anderson	Arson	164-26-0170	457 Jackie Lodge Apt. 016	1977-03-07 00:00:00	North Richard, KS 87669-3257	alive
18	Anthony Jones	Perjury	879-10-7862	08654 Richard Canyon	1978-11-03 00:00:00	Robertstad, DE 02578-0428	missing
19	Christopher Lawrence	Animal cruelty	136-54-7859	USS James	2012-09-17 00:00:00	FPO AP 93831	terminated
20	Amanda Nicholson	Manslaughter	740-36-1940	8253 Maddox Bypass Suite 742	1989-02-13 00:00:00	Port Lindsey, SD 42354	terminated
21	Matthew Cunningham	Perjury	089-81-3267	252 Eric Loop	2011-11-16 00:00:00	Brookeburgh, VI 96787	alive
22	April Fox	Manslaughter	390-56-4202	3753 Odonnell Roads Suite 822	1985-07-27 00:00:00	Andrewshire, SC 88479-8103	terminated
23	Jon Herman	Arson	490-06-2235	35616 Richard Crest Suite 720	1976-04-02 00:00:00	Robertport, CT 95669	alive
24	Phillip Sutton	Larceny	463-47-3532	432 Elizabeth Village	2005-12-16 00:00:00	East Janet, VT 20508	missing
25	Nancy Rose	Manslaughter	799-36-3230	5536 Carr Mill Apt. 556	2004-11-24 00:00:00	Combshaven, ND 80984-6017	terminated
26	Chelsea Mclean	Arson	156-23-6282	34962 Jennifer Walk	1985-10-09 00:00:00	Bowmanside, KS 06028	missing
27	Kyle Parker	Larceny	665-79-3868	01340 Miller Glens Suite 139	2008-08-22 00:00:00	Gregorymouth, AK 42780-6986	missing
28	Jerry Huber	Perjury	731-89-1916	686 Rogers Tunnel Suite 700	2024-01-29 00:00:00	Sanchezborough, SD 87174-8548	terminated
29	Lauren Barnes	Check fraud	327-70-2720	979 Sandra Branch Suite 179	2012-01-11 00:00:00	North Wendychester, NH 05646-0663	missing
30	Brian Moreno	Tax evasion	096-60-6602	32754 Ariana Ford Suite 435	1989-10-27 00:00:00	Beasleystad, AR 55215	alive
31	Shelley Porter	Obstruction of justice	659-92-8584	173 Peggy Stream	2001-09-26 00:00:00	Alexanderton, MD 98508-0465	terminated
32	Ryan Johnson	Arson	365-15-2292	1619 Wilson Mountain Apt. 445	2018-05-01 00:00:00	Port Patricia, AS 79760-4509	terminated
33	Thomas Knight	Manslaughter	781-08-6653	65380 Smith Cliffs Suite 811	1971-10-20 00:00:00	Holdenbury, MP 60555	missing
34	Daniel Johnson	Obstruction of justice	250-70-5464	9209 Riley Centers	2008-10-26 00:00:00	Alvarezmouth, CO 88403	alive
35	Samuel Townsend	Animal cruelty	172-24-6735	896 Sarah Burgs	2004-03-29 00:00:00	North Thomas, FM 16173-0163	missing
36	Michele Steele	Animal cruelty	195-78-8742	7183 Richard Bridge Suite 685	2010-04-21 00:00:00	Davidfurt, IL 51849-9279	alive
37	Karen Foster	Perjury	368-69-7190	2248 Betty Alley Apt. 062	2015-05-15 00:00:00	South Jenniferville, ID 33509-3440	terminated
38	Matthew Peterson	Animal cruelty	144-76-9179	928 Patrick Drives Suite 437	1975-02-11 00:00:00	East Kimberlyport, SC 29737	alive
39	Ellen Kelly	Burglary	869-61-0777	6977 Christopher Orchard	1982-02-23 00:00:00	East Laura, MT 91797-2808	alive
40	Nicole Herrera	Arson	059-78-3370	PSC 5347, Box 5505	2022-09-27 00:00:00	APO AP 92366-0950	missing
41	Brian Pierce	Burglary	395-11-0590	89998 Deanna Mission	2022-01-05 00:00:00	Lake Steven, NH 20400-5808	alive
42	Katherine Pierce	Obstruction of justice	623-30-4358	9412 Anderson Shoal Apt. 778	1989-04-17 00:00:00	North Justin, NM 35593-4434	missing
43	Nicole Garcia	Larceny	215-27-9788	5544 Smith Springs	1991-05-04 00:00:00	Port Stacy, VT 99483	terminated
44	Summer Bullock	Obstruction of justice	319-50-7399	3661 Diaz Loop Apt. 351	1983-09-10 00:00:00	Clineland, MT 48205	terminated
45	Jared Vega	Animal cruelty	409-94-1323	489 Johnson Burgs	2015-11-05 00:00:00	West Peterfort, MS 68700-5663	alive
46	Pamela Thompson	Manslaughter	102-64-5711	016 Phillip Gardens Apt. 654	2020-06-04 00:00:00	New Patriciaburgh, PR 44654	missing
47	Lacey Henderson	Obstruction of justice	643-12-9804	42398 Burke Mall Apt. 472	1974-09-09 00:00:00	Lake Donaldchester, ME 81805-2434	missing
48	Stephen Ward	Burglary	335-03-8509	79366 Harris Cove Suite 515	2010-11-17 00:00:00	North Dwayne, IN 85234-2318	alive
49	Jennifer Mcguire	Tax evasion	291-42-5136	78483 Cheryl Park Suite 401	2006-06-20 00:00:00	Port Baileymouth, PR 97442	missing
50	Brenda Randall	Vehicular homicide	586-06-7921	4689 Ramos Greens Suite 544	2018-02-07 00:00:00	South Joshua, NY 26723	alive
51	Kelly Sandoval	Check fraud	524-65-6389	042 Griffin Turnpike Suite 897	1993-08-03 00:00:00	South Brendan, MN 25424	missing
52	Eric Browning	Larceny	165-15-0088	747 Figueroa Parkway	1971-10-03 00:00:00	South Kathleen, FL 93168	alive
53	Amy Silva	Arson	086-57-7788	573 Shannon Island	1973-07-12 00:00:00	East Jeremy, NH 35861	terminated
54	Matthew James	Manslaughter	628-42-9179	8596 Edward Knolls Apt. 376	1989-10-07 00:00:00	Susanshire, CO 78737-7262	alive
55	Jill Martin	Vehicular homicide	806-85-1421	64228 Linda Ways	2016-08-25 00:00:00	New Thomasbury, NY 15521-0536	terminated
56	Robert Romero	Obstruction of justice	156-57-5347	155 Kelsey Forest	1990-09-04 00:00:00	New Anthony, IA 54517-0968	missing
57	David Martin II	Animal cruelty	006-32-0315	USCGC Pearson	1974-10-20 00:00:00	FPO AE 68111	missing
58	Kristen Gould	Tax evasion	709-98-3901	USNV Perez	1995-04-13 00:00:00	FPO AE 17535	alive
59	Daniel Adams	Tax evasion	670-59-2842	813 Perez Springs	2016-10-04 00:00:00	Simpsonland, TX 51617	missing
60	Dennis Coleman	Obstruction of justice	773-51-1931	558 Benjamin Throughway Suite 337	1981-12-19 00:00:00	Sotomouth, WA 64952	missing
61	Ryan Arnold	Vehicular homicide	801-10-5197	333 Johnson Fork	1977-04-08 00:00:00	Gonzalesmouth, ME 46385-6616	missing
62	Lauren Schroeder	Larceny	443-76-1756	USS Brady	1974-04-12 00:00:00	FPO AP 82687	terminated
63	Anna Richards	Vehicular homicide	724-24-8336	612 Norris Mountain Apt. 033	2001-03-31 00:00:00	East Christopher, VA 62510-3750	missing
64	Troy Patterson	Check fraud	366-15-5896	7036 Chloe Coves	1982-07-22 00:00:00	North Davidmouth, FM 63389-6657	missing
65	John Campbell	Check fraud	063-64-8960	4351 Dylan Prairie Apt. 762	2012-02-24 00:00:00	Gonzalezville, PW 99432	alive
66	Gina Cisneros	Check fraud	681-28-3093	5652 Mark Terrace	2015-05-19 00:00:00	Moralesland, VT 17342	terminated
67	James Griffith	Burglary	319-80-9929	USCGC Reilly	1993-05-21 00:00:00	FPO AP 48242	alive
68	Debra Armstrong	Obstruction of justice	391-19-7993	35324 Amber Inlet Apt. 929	1979-08-30 00:00:00	East Anneshire, SD 30288	missing
69	Michelle Holt	Manslaughter	743-49-9554	5035 Kimberly Road	2011-03-18 00:00:00	Bullockstad, NE 44536	missing
\.


--
-- Name: criminal_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.criminal_records_id_seq', 69, true);


--
-- Name: criminal_records criminal_records_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.criminal_records
    ADD CONSTRAINT criminal_records_pk PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

