--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-19 17:31:30

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
-- TOC entry 218 (class 1259 OID 16426)
-- Name: daily_price; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daily_price (
    id integer NOT NULL,
    item smallint NOT NULL,
    date date NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.daily_price OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16425)
-- Name: daily_price_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.daily_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.daily_price_id_seq OWNER TO postgres;

--
-- TOC entry 4806 (class 0 OID 0)
-- Dependencies: 217
-- Name: daily_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.daily_price_id_seq OWNED BY public.daily_price.id;


--
-- TOC entry 220 (class 1259 OID 16440)
-- Name: urls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    url text NOT NULL,
    name text NOT NULL,
    "isActive" boolean NOT NULL
);


ALTER TABLE public.urls OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16439)
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.urls_id_seq OWNER TO postgres;

--
-- TOC entry 4807 (class 0 OID 0)
-- Dependencies: 219
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- TOC entry 4646 (class 2604 OID 16429)
-- Name: daily_price id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daily_price ALTER COLUMN id SET DEFAULT nextval('public.daily_price_id_seq'::regclass);


--
-- TOC entry 4647 (class 2604 OID 16443)
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- TOC entry 4798 (class 0 OID 16426)
-- Dependencies: 218
-- Data for Name: daily_price; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.daily_price VALUES (1, 1, '2024-05-22', 891);
INSERT INTO public.daily_price VALUES (2, 2, '2024-05-22', 791);
INSERT INTO public.daily_price VALUES (4, 1, '2024-05-22', 891);
INSERT INTO public.daily_price VALUES (5, 2, '2024-05-22', 791);
INSERT INTO public.daily_price VALUES (7, 1, '2024-05-22', 891);
INSERT INTO public.daily_price VALUES (8, 2, '2024-05-22', 791);
INSERT INTO public.daily_price VALUES (12, 1, '2024-05-23', 898);
INSERT INTO public.daily_price VALUES (13, 2, '2024-05-23', 797);
INSERT INTO public.daily_price VALUES (16, 1, '2024-05-25', 912);
INSERT INTO public.daily_price VALUES (17, 2, '2024-05-25', 794);
INSERT INTO public.daily_price VALUES (33, 1, '2024-05-25', 914);
INSERT INTO public.daily_price VALUES (34, 2, '2024-05-25', 793);
INSERT INTO public.daily_price VALUES (35, 1, '2024-05-25', 914);
INSERT INTO public.daily_price VALUES (36, 2, '2024-05-25', 793);
INSERT INTO public.daily_price VALUES (37, 1, '2024-05-26', 914);
INSERT INTO public.daily_price VALUES (38, 2, '2024-05-26', 793);
INSERT INTO public.daily_price VALUES (39, 1, '2024-05-26', 914);
INSERT INTO public.daily_price VALUES (40, 9, '2024-05-26', 1311);
INSERT INTO public.daily_price VALUES (41, 2, '2024-05-26', 793);
INSERT INTO public.daily_price VALUES (42, 9, '2024-05-27', 1325);
INSERT INTO public.daily_price VALUES (43, 2, '2024-05-27', 797);
INSERT INTO public.daily_price VALUES (44, 1, '2024-05-27', 958);
INSERT INTO public.daily_price VALUES (45, 1, '2024-05-28', 968);
INSERT INTO public.daily_price VALUES (46, 9, '2024-05-28', 1392);
INSERT INTO public.daily_price VALUES (47, 2, '2024-05-28', 790);
INSERT INTO public.daily_price VALUES (48, 9, '2024-05-29', 1384);
INSERT INTO public.daily_price VALUES (49, 2, '2024-05-29', 788);
INSERT INTO public.daily_price VALUES (50, 1, '2024-05-29', 951);
INSERT INTO public.daily_price VALUES (51, 2, '2024-05-30', 803);
INSERT INTO public.daily_price VALUES (52, 1, '2024-05-30', 903);
INSERT INTO public.daily_price VALUES (53, 9, '2024-05-30', 1414);
INSERT INTO public.daily_price VALUES (54, 9, '2024-06-03', 1230);
INSERT INTO public.daily_price VALUES (55, 2, '2024-06-03', 808);
INSERT INTO public.daily_price VALUES (56, 1, '2024-06-03', 907);
INSERT INTO public.daily_price VALUES (57, 1, '2024-06-04', 931);
INSERT INTO public.daily_price VALUES (58, 9, '2024-06-04', 1249);
INSERT INTO public.daily_price VALUES (59, 2, '2024-06-04', 804);
INSERT INTO public.daily_price VALUES (60, 1, '2024-06-07', 967);
INSERT INTO public.daily_price VALUES (61, 2, '2024-06-07', 798);
INSERT INTO public.daily_price VALUES (62, 9, '2024-06-07', 1230);
INSERT INTO public.daily_price VALUES (63, 9, '2024-06-08', 1276);
INSERT INTO public.daily_price VALUES (64, 2, '2024-06-08', 798);
INSERT INTO public.daily_price VALUES (65, 1, '2024-06-08', 967);
INSERT INTO public.daily_price VALUES (66, 1, '2024-06-08', 982);
INSERT INTO public.daily_price VALUES (67, 2, '2024-06-08', 783);
INSERT INTO public.daily_price VALUES (68, 9, '2024-06-09', 1276);
INSERT INTO public.daily_price VALUES (69, 2, '2024-06-09', 783);
INSERT INTO public.daily_price VALUES (70, 1, '2024-06-09', 982);
INSERT INTO public.daily_price VALUES (71, 1, '2024-06-09', 982);
INSERT INTO public.daily_price VALUES (72, 2, '2024-06-09', 783);
INSERT INTO public.daily_price VALUES (73, 9, '2024-06-09', 1276);
INSERT INTO public.daily_price VALUES (75, 1, '2024-06-09', 982);
INSERT INTO public.daily_price VALUES (76, 9, '2024-06-09', 1276);
INSERT INTO public.daily_price VALUES (77, 2, '2024-06-09', 783);
INSERT INTO public.daily_price VALUES (79, 2, '2024-06-09', 783);
INSERT INTO public.daily_price VALUES (80, 1, '2024-06-09', 982);
INSERT INTO public.daily_price VALUES (81, 9, '2024-06-09', 1276);
INSERT INTO public.daily_price VALUES (82, 18, '2024-06-09', 299);
INSERT INTO public.daily_price VALUES (84, 1, '2024-06-09', 998);
INSERT INTO public.daily_price VALUES (85, 9, '2024-06-09', 1274);
INSERT INTO public.daily_price VALUES (86, 2, '2024-06-09', 777);
INSERT INTO public.daily_price VALUES (87, 18, '2024-06-09', 299);
INSERT INTO public.daily_price VALUES (88, 3, '2024-06-09', 48531);
INSERT INTO public.daily_price VALUES (89, 3, '2024-06-09', 42531);
INSERT INTO public.daily_price VALUES (90, 3, '2024-06-09', 44531);
INSERT INTO public.daily_price VALUES (91, 1, '2024-06-10', 987);
INSERT INTO public.daily_price VALUES (92, 1, '2024-06-12', 987);
INSERT INTO public.daily_price VALUES (93, 1, '2024-06-12', 987);
INSERT INTO public.daily_price VALUES (94, 3, '2024-06-12', 44531);
INSERT INTO public.daily_price VALUES (95, 18, '2024-06-12', 299);
INSERT INTO public.daily_price VALUES (96, 1, '2024-06-12', 987);
INSERT INTO public.daily_price VALUES (97, 3, '2024-06-12', 44531);
INSERT INTO public.daily_price VALUES (98, 18, '2024-06-12', 299);
INSERT INTO public.daily_price VALUES (99, 3, '2024-06-13', 44531);
INSERT INTO public.daily_price VALUES (100, 1, '2024-06-13', 955);
INSERT INTO public.daily_price VALUES (101, 18, '2024-06-13', 299);
INSERT INTO public.daily_price VALUES (102, 1, '2024-06-13', 955);
INSERT INTO public.daily_price VALUES (103, 18, '2024-06-13', 299);
INSERT INTO public.daily_price VALUES (104, 3, '2024-06-13', 44531);
INSERT INTO public.daily_price VALUES (105, 1, '2024-06-13', 955);
INSERT INTO public.daily_price VALUES (106, 3, '2024-06-13', 44531);
INSERT INTO public.daily_price VALUES (107, 18, '2024-06-13', 299);
INSERT INTO public.daily_price VALUES (108, 3, '2024-06-14', 44531);
INSERT INTO public.daily_price VALUES (109, 18, '2024-06-14', 299);
INSERT INTO public.daily_price VALUES (110, 1, '2024-06-14', 882);
INSERT INTO public.daily_price VALUES (111, 3, '2024-06-15', 44531);
INSERT INTO public.daily_price VALUES (112, 1, '2024-06-15', 882);
INSERT INTO public.daily_price VALUES (113, 18, '2024-06-15', 299);
INSERT INTO public.daily_price VALUES (114, 1, '2024-06-16', 907);
INSERT INTO public.daily_price VALUES (115, 3, '2024-06-16', 44531);
INSERT INTO public.daily_price VALUES (116, 18, '2024-06-16', 299);
INSERT INTO public.daily_price VALUES (117, 1, '2024-06-17', 902);
INSERT INTO public.daily_price VALUES (118, 2, '2024-06-17', 679);
INSERT INTO public.daily_price VALUES (119, 3, '2024-06-17', 45521);
INSERT INTO public.daily_price VALUES (120, 18, '2024-06-17', 299);
INSERT INTO public.daily_price VALUES (121, 9, '2024-06-17', 1259);
INSERT INTO public.daily_price VALUES (122, 2, '2024-06-18', 679);
INSERT INTO public.daily_price VALUES (123, 1, '2024-06-18', 902);
INSERT INTO public.daily_price VALUES (124, 3, '2024-06-18', 45521);
INSERT INTO public.daily_price VALUES (125, 9, '2024-06-18', 1259);
INSERT INTO public.daily_price VALUES (126, 18, '2024-06-18', 299);
INSERT INTO public.daily_price VALUES (127, 2, '2024-06-22', 713);
INSERT INTO public.daily_price VALUES (128, 1, '2024-06-22', 956);
INSERT INTO public.daily_price VALUES (129, 18, '2024-06-22', 299);
INSERT INTO public.daily_price VALUES (130, 3, '2024-06-22', 49480);
INSERT INTO public.daily_price VALUES (131, 9, '2024-06-22', 1047);
INSERT INTO public.daily_price VALUES (132, 3, '2024-06-23', 49480);
INSERT INTO public.daily_price VALUES (133, 2, '2024-06-23', 713);
INSERT INTO public.daily_price VALUES (134, 18, '2024-06-23', 299);
INSERT INTO public.daily_price VALUES (135, 1, '2024-06-23', 954);
INSERT INTO public.daily_price VALUES (136, 9, '2024-06-23', 1091);
INSERT INTO public.daily_price VALUES (137, 19, '2024-06-23', 387);
INSERT INTO public.daily_price VALUES (142, 18, '2024-06-24', 299);
INSERT INTO public.daily_price VALUES (143, 1, '2024-06-24', 954);
INSERT INTO public.daily_price VALUES (144, 2, '2024-06-24', 713);
INSERT INTO public.daily_price VALUES (145, 3, '2024-06-24', 49480);
INSERT INTO public.daily_price VALUES (146, 9, '2024-06-24', 1228);
INSERT INTO public.daily_price VALUES (147, 19, '2024-06-24', 387);
INSERT INTO public.daily_price VALUES (152, 3, '2024-06-25', 45521);
INSERT INTO public.daily_price VALUES (153, 9, '2024-06-25', 1241);
INSERT INTO public.daily_price VALUES (154, 18, '2024-06-25', 299);
INSERT INTO public.daily_price VALUES (155, 2, '2024-06-25', 731);
INSERT INTO public.daily_price VALUES (156, 1, '2024-06-25', 956);
INSERT INTO public.daily_price VALUES (157, 19, '2024-06-25', 387);
INSERT INTO public.daily_price VALUES (158, 1, '2024-06-25', 956);
INSERT INTO public.daily_price VALUES (159, 2, '2024-06-25', 731);
INSERT INTO public.daily_price VALUES (160, 3, '2024-06-25', 45521);
INSERT INTO public.daily_price VALUES (161, 9, '2024-06-25', 1241);
INSERT INTO public.daily_price VALUES (162, 18, '2024-06-25', 299);
INSERT INTO public.daily_price VALUES (163, 19, '2024-06-25', 387);
INSERT INTO public.daily_price VALUES (164, 1, '2024-06-26', 951);
INSERT INTO public.daily_price VALUES (165, 2, '2024-06-26', 750);
INSERT INTO public.daily_price VALUES (166, 3, '2024-06-26', 45521);
INSERT INTO public.daily_price VALUES (167, 9, '2024-06-26', 1233);
INSERT INTO public.daily_price VALUES (168, 18, '2024-06-26', 299);
INSERT INTO public.daily_price VALUES (169, 19, '2024-06-26', 387);
INSERT INTO public.daily_price VALUES (170, 1, '2024-06-27', 934);
INSERT INTO public.daily_price VALUES (171, 2, '2024-06-27', 742);
INSERT INTO public.daily_price VALUES (172, 3, '2024-06-27', 48490);
INSERT INTO public.daily_price VALUES (173, 9, '2024-06-27', 1197);
INSERT INTO public.daily_price VALUES (174, 18, '2024-06-27', 299);
INSERT INTO public.daily_price VALUES (175, 19, '2024-06-27', 387);
INSERT INTO public.daily_price VALUES (176, 1, '2024-06-30', 965);
INSERT INTO public.daily_price VALUES (177, 2, '2024-06-30', 740);
INSERT INTO public.daily_price VALUES (178, 3, '2024-06-30', 49480);
INSERT INTO public.daily_price VALUES (179, 9, '2024-06-30', 1170);
INSERT INTO public.daily_price VALUES (180, 18, '2024-06-30', 299);
INSERT INTO public.daily_price VALUES (181, 19, '2024-06-30', 387);
INSERT INTO public.daily_price VALUES (182, 1, '2024-07-01', 1015);
INSERT INTO public.daily_price VALUES (183, 2, '2024-07-01', 745);
INSERT INTO public.daily_price VALUES (184, 3, '2024-07-01', 49480);
INSERT INTO public.daily_price VALUES (185, 9, '2024-07-01', 1188);
INSERT INTO public.daily_price VALUES (186, 18, '2024-07-01', 319);
INSERT INTO public.daily_price VALUES (187, 19, '2024-07-01', 387);
INSERT INTO public.daily_price VALUES (188, 1, '2024-07-02', 996);
INSERT INTO public.daily_price VALUES (189, 2, '2024-07-02', 739);
INSERT INTO public.daily_price VALUES (190, 3, '2024-07-02', 45520);
INSERT INTO public.daily_price VALUES (191, 9, '2024-07-02', 1217);
INSERT INTO public.daily_price VALUES (192, 18, '2024-07-02', 319);
INSERT INTO public.daily_price VALUES (193, 19, '2024-07-02', 387);
INSERT INTO public.daily_price VALUES (194, 1, '2024-07-04', 1011);
INSERT INTO public.daily_price VALUES (195, 2, '2024-07-04', 770);
INSERT INTO public.daily_price VALUES (196, 3, '2024-07-04', 45520);
INSERT INTO public.daily_price VALUES (197, 9, '2024-07-04', 1275);
INSERT INTO public.daily_price VALUES (198, 18, '2024-07-04', 319);
INSERT INTO public.daily_price VALUES (199, 19, '2024-07-04', 387);
INSERT INTO public.daily_price VALUES (200, 1, '2024-07-05', 972);
INSERT INTO public.daily_price VALUES (201, 2, '2024-07-05', 766);
INSERT INTO public.daily_price VALUES (202, 3, '2024-07-05', 45520);
INSERT INTO public.daily_price VALUES (203, 9, '2024-07-05', 1277);
INSERT INTO public.daily_price VALUES (204, 18, '2024-07-05', 319);
INSERT INTO public.daily_price VALUES (205, 19, '2024-07-05', 387);
INSERT INTO public.daily_price VALUES (206, 1, '2024-07-06', 972);
INSERT INTO public.daily_price VALUES (207, 2, '2024-07-06', 766);
INSERT INTO public.daily_price VALUES (208, 3, '2024-07-06', 45520);
INSERT INTO public.daily_price VALUES (209, 9, '2024-07-06', 1277);
INSERT INTO public.daily_price VALUES (210, 18, '2024-07-06', 319);
INSERT INTO public.daily_price VALUES (211, 19, '2024-07-06', 387);
INSERT INTO public.daily_price VALUES (212, 1, '2024-07-07', 964);
INSERT INTO public.daily_price VALUES (213, 2, '2024-07-07', 763);
INSERT INTO public.daily_price VALUES (214, 3, '2024-07-07', 45520);
INSERT INTO public.daily_price VALUES (215, 9, '2024-07-07', 1260);
INSERT INTO public.daily_price VALUES (216, 18, '2024-07-07', 319);
INSERT INTO public.daily_price VALUES (217, 19, '2024-07-07', 387);
INSERT INTO public.daily_price VALUES (218, 2, '2024-07-14', 775);
INSERT INTO public.daily_price VALUES (219, 3, '2024-07-14', 49480);
INSERT INTO public.daily_price VALUES (220, 9, '2024-07-14', 1382);
INSERT INTO public.daily_price VALUES (221, 18, '2024-07-14', 319);
INSERT INTO public.daily_price VALUES (222, 19, '2024-07-14', 323);
INSERT INTO public.daily_price VALUES (223, 2, '2024-07-15', 884);
INSERT INTO public.daily_price VALUES (224, 3, '2024-07-15', 49480);
INSERT INTO public.daily_price VALUES (225, 9, '2024-07-15', 1392);
INSERT INTO public.daily_price VALUES (226, 18, '2024-07-15', 319);
INSERT INTO public.daily_price VALUES (227, 19, '2024-07-15', 317);
INSERT INTO public.daily_price VALUES (228, 2, '2024-07-15', 766);
INSERT INTO public.daily_price VALUES (229, 3, '2024-07-15', 49480);
INSERT INTO public.daily_price VALUES (230, 9, '2024-07-15', 1351);
INSERT INTO public.daily_price VALUES (231, 18, '2024-07-15', 319);
INSERT INTO public.daily_price VALUES (232, 19, '2024-07-15', 317);
INSERT INTO public.daily_price VALUES (233, 2, '2024-07-18', 753);
INSERT INTO public.daily_price VALUES (234, 3, '2024-07-18', 49480);
INSERT INTO public.daily_price VALUES (235, 9, '2024-07-18', 1378);
INSERT INTO public.daily_price VALUES (236, 18, '2024-07-18', 319);
INSERT INTO public.daily_price VALUES (237, 19, '2024-07-18', 317);
INSERT INTO public.daily_price VALUES (238, 2, '2024-07-19', 776);
INSERT INTO public.daily_price VALUES (239, 3, '2024-07-19', 49480);
INSERT INTO public.daily_price VALUES (240, 9, '2024-07-19', 1412);
INSERT INTO public.daily_price VALUES (241, 18, '2024-07-19', 319);
INSERT INTO public.daily_price VALUES (242, 19, '2024-07-19', 323);
INSERT INTO public.daily_price VALUES (243, 2, '2024-07-20', 776);
INSERT INTO public.daily_price VALUES (244, 3, '2024-07-20', 49480);
INSERT INTO public.daily_price VALUES (245, 9, '2024-07-20', 1412);
INSERT INTO public.daily_price VALUES (246, 18, '2024-07-20', 319);
INSERT INTO public.daily_price VALUES (247, 19, '2024-07-20', 317);
INSERT INTO public.daily_price VALUES (248, 2, '2024-07-21', 748);
INSERT INTO public.daily_price VALUES (249, 3, '2024-07-21', 49480);
INSERT INTO public.daily_price VALUES (250, 9, '2024-07-21', 1373);
INSERT INTO public.daily_price VALUES (251, 18, '2024-07-21', 319);
INSERT INTO public.daily_price VALUES (252, 19, '2024-07-21', 317);
INSERT INTO public.daily_price VALUES (253, 2, '2024-07-23', 832);
INSERT INTO public.daily_price VALUES (254, 3, '2024-07-23', 49480);
INSERT INTO public.daily_price VALUES (255, 9, '2024-07-23', 1411);
INSERT INTO public.daily_price VALUES (256, 18, '2024-07-23', 319);
INSERT INTO public.daily_price VALUES (257, 19, '2024-07-23', 317);
INSERT INTO public.daily_price VALUES (258, 2, '2024-07-24', 917);
INSERT INTO public.daily_price VALUES (259, 3, '2024-07-24', 49480);
INSERT INTO public.daily_price VALUES (260, 9, '2024-07-24', 1344);
INSERT INTO public.daily_price VALUES (261, 18, '2024-07-24', 319);
INSERT INTO public.daily_price VALUES (262, 19, '2024-07-24', 317);
INSERT INTO public.daily_price VALUES (263, 2, '2024-07-25', 925);
INSERT INTO public.daily_price VALUES (264, 3, '2024-07-25', 49480);
INSERT INTO public.daily_price VALUES (265, 9, '2024-07-25', 1357);
INSERT INTO public.daily_price VALUES (266, 18, '2024-07-25', 319);
INSERT INTO public.daily_price VALUES (267, 19, '2024-07-25', 317);
INSERT INTO public.daily_price VALUES (268, 2, '2024-07-29', 927);
INSERT INTO public.daily_price VALUES (269, 3, '2024-07-29', 49480);
INSERT INTO public.daily_price VALUES (270, 9, '2024-07-29', 1395);
INSERT INTO public.daily_price VALUES (271, 18, '2024-07-29', 319);
INSERT INTO public.daily_price VALUES (272, 19, '2024-07-29', 387);
INSERT INTO public.daily_price VALUES (273, 2, '2024-07-30', 848);
INSERT INTO public.daily_price VALUES (274, 3, '2024-07-30', 49480);
INSERT INTO public.daily_price VALUES (275, 9, '2024-07-30', 1331);
INSERT INTO public.daily_price VALUES (276, 18, '2024-07-30', 319);
INSERT INTO public.daily_price VALUES (277, 19, '2024-07-30', 387);
INSERT INTO public.daily_price VALUES (278, 2, '2024-07-31', 872);
INSERT INTO public.daily_price VALUES (279, 3, '2024-07-31', 49480);
INSERT INTO public.daily_price VALUES (280, 9, '2024-07-31', 1279);
INSERT INTO public.daily_price VALUES (281, 18, '2024-07-31', 319);
INSERT INTO public.daily_price VALUES (282, 19, '2024-07-31', 387);
INSERT INTO public.daily_price VALUES (283, 2, '2024-08-01', 960);
INSERT INTO public.daily_price VALUES (284, 3, '2024-08-01', 49480);
INSERT INTO public.daily_price VALUES (285, 9, '2024-08-01', 1241);
INSERT INTO public.daily_price VALUES (286, 18, '2024-08-01', 329);
INSERT INTO public.daily_price VALUES (287, 19, '2024-08-01', 395);
INSERT INTO public.daily_price VALUES (288, 2, '2024-08-02', 879);
INSERT INTO public.daily_price VALUES (289, 3, '2024-08-02', 49480);
INSERT INTO public.daily_price VALUES (290, 9, '2024-08-02', 1268);
INSERT INTO public.daily_price VALUES (291, 18, '2024-08-02', 329);
INSERT INTO public.daily_price VALUES (292, 19, '2024-08-02', 334);
INSERT INTO public.daily_price VALUES (293, 2, '2024-08-03', 879);
INSERT INTO public.daily_price VALUES (294, 3, '2024-08-03', 49480);
INSERT INTO public.daily_price VALUES (295, 9, '2024-08-03', 1268);
INSERT INTO public.daily_price VALUES (296, 18, '2024-08-03', 329);
INSERT INTO public.daily_price VALUES (297, 19, '2024-08-03', 334);
INSERT INTO public.daily_price VALUES (298, 2, '2024-08-04', 873);
INSERT INTO public.daily_price VALUES (299, 3, '2024-08-04', 49480);
INSERT INTO public.daily_price VALUES (300, 9, '2024-08-04', 1268);
INSERT INTO public.daily_price VALUES (301, 18, '2024-08-04', 329);
INSERT INTO public.daily_price VALUES (302, 19, '2024-08-04', 334);
INSERT INTO public.daily_price VALUES (303, 2, '2024-08-05', 859);
INSERT INTO public.daily_price VALUES (304, 3, '2024-08-05', 49480);
INSERT INTO public.daily_price VALUES (305, 9, '2024-08-05', 1295);
INSERT INTO public.daily_price VALUES (306, 18, '2024-08-05', 329);
INSERT INTO public.daily_price VALUES (307, 19, '2024-08-05', 334);
INSERT INTO public.daily_price VALUES (308, 2, '2024-08-06', 856);
INSERT INTO public.daily_price VALUES (309, 3, '2024-08-06', 49480);
INSERT INTO public.daily_price VALUES (310, 9, '2024-08-06', 1326);
INSERT INTO public.daily_price VALUES (311, 18, '2024-08-06', 329);
INSERT INTO public.daily_price VALUES (312, 19, '2024-08-06', 334);
INSERT INTO public.daily_price VALUES (313, 2, '2024-08-07', 856);
INSERT INTO public.daily_price VALUES (314, 3, '2024-08-07', 49480);
INSERT INTO public.daily_price VALUES (315, 9, '2024-08-07', 1349);
INSERT INTO public.daily_price VALUES (316, 18, '2024-08-07', 329);
INSERT INTO public.daily_price VALUES (317, 19, '2024-08-07', 334);
INSERT INTO public.daily_price VALUES (318, 1, '2024-08-08', 1159);
INSERT INTO public.daily_price VALUES (319, 2, '2024-08-08', 855);
INSERT INTO public.daily_price VALUES (320, 3, '2024-08-08', 49480);
INSERT INTO public.daily_price VALUES (321, 9, '2024-08-08', 1331);
INSERT INTO public.daily_price VALUES (322, 18, '2024-08-08', 329);
INSERT INTO public.daily_price VALUES (323, 19, '2024-08-08', 341);
INSERT INTO public.daily_price VALUES (324, 1, '2024-08-09', 1159);
INSERT INTO public.daily_price VALUES (325, 2, '2024-08-09', 855);
INSERT INTO public.daily_price VALUES (326, 3, '2024-08-09', 49480);
INSERT INTO public.daily_price VALUES (327, 9, '2024-08-09', 1331);
INSERT INTO public.daily_price VALUES (328, 18, '2024-08-09', 329);
INSERT INTO public.daily_price VALUES (329, 19, '2024-08-09', 341);
INSERT INTO public.daily_price VALUES (330, 2, '2024-08-09', 859);
INSERT INTO public.daily_price VALUES (331, 3, '2024-08-09', 49480);
INSERT INTO public.daily_price VALUES (332, 9, '2024-08-09', 1358);
INSERT INTO public.daily_price VALUES (333, 18, '2024-08-09', 329);
INSERT INTO public.daily_price VALUES (334, 19, '2024-08-09', 334);
INSERT INTO public.daily_price VALUES (335, 2, '2024-08-10', 939);
INSERT INTO public.daily_price VALUES (336, 3, '2024-08-10', 49480);
INSERT INTO public.daily_price VALUES (337, 9, '2024-08-10', 1428);
INSERT INTO public.daily_price VALUES (338, 18, '2024-08-10', 329);
INSERT INTO public.daily_price VALUES (339, 19, '2024-08-10', 334);
INSERT INTO public.daily_price VALUES (340, 2, '2024-08-12', 817);
INSERT INTO public.daily_price VALUES (341, 3, '2024-08-12', 49480);
INSERT INTO public.daily_price VALUES (342, 9, '2024-08-12', 1384);
INSERT INTO public.daily_price VALUES (343, 18, '2024-08-12', 329);
INSERT INTO public.daily_price VALUES (344, 19, '2024-08-12', 334);
INSERT INTO public.daily_price VALUES (345, 1, '2024-08-13', 1174);
INSERT INTO public.daily_price VALUES (346, 2, '2024-08-13', 817);
INSERT INTO public.daily_price VALUES (347, 3, '2024-08-13', 49480);
INSERT INTO public.daily_price VALUES (348, 9, '2024-08-13', 1384);
INSERT INTO public.daily_price VALUES (349, 18, '2024-08-13', 329);
INSERT INTO public.daily_price VALUES (350, 19, '2024-08-13', 334);
INSERT INTO public.daily_price VALUES (351, 2, '2024-08-14', 893);
INSERT INTO public.daily_price VALUES (352, 3, '2024-08-14', 49480);
INSERT INTO public.daily_price VALUES (353, 9, '2024-08-14', 1391);
INSERT INTO public.daily_price VALUES (354, 18, '2024-08-14', 329);
INSERT INTO public.daily_price VALUES (355, 19, '2024-08-14', 334);
INSERT INTO public.daily_price VALUES (356, 2, '2024-08-15', 817);
INSERT INTO public.daily_price VALUES (357, 3, '2024-08-15', 49480);
INSERT INTO public.daily_price VALUES (358, 9, '2024-08-15', 1322);
INSERT INTO public.daily_price VALUES (359, 18, '2024-08-15', 329);
INSERT INTO public.daily_price VALUES (360, 19, '2024-08-15', 334);
INSERT INTO public.daily_price VALUES (361, 2, '2024-08-15', 819);
INSERT INTO public.daily_price VALUES (362, 9, '2024-08-15', 1298);
INSERT INTO public.daily_price VALUES (363, 18, '2024-08-15', 329);
INSERT INTO public.daily_price VALUES (364, 19, '2024-08-15', 334);
INSERT INTO public.daily_price VALUES (365, 2, '2024-08-15', 819);
INSERT INTO public.daily_price VALUES (366, 3, '2024-08-15', 49480);
INSERT INTO public.daily_price VALUES (367, 9, '2024-08-15', 1298);
INSERT INTO public.daily_price VALUES (368, 18, '2024-08-15', 329);
INSERT INTO public.daily_price VALUES (369, 19, '2024-08-15', 334);
INSERT INTO public.daily_price VALUES (370, 1, '2024-08-16', 1594);
INSERT INTO public.daily_price VALUES (371, 2, '2024-08-16', 821);
INSERT INTO public.daily_price VALUES (372, 3, '2024-08-16', 49480);
INSERT INTO public.daily_price VALUES (373, 9, '2024-08-16', 1312);
INSERT INTO public.daily_price VALUES (374, 18, '2024-08-16', 329);
INSERT INTO public.daily_price VALUES (375, 19, '2024-08-16', 334);
INSERT INTO public.daily_price VALUES (376, 2, '2024-08-18', 821);
INSERT INTO public.daily_price VALUES (377, 3, '2024-08-18', 49480);
INSERT INTO public.daily_price VALUES (378, 9, '2024-08-18', 1312);
INSERT INTO public.daily_price VALUES (379, 18, '2024-08-18', 329);
INSERT INTO public.daily_price VALUES (380, 19, '2024-08-18', 334);
INSERT INTO public.daily_price VALUES (381, 2, '2024-08-20', 869);
INSERT INTO public.daily_price VALUES (382, 3, '2024-08-20', 49480);
INSERT INTO public.daily_price VALUES (383, 9, '2024-08-20', 1358);
INSERT INTO public.daily_price VALUES (384, 18, '2024-08-20', 329);
INSERT INTO public.daily_price VALUES (385, 19, '2024-08-20', 334);
INSERT INTO public.daily_price VALUES (386, 2, '2024-08-21', 871);
INSERT INTO public.daily_price VALUES (387, 3, '2024-08-21', 49480);
INSERT INTO public.daily_price VALUES (388, 9, '2024-08-21', 1362);
INSERT INTO public.daily_price VALUES (389, 18, '2024-08-21', 329);
INSERT INTO public.daily_price VALUES (390, 19, '2024-08-21', 334);
INSERT INTO public.daily_price VALUES (391, 2, '2024-08-23', 950);
INSERT INTO public.daily_price VALUES (392, 3, '2024-08-23', 49480);
INSERT INTO public.daily_price VALUES (393, 9, '2024-08-23', 1402);
INSERT INTO public.daily_price VALUES (394, 18, '2024-08-23', 329);
INSERT INTO public.daily_price VALUES (395, 19, '2024-08-23', 387);
INSERT INTO public.daily_price VALUES (396, 2, '2024-08-26', 946);
INSERT INTO public.daily_price VALUES (397, 3, '2024-08-26', 49480);
INSERT INTO public.daily_price VALUES (398, 9, '2024-08-26', 1395);
INSERT INTO public.daily_price VALUES (399, 18, '2024-08-26', 329);
INSERT INTO public.daily_price VALUES (400, 19, '2024-08-26', 387);
INSERT INTO public.daily_price VALUES (401, 2, '2024-08-27', 944);
INSERT INTO public.daily_price VALUES (402, 3, '2024-08-27', 49480);
INSERT INTO public.daily_price VALUES (403, 9, '2024-08-27', 1345);
INSERT INTO public.daily_price VALUES (404, 18, '2024-08-27', 329);
INSERT INTO public.daily_price VALUES (405, 19, '2024-08-27', 387);
INSERT INTO public.daily_price VALUES (406, 2, '2024-08-28', 864);
INSERT INTO public.daily_price VALUES (407, 3, '2024-08-28', 49480);
INSERT INTO public.daily_price VALUES (408, 9, '2024-08-28', 1304);
INSERT INTO public.daily_price VALUES (409, 18, '2024-08-28', 329);
INSERT INTO public.daily_price VALUES (410, 19, '2024-08-28', 387);
INSERT INTO public.daily_price VALUES (411, 2, '2024-08-29', 941);
INSERT INTO public.daily_price VALUES (412, 3, '2024-08-29', 49480);
INSERT INTO public.daily_price VALUES (413, 9, '2024-08-29', 1336);
INSERT INTO public.daily_price VALUES (414, 18, '2024-08-29', 329);
INSERT INTO public.daily_price VALUES (415, 19, '2024-08-29', 387);
INSERT INTO public.daily_price VALUES (416, 2, '2024-08-30', 851);
INSERT INTO public.daily_price VALUES (417, 3, '2024-08-30', 49480);
INSERT INTO public.daily_price VALUES (418, 9, '2024-08-30', 1353);
INSERT INTO public.daily_price VALUES (419, 18, '2024-08-30', 329);
INSERT INTO public.daily_price VALUES (420, 19, '2024-08-30', 387);
INSERT INTO public.daily_price VALUES (421, 2, '2024-08-31', 851);
INSERT INTO public.daily_price VALUES (422, 3, '2024-08-31', 49480);
INSERT INTO public.daily_price VALUES (423, 9, '2024-08-31', 1353);
INSERT INTO public.daily_price VALUES (424, 18, '2024-08-31', 329);
INSERT INTO public.daily_price VALUES (425, 19, '2024-08-31', 387);
INSERT INTO public.daily_price VALUES (426, 2, '2024-09-01', 930);
INSERT INTO public.daily_price VALUES (427, 3, '2024-09-01', 49480);
INSERT INTO public.daily_price VALUES (428, 9, '2024-09-01', 1346);
INSERT INTO public.daily_price VALUES (429, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (430, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (431, 20, '2024-09-01', 3373);
INSERT INTO public.daily_price VALUES (432, 20, '2024-09-01', 3373);
INSERT INTO public.daily_price VALUES (433, 2, '2024-09-01', 852);
INSERT INTO public.daily_price VALUES (434, 2, '2024-09-01', 931);
INSERT INTO public.daily_price VALUES (435, 2, '2024-09-01', 852);
INSERT INTO public.daily_price VALUES (436, 2, '2024-09-01', 931);
INSERT INTO public.daily_price VALUES (437, 3, '2024-09-01', 49480);
INSERT INTO public.daily_price VALUES (438, 9, '2024-09-01', 1341);
INSERT INTO public.daily_price VALUES (439, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (440, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (441, 20, '2024-09-01', 3055);
INSERT INTO public.daily_price VALUES (442, 2, '2024-09-01', 852);
INSERT INTO public.daily_price VALUES (443, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (444, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (445, 20, '2024-09-01', 3055);
INSERT INTO public.daily_price VALUES (446, 2, '2024-09-01', 931);
INSERT INTO public.daily_price VALUES (447, 3, '2024-09-01', 49480);
INSERT INTO public.daily_price VALUES (448, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (449, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (450, 20, '2024-09-01', 3055);
INSERT INTO public.daily_price VALUES (451, 2, '2024-09-01', 931);
INSERT INTO public.daily_price VALUES (452, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (453, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (454, 20, '2024-09-01', 3373);
INSERT INTO public.daily_price VALUES (455, 2, '2024-09-01', 931);
INSERT INTO public.daily_price VALUES (456, 3, '2024-09-01', 49480);
INSERT INTO public.daily_price VALUES (457, 9, '2024-09-01', 1397);
INSERT INTO public.daily_price VALUES (458, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (459, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (460, 2, '2024-09-01', 852);
INSERT INTO public.daily_price VALUES (461, 3, '2024-09-01', 49480);
INSERT INTO public.daily_price VALUES (462, 9, '2024-09-01', 1341);
INSERT INTO public.daily_price VALUES (463, 18, '2024-09-01', 381);
INSERT INTO public.daily_price VALUES (464, 19, '2024-09-01', 387);
INSERT INTO public.daily_price VALUES (465, 20, '2024-09-01', 3055);
INSERT INTO public.daily_price VALUES (466, 2, '2024-09-01', 852);
INSERT INTO public.daily_price VALUES (467, 2, '2024-09-01', 852);
INSERT INTO public.daily_price VALUES (468, 3, '2024-09-01', 49480);
INSERT INTO public.daily_price VALUES (469, 9, '2024-09-01', 1341);
INSERT INTO public.daily_price VALUES (470, 2, '2024-09-02', 852);
INSERT INTO public.daily_price VALUES (471, 3, '2024-09-02', 49480);
INSERT INTO public.daily_price VALUES (472, 9, '2024-09-02', 1343);
INSERT INTO public.daily_price VALUES (473, 18, '2024-09-02', 381);
INSERT INTO public.daily_price VALUES (474, 19, '2024-09-02', 387);
INSERT INTO public.daily_price VALUES (475, 20, '2024-09-02', 3066);
INSERT INTO public.daily_price VALUES (476, 2, '2024-09-03', 852);
INSERT INTO public.daily_price VALUES (477, 3, '2024-09-03', 49480);
INSERT INTO public.daily_price VALUES (478, 9, '2024-09-03', 1343);
INSERT INTO public.daily_price VALUES (479, 18, '2024-09-03', 329);
INSERT INTO public.daily_price VALUES (480, 19, '2024-09-03', 387);
INSERT INTO public.daily_price VALUES (481, 20, '2024-09-03', 3066);
INSERT INTO public.daily_price VALUES (482, 2, '2024-09-04', 854);
INSERT INTO public.daily_price VALUES (483, 3, '2024-09-04', 49480);
INSERT INTO public.daily_price VALUES (484, 9, '2024-09-04', 1276);
INSERT INTO public.daily_price VALUES (485, 18, '2024-09-04', 329);
INSERT INTO public.daily_price VALUES (486, 19, '2024-09-04', 387);
INSERT INTO public.daily_price VALUES (487, 20, '2024-09-04', 3069);
INSERT INTO public.daily_price VALUES (488, 2, '2024-09-05', 856);
INSERT INTO public.daily_price VALUES (489, 3, '2024-09-05', 49480);
INSERT INTO public.daily_price VALUES (490, 9, '2024-09-05', 1282);
INSERT INTO public.daily_price VALUES (491, 18, '2024-09-05', 329);
INSERT INTO public.daily_price VALUES (492, 19, '2024-09-05', 395);
INSERT INTO public.daily_price VALUES (493, 20, '2024-09-05', 2942);
INSERT INTO public.daily_price VALUES (494, 3, '2024-09-06', 49480);
INSERT INTO public.daily_price VALUES (495, 3, '2024-09-07', 49480);
INSERT INTO public.daily_price VALUES (496, 3, '2024-09-08', 49480);
INSERT INTO public.daily_price VALUES (497, 9, '2024-09-08', 1095);
INSERT INTO public.daily_price VALUES (498, 18, '2024-09-08', 329);
INSERT INTO public.daily_price VALUES (499, 3, '2024-09-12', 49480);
INSERT INTO public.daily_price VALUES (500, 18, '2024-09-12', 329);
INSERT INTO public.daily_price VALUES (501, 20, '2024-09-12', 3294);
INSERT INTO public.daily_price VALUES (502, 3, '2024-09-17', 49480);
INSERT INTO public.daily_price VALUES (503, 18, '2024-09-17', 329);
INSERT INTO public.daily_price VALUES (504, 20, '2024-09-17', 2992);
INSERT INTO public.daily_price VALUES (505, 3, '2024-09-18', 49480);
INSERT INTO public.daily_price VALUES (506, 18, '2024-09-18', 329);
INSERT INTO public.daily_price VALUES (507, 3, '2024-09-19', 49480);
INSERT INTO public.daily_price VALUES (508, 9, '2024-09-19', 1337);
INSERT INTO public.daily_price VALUES (509, 20, '2024-09-19', 3039);
INSERT INTO public.daily_price VALUES (510, 3, '2024-09-21', 49480);
INSERT INTO public.daily_price VALUES (511, 18, '2024-09-21', 329);
INSERT INTO public.daily_price VALUES (512, 20, '2024-09-21', 2975);
INSERT INTO public.daily_price VALUES (513, 3, '2024-09-22', 49480);
INSERT INTO public.daily_price VALUES (514, 18, '2024-09-22', 329);
INSERT INTO public.daily_price VALUES (515, 3, '2024-09-23', 49480);
INSERT INTO public.daily_price VALUES (516, 9, '2024-09-23', 1356);
INSERT INTO public.daily_price VALUES (517, 20, '2024-09-23', 2968);
INSERT INTO public.daily_price VALUES (518, 3, '2024-09-24', 49480);
INSERT INTO public.daily_price VALUES (519, 9, '2024-09-24', 1373);
INSERT INTO public.daily_price VALUES (520, 20, '2024-09-24', 3045);
INSERT INTO public.daily_price VALUES (521, 3, '2024-09-25', 49480);
INSERT INTO public.daily_price VALUES (522, 18, '2024-09-25', 329);
INSERT INTO public.daily_price VALUES (523, 20, '2024-09-25', 3079);
INSERT INTO public.daily_price VALUES (524, 3, '2024-09-26', 49480);
INSERT INTO public.daily_price VALUES (525, 18, '2024-09-26', 329);
INSERT INTO public.daily_price VALUES (526, 3, '2024-09-28', 49480);
INSERT INTO public.daily_price VALUES (527, 18, '2024-09-28', 329);
INSERT INTO public.daily_price VALUES (528, 20, '2024-09-28', 2987);
INSERT INTO public.daily_price VALUES (529, 2, '2024-09-28', 844);
INSERT INTO public.daily_price VALUES (530, 19, '2024-09-28', 312);
INSERT INTO public.daily_price VALUES (531, 3, '2024-09-29', 49480);
INSERT INTO public.daily_price VALUES (532, 9, '2024-09-29', 1284);
INSERT INTO public.daily_price VALUES (533, 20, '2024-09-29', 3300);
INSERT INTO public.daily_price VALUES (534, 3, '2024-09-30', 49480);
INSERT INTO public.daily_price VALUES (535, 18, '2024-09-30', 329);
INSERT INTO public.daily_price VALUES (536, 19, '2024-09-30', 324);
INSERT INTO public.daily_price VALUES (537, 20, '2024-09-30', 2973);
INSERT INTO public.daily_price VALUES (538, 3, '2024-10-02', 49480);
INSERT INTO public.daily_price VALUES (539, 9, '2024-10-02', 1732);
INSERT INTO public.daily_price VALUES (540, 18, '2024-10-02', 329);
INSERT INTO public.daily_price VALUES (541, 19, '2024-10-02', 324);
INSERT INTO public.daily_price VALUES (542, 3, '2024-10-04', 47006);
INSERT INTO public.daily_price VALUES (543, 9, '2024-10-04', 1470);
INSERT INTO public.daily_price VALUES (544, 18, '2024-10-04', 329);
INSERT INTO public.daily_price VALUES (545, 19, '2024-10-04', 367);
INSERT INTO public.daily_price VALUES (546, 20, '2024-10-04', 2911);
INSERT INTO public.daily_price VALUES (547, 3, '2024-10-09', 47006);
INSERT INTO public.daily_price VALUES (548, 9, '2024-10-09', 1937);
INSERT INTO public.daily_price VALUES (549, 18, '2024-10-09', 329);
INSERT INTO public.daily_price VALUES (550, 19, '2024-10-09', 339);
INSERT INTO public.daily_price VALUES (551, 20, '2024-10-09', 2996);
INSERT INTO public.daily_price VALUES (552, 3, '2024-10-10', 47006);
INSERT INTO public.daily_price VALUES (553, 9, '2024-10-10', 1937);
INSERT INTO public.daily_price VALUES (554, 18, '2024-10-10', 329);
INSERT INTO public.daily_price VALUES (555, 19, '2024-10-10', 402);
INSERT INTO public.daily_price VALUES (556, 20, '2024-10-10', 2996);
INSERT INTO public.daily_price VALUES (557, 3, '2024-10-11', 47006);
INSERT INTO public.daily_price VALUES (558, 9, '2024-10-11', 1936);
INSERT INTO public.daily_price VALUES (559, 18, '2024-10-11', 329);
INSERT INTO public.daily_price VALUES (560, 19, '2024-10-11', 344);
INSERT INTO public.daily_price VALUES (561, 20, '2024-10-11', 2908);
INSERT INTO public.daily_price VALUES (562, 3, '2024-10-12', 47006);
INSERT INTO public.daily_price VALUES (563, 9, '2024-10-12', 1936);
INSERT INTO public.daily_price VALUES (564, 18, '2024-10-12', 329);
INSERT INTO public.daily_price VALUES (565, 19, '2024-10-12', 344);
INSERT INTO public.daily_price VALUES (566, 20, '2024-10-12', 2908);
INSERT INTO public.daily_price VALUES (567, 3, '2024-10-13', 47006);
INSERT INTO public.daily_price VALUES (568, 9, '2024-10-13', 1804);
INSERT INTO public.daily_price VALUES (569, 18, '2024-10-13', 329);
INSERT INTO public.daily_price VALUES (570, 19, '2024-10-13', 344);
INSERT INTO public.daily_price VALUES (571, 20, '2024-10-13', 2904);
INSERT INTO public.daily_price VALUES (572, 3, '2024-10-14', 47006);
INSERT INTO public.daily_price VALUES (573, 9, '2024-10-14', 2010);
INSERT INTO public.daily_price VALUES (574, 18, '2024-10-14', 329);
INSERT INTO public.daily_price VALUES (575, 19, '2024-10-14', 344);
INSERT INTO public.daily_price VALUES (576, 20, '2024-10-14', 2865);
INSERT INTO public.daily_price VALUES (577, 3, '2024-10-16', 49480);
INSERT INTO public.daily_price VALUES (578, 9, '2024-10-16', 1976);
INSERT INTO public.daily_price VALUES (579, 18, '2024-10-16', 339);
INSERT INTO public.daily_price VALUES (580, 19, '2024-10-16', 344);
INSERT INTO public.daily_price VALUES (581, 20, '2024-10-16', 3362);
INSERT INTO public.daily_price VALUES (582, 3, '2024-10-17', 49480);
INSERT INTO public.daily_price VALUES (583, 9, '2024-10-17', 1863);
INSERT INTO public.daily_price VALUES (584, 18, '2024-10-17', 339);
INSERT INTO public.daily_price VALUES (585, 19, '2024-10-17', 344);
INSERT INTO public.daily_price VALUES (586, 20, '2024-10-17', 3333);
INSERT INTO public.daily_price VALUES (587, 3, '2024-10-18', 49480);
INSERT INTO public.daily_price VALUES (588, 9, '2024-10-18', 1909);
INSERT INTO public.daily_price VALUES (589, 18, '2024-10-18', 339);
INSERT INTO public.daily_price VALUES (590, 19, '2024-10-18', 339);
INSERT INTO public.daily_price VALUES (591, 20, '2024-10-18', 2842);
INSERT INTO public.daily_price VALUES (592, 3, '2024-10-19', 49480);
INSERT INTO public.daily_price VALUES (593, 9, '2024-10-19', 2010);
INSERT INTO public.daily_price VALUES (594, 18, '2024-10-19', 339);
INSERT INTO public.daily_price VALUES (595, 19, '2024-10-19', 339);
INSERT INTO public.daily_price VALUES (596, 20, '2024-10-19', 2842);
INSERT INTO public.daily_price VALUES (597, 3, '2024-10-20', 49480);
INSERT INTO public.daily_price VALUES (598, 9, '2024-10-20', 2019);
INSERT INTO public.daily_price VALUES (599, 18, '2024-10-20', 348);
INSERT INTO public.daily_price VALUES (600, 19, '2024-10-20', 339);
INSERT INTO public.daily_price VALUES (601, 20, '2024-10-20', 2758);
INSERT INTO public.daily_price VALUES (602, 3, '2024-10-21', 49480);
INSERT INTO public.daily_price VALUES (603, 9, '2024-10-21', 1995);
INSERT INTO public.daily_price VALUES (604, 18, '2024-10-21', 339);
INSERT INTO public.daily_price VALUES (605, 19, '2024-10-21', 339);
INSERT INTO public.daily_price VALUES (606, 20, '2024-10-21', 2765);
INSERT INTO public.daily_price VALUES (607, 3, '2024-10-22', 49480);
INSERT INTO public.daily_price VALUES (608, 9, '2024-10-22', 2035);
INSERT INTO public.daily_price VALUES (609, 18, '2024-10-22', 339);
INSERT INTO public.daily_price VALUES (610, 19, '2024-10-22', 339);
INSERT INTO public.daily_price VALUES (611, 20, '2024-10-22', 2805);
INSERT INTO public.daily_price VALUES (612, 3, '2024-10-23', 47517);
INSERT INTO public.daily_price VALUES (613, 9, '2024-10-23', 2072);
INSERT INTO public.daily_price VALUES (614, 18, '2024-10-23', 339);
INSERT INTO public.daily_price VALUES (615, 19, '2024-10-23', 339);
INSERT INTO public.daily_price VALUES (616, 20, '2024-10-23', 2821);
INSERT INTO public.daily_price VALUES (617, 3, '2024-10-24', 47517);
INSERT INTO public.daily_price VALUES (618, 9, '2024-10-24', 1481);
INSERT INTO public.daily_price VALUES (619, 18, '2024-10-24', 348);
INSERT INTO public.daily_price VALUES (620, 19, '2024-10-24', 339);
INSERT INTO public.daily_price VALUES (621, 20, '2024-10-24', 2856);
INSERT INTO public.daily_price VALUES (622, 3, '2024-10-25', 47517);
INSERT INTO public.daily_price VALUES (623, 9, '2024-10-25', 1515);
INSERT INTO public.daily_price VALUES (624, 18, '2024-10-25', 339);
INSERT INTO public.daily_price VALUES (625, 19, '2024-10-25', 313);
INSERT INTO public.daily_price VALUES (626, 20, '2024-10-25', 2864);
INSERT INTO public.daily_price VALUES (627, 3, '2024-10-26', 47517);
INSERT INTO public.daily_price VALUES (628, 9, '2024-10-26', 1515);
INSERT INTO public.daily_price VALUES (629, 18, '2024-10-26', 339);
INSERT INTO public.daily_price VALUES (630, 19, '2024-10-26', 313);
INSERT INTO public.daily_price VALUES (631, 20, '2024-10-26', 2864);
INSERT INTO public.daily_price VALUES (632, 3, '2024-10-28', 47517);
INSERT INTO public.daily_price VALUES (633, 9, '2024-10-28', 1410);
INSERT INTO public.daily_price VALUES (634, 18, '2024-10-28', 339);
INSERT INTO public.daily_price VALUES (635, 19, '2024-10-28', 317);
INSERT INTO public.daily_price VALUES (636, 20, '2024-10-28', 3352);
INSERT INTO public.daily_price VALUES (637, 3, '2024-10-29', 47517);
INSERT INTO public.daily_price VALUES (638, 9, '2024-10-29', 1380);
INSERT INTO public.daily_price VALUES (639, 18, '2024-10-29', 339);
INSERT INTO public.daily_price VALUES (640, 19, '2024-10-29', 305);
INSERT INTO public.daily_price VALUES (641, 20, '2024-10-29', 3210);
INSERT INTO public.daily_price VALUES (642, 1, '2024-10-30', 1530);
INSERT INTO public.daily_price VALUES (643, 3, '2024-10-30', 47517);
INSERT INTO public.daily_price VALUES (644, 9, '2024-10-30', 1376);
INSERT INTO public.daily_price VALUES (645, 18, '2024-10-30', 348);
INSERT INTO public.daily_price VALUES (646, 19, '2024-10-30', 305);
INSERT INTO public.daily_price VALUES (647, 20, '2024-10-30', 3286);
INSERT INTO public.daily_price VALUES (648, 3, '2024-11-01', 47517);
INSERT INTO public.daily_price VALUES (649, 9, '2024-11-01', 1302);
INSERT INTO public.daily_price VALUES (650, 18, '2024-11-01', 339);
INSERT INTO public.daily_price VALUES (651, 19, '2024-11-01', 305);
INSERT INTO public.daily_price VALUES (652, 20, '2024-11-01', 3243);
INSERT INTO public.daily_price VALUES (653, 3, '2024-11-02', 47517);
INSERT INTO public.daily_price VALUES (654, 9, '2024-11-02', 1326);
INSERT INTO public.daily_price VALUES (655, 18, '2024-11-02', 339);
INSERT INTO public.daily_price VALUES (656, 19, '2024-11-02', 305);
INSERT INTO public.daily_price VALUES (657, 20, '2024-11-02', 3107);
INSERT INTO public.daily_price VALUES (658, 3, '2024-11-05', 47041);
INSERT INTO public.daily_price VALUES (659, 9, '2024-11-05', 1331);
INSERT INTO public.daily_price VALUES (660, 18, '2024-11-05', 339);
INSERT INTO public.daily_price VALUES (661, 19, '2024-11-05', 308);
INSERT INTO public.daily_price VALUES (662, 20, '2024-11-05', 3021);
INSERT INTO public.daily_price VALUES (663, 3, '2024-11-06', 47206);
INSERT INTO public.daily_price VALUES (664, 9, '2024-11-06', 1300);
INSERT INTO public.daily_price VALUES (665, 18, '2024-11-06', 339);
INSERT INTO public.daily_price VALUES (666, 19, '2024-11-06', 366);
INSERT INTO public.daily_price VALUES (667, 20, '2024-11-06', 3029);
INSERT INTO public.daily_price VALUES (668, 9, '2024-11-07', 1422);
INSERT INTO public.daily_price VALUES (669, 18, '2024-11-07', 339);
INSERT INTO public.daily_price VALUES (670, 19, '2024-11-07', 402);
INSERT INTO public.daily_price VALUES (671, 20, '2024-11-07', 3048);
INSERT INTO public.daily_price VALUES (672, 21, '2024-11-07', 10999);
INSERT INTO public.daily_price VALUES (673, 22, '2024-11-07', 10729);
INSERT INTO public.daily_price VALUES (674, 9, '2024-11-10', 1355);
INSERT INTO public.daily_price VALUES (675, 18, '2024-11-10', 299);
INSERT INTO public.daily_price VALUES (676, 19, '2024-11-10', 402);
INSERT INTO public.daily_price VALUES (677, 20, '2024-11-10', 3141);
INSERT INTO public.daily_price VALUES (678, 22, '2024-11-10', 10729);
INSERT INTO public.daily_price VALUES (679, 9, '2024-11-12', 1273);
INSERT INTO public.daily_price VALUES (680, 18, '2024-11-12', 299);
INSERT INTO public.daily_price VALUES (681, 19, '2024-11-12', 402);
INSERT INTO public.daily_price VALUES (682, 20, '2024-11-12', 2811);
INSERT INTO public.daily_price VALUES (683, 21, '2024-11-12', 10999);
INSERT INTO public.daily_price VALUES (684, 22, '2024-11-12', 10729);
INSERT INTO public.daily_price VALUES (685, 9, '2024-11-16', 1340);
INSERT INTO public.daily_price VALUES (686, 18, '2024-11-16', 309);
INSERT INTO public.daily_price VALUES (687, 19, '2024-11-16', 402);
INSERT INTO public.daily_price VALUES (688, 20, '2024-11-16', 2884);
INSERT INTO public.daily_price VALUES (689, 22, '2024-11-16', 11690);
INSERT INTO public.daily_price VALUES (690, 18, '2024-11-18', 309);
INSERT INTO public.daily_price VALUES (691, 9, '2024-11-20', 1238);
INSERT INTO public.daily_price VALUES (692, 18, '2024-11-20', 309);
INSERT INTO public.daily_price VALUES (693, 20, '2024-11-20', 3042);
INSERT INTO public.daily_price VALUES (694, 9, '2024-11-23', 1286);
INSERT INTO public.daily_price VALUES (695, 18, '2024-11-23', 309);
INSERT INTO public.daily_price VALUES (696, 19, '2024-11-23', 402);
INSERT INTO public.daily_price VALUES (697, 20, '2024-11-23', 3025);
INSERT INTO public.daily_price VALUES (698, 21, '2024-11-23', 10999);
INSERT INTO public.daily_price VALUES (699, 22, '2024-11-23', 11690);
INSERT INTO public.daily_price VALUES (700, 9, '2024-11-24', 1248);
INSERT INTO public.daily_price VALUES (701, 18, '2024-11-24', 309);
INSERT INTO public.daily_price VALUES (702, 19, '2024-11-24', 402);
INSERT INTO public.daily_price VALUES (703, 20, '2024-11-24', 3025);
INSERT INTO public.daily_price VALUES (704, 21, '2024-11-24', 10999);
INSERT INTO public.daily_price VALUES (705, 22, '2024-11-24', 11690);
INSERT INTO public.daily_price VALUES (706, 3, '2024-11-27', 49480);
INSERT INTO public.daily_price VALUES (707, 9, '2024-11-27', 1249);
INSERT INTO public.daily_price VALUES (708, 18, '2024-11-27', 309);
INSERT INTO public.daily_price VALUES (709, 19, '2024-11-27', 402);
INSERT INTO public.daily_price VALUES (710, 20, '2024-11-27', 2964);
INSERT INTO public.daily_price VALUES (711, 21, '2024-11-27', 10999);
INSERT INTO public.daily_price VALUES (712, 22, '2024-11-27', 11690);
INSERT INTO public.daily_price VALUES (713, 9, '2024-11-29', 1292);
INSERT INTO public.daily_price VALUES (714, 18, '2024-11-29', 347);
INSERT INTO public.daily_price VALUES (715, 19, '2024-11-29', 327);
INSERT INTO public.daily_price VALUES (716, 20, '2024-11-29', 3198);
INSERT INTO public.daily_price VALUES (717, 21, '2024-11-29', 10999);
INSERT INTO public.daily_price VALUES (718, 22, '2024-11-29', 11690);
INSERT INTO public.daily_price VALUES (719, 9, '2024-12-07', 1254);
INSERT INTO public.daily_price VALUES (720, 18, '2024-12-07', 309);
INSERT INTO public.daily_price VALUES (721, 19, '2024-12-07', 327);
INSERT INTO public.daily_price VALUES (722, 20, '2024-12-07', 3076);
INSERT INTO public.daily_price VALUES (723, 21, '2024-12-07', 10999);
INSERT INTO public.daily_price VALUES (724, 22, '2024-12-07', 9819);
INSERT INTO public.daily_price VALUES (725, 9, '2024-12-08', 1255);
INSERT INTO public.daily_price VALUES (726, 18, '2024-12-08', 309);
INSERT INTO public.daily_price VALUES (727, 19, '2024-12-08', 327);
INSERT INTO public.daily_price VALUES (728, 20, '2024-12-08', 3089);
INSERT INTO public.daily_price VALUES (729, 22, '2025-01-19', 9001);
INSERT INTO public.daily_price VALUES (730, 9, '2025-01-19', 1277);
INSERT INTO public.daily_price VALUES (731, 18, '2025-01-19', 299);
INSERT INTO public.daily_price VALUES (732, 19, '2025-01-19', 387);
INSERT INTO public.daily_price VALUES (733, 20, '2025-01-19', 2930);
INSERT INTO public.daily_price VALUES (734, 21, '2025-01-19', 13999);
INSERT INTO public.daily_price VALUES (735, 22, '2025-01-19', 9001);
INSERT INTO public.daily_price VALUES (736, 9, '2025-01-19', 1277);
INSERT INTO public.daily_price VALUES (737, 18, '2025-01-19', 299);
INSERT INTO public.daily_price VALUES (738, 19, '2025-01-19', 387);
INSERT INTO public.daily_price VALUES (739, 20, '2025-01-19', 2930);
INSERT INTO public.daily_price VALUES (740, 9, '2025-01-23', 1266);
INSERT INTO public.daily_price VALUES (741, 18, '2025-01-23', 299);
INSERT INTO public.daily_price VALUES (742, 19, '2025-01-23', 357);
INSERT INTO public.daily_price VALUES (743, 20, '2025-01-23', 2821);
INSERT INTO public.daily_price VALUES (744, 21, '2025-01-23', 11089);
INSERT INTO public.daily_price VALUES (745, 22, '2025-01-23', 9268);
INSERT INTO public.daily_price VALUES (746, 9, '2025-02-02', 1263);
INSERT INTO public.daily_price VALUES (747, 18, '2025-02-02', 370);
INSERT INTO public.daily_price VALUES (748, 19, '2025-02-02', 358);
INSERT INTO public.daily_price VALUES (749, 20, '2025-02-02', 2968);
INSERT INTO public.daily_price VALUES (750, 19, '2025-02-02', 358);
INSERT INTO public.daily_price VALUES (751, 9, '2025-02-06', 1206);
INSERT INTO public.daily_price VALUES (752, 18, '2025-02-06', 341);
INSERT INTO public.daily_price VALUES (753, 19, '2025-02-06', 363);
INSERT INTO public.daily_price VALUES (754, 20, '2025-02-06', 2979);
INSERT INTO public.daily_price VALUES (755, 9, '2025-02-07', 1226);
INSERT INTO public.daily_price VALUES (756, 18, '2025-02-07', 341);
INSERT INTO public.daily_price VALUES (757, 19, '2025-02-07', 380);
INSERT INTO public.daily_price VALUES (758, 20, '2025-02-07', 3022);
INSERT INTO public.daily_price VALUES (759, 9, '2025-02-16', 1243);
INSERT INTO public.daily_price VALUES (760, 18, '2025-02-16', 341);
INSERT INTO public.daily_price VALUES (761, 19, '2025-02-16', 296);
INSERT INTO public.daily_price VALUES (762, 20, '2025-02-16', 3156);
INSERT INTO public.daily_price VALUES (763, 9, '2025-02-17', 1239);
INSERT INTO public.daily_price VALUES (764, 18, '2025-02-17', 329);
INSERT INTO public.daily_price VALUES (765, 19, '2025-02-17', 295);
INSERT INTO public.daily_price VALUES (766, 20, '2025-02-17', 3122);
INSERT INTO public.daily_price VALUES (767, 9, '2025-02-18', 1242);
INSERT INTO public.daily_price VALUES (768, 18, '2025-02-18', 329);
INSERT INTO public.daily_price VALUES (769, 19, '2025-02-18', 288);
INSERT INTO public.daily_price VALUES (770, 20, '2025-02-18', 3102);
INSERT INTO public.daily_price VALUES (771, 18, '2025-02-18', 329);
INSERT INTO public.daily_price VALUES (772, 9, '2025-02-19', 1183);
INSERT INTO public.daily_price VALUES (773, 18, '2025-02-19', 329);
INSERT INTO public.daily_price VALUES (774, 19, '2025-02-19', 295);
INSERT INTO public.daily_price VALUES (775, 20, '2025-02-19', 3102);
INSERT INTO public.daily_price VALUES (776, 9, '2025-02-20', 1204);
INSERT INTO public.daily_price VALUES (777, 18, '2025-02-20', 329);
INSERT INTO public.daily_price VALUES (778, 19, '2025-02-20', 343);
INSERT INTO public.daily_price VALUES (779, 20, '2025-02-20', 3102);
INSERT INTO public.daily_price VALUES (780, 9, '2025-02-21', 828);
INSERT INTO public.daily_price VALUES (781, 18, '2025-02-21', 329);
INSERT INTO public.daily_price VALUES (782, 19, '2025-02-21', 289);
INSERT INTO public.daily_price VALUES (783, 20, '2025-02-21', 3102);
INSERT INTO public.daily_price VALUES (784, 24, '2025-02-21', 55990);
INSERT INTO public.daily_price VALUES (785, 9, '2025-02-22', 828);
INSERT INTO public.daily_price VALUES (786, 18, '2025-02-22', 329);
INSERT INTO public.daily_price VALUES (787, 19, '2025-02-22', 289);
INSERT INTO public.daily_price VALUES (788, 20, '2025-02-22', 3102);
INSERT INTO public.daily_price VALUES (789, 24, '2025-02-22', 55990);
INSERT INTO public.daily_price VALUES (790, 9, '2025-02-23', 830);
INSERT INTO public.daily_price VALUES (791, 18, '2025-02-23', 329);
INSERT INTO public.daily_price VALUES (792, 19, '2025-02-23', 266);
INSERT INTO public.daily_price VALUES (793, 20, '2025-02-23', 3102);
INSERT INTO public.daily_price VALUES (794, 24, '2025-02-23', 55990);
INSERT INTO public.daily_price VALUES (795, 18, '2025-02-24', 329);
INSERT INTO public.daily_price VALUES (796, 19, '2025-02-24', 271);
INSERT INTO public.daily_price VALUES (797, 20, '2025-02-24', 3102);
INSERT INTO public.daily_price VALUES (798, 24, '2025-02-24', 54990);
INSERT INTO public.daily_price VALUES (799, 18, '2025-02-27', 329);
INSERT INTO public.daily_price VALUES (800, 19, '2025-02-27', 269);
INSERT INTO public.daily_price VALUES (801, 20, '2025-02-27', 3102);
INSERT INTO public.daily_price VALUES (802, 24, '2025-02-27', 54990);
INSERT INTO public.daily_price VALUES (803, 18, '2025-03-01', 329);
INSERT INTO public.daily_price VALUES (804, 19, '2025-03-01', 273);
INSERT INTO public.daily_price VALUES (805, 20, '2025-03-01', 3102);
INSERT INTO public.daily_price VALUES (806, 24, '2025-03-01', 55990);
INSERT INTO public.daily_price VALUES (807, 18, '2025-03-02', 329);
INSERT INTO public.daily_price VALUES (808, 19, '2025-03-02', 350);
INSERT INTO public.daily_price VALUES (809, 20, '2025-03-02', 3623);
INSERT INTO public.daily_price VALUES (810, 24, '2025-03-02', 55990);
INSERT INTO public.daily_price VALUES (811, 9, '2025-03-03', 1076);
INSERT INTO public.daily_price VALUES (812, 18, '2025-03-03', 329);
INSERT INTO public.daily_price VALUES (813, 19, '2025-03-03', 353);
INSERT INTO public.daily_price VALUES (814, 20, '2025-03-03', 3102);
INSERT INTO public.daily_price VALUES (815, 24, '2025-03-03', 56990);
INSERT INTO public.daily_price VALUES (816, 9, '2025-03-04', 1283);
INSERT INTO public.daily_price VALUES (817, 18, '2025-03-04', 381);
INSERT INTO public.daily_price VALUES (818, 19, '2025-03-04', 343);
INSERT INTO public.daily_price VALUES (819, 20, '2025-03-04', 3102);
INSERT INTO public.daily_price VALUES (820, 24, '2025-03-04', 56990);
INSERT INTO public.daily_price VALUES (821, 9, '2025-03-15', 1860);
INSERT INTO public.daily_price VALUES (822, 18, '2025-03-15', 329);
INSERT INTO public.daily_price VALUES (823, 19, '2025-03-15', 290);
INSERT INTO public.daily_price VALUES (824, 20, '2025-03-15', 3107);
INSERT INTO public.daily_price VALUES (825, 24, '2025-03-15', 55990);
INSERT INTO public.daily_price VALUES (826, 9, '2025-03-16', 1860);
INSERT INTO public.daily_price VALUES (827, 18, '2025-03-16', 329);
INSERT INTO public.daily_price VALUES (828, 19, '2025-03-16', 290);
INSERT INTO public.daily_price VALUES (829, 20, '2025-03-16', 3107);
INSERT INTO public.daily_price VALUES (830, 24, '2025-03-16', 55990);
INSERT INTO public.daily_price VALUES (831, 9, '2025-03-17', 1865);
INSERT INTO public.daily_price VALUES (832, 18, '2025-03-17', 329);
INSERT INTO public.daily_price VALUES (833, 19, '2025-03-17', 287);
INSERT INTO public.daily_price VALUES (834, 20, '2025-03-17', 3116);
INSERT INTO public.daily_price VALUES (835, 24, '2025-03-17', 55990);
INSERT INTO public.daily_price VALUES (836, 9, '2025-03-18', 1881);
INSERT INTO public.daily_price VALUES (837, 18, '2025-03-18', 329);
INSERT INTO public.daily_price VALUES (838, 19, '2025-03-18', 291);
INSERT INTO public.daily_price VALUES (839, 20, '2025-03-18', 3010);
INSERT INTO public.daily_price VALUES (840, 24, '2025-03-18', 55990);
INSERT INTO public.daily_price VALUES (841, 9, '2025-03-20', 1970);
INSERT INTO public.daily_price VALUES (842, 18, '2025-03-20', 324);
INSERT INTO public.daily_price VALUES (843, 19, '2025-03-20', 283);
INSERT INTO public.daily_price VALUES (844, 20, '2025-03-20', 3226);
INSERT INTO public.daily_price VALUES (845, 24, '2025-03-20', 55990);
INSERT INTO public.daily_price VALUES (846, 9, '2025-03-21', 2021);
INSERT INTO public.daily_price VALUES (847, 18, '2025-03-21', 324);
INSERT INTO public.daily_price VALUES (848, 19, '2025-03-21', 285);
INSERT INTO public.daily_price VALUES (849, 20, '2025-03-21', 3078);
INSERT INTO public.daily_price VALUES (850, 24, '2025-03-21', 48941);
INSERT INTO public.daily_price VALUES (851, 9, '2025-03-22', 2054);
INSERT INTO public.daily_price VALUES (852, 18, '2025-03-22', 324);
INSERT INTO public.daily_price VALUES (853, 19, '2025-03-22', 285);
INSERT INTO public.daily_price VALUES (854, 20, '2025-03-22', 3002);
INSERT INTO public.daily_price VALUES (855, 24, '2025-03-22', 48941);
INSERT INTO public.daily_price VALUES (856, 9, '2025-03-23', 2162);
INSERT INTO public.daily_price VALUES (857, 18, '2025-03-23', 324);
INSERT INTO public.daily_price VALUES (858, 19, '2025-03-23', 285);
INSERT INTO public.daily_price VALUES (859, 20, '2025-03-23', 3078);
INSERT INTO public.daily_price VALUES (860, 24, '2025-03-23', 55990);
INSERT INTO public.daily_price VALUES (861, 9, '2025-04-16', 2048);
INSERT INTO public.daily_price VALUES (862, 18, '2025-04-16', 328);
INSERT INTO public.daily_price VALUES (863, 20, '2025-04-16', 2794);
INSERT INTO public.daily_price VALUES (864, 9, '2025-04-17', 2048);
INSERT INTO public.daily_price VALUES (865, 18, '2025-04-17', 328);
INSERT INTO public.daily_price VALUES (866, 20, '2025-04-17', 2860);
INSERT INTO public.daily_price VALUES (867, 9, '2025-04-17', 2048);
INSERT INTO public.daily_price VALUES (868, 9, '2025-04-17', 2048);
INSERT INTO public.daily_price VALUES (869, 9, '2025-04-17', 2048);
INSERT INTO public.daily_price VALUES (870, 18, '2025-04-17', 2048);
INSERT INTO public.daily_price VALUES (871, 18, '2025-04-17', 328);
INSERT INTO public.daily_price VALUES (872, 9, '2025-04-18', 2048);
INSERT INTO public.daily_price VALUES (873, 18, '2025-04-18', 328);
INSERT INTO public.daily_price VALUES (874, 20, '2025-04-18', 2889);


--
-- TOC entry 4800 (class 0 OID 16440)
-- Dependencies: 220
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.urls VALUES (1, 'https://www.ozon.ru/product/besprovodnye-naushniki-hoco-ew47-wlpro2-976145869/', 'Беспроводные наушники hoco EW47 WLPRO2', false);
INSERT INTO public.urls VALUES (2, 'https://www.ozon.ru/product/naushniki-besprovodnye-hoco-tws-bluetooth-s-mikrofonom-garnitura-1383239749', 'Наушники беспроводные hoco / TWS Bluetooth с микрофоном, гарнитура', false);
INSERT INTO public.urls VALUES (3, 'https://megamarket.ru/catalog/details/noutbuk-lenovo-ip-slim-3-15amn8-ryzen-5-156-7520u-8gb-ssd-256gb-fhd-noos-seryy-100061202411_59182/', 'Ноутбук Lenovo IdeaPad Slim 3 15AMN8 Gray', false);
INSERT INTO public.urls VALUES (9, 'https://www.ozon.ru/product/polubotinki-alessio-nesca-240436786/?avtc=1&avte=2&avts=1716715495', 'Полуботинки Alessio Nesca', true);
INSERT INTO public.urls VALUES (18, 'https://www.ozon.ru/product/konditsioner-opolaskivatel-dlya-belya-vernel-svezhiy-briz-1-82-l-72-stirki-kontsentrirovannyy-140307396/', 'Кондиционер ополаскиватель для белья Вернель Свежий бриз, 1,82 л', true);
INSERT INTO public.urls VALUES (19, 'https://www.ozon.ru/product/zubnaya-pasta-dlya-intensivnogo-otbelivaniya-president-profi-smokers-rda-120-50-ml-779592477/?advert=eGqgZr23RQNFsKHep1f6Y5Lxn2t0RJoUmk-Vt8nhg--PHYyq9M-ka7pq8GMrPJYjltuB_HxjNw9pAGrmkEESCb6rNEO6IRGTdjK_45AD5-UsmGvFkiVG_eI7SXsl1', 'Зубная паста President 120 RDA', true);
INSERT INTO public.urls VALUES (20, 'https://www.ozon.ru/product/wifi-kamera-videonablyudeniya-ulichnaya-wi-fi-videokamera-besprovodnaya-povorotnaya-4mp-4mp-1600233710/?avtc=1&avte=2&avts=1725191217', 'Видеокамера 4К разрешение', true);
INSERT INTO public.urls VALUES (21, 'https://megamarket.ru/catalog/details/pda-honor-vne-lx1-4-64gb-b-100045291561/', 'Смартфон Honor X6 4/64GB Ocean Blue (VNE-LX1)', false);
INSERT INTO public.urls VALUES (22, 'https://megamarket.ru/catalog/details/smartfon-honor-x6a-128-gb-4-gb-midnight-black-wdy-lx1-100066826389/', 'Смартфон Honor X6a 4/128Gb Midnight Black', false);
INSERT INTO public.urls VALUES (23, 'https://megamarket.ru/catalog/details/noutbuk-honor-magicbook-x16-16-i5-16gb-512gb-dos-5301ahhm-600015382800_126519/#?details_block=prices', 'Ноутбук Honor MagicBook X16', false);
INSERT INTO public.urls VALUES (24, 'https://www.ozon.ru/product/honor-magicbook-x-16-2024-dos-noutbuk-16-intel-core-i5-12450h-ram-16-gb-ssd-512-gb-intel-1428553181/?at=PjtJnQqJYcrojl4jckOXqjAFr3kn8XSylOR4BfLnW1DR&keywords=honor+magicbook+x16&tab=reviews&reviewsVariantMode=2', 'Ноутбук Honor MagicBook X16', false);


--
-- TOC entry 4808 (class 0 OID 0)
-- Dependencies: 217
-- Name: daily_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.daily_price_id_seq', 874, true);


--
-- TOC entry 4809 (class 0 OID 0)
-- Dependencies: 219
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.urls_id_seq', 1, false);


--
-- TOC entry 4649 (class 2606 OID 16431)
-- Name: daily_price daily_price_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daily_price
    ADD CONSTRAINT daily_price_pkey PRIMARY KEY (id);


--
-- TOC entry 4651 (class 2606 OID 16447)
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


-- Completed on 2025-04-19 17:31:30

--
-- PostgreSQL database dump complete
--

