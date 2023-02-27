--
-- TOC entry 217 (class 1259 OID 49551)
-- Name: mezzo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mezzo (
    id bigint NOT NULL,
    codice character varying(255),
    tipomezzo character varying(255),
    trattaassegnata_id bigint
);


--
-- TOC entry 209 (class 1259 OID 49543)
-- Name: mezzo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mezzo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 218 (class 1259 OID 49558)
-- Name: percorrenzatratta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.percorrenzatratta (
    id bigint NOT NULL,
    tempopercorrenza integer,
    mezzo_id bigint,
    tratta_id bigint
);


--
-- TOC entry 210 (class 1259 OID 49544)
-- Name: percorrenzatratta_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.percorrenzatratta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 219 (class 1259 OID 49563)
-- Name: puntovendita; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.puntovendita (
    dtype character varying(31) NOT NULL,
    id bigint NOT NULL,
    codice character varying(255),
    stato integer,
    nome character varying(255)
);


--
-- TOC entry 211 (class 1259 OID 49545)
-- Name: puntovendita_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.puntovendita_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 220 (class 1259 OID 49570)
-- Name: statomezzo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.statomezzo (
    id bigint NOT NULL,
    datafine timestamp without time zone,
    datainizio timestamp without time zone,
    tipostatomezzo integer,
    mezzo_id bigint
);


--
-- TOC entry 212 (class 1259 OID 49546)
-- Name: statomezzo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.statomezzo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 221 (class 1259 OID 49575)
-- Name: tessera; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tessera (
    id bigint NOT NULL,
    dataemissione timestamp without time zone,
    datascadenza timestamp without time zone,
    numerotessera character varying(255),
    utente_id bigint
);


--
-- TOC entry 213 (class 1259 OID 49547)
-- Name: tessera_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tessera_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 214 (class 1259 OID 49548)
-- Name: titolo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.titolo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 222 (class 1259 OID 49580)
-- Name: titolodiviaggio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.titolodiviaggio (
    dtype character varying(31) NOT NULL,
    id bigint NOT NULL,
    codice character varying(255),
    dataemissione timestamp without time zone,
    datavidimazione timestamp without time zone,
    statobiglietto integer,
    datascadenza timestamp without time zone,
    tipoabbonamento integer,
    emittente_id bigint,
    mezzovidimazione_id bigint,
    tessera_id bigint
);


--
-- TOC entry 223 (class 1259 OID 49585)
-- Name: tratta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tratta (
    id bigint NOT NULL,
    capolinea character varying(255),
    partenza character varying(255),
    tempopercorrenzamedia integer
);


--
-- TOC entry 215 (class 1259 OID 49549)
-- Name: tratta_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tratta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 224 (class 1259 OID 49592)
-- Name: utente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.utente (
    id bigint NOT NULL,
    cognome character varying(255),
    datadinascita timestamp without time zone,
    email character varying(255),
    nome character varying(255)
);


--
-- TOC entry 216 (class 1259 OID 49550)
-- Name: utente_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.utente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3373 (class 0 OID 49551)
-- Dependencies: 217
-- Data for Name: mezzo; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3374 (class 0 OID 49558)
-- Dependencies: 218
-- Data for Name: percorrenzatratta; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3375 (class 0 OID 49563)
-- Dependencies: 219
-- Data for Name: puntovendita; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3376 (class 0 OID 49570)
-- Dependencies: 220
-- Data for Name: statomezzo; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3377 (class 0 OID 49575)
-- Dependencies: 221
-- Data for Name: tessera; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3378 (class 0 OID 49580)
-- Dependencies: 222
-- Data for Name: titolodiviaggio; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3379 (class 0 OID 49585)
-- Dependencies: 223
-- Data for Name: tratta; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3380 (class 0 OID 49592)
-- Dependencies: 224
-- Data for Name: utente; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 209
-- Name: mezzo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mezzo_seq', 1, false);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 210
-- Name: percorrenzatratta_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.percorrenzatratta_seq', 1, false);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 211
-- Name: puntovendita_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.puntovendita_seq', 1, false);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 212
-- Name: statomezzo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.statomezzo_seq', 1, false);


--
-- TOC entry 3391 (class 0 OID 0)
-- Dependencies: 213
-- Name: tessera_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tessera_seq', 1, false);


--
-- TOC entry 3392 (class 0 OID 0)
-- Dependencies: 214
-- Name: titolo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.titolo_seq', 1, false);


--
-- TOC entry 3393 (class 0 OID 0)
-- Dependencies: 215
-- Name: tratta_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tratta_seq', 1, false);


--
-- TOC entry 3394 (class 0 OID 0)
-- Dependencies: 216
-- Name: utente_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.utente_seq', 1, false);


--
-- TOC entry 3203 (class 2606 OID 49557)
-- Name: mezzo mezzo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mezzo
    ADD CONSTRAINT mezzo_pkey PRIMARY KEY (id);


--
-- TOC entry 3205 (class 2606 OID 49562)
-- Name: percorrenzatratta percorrenzatratta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.percorrenzatratta
    ADD CONSTRAINT percorrenzatratta_pkey PRIMARY KEY (id);


--
-- TOC entry 3207 (class 2606 OID 49569)
-- Name: puntovendita puntovendita_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.puntovendita
    ADD CONSTRAINT puntovendita_pkey PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 49574)
-- Name: statomezzo statomezzo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statomezzo
    ADD CONSTRAINT statomezzo_pkey PRIMARY KEY (id);


--
-- TOC entry 3211 (class 2606 OID 49579)
-- Name: tessera tessera_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tessera
    ADD CONSTRAINT tessera_pkey PRIMARY KEY (id);


--
-- TOC entry 3213 (class 2606 OID 49584)
-- Name: titolodiviaggio titolodiviaggio_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titolodiviaggio
    ADD CONSTRAINT titolodiviaggio_pkey PRIMARY KEY (id);


--
-- TOC entry 3215 (class 2606 OID 49591)
-- Name: tratta tratta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tratta
    ADD CONSTRAINT tratta_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 49598)
-- Name: utente utente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 49634)
-- Name: titolodiviaggio fk6fojpcjfjwgl6g5alsxrsifq; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titolodiviaggio
    ADD CONSTRAINT fk6fojpcjfjwgl6g5alsxrsifq FOREIGN KEY (tessera_id) REFERENCES public.tessera(id);


--
-- TOC entry 3219 (class 2606 OID 49604)
-- Name: percorrenzatratta fkcp42edi1qgpyx1c53eo8cpnh4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.percorrenzatratta
    ADD CONSTRAINT fkcp42edi1qgpyx1c53eo8cpnh4 FOREIGN KEY (mezzo_id) REFERENCES public.mezzo(id);


--
-- TOC entry 3222 (class 2606 OID 49619)
-- Name: tessera fkdii2tcwc9nva2m6fncngltbod; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tessera
    ADD CONSTRAINT fkdii2tcwc9nva2m6fncngltbod FOREIGN KEY (utente_id) REFERENCES public.utente(id);


--
-- TOC entry 3218 (class 2606 OID 49599)
-- Name: mezzo fkfq6gga7qc7237rux33awghntb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mezzo
    ADD CONSTRAINT fkfq6gga7qc7237rux33awghntb FOREIGN KEY (trattaassegnata_id) REFERENCES public.tratta(id);


--
-- TOC entry 3221 (class 2606 OID 49614)
-- Name: statomezzo fkga43fw767wqyti6a4cahc5qvo; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.statomezzo
    ADD CONSTRAINT fkga43fw767wqyti6a4cahc5qvo FOREIGN KEY (mezzo_id) REFERENCES public.mezzo(id);


--
-- TOC entry 3220 (class 2606 OID 49609)
-- Name: percorrenzatratta fkhdi4x2oy3vssmhlcspklj0gow; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.percorrenzatratta
    ADD CONSTRAINT fkhdi4x2oy3vssmhlcspklj0gow FOREIGN KEY (tratta_id) REFERENCES public.tratta(id);


--
-- TOC entry 3224 (class 2606 OID 49629)
-- Name: titolodiviaggio fkluxm1ojct4lcs2ts4kxwa65sr; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titolodiviaggio
    ADD CONSTRAINT fkluxm1ojct4lcs2ts4kxwa65sr FOREIGN KEY (mezzovidimazione_id) REFERENCES public.mezzo(id);


--
-- TOC entry 3223 (class 2606 OID 49624)
-- Name: titolodiviaggio fkmoq0frax3t9s9msmw2k3gi8q7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titolodiviaggio
    ADD CONSTRAINT fkmoq0frax3t9s9msmw2k3gi8q7 FOREIGN KEY (emittente_id) REFERENCES public.puntovendita(id);


-- Completed on 2022-07-14 08:31:38

--
-- PostgreSQL database dump complete
--

