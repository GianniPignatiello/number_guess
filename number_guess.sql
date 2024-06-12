--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(50)
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

INSERT INTO public.games VALUES (1, 10, 3);
INSERT INTO public.games VALUES (2, 10, 3);
INSERT INTO public.games VALUES (3, 288, 4);
INSERT INTO public.games VALUES (4, 522, 4);
INSERT INTO public.games VALUES (5, 487, 5);
INSERT INTO public.games VALUES (6, 265, 5);
INSERT INTO public.games VALUES (7, 802, 4);
INSERT INTO public.games VALUES (8, 627, 4);
INSERT INTO public.games VALUES (9, 235, 4);
INSERT INTO public.games VALUES (10, 854, 6);
INSERT INTO public.games VALUES (11, 607, 6);
INSERT INTO public.games VALUES (12, 406, 7);
INSERT INTO public.games VALUES (13, 680, 7);
INSERT INTO public.games VALUES (14, 629, 6);
INSERT INTO public.games VALUES (15, 148, 6);
INSERT INTO public.games VALUES (16, 81, 6);
INSERT INTO public.games VALUES (17, 499, 8);
INSERT INTO public.games VALUES (18, 955, 8);
INSERT INTO public.games VALUES (19, 9, 9);
INSERT INTO public.games VALUES (20, 270, 9);
INSERT INTO public.games VALUES (21, 125, 8);
INSERT INTO public.games VALUES (22, 362, 8);
INSERT INTO public.games VALUES (23, 778, 8);
INSERT INTO public.games VALUES (24, 52, 10);
INSERT INTO public.games VALUES (25, 570, 10);
INSERT INTO public.games VALUES (26, 762, 11);
INSERT INTO public.games VALUES (27, 337, 11);
INSERT INTO public.games VALUES (28, 626, 10);
INSERT INTO public.games VALUES (29, 332, 10);
INSERT INTO public.games VALUES (30, 867, 10);
INSERT INTO public.games VALUES (31, 761, 12);
INSERT INTO public.games VALUES (32, 671, 12);
INSERT INTO public.games VALUES (33, 324, 13);
INSERT INTO public.games VALUES (34, 244, 13);
INSERT INTO public.games VALUES (35, 487, 12);
INSERT INTO public.games VALUES (36, 722, 12);
INSERT INTO public.games VALUES (37, 891, 12);
INSERT INTO public.games VALUES (38, 140, 14);
INSERT INTO public.games VALUES (39, 19, 14);
INSERT INTO public.games VALUES (40, 486, 15);
INSERT INTO public.games VALUES (41, 477, 15);
INSERT INTO public.games VALUES (42, 703, 14);
INSERT INTO public.games VALUES (43, 16, 14);
INSERT INTO public.games VALUES (44, 13, 14);
INSERT INTO public.games VALUES (45, 39, 16);
INSERT INTO public.games VALUES (46, 753, 16);
INSERT INTO public.games VALUES (47, 526, 17);
INSERT INTO public.games VALUES (48, 127, 17);
INSERT INTO public.games VALUES (49, 357, 16);
INSERT INTO public.games VALUES (50, 856, 16);
INSERT INTO public.games VALUES (51, 893, 16);
INSERT INTO public.games VALUES (52, 227, 18);
INSERT INTO public.games VALUES (53, 172, 18);
INSERT INTO public.games VALUES (54, 536, 19);
INSERT INTO public.games VALUES (55, 495, 19);
INSERT INTO public.games VALUES (56, 964, 18);
INSERT INTO public.games VALUES (57, 890, 18);
INSERT INTO public.games VALUES (58, 873, 18);
INSERT INTO public.games VALUES (59, 390, 20);
INSERT INTO public.games VALUES (60, 845, 20);
INSERT INTO public.games VALUES (61, 907, 21);
INSERT INTO public.games VALUES (62, 420, 21);
INSERT INTO public.games VALUES (63, 560, 20);
INSERT INTO public.games VALUES (64, 504, 20);
INSERT INTO public.games VALUES (65, 532, 20);
INSERT INTO public.games VALUES (66, 978, 22);
INSERT INTO public.games VALUES (67, 49, 22);
INSERT INTO public.games VALUES (68, 970, 23);
INSERT INTO public.games VALUES (69, 395, 23);
INSERT INTO public.games VALUES (70, 108, 22);
INSERT INTO public.games VALUES (71, 952, 22);
INSERT INTO public.games VALUES (72, 340, 22);
INSERT INTO public.games VALUES (73, 204, 24);
INSERT INTO public.games VALUES (74, 976, 24);
INSERT INTO public.games VALUES (75, 403, 25);
INSERT INTO public.games VALUES (76, 821, 25);
INSERT INTO public.games VALUES (77, 758, 24);
INSERT INTO public.games VALUES (78, 861, 24);
INSERT INTO public.games VALUES (79, 692, 24);
INSERT INTO public.games VALUES (80, 785, 26);
INSERT INTO public.games VALUES (81, 41, 26);
INSERT INTO public.games VALUES (82, 312, 27);
INSERT INTO public.games VALUES (83, 42, 27);
INSERT INTO public.games VALUES (84, 553, 26);
INSERT INTO public.games VALUES (85, 150, 26);
INSERT INTO public.games VALUES (86, 889, 26);
INSERT INTO public.games VALUES (87, 372, 28);
INSERT INTO public.games VALUES (88, 399, 28);
INSERT INTO public.games VALUES (89, 31, 29);
INSERT INTO public.games VALUES (90, 827, 29);
INSERT INTO public.games VALUES (91, 608, 28);
INSERT INTO public.games VALUES (92, 843, 28);
INSERT INTO public.games VALUES (93, 844, 28);
INSERT INTO public.games VALUES (94, 235, 30);
INSERT INTO public.games VALUES (95, 190, 30);
INSERT INTO public.games VALUES (96, 929, 31);
INSERT INTO public.games VALUES (97, 155, 31);
INSERT INTO public.games VALUES (98, 450, 30);
INSERT INTO public.games VALUES (99, 382, 30);
INSERT INTO public.games VALUES (100, 350, 30);
INSERT INTO public.games VALUES (101, 288, 32);
INSERT INTO public.games VALUES (102, 582, 32);
INSERT INTO public.games VALUES (103, 508, 33);
INSERT INTO public.games VALUES (104, 17, 33);
INSERT INTO public.games VALUES (105, 841, 32);
INSERT INTO public.games VALUES (106, 823, 32);
INSERT INTO public.games VALUES (107, 500, 32);
INSERT INTO public.games VALUES (108, 320, 34);
INSERT INTO public.games VALUES (109, 498, 34);
INSERT INTO public.games VALUES (110, 593, 35);
INSERT INTO public.games VALUES (111, 785, 35);
INSERT INTO public.games VALUES (112, 261, 34);
INSERT INTO public.games VALUES (113, 145, 34);
INSERT INTO public.games VALUES (114, 593, 34);
INSERT INTO public.games VALUES (115, 732, 36);
INSERT INTO public.games VALUES (116, 683, 36);
INSERT INTO public.games VALUES (117, 972, 37);
INSERT INTO public.games VALUES (118, 696, 37);
INSERT INTO public.games VALUES (119, 139, 36);
INSERT INTO public.games VALUES (120, 691, 36);
INSERT INTO public.games VALUES (121, 448, 36);
INSERT INTO public.games VALUES (122, 944, 38);
INSERT INTO public.games VALUES (123, 632, 38);
INSERT INTO public.games VALUES (124, 152, 39);
INSERT INTO public.games VALUES (125, 109, 39);
INSERT INTO public.games VALUES (126, 561, 38);
INSERT INTO public.games VALUES (127, 696, 38);
INSERT INTO public.games VALUES (128, 62, 38);
INSERT INTO public.games VALUES (129, 109, 40);
INSERT INTO public.games VALUES (130, 8, 40);
INSERT INTO public.games VALUES (131, 406, 41);
INSERT INTO public.games VALUES (132, 272, 41);
INSERT INTO public.games VALUES (133, 653, 40);
INSERT INTO public.games VALUES (134, 157, 40);
INSERT INTO public.games VALUES (135, 898, 40);
INSERT INTO public.games VALUES (136, 46, 42);
INSERT INTO public.games VALUES (137, 210, 42);
INSERT INTO public.games VALUES (138, 61, 43);
INSERT INTO public.games VALUES (139, 993, 43);
INSERT INTO public.games VALUES (140, 433, 42);
INSERT INTO public.games VALUES (141, 720, 42);
INSERT INTO public.games VALUES (142, 305, 42);
INSERT INTO public.games VALUES (143, 547, 44);
INSERT INTO public.games VALUES (144, 716, 44);
INSERT INTO public.games VALUES (145, 167, 45);
INSERT INTO public.games VALUES (146, 788, 45);
INSERT INTO public.games VALUES (147, 376, 44);
INSERT INTO public.games VALUES (148, 899, 44);
INSERT INTO public.games VALUES (149, 587, 44);
INSERT INTO public.games VALUES (150, 800, 46);
INSERT INTO public.games VALUES (151, 808, 46);
INSERT INTO public.games VALUES (152, 972, 47);
INSERT INTO public.games VALUES (153, 952, 47);
INSERT INTO public.games VALUES (154, 943, 46);
INSERT INTO public.games VALUES (155, 185, 46);
INSERT INTO public.games VALUES (156, 321, 46);
INSERT INTO public.games VALUES (157, 568, 48);
INSERT INTO public.games VALUES (158, 702, 48);
INSERT INTO public.games VALUES (159, 425, 49);
INSERT INTO public.games VALUES (160, 586, 49);
INSERT INTO public.games VALUES (161, 988, 48);
INSERT INTO public.games VALUES (162, 356, 48);
INSERT INTO public.games VALUES (163, 954, 48);
INSERT INTO public.games VALUES (164, 214, 50);
INSERT INTO public.games VALUES (165, 832, 50);
INSERT INTO public.games VALUES (166, 272, 51);
INSERT INTO public.games VALUES (167, 438, 51);
INSERT INTO public.games VALUES (168, 894, 50);
INSERT INTO public.games VALUES (169, 391, 50);
INSERT INTO public.games VALUES (170, 604, 50);
INSERT INTO public.games VALUES (171, 646, 52);
INSERT INTO public.games VALUES (172, 551, 52);
INSERT INTO public.games VALUES (173, 69, 53);
INSERT INTO public.games VALUES (174, 190, 53);
INSERT INTO public.games VALUES (175, 883, 52);
INSERT INTO public.games VALUES (176, 78, 52);
INSERT INTO public.games VALUES (177, 783, 52);
INSERT INTO public.games VALUES (178, 442, 54);
INSERT INTO public.games VALUES (179, 469, 54);
INSERT INTO public.games VALUES (180, 907, 55);
INSERT INTO public.games VALUES (181, 50, 55);
INSERT INTO public.games VALUES (182, 695, 54);
INSERT INTO public.games VALUES (183, 702, 54);
INSERT INTO public.games VALUES (184, 467, 54);
INSERT INTO public.games VALUES (185, 839, 56);
INSERT INTO public.games VALUES (186, 164, 56);
INSERT INTO public.games VALUES (187, 499, 57);
INSERT INTO public.games VALUES (188, 227, 57);
INSERT INTO public.games VALUES (189, 526, 56);
INSERT INTO public.games VALUES (190, 313, 56);
INSERT INTO public.games VALUES (191, 59, 56);
INSERT INTO public.games VALUES (192, 595, 58);
INSERT INTO public.games VALUES (193, 17, 58);
INSERT INTO public.games VALUES (194, 938, 59);
INSERT INTO public.games VALUES (195, 24, 59);
INSERT INTO public.games VALUES (196, 201, 58);
INSERT INTO public.games VALUES (197, 302, 58);
INSERT INTO public.games VALUES (198, 384, 58);
INSERT INTO public.games VALUES (199, 880, 60);
INSERT INTO public.games VALUES (200, 680, 60);
INSERT INTO public.games VALUES (201, 600, 61);
INSERT INTO public.games VALUES (202, 955, 61);
INSERT INTO public.games VALUES (203, 575, 60);
INSERT INTO public.games VALUES (204, 224, 60);
INSERT INTO public.games VALUES (205, 106, 60);
INSERT INTO public.games VALUES (206, 34, 62);
INSERT INTO public.games VALUES (207, 360, 62);
INSERT INTO public.games VALUES (208, 602, 63);
INSERT INTO public.games VALUES (209, 477, 63);
INSERT INTO public.games VALUES (210, 896, 62);
INSERT INTO public.games VALUES (211, 892, 62);
INSERT INTO public.games VALUES (212, 262, 62);
INSERT INTO public.games VALUES (213, 59, 64);
INSERT INTO public.games VALUES (214, 556, 64);
INSERT INTO public.games VALUES (215, 338, 65);
INSERT INTO public.games VALUES (216, 258, 65);
INSERT INTO public.games VALUES (217, 242, 64);
INSERT INTO public.games VALUES (218, 331, 64);
INSERT INTO public.games VALUES (219, 969, 64);
INSERT INTO public.games VALUES (220, 270, 66);
INSERT INTO public.games VALUES (221, 209, 66);
INSERT INTO public.games VALUES (222, 711, 67);
INSERT INTO public.games VALUES (223, 189, 67);
INSERT INTO public.games VALUES (224, 948, 66);
INSERT INTO public.games VALUES (225, 436, 66);
INSERT INTO public.games VALUES (226, 158, 66);
INSERT INTO public.games VALUES (227, 206, 68);
INSERT INTO public.games VALUES (228, 361, 68);
INSERT INTO public.games VALUES (229, 288, 69);
INSERT INTO public.games VALUES (230, 979, 69);
INSERT INTO public.games VALUES (231, 246, 68);
INSERT INTO public.games VALUES (232, 7, 68);
INSERT INTO public.games VALUES (233, 967, 68);
INSERT INTO public.games VALUES (234, 812, 70);
INSERT INTO public.games VALUES (235, 886, 70);
INSERT INTO public.games VALUES (236, 586, 71);
INSERT INTO public.games VALUES (237, 895, 71);
INSERT INTO public.games VALUES (238, 808, 70);
INSERT INTO public.games VALUES (239, 509, 70);
INSERT INTO public.games VALUES (240, 378, 70);
INSERT INTO public.games VALUES (241, 948, 72);
INSERT INTO public.games VALUES (242, 790, 72);
INSERT INTO public.games VALUES (243, 757, 73);
INSERT INTO public.games VALUES (244, 192, 73);
INSERT INTO public.games VALUES (245, 369, 72);
INSERT INTO public.games VALUES (246, 45, 72);
INSERT INTO public.games VALUES (247, 916, 72);
INSERT INTO public.games VALUES (248, 296, 74);
INSERT INTO public.games VALUES (249, 499, 74);
INSERT INTO public.games VALUES (250, 579, 75);
INSERT INTO public.games VALUES (251, 268, 75);
INSERT INTO public.games VALUES (252, 343, 74);
INSERT INTO public.games VALUES (253, 179, 74);
INSERT INTO public.games VALUES (254, 857, 74);
INSERT INTO public.games VALUES (255, 711, 76);
INSERT INTO public.games VALUES (256, 311, 76);
INSERT INTO public.games VALUES (257, 664, 77);
INSERT INTO public.games VALUES (258, 185, 77);
INSERT INTO public.games VALUES (259, 714, 76);
INSERT INTO public.games VALUES (260, 179, 76);
INSERT INTO public.games VALUES (261, 724, 76);
INSERT INTO public.games VALUES (262, 992, 78);
INSERT INTO public.games VALUES (263, 211, 78);
INSERT INTO public.games VALUES (264, 137, 79);
INSERT INTO public.games VALUES (265, 388, 79);
INSERT INTO public.games VALUES (266, 109, 78);
INSERT INTO public.games VALUES (267, 263, 78);
INSERT INTO public.games VALUES (268, 55, 78);
INSERT INTO public.games VALUES (269, 261, 80);
INSERT INTO public.games VALUES (270, 355, 80);
INSERT INTO public.games VALUES (271, 781, 81);
INSERT INTO public.games VALUES (272, 455, 81);
INSERT INTO public.games VALUES (273, 548, 80);
INSERT INTO public.games VALUES (274, 263, 80);
INSERT INTO public.games VALUES (275, 938, 80);
INSERT INTO public.games VALUES (276, 705, 82);
INSERT INTO public.games VALUES (277, 237, 82);
INSERT INTO public.games VALUES (278, 317, 83);
INSERT INTO public.games VALUES (279, 956, 83);
INSERT INTO public.games VALUES (280, 393, 82);
INSERT INTO public.games VALUES (281, 577, 82);
INSERT INTO public.games VALUES (282, 918, 82);
INSERT INTO public.games VALUES (283, 709, 84);
INSERT INTO public.games VALUES (284, 667, 84);
INSERT INTO public.games VALUES (285, 116, 85);
INSERT INTO public.games VALUES (286, 472, 85);
INSERT INTO public.games VALUES (287, 467, 84);
INSERT INTO public.games VALUES (288, 915, 84);
INSERT INTO public.games VALUES (289, 274, 84);
INSERT INTO public.games VALUES (290, 470, 86);
INSERT INTO public.games VALUES (291, 151, 86);
INSERT INTO public.games VALUES (292, 208, 87);
INSERT INTO public.games VALUES (293, 619, 87);
INSERT INTO public.games VALUES (294, 202, 86);
INSERT INTO public.games VALUES (295, 332, 86);
INSERT INTO public.games VALUES (296, 460, 86);
INSERT INTO public.games VALUES (297, 199, 88);
INSERT INTO public.games VALUES (298, 10, 88);
INSERT INTO public.games VALUES (299, 183, 89);
INSERT INTO public.games VALUES (300, 731, 89);
INSERT INTO public.games VALUES (301, 505, 88);
INSERT INTO public.games VALUES (302, 280, 88);
INSERT INTO public.games VALUES (303, 437, 88);
INSERT INTO public.games VALUES (304, 25, 90);
INSERT INTO public.games VALUES (305, 340, 90);
INSERT INTO public.games VALUES (306, 524, 91);
INSERT INTO public.games VALUES (307, 692, 91);
INSERT INTO public.games VALUES (308, 335, 90);
INSERT INTO public.games VALUES (309, 459, 90);
INSERT INTO public.games VALUES (310, 806, 90);
INSERT INTO public.games VALUES (311, 57, 92);
INSERT INTO public.games VALUES (312, 937, 92);
INSERT INTO public.games VALUES (313, 712, 93);
INSERT INTO public.games VALUES (314, 802, 93);
INSERT INTO public.games VALUES (315, 616, 92);
INSERT INTO public.games VALUES (316, 526, 92);
INSERT INTO public.games VALUES (317, 839, 92);
INSERT INTO public.games VALUES (318, 281, 94);
INSERT INTO public.games VALUES (319, 593, 94);
INSERT INTO public.games VALUES (320, 444, 95);
INSERT INTO public.games VALUES (321, 859, 95);
INSERT INTO public.games VALUES (322, 759, 94);
INSERT INTO public.games VALUES (323, 599, 94);
INSERT INTO public.games VALUES (324, 415, 94);
INSERT INTO public.games VALUES (325, 642, 96);
INSERT INTO public.games VALUES (326, 297, 96);
INSERT INTO public.games VALUES (327, 137, 97);
INSERT INTO public.games VALUES (328, 547, 97);
INSERT INTO public.games VALUES (329, 547, 96);
INSERT INTO public.games VALUES (330, 533, 96);
INSERT INTO public.games VALUES (331, 217, 96);
INSERT INTO public.games VALUES (332, 782, 98);
INSERT INTO public.games VALUES (333, 398, 98);
INSERT INTO public.games VALUES (334, 778, 99);
INSERT INTO public.games VALUES (335, 500, 99);
INSERT INTO public.games VALUES (336, 185, 98);
INSERT INTO public.games VALUES (337, 232, 98);
INSERT INTO public.games VALUES (338, 639, 98);
INSERT INTO public.games VALUES (339, 351, 100);
INSERT INTO public.games VALUES (340, 746, 100);
INSERT INTO public.games VALUES (341, 485, 101);
INSERT INTO public.games VALUES (342, 251, 101);
INSERT INTO public.games VALUES (343, 147, 100);
INSERT INTO public.games VALUES (344, 502, 100);
INSERT INTO public.games VALUES (345, 362, 100);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'gian');
INSERT INTO public.users VALUES (4, 'user_1718151260828');
INSERT INTO public.users VALUES (5, 'user_1718151260827');
INSERT INTO public.users VALUES (6, 'user_1718151278859');
INSERT INTO public.users VALUES (7, 'user_1718151278858');
INSERT INTO public.users VALUES (8, 'user_1718151281313');
INSERT INTO public.users VALUES (9, 'user_1718151281312');
INSERT INTO public.users VALUES (10, 'user_1718151283666');
INSERT INTO public.users VALUES (11, 'user_1718151283665');
INSERT INTO public.users VALUES (12, 'user_1718151285728');
INSERT INTO public.users VALUES (13, 'user_1718151285727');
INSERT INTO public.users VALUES (14, 'user_1718151287867');
INSERT INTO public.users VALUES (15, 'user_1718151287866');
INSERT INTO public.users VALUES (16, 'user_1718151290031');
INSERT INTO public.users VALUES (17, 'user_1718151290030');
INSERT INTO public.users VALUES (18, 'user_1718151294096');
INSERT INTO public.users VALUES (19, 'user_1718151294095');
INSERT INTO public.users VALUES (20, 'user_1718151296361');
INSERT INTO public.users VALUES (21, 'user_1718151296360');
INSERT INTO public.users VALUES (22, 'user_1718151299012');
INSERT INTO public.users VALUES (23, 'user_1718151299011');
INSERT INTO public.users VALUES (24, 'user_1718151301169');
INSERT INTO public.users VALUES (25, 'user_1718151301168');
INSERT INTO public.users VALUES (26, 'user_1718151303629');
INSERT INTO public.users VALUES (27, 'user_1718151303628');
INSERT INTO public.users VALUES (28, 'user_1718151391898');
INSERT INTO public.users VALUES (29, 'user_1718151391897');
INSERT INTO public.users VALUES (30, 'user_1718151397845');
INSERT INTO public.users VALUES (31, 'user_1718151397844');
INSERT INTO public.users VALUES (32, 'user_1718151400493');
INSERT INTO public.users VALUES (33, 'user_1718151400492');
INSERT INTO public.users VALUES (34, 'user_1718151403273');
INSERT INTO public.users VALUES (35, 'user_1718151403272');
INSERT INTO public.users VALUES (36, 'user_1718151405727');
INSERT INTO public.users VALUES (37, 'user_1718151405726');
INSERT INTO public.users VALUES (38, 'user_1718151408171');
INSERT INTO public.users VALUES (39, 'user_1718151408170');
INSERT INTO public.users VALUES (40, 'user_1718151410350');
INSERT INTO public.users VALUES (41, 'user_1718151410349');
INSERT INTO public.users VALUES (42, 'user_1718151412488');
INSERT INTO public.users VALUES (43, 'user_1718151412487');
INSERT INTO public.users VALUES (44, 'user_1718151414625');
INSERT INTO public.users VALUES (45, 'user_1718151414624');
INSERT INTO public.users VALUES (46, 'user_1718151421087');
INSERT INTO public.users VALUES (47, 'user_1718151421086');
INSERT INTO public.users VALUES (48, 'user_1718151423329');
INSERT INTO public.users VALUES (49, 'user_1718151423328');
INSERT INTO public.users VALUES (50, 'user_1718151425472');
INSERT INTO public.users VALUES (51, 'user_1718151425471');
INSERT INTO public.users VALUES (52, 'user_1718151427638');
INSERT INTO public.users VALUES (53, 'user_1718151427637');
INSERT INTO public.users VALUES (54, 'user_1718151599670');
INSERT INTO public.users VALUES (55, 'user_1718151599669');
INSERT INTO public.users VALUES (56, 'user_1718151603143');
INSERT INTO public.users VALUES (57, 'user_1718151603142');
INSERT INTO public.users VALUES (58, 'user_1718151605195');
INSERT INTO public.users VALUES (59, 'user_1718151605194');
INSERT INTO public.users VALUES (60, 'user_1718151607264');
INSERT INTO public.users VALUES (61, 'user_1718151607263');
INSERT INTO public.users VALUES (62, 'user_1718151609394');
INSERT INTO public.users VALUES (63, 'user_1718151609393');
INSERT INTO public.users VALUES (64, 'user_1718151611851');
INSERT INTO public.users VALUES (65, 'user_1718151611850');
INSERT INTO public.users VALUES (66, 'user_1718151613807');
INSERT INTO public.users VALUES (67, 'user_1718151613806');
INSERT INTO public.users VALUES (68, 'user_1718151615962');
INSERT INTO public.users VALUES (69, 'user_1718151615961');
INSERT INTO public.users VALUES (70, 'user_1718151618221');
INSERT INTO public.users VALUES (71, 'user_1718151618220');
INSERT INTO public.users VALUES (72, 'user_1718151620598');
INSERT INTO public.users VALUES (73, 'user_1718151620597');
INSERT INTO public.users VALUES (74, 'user_1718151627100');
INSERT INTO public.users VALUES (75, 'user_1718151627099');
INSERT INTO public.users VALUES (76, 'user_1718151640541');
INSERT INTO public.users VALUES (77, 'user_1718151640540');
INSERT INTO public.users VALUES (78, 'user_1718151642697');
INSERT INTO public.users VALUES (79, 'user_1718151642696');
INSERT INTO public.users VALUES (80, 'user_1718151644721');
INSERT INTO public.users VALUES (81, 'user_1718151644720');
INSERT INTO public.users VALUES (82, 'user_1718151647077');
INSERT INTO public.users VALUES (83, 'user_1718151647076');
INSERT INTO public.users VALUES (84, 'user_1718151650261');
INSERT INTO public.users VALUES (85, 'user_1718151650260');
INSERT INTO public.users VALUES (86, 'user_1718151652497');
INSERT INTO public.users VALUES (87, 'user_1718151652496');
INSERT INTO public.users VALUES (88, 'user_1718151655071');
INSERT INTO public.users VALUES (89, 'user_1718151655070');
INSERT INTO public.users VALUES (90, 'user_1718151657431');
INSERT INTO public.users VALUES (91, 'user_1718151657430');
INSERT INTO public.users VALUES (92, 'user_1718151660286');
INSERT INTO public.users VALUES (93, 'user_1718151660285');
INSERT INTO public.users VALUES (94, 'user_1718151663476');
INSERT INTO public.users VALUES (95, 'user_1718151663475');
INSERT INTO public.users VALUES (96, 'user_1718151665919');
INSERT INTO public.users VALUES (97, 'user_1718151665918');
INSERT INTO public.users VALUES (98, 'user_1718151668080');
INSERT INTO public.users VALUES (99, 'user_1718151668079');
INSERT INTO public.users VALUES (100, 'user_1718151714556');
INSERT INTO public.users VALUES (101, 'user_1718151714555');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 345, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 101, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

