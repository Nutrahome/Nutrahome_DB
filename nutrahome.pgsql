--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: booths; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE booths (
    bid integer NOT NULL,
    bname character varying(225),
    btype character varying(225),
    bphoto character varying(225) DEFAULT 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Liv_3yLJRz43h3dmzUmETOFR8xn_qJ9buQ&usqp=CAU'::character varying
);


ALTER TABLE booths OWNER TO postgres;

--
-- Name: booths_bid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE booths_bid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE booths_bid_seq OWNER TO postgres;

--
-- Name: booths_bid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE booths_bid_seq OWNED BY booths.bid;


--
-- Name: dietitians; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE dietitians (
    did integer NOT NULL,
    dfname character varying(50) DEFAULT 'Anonymous'::character varying,
    dlname character varying(50),
    dstr character varying(100),
    dpractice character varying(100),
    deducation character varying(100),
    dexpertise character varying(100),
    dexperience integer,
    dcreatedon timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    dupdatedon timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    dphoto character varying(255) DEFAULT 'https://cdn0.iconfinder.com/data/icons/yellow-colored-set-6/512/3065_man_c-512.png'::character varying,
    dtitle character varying(20)
);


ALTER TABLE dietitians OWNER TO postgres;

--
-- Name: dietitians_did_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE dietitians_did_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dietitians_did_seq OWNER TO postgres;

--
-- Name: dietitians_did_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE dietitians_did_seq OWNED BY dietitians.did;


--
-- Name: meals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE meals (
    mid integer NOT NULL,
    mname character varying(225),
    minfo character varying(225),
    mprice integer,
    mphoto character varying(225) DEFAULT 'https://www.pngitem.com/pimgs/m/43-435645_healthy-food-food-icon-png-download-healthy-food.png'::character varying
);


ALTER TABLE meals OWNER TO postgres;

--
-- Name: meals_mid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE meals_mid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE meals_mid_seq OWNER TO postgres;

--
-- Name: meals_mid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE meals_mid_seq OWNED BY meals.mid;


--
-- Name: paymethods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE paymethods (
    pmid integer NOT NULL,
    pmname character varying(225),
    pmphoto character varying(225) DEFAULT 'https://thumbs.dreamstime.com/b/payment-icon-flat-style-payment-icon-flat-style-hand-holding-money-yellow-background-circle-124180489.jpg'::character varying,
    pmtype character varying(10)
);


ALTER TABLE paymethods OWNER TO postgres;

--
-- Name: paymethod_pmid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE paymethod_pmid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE paymethod_pmid_seq OWNER TO postgres;

--
-- Name: paymethod_pmid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE paymethod_pmid_seq OWNED BY paymethods.pmid;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    uid integer NOT NULL,
    ufname character varying(50) DEFAULT 'Anonymous'::character varying,
    ulname character varying(50),
    uphone character varying(20) NOT NULL,
    upin character varying(6) DEFAULT '123456'::character varying NOT NULL,
    uweight integer DEFAULT 0,
    uheight integer DEFAULT 0,
    ucreatedon timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    uupdatedon timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    uphoto character varying(255) DEFAULT 'https://cdn0.iconfinder.com/data/icons/yellow-colored-set-6/512/3065_man_c-512.png'::character varying
);


ALTER TABLE users OWNER TO postgres;

--
-- Name: users_uid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_uid_seq OWNER TO postgres;

--
-- Name: users_uid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_uid_seq OWNED BY users.uid;


--
-- Name: booths bid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booths ALTER COLUMN bid SET DEFAULT nextval('booths_bid_seq'::regclass);


--
-- Name: dietitians did; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dietitians ALTER COLUMN did SET DEFAULT nextval('dietitians_did_seq'::regclass);


--
-- Name: meals mid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meals ALTER COLUMN mid SET DEFAULT nextval('meals_mid_seq'::regclass);


--
-- Name: paymethods pmid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paymethods ALTER COLUMN pmid SET DEFAULT nextval('paymethod_pmid_seq'::regclass);


--
-- Name: users uid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN uid SET DEFAULT nextval('users_uid_seq'::regclass);


--
-- Data for Name: booths; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY booths (bid, bname, btype, bphoto) FROM stdin;
1	Nutrahome HQ Jakarta	Store	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Liv_3yLJRz43h3dmzUmETOFR8xn_qJ9buQ&usqp=CAU
2	Stasiun Lebak Bulus Grab	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/1-lebakbulusgrab.jpg
3	Stasiun Haji Nawi	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/4-hajinawi.jpg
4	Stasiun ASEAN	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/7-asean.jpg
5	Stasiun Bendungan Hilir	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/10-bendunganhilir.jpg
6	Stasiun Bundaran HI	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/13-bundaranhi.jpg
7	Stasiun Fatmawati	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-05/48288458317_1cccc70445_o.jpg
8	Stasiun Blok A	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/5-bloka.jpg
9	Stasiun Senayan	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/8-senayan.jpg
10	Stasiun Setiabudi Astra	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-05/48288396931_46acc33223_o.jpg
11	Stasiun Cipete Raya	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/3-cipeteraya.jpg
12	Stasiun Blok M BCA	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/6-blokmbca.jpg
13	Stasiun Istora Mandiri	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/9-istoramandiri.jpg
14	Stasiun Dukuh Atas BNI	MRT Station	https://jakartamrt.co.id/sites/default/files/2020-07/12-dukuhatasbni.jpg
\.


--
-- Data for Name: dietitians; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY dietitians (did, dfname, dlname, dstr, dpractice, deducation, dexpertise, dexperience, dcreatedon, dupdatedon, dphoto, dtitle) FROM stdin;
1	Winny	Dhestina	120972220-3200124	PIK Hospital	Universitas Indonesia	Obesity, Diabetes, Kidney Disease	3	2020-12-02 13:26:48.510674	2020-12-02 13:26:48.510674	https://1.bp.blogspot.com/-fKkbnnIQiyc/X8gwpArEtBI/AAAAAAAAAFs/mby1jp_8LykZ4i81mMYYKgLuAL58MTQgACNcBGAsYHQ/s320/Dietitian%2B-%2BWinny%2BDhestina%2BS.Gz%252C%2BRD.jpeg	S.Gz, RD
2	Defanda	Tritya	120972220-3262253	PT Organik Sehat Alami	Universitas Brawijaya	Obesity, muscle building, uric acid, diabetes	3	2020-12-02 13:26:48.510674	2020-12-02 13:26:48.510674	https://1.bp.blogspot.com/-b2vf8VWzC_s/X8gwo8erWkI/AAAAAAAAAFo/-cEdtZV57zUvXEcmXs4gf-g8ND-hHzbhACNcBGAsYHQ/s320/Dietitian%2B-%2BDefanda%2BTritya%2BS.Gz%252C%2BRD.jpeg	S.Gz, RD
3	Andi	Alaydrus	123456	RS Sehat Waras	Universitas Ilmu Dunia	Diabetes, Heart Disease	5	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://cdn.sanity.io/images/0vv8moc6/hcplive/0ebb6a8f0c2850697532805d09d4ff10e838a74b-200x200.jpg	S.Gz, RD
4	Budi	Brajamusti	112233	RS Bahagiaku	Universitas Chandradimuka	Diabetes	5	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://cdn.picpng.com/doctors_and_nurses/doctors-and-nurses-clipart-32677.png	S.Gz, RD
5	Chacha	Candraningtyas	135792	RS Sehat Waras	Universitas Patra Garuda	Obesity, Diabetes, Cancer disease	4	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://image.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg	S.Gz, RD
6	Dudung	Dayusman	987654	RS Bahagiaku	Universitas Ilmu Dunia	Obesity, Diabetes, Cancer disease	4	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394-300x425.jpg	S.Gz, RD
7	Erfan	Endrico	131313	RS Bahagiaku	Universitas Kartawidya	Obesity, Diabetes, Cancer & Heart disease	7	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://www.doctor-4-u.co.uk/wp/wp-content/uploads/2020/02/485165_PR_130_SI_24_06_14_255-m-1.png	S.Gz, RD
8	Febby	Fanyadewi	246809	RS Sehat Waras	Universitas Patra Garuda	Obesity, Cancer disease	3	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://previews.123rf.com/images/chagin/chagin1611/chagin161100047/69687005-portrait-of-happy-successful-female-doctor.jpg	S.Gz, RD
9	Gigih	Gandamukti	998877	RS Sehat Waras	Universitas Patra Garuda	Obesity, Cancer disease	6	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://thumbs.dreamstime.com/b/asia-male-doctor-portrait-isolated-white-40941977.jpg	S.Gz, RD
10	Hanna	Hanifah	877665	RS Bahagiaku	Universitas Patra Garuda	Obesity, Cancer, Heart disease	3	2020-12-03 14:15:01.327538	2020-12-03 14:15:01.327538	https://www.dayapharma.com/wp-content/uploads/2019/10/istockphoto-171296819-612x612.jpg	S.Gz, RD
\.


--
-- Data for Name: meals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY meals (mid, mname, minfo, mprice, mphoto) FROM stdin;
1	Regular Meal Box	Affordable personalized meal box	35000	https://1.bp.blogspot.com/-jpJAK2TW_5s/X8gwzlLTplI/AAAAAAAAAF8/4RgVMFKKM1Q_0-lYEqHs6r4hGp3-p8JlQCNcBGAsYHQ/s320/Regular%2BMeal%2BBox.jpg
2	Regular Western Meal Box	Affordable Western cuisine personalized meal box	50000	https://1.bp.blogspot.com/-jLrqUiMTHe8/X8gwrpqTHKI/AAAAAAAAAF0/IxNV8eaUlyMJeSOufE9F56L7oSsIjOW8gCNcBGAsYHQ/s320/Regular%2BWestern%2BMeal%2BBox.jpg
3	Premium Meal Box	Premium-quality meal box, made with high-grade quality of ingredients.	75000	https://1.bp.blogspot.com/-215X6tqOXxA/X8gwrRf7cuI/AAAAAAAAAFw/T-7QwQ_vI1E0suX0cj3n8hyvMUEdHmU5QCNcBGAsYHQ/s320/Premium%2BMeal%2BBox.jpg
4	Add-ons	Fruits & healthy snacks	15000	https://1.bp.blogspot.com/-4voqorHkX_E/X8gwo71tHfI/AAAAAAAAAFk/t1C1PtmEVDoP4UkyMspNTR3J-QGPWps7gCNcBGAsYHQ/s0/Buah-Potong.jpg
\.


--
-- Data for Name: paymethods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY paymethods (pmid, pmname, pmphoto, pmtype) FROM stdin;
1	BCA	https://www.freepnglogos.com/uploads/logo-bca-png/bank-central-asia-logo-bank-central-asia-bca-format-cdr-png-gudril-1.png	atm
2	Mandiri	https://logos-download.com/wp-content/uploads/2016/06/Mandiri_logo.png	atm
3	BNI	https://upload.wikimedia.org/wikipedia/en/thumb/2/27/BankNegaraIndonesia46-logo.svg/1280px-BankNegaraIndonesia46-logo.svg.png	atm
4	CIMB Niaga	https://www.portonews.com/wp-content/uploads/2019/09/Screenshot_20190904-223234_WhatsApp-750x672.jpg	atm
5	Permata Bank	https://images.glints.com/unsafe/1200x0/glints-dashboard.s3.amazonaws.com/company-logo/0be02f22fd035eaee2887211434a03a1.jpg	atm
6	BRI	https://i.pinimg.com/originals/f8/0a/ac/f80aac3c5591e45f0d1da6b07a801b7c.png	atm
7	Bank Mega	https://images.bisnis-cdn.com/posts/2020/03/05/1209590/bank-mega.png	atm
8	OCBC NISP	https://images.glints.com/unsafe/1200x0/glints-dashboard.s3.amazonaws.com/company-logo/68545821966f833d182f98775c73c7ae.png	atm
9	Bank Danamon	https://seekvectorlogo.com/wp-content/uploads/2020/04/bank-danamon-vector-logo.png	atm
10	Bank Muamalat	https://statik.tempo.co/data/2012/05/01/id_117950/117950_620.jpg	atm
11	m-BCA	https://www.freepnglogos.com/uploads/logo-bca-png/bank-central-asia-logo-bank-central-asia-bca-format-cdr-png-gudril-1.png	internet
12	Klik-BCA	https://www.freepnglogos.com/uploads/logo-bca-png/bank-central-asia-logo-bank-central-asia-bca-format-cdr-png-gudril-1.png	internet
13	Jenius	https://donilaksono.files.wordpress.com/2017/12/jenius.png	internet
14	Mandiri Online	https://logos-download.com/wp-content/uploads/2016/06/Mandiri_logo.png	internet
15	Mandiri Internet	https://logos-download.com/wp-content/uploads/2016/06/Mandiri_logo.png	internet
16	Digibank	https://securecdn.pymnts.com/wp-content/uploads/2020/02/dbi_0022_Layer-9.png	internet
17	BNI Mobile	https://upload.wikimedia.org/wikipedia/en/thumb/2/27/BankNegaraIndonesia46-logo.svg/1280px-BankNegaraIndonesia46-logo.svg.png	internet
18	BNI iBank Personal	https://upload.wikimedia.org/wikipedia/en/thumb/2/27/BankNegaraIndonesia46-logo.svg/1280px-BankNegaraIndonesia46-logo.svg.png	internet
19	BRI Mobile	https://i.pinimg.com/originals/f8/0a/ac/f80aac3c5591e45f0d1da6b07a801b7c.png	internet
20	BRI Internet	https://i.pinimg.com/originals/f8/0a/ac/f80aac3c5591e45f0d1da6b07a801b7c.png	internet
21	CIMB Go Mobile	https://www.portonews.com/wp-content/uploads/2019/09/Screenshot_20190904-223234_WhatsApp-750x672.jpg	internet
22	CIMB Clicks	https://www.portonews.com/wp-content/uploads/2019/09/Screenshot_20190904-223234_WhatsApp-750x672.jpg	internet
23	Permata Mobile X	https://images.glints.com/unsafe/1200x0/glints-dashboard.s3.amazonaws.com/company-logo/0be02f22fd035eaee2887211434a03a1.jpg	internet
24	PermataNet	https://images.glints.com/unsafe/1200x0/glints-dashboard.s3.amazonaws.com/company-logo/0be02f22fd035eaee2887211434a03a1.jpg	internet
25	Gopay	https://1.bp.blogspot.com/-ftTB8bnkTPA/XUJbw4V3afI/AAAAAAAABto/F_-6eIBe7iMuS_5AJodNooYTtBuCaMZ6gCEwYBhgL/s1600/Logo%2BGopay%2BBaru.png	emoney
26	Dana	https://1.bp.blogspot.com/-LDwtS_oxYgg/XO67MmzGN7I/AAAAAAAAADI/hrSqgCRod3oIS6NtwjOqdY0okl8hwyi6gCLcBGAs/s1600/logo%2Bdana%2Bdompet%2Bdigital%2BPNG.png	emoney
27	OVO	https://1.bp.blogspot.com/-Iq0Ztu117_8/XzNYaM4ABdI/AAAAAAAAHA0/MabT7B02ErIzty8g26JvnC6cPeBZtATNgCLcBGAsYHQ/s1000/logo-ovo.png	emoney
28	Link Aja	https://seeklogo.com/images/L/link-aja-logo-F029ED0939-seeklogo.com.png	emoney
29	Zipay	https://res.cloudinary.com/tia-img/image/fetch/t_company_avatar/https%3A%2F%2Fcdn.techinasia.com%2Fdata%2Fimages%2F73rWdYp3vTuaGF6q05NNup7BelJtWfOsy9bJmBq9.png	emoney
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (uid, ufname, ulname, uphone, upin, uweight, uheight, ucreatedon, uupdatedon, uphoto) FROM stdin;
1	Andi	Susilo	08112233445566	123456	67	170	2020-12-02 15:48:03.717075	2020-12-02 15:48:03.717075	https://cdn0.iconfinder.com/data/icons/yellow-colored-set-6/512/3065_man_c-512.png
\.


--
-- Name: booths_bid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('booths_bid_seq', 14, true);


--
-- Name: dietitians_did_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('dietitians_did_seq', 10, true);


--
-- Name: meals_mid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('meals_mid_seq', 4, true);


--
-- Name: paymethod_pmid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('paymethod_pmid_seq', 29, true);


--
-- Name: users_uid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_uid_seq', 1, true);


--
-- Name: booths booths_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY booths
    ADD CONSTRAINT booths_pkey PRIMARY KEY (bid);


--
-- Name: dietitians dietitians_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY dietitians
    ADD CONSTRAINT dietitians_pkey PRIMARY KEY (did);


--
-- Name: meals meals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meals
    ADD CONSTRAINT meals_pkey PRIMARY KEY (mid);


--
-- Name: paymethods paymethod_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY paymethods
    ADD CONSTRAINT paymethod_pkey PRIMARY KEY (pmid);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uid);


--
-- Name: users users_uphone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_uphone_key UNIQUE (uphone);


--
-- PostgreSQL database dump complete
--

