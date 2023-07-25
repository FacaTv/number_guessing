--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 8, 1);
INSERT INTO public.games VALUES (3, 9, 1);
INSERT INTO public.games VALUES (4, 9, 1);
INSERT INTO public.games VALUES (5, 8, 1);
INSERT INTO public.games VALUES (6, 8, 1);
INSERT INTO public.games VALUES (7, 8, 1);
INSERT INTO public.games VALUES (8, 13, 1);
INSERT INTO public.games VALUES (9, 13, 1);
INSERT INTO public.games VALUES (10, 14, 1);
INSERT INTO public.games VALUES (11, 14, 1);
INSERT INTO public.games VALUES (12, 13, 3);
INSERT INTO public.games VALUES (13, 13, 1);
INSERT INTO public.games VALUES (14, 13, 1);
INSERT INTO public.games VALUES (15, 12, 11);
INSERT INTO public.games VALUES (16, 17, 27);
INSERT INTO public.games VALUES (17, 7, 11);
INSERT INTO public.games VALUES (18, 7, 12);
INSERT INTO public.games VALUES (19, 19, 97);
INSERT INTO public.games VALUES (20, 21, 543);
INSERT INTO public.games VALUES (21, 21, 251);
INSERT INTO public.games VALUES (22, 22, 554);
INSERT INTO public.games VALUES (51, 54, 316);
INSERT INTO public.games VALUES (52, 56, 201);
INSERT INTO public.games VALUES (53, 7, 11);
INSERT INTO public.games VALUES (54, 62, 109);
INSERT INTO public.games VALUES (55, 64, 83);
INSERT INTO public.games VALUES (56, 64, 282);
INSERT INTO public.games VALUES (57, 65, 503);
INSERT INTO public.games VALUES (58, 65, 53);
INSERT INTO public.games VALUES (59, 64, 160);
INSERT INTO public.games VALUES (60, 68, 43);
INSERT INTO public.games VALUES (61, 68, 58);
INSERT INTO public.games VALUES (62, 69, 387);
INSERT INTO public.games VALUES (63, 69, 107);
INSERT INTO public.games VALUES (64, 68, 818);
INSERT INTO public.games VALUES (65, 68, 688);
INSERT INTO public.games VALUES (66, 68, 452);
INSERT INTO public.games VALUES (67, 70, 468);
INSERT INTO public.games VALUES (68, 70, 59);
INSERT INTO public.games VALUES (69, 71, 218);
INSERT INTO public.games VALUES (70, 71, 558);
INSERT INTO public.games VALUES (71, 70, 242);
INSERT INTO public.games VALUES (72, 70, 230);
INSERT INTO public.games VALUES (73, 70, 561);
INSERT INTO public.games VALUES (74, 7, 11);
INSERT INTO public.games VALUES (75, 72, 826);
INSERT INTO public.games VALUES (76, 73, 36);
INSERT INTO public.games VALUES (77, 73, 441);
INSERT INTO public.games VALUES (78, 72, 829);
INSERT INTO public.games VALUES (79, 72, 132);
INSERT INTO public.games VALUES (80, 72, 537);
INSERT INTO public.games VALUES (81, 74, 550);
INSERT INTO public.games VALUES (82, 75, 232);
INSERT INTO public.games VALUES (83, 75, 759);
INSERT INTO public.games VALUES (84, 74, 90);
INSERT INTO public.games VALUES (85, 74, 460);
INSERT INTO public.games VALUES (86, 74, 202);
INSERT INTO public.games VALUES (87, 76, 354);
INSERT INTO public.games VALUES (88, 76, 336);
INSERT INTO public.games VALUES (89, 77, 560);
INSERT INTO public.games VALUES (90, 77, 126);
INSERT INTO public.games VALUES (91, 76, 78);
INSERT INTO public.games VALUES (92, 76, 940);
INSERT INTO public.games VALUES (93, 76, 165);
INSERT INTO public.games VALUES (94, 78, 407);
INSERT INTO public.games VALUES (95, 78, 458);
INSERT INTO public.games VALUES (96, 79, 18);
INSERT INTO public.games VALUES (97, 79, 821);
INSERT INTO public.games VALUES (98, 78, 341);
INSERT INTO public.games VALUES (99, 78, 245);
INSERT INTO public.games VALUES (100, 78, 937);
INSERT INTO public.games VALUES (101, 80, 579);
INSERT INTO public.games VALUES (102, 80, 385);
INSERT INTO public.games VALUES (103, 81, 370);
INSERT INTO public.games VALUES (104, 81, 831);
INSERT INTO public.games VALUES (105, 80, 823);
INSERT INTO public.games VALUES (106, 80, 758);
INSERT INTO public.games VALUES (107, 80, 582);
INSERT INTO public.games VALUES (108, 82, 263);
INSERT INTO public.games VALUES (109, 82, 925);
INSERT INTO public.games VALUES (110, 83, 505);
INSERT INTO public.games VALUES (111, 83, 593);
INSERT INTO public.games VALUES (112, 82, 791);
INSERT INTO public.games VALUES (113, 82, 275);
INSERT INTO public.games VALUES (114, 82, 238);
INSERT INTO public.games VALUES (115, 84, 821);
INSERT INTO public.games VALUES (116, 84, 560);
INSERT INTO public.games VALUES (117, 85, 623);
INSERT INTO public.games VALUES (118, 85, 508);
INSERT INTO public.games VALUES (119, 84, 737);
INSERT INTO public.games VALUES (120, 84, 666);
INSERT INTO public.games VALUES (121, 84, 492);
INSERT INTO public.games VALUES (122, 86, 858);
INSERT INTO public.games VALUES (123, 86, 672);
INSERT INTO public.games VALUES (124, 87, 229);
INSERT INTO public.games VALUES (125, 87, 779);
INSERT INTO public.games VALUES (126, 86, 25);
INSERT INTO public.games VALUES (127, 86, 898);
INSERT INTO public.games VALUES (128, 86, 886);
INSERT INTO public.games VALUES (129, 88, 80);
INSERT INTO public.games VALUES (130, 89, 397);
INSERT INTO public.games VALUES (131, 89, 32);
INSERT INTO public.games VALUES (132, 88, 567);
INSERT INTO public.games VALUES (133, 88, 593);
INSERT INTO public.games VALUES (134, 88, 145);
INSERT INTO public.games VALUES (135, 90, 543);
INSERT INTO public.games VALUES (136, 90, 534);
INSERT INTO public.games VALUES (137, 91, 502);
INSERT INTO public.games VALUES (138, 91, 894);
INSERT INTO public.games VALUES (139, 90, 268);
INSERT INTO public.games VALUES (140, 90, 100);
INSERT INTO public.games VALUES (141, 90, 659);
INSERT INTO public.games VALUES (142, 92, 971);
INSERT INTO public.games VALUES (143, 92, 257);
INSERT INTO public.games VALUES (144, 93, 36);
INSERT INTO public.games VALUES (145, 93, 699);
INSERT INTO public.games VALUES (146, 92, 550);
INSERT INTO public.games VALUES (147, 92, 848);
INSERT INTO public.games VALUES (148, 92, 187);
INSERT INTO public.games VALUES (149, 94, 193);
INSERT INTO public.games VALUES (150, 95, 509);
INSERT INTO public.games VALUES (151, 95, 540);
INSERT INTO public.games VALUES (152, 94, 264);
INSERT INTO public.games VALUES (153, 94, 246);
INSERT INTO public.games VALUES (154, 94, 430);
INSERT INTO public.games VALUES (155, 96, 213);
INSERT INTO public.games VALUES (156, 97, 141);
INSERT INTO public.games VALUES (157, 97, 841);
INSERT INTO public.games VALUES (158, 96, 727);
INSERT INTO public.games VALUES (159, 96, 705);
INSERT INTO public.games VALUES (160, 96, 188);
INSERT INTO public.games VALUES (161, 98, 401);
INSERT INTO public.games VALUES (162, 99, 483);
INSERT INTO public.games VALUES (163, 99, 221);
INSERT INTO public.games VALUES (164, 98, 34);
INSERT INTO public.games VALUES (165, 98, 401);
INSERT INTO public.games VALUES (166, 98, 870);
INSERT INTO public.games VALUES (167, 100, 928);
INSERT INTO public.games VALUES (168, 101, 626);
INSERT INTO public.games VALUES (169, 101, 189);
INSERT INTO public.games VALUES (170, 100, 855);
INSERT INTO public.games VALUES (171, 100, 344);
INSERT INTO public.games VALUES (172, 100, 753);
INSERT INTO public.games VALUES (173, 102, 402);
INSERT INTO public.games VALUES (174, 102, 636);
INSERT INTO public.games VALUES (175, 103, 19);
INSERT INTO public.games VALUES (176, 103, 467);
INSERT INTO public.games VALUES (177, 102, 702);
INSERT INTO public.games VALUES (178, 102, 564);
INSERT INTO public.games VALUES (179, 102, 938);
INSERT INTO public.games VALUES (180, 104, 849);
INSERT INTO public.games VALUES (181, 105, 579);
INSERT INTO public.games VALUES (182, 105, 634);
INSERT INTO public.games VALUES (183, 104, 738);
INSERT INTO public.games VALUES (184, 104, 272);
INSERT INTO public.games VALUES (185, 104, 227);
INSERT INTO public.games VALUES (186, 106, 483);
INSERT INTO public.games VALUES (187, 106, 293);
INSERT INTO public.games VALUES (188, 107, 103);
INSERT INTO public.games VALUES (189, 107, 647);
INSERT INTO public.games VALUES (190, 106, 455);
INSERT INTO public.games VALUES (191, 106, 856);
INSERT INTO public.games VALUES (192, 106, 50);
INSERT INTO public.games VALUES (193, 108, 551);
INSERT INTO public.games VALUES (194, 108, 806);
INSERT INTO public.games VALUES (195, 109, 867);
INSERT INTO public.games VALUES (196, 109, 766);
INSERT INTO public.games VALUES (197, 108, 815);
INSERT INTO public.games VALUES (198, 108, 722);
INSERT INTO public.games VALUES (199, 108, 302);
INSERT INTO public.games VALUES (200, 110, 488);
INSERT INTO public.games VALUES (201, 110, 487);
INSERT INTO public.games VALUES (202, 111, 61);
INSERT INTO public.games VALUES (203, 111, 479);
INSERT INTO public.games VALUES (204, 110, 461);
INSERT INTO public.games VALUES (205, 110, 817);
INSERT INTO public.games VALUES (206, 110, 157);
INSERT INTO public.games VALUES (207, 112, 600);
INSERT INTO public.games VALUES (208, 112, 558);
INSERT INTO public.games VALUES (209, 113, 593);
INSERT INTO public.games VALUES (210, 113, 97);
INSERT INTO public.games VALUES (211, 112, 522);
INSERT INTO public.games VALUES (212, 112, 473);
INSERT INTO public.games VALUES (213, 112, 925);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1690296906935');
INSERT INTO public.users VALUES (2, 'user_1690296906934');
INSERT INTO public.users VALUES (3, 'user_1690297697216');
INSERT INTO public.users VALUES (4, 'user_1690297697215');
INSERT INTO public.users VALUES (5, 'user_1690299416692');
INSERT INTO public.users VALUES (6, 'user_1690299416691');
INSERT INTO public.users VALUES (7, 'Faca');
INSERT INTO public.users VALUES (8, 'user_1690301829946');
INSERT INTO public.users VALUES (9, 'user_1690301829945');
INSERT INTO public.users VALUES (10, 'FAca');
INSERT INTO public.users VALUES (11, 't');
INSERT INTO public.users VALUES (12, 'T');
INSERT INTO public.users VALUES (13, 'user_1690310724289');
INSERT INTO public.users VALUES (14, 'user_1690310724288');
INSERT INTO public.users VALUES (15, 'user_1690312215789');
INSERT INTO public.users VALUES (16, 'user_1690312215788');
INSERT INTO public.users VALUES (17, 'user_1690312275963');
INSERT INTO public.users VALUES (18, 'user_1690312275962');
INSERT INTO public.users VALUES (19, 'user_1690312414081');
INSERT INTO public.users VALUES (20, 'user_1690312414080');
INSERT INTO public.users VALUES (21, 'user_1690312489163');
INSERT INTO public.users VALUES (22, 'user_1690312489162');
INSERT INTO public.users VALUES (23, 'user_1690312534035');
INSERT INTO public.users VALUES (24, 'user_1690312534034');
INSERT INTO public.users VALUES (52, 'user_1690312822067');
INSERT INTO public.users VALUES (53, 'user_1690312822066');
INSERT INTO public.users VALUES (54, 'user_1690313230581');
INSERT INTO public.users VALUES (55, 'user_1690313230580');
INSERT INTO public.users VALUES (56, 'user_1690313349478');
INSERT INTO public.users VALUES (57, 'user_1690313349477');
INSERT INTO public.users VALUES (58, 'user_1690313808709');
INSERT INTO public.users VALUES (59, 'user_1690313808708');
INSERT INTO public.users VALUES (60, 'user_1690313907796');
INSERT INTO public.users VALUES (61, 'user_1690313907795');
INSERT INTO public.users VALUES (62, 'user_1690314039612');
INSERT INTO public.users VALUES (63, 'user_1690314039611');
INSERT INTO public.users VALUES (64, 'user_1690314202458');
INSERT INTO public.users VALUES (65, 'user_1690314202457');
INSERT INTO public.users VALUES (66, 'user_1690314248353');
INSERT INTO public.users VALUES (67, 'user_1690314248352');
INSERT INTO public.users VALUES (68, 'user_1690314344051');
INSERT INTO public.users VALUES (69, 'user_1690314344050');
INSERT INTO public.users VALUES (70, 'user_1690314353505');
INSERT INTO public.users VALUES (71, 'user_1690314353504');
INSERT INTO public.users VALUES (72, 'user_1690314409606');
INSERT INTO public.users VALUES (73, 'user_1690314409605');
INSERT INTO public.users VALUES (74, 'user_1690314429387');
INSERT INTO public.users VALUES (75, 'user_1690314429386');
INSERT INTO public.users VALUES (76, 'user_1690314447825');
INSERT INTO public.users VALUES (77, 'user_1690314447824');
INSERT INTO public.users VALUES (78, 'user_1690314454213');
INSERT INTO public.users VALUES (79, 'user_1690314454212');
INSERT INTO public.users VALUES (80, 'user_1690314471454');
INSERT INTO public.users VALUES (81, 'user_1690314471453');
INSERT INTO public.users VALUES (82, 'user_1690314488982');
INSERT INTO public.users VALUES (83, 'user_1690314488980');
INSERT INTO public.users VALUES (84, 'user_1690314526444');
INSERT INTO public.users VALUES (85, 'user_1690314526443');
INSERT INTO public.users VALUES (86, 'user_1690314535814');
INSERT INTO public.users VALUES (87, 'user_1690314535813');
INSERT INTO public.users VALUES (88, 'user_1690314542678');
INSERT INTO public.users VALUES (89, 'user_1690314542677');
INSERT INTO public.users VALUES (90, 'user_1690314565625');
INSERT INTO public.users VALUES (91, 'user_1690314565624');
INSERT INTO public.users VALUES (92, 'user_1690314575109');
INSERT INTO public.users VALUES (93, 'user_1690314575108');
INSERT INTO public.users VALUES (94, 'user_1690314583051');
INSERT INTO public.users VALUES (95, 'user_1690314583050');
INSERT INTO public.users VALUES (96, 'user_1690314601136');
INSERT INTO public.users VALUES (97, 'user_1690314601135');
INSERT INTO public.users VALUES (98, 'user_1690314617931');
INSERT INTO public.users VALUES (99, 'user_1690314617930');
INSERT INTO public.users VALUES (100, 'user_1690314652635');
INSERT INTO public.users VALUES (101, 'user_1690314652634');
INSERT INTO public.users VALUES (102, 'user_1690314668806');
INSERT INTO public.users VALUES (103, 'user_1690314668805');
INSERT INTO public.users VALUES (104, 'user_1690314674290');
INSERT INTO public.users VALUES (105, 'user_1690314674289');
INSERT INTO public.users VALUES (106, 'user_1690314691005');
INSERT INTO public.users VALUES (107, 'user_1690314691004');
INSERT INTO public.users VALUES (108, 'user_1690314698895');
INSERT INTO public.users VALUES (109, 'user_1690314698894');
INSERT INTO public.users VALUES (110, 'user_1690314708407');
INSERT INTO public.users VALUES (111, 'user_1690314708406');
INSERT INTO public.users VALUES (112, 'user_1690314715020');
INSERT INTO public.users VALUES (113, 'user_1690314715019');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 213, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 113, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

