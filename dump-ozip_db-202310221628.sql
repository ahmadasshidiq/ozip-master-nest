--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-10-22 16:28:53

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4852 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 24588)
-- Name: tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    task_name character varying(255) NOT NULL,
    task_description text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.tasks OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24587)
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tasks_id_seq OWNER TO postgres;

--
-- TOC entry 4853 (class 0 OID 0)
-- Dependencies: 217
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- TOC entry 216 (class 1259 OID 24581)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50),
    email character varying(50),
    phone character varying(10),
    location character varying(120)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24580)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4854 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4694 (class 2604 OID 24591)
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- TOC entry 4693 (class 2604 OID 24584)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4846 (class 0 OID 24588)
-- Dependencies: 218
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tasks VALUES (1, 'Task 1', 'Description for Task 1', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (2, 'Task 2', 'Description for Task 2', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (3, 'Task 3', 'Description for Task 3', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (4, 'Task 4', 'Description for Task 4', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (5, 'Task 5', 'Description for Task 5', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (6, 'Task 6', 'Description for Task 6', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (7, 'Task 7', 'Description for Task 7', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (8, 'Task 8', 'Description for Task 8', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (9, 'Task 9', 'Description for Task 9', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (10, 'Task 10', 'Description for Task 10', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (11, 'Task 11', 'Description for Task 11', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (12, 'Task 12', 'Description for Task 12', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (13, 'Task 13', 'Description for Task 13', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (14, 'Task 14', 'Description for Task 14', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (15, 'Task 15', 'Description for Task 15', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (16, 'Task 16', 'Description for Task 16', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (17, 'Task 17', 'Description for Task 17', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (18, 'Task 18', 'Description for Task 18', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (19, 'Task 19', 'Description for Task 19', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (20, 'Task 20', 'Description for Task 20', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (21, 'Task 21', 'Description for Task 21', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (22, 'Task 22', 'Description for Task 22', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (23, 'Task 23', 'Description for Task 23', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (24, 'Task 24', 'Description for Task 24', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (25, 'Task 25', 'Description for Task 25', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (26, 'Task 26', 'Description for Task 26', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (27, 'Task 27', 'Description for Task 27', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (28, 'Task 28', 'Description for Task 28', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (29, 'Task 29', 'Description for Task 29', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (30, 'Task 30', 'Description for Task 30', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (31, 'Task 31', 'Description for Task 31', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (32, 'Task 32', 'Description for Task 32', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (33, 'Task 33', 'Description for Task 33', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (34, 'Task 34', 'Description for Task 34', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (35, 'Task 35', 'Description for Task 35', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (36, 'Task 36', 'Description for Task 36', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (37, 'Task 37', 'Description for Task 37', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (38, 'Task 38', 'Description for Task 38', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (39, 'Task 39', 'Description for Task 39', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (40, 'Task 40', 'Description for Task 40', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (41, 'Task 41', 'Description for Task 41', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (42, 'Task 42', 'Description for Task 42', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (43, 'Task 43', 'Description for Task 43', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (44, 'Task 44', 'Description for Task 44', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (45, 'Task 45', 'Description for Task 45', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (46, 'Task 46', 'Description for Task 46', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (47, 'Task 47', 'Description for Task 47', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (48, 'Task 48', 'Description for Task 48', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (49, 'Task 49', 'Description for Task 49', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (50, 'Task 50', 'Description for Task 50', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (51, 'Task 51', 'Description for Task 51', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (52, 'Task 52', 'Description for Task 52', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (53, 'Task 53', 'Description for Task 53', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (54, 'Task 54', 'Description for Task 54', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (55, 'Task 55', 'Description for Task 55', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (56, 'Task 56', 'Description for Task 56', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (57, 'Task 57', 'Description for Task 57', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (58, 'Task 58', 'Description for Task 58', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (59, 'Task 59', 'Description for Task 59', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (60, 'Task 60', 'Description for Task 60', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (61, 'Task 61', 'Description for Task 61', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (62, 'Task 62', 'Description for Task 62', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (63, 'Task 63', 'Description for Task 63', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (64, 'Task 64', 'Description for Task 64', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (65, 'Task 65', 'Description for Task 65', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (66, 'Task 66', 'Description for Task 66', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (67, 'Task 67', 'Description for Task 67', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (68, 'Task 68', 'Description for Task 68', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (69, 'Task 69', 'Description for Task 69', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (70, 'Task 70', 'Description for Task 70', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (71, 'Task 71', 'Description for Task 71', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (72, 'Task 72', 'Description for Task 72', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (73, 'Task 73', 'Description for Task 73', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (74, 'Task 74', 'Description for Task 74', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (75, 'Task 75', 'Description for Task 75', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (76, 'Task 76', 'Description for Task 76', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (77, 'Task 77', 'Description for Task 77', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (78, 'Task 78', 'Description for Task 78', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (79, 'Task 79', 'Description for Task 79', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (80, 'Task 80', 'Description for Task 80', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (81, 'Task 81', 'Description for Task 81', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (82, 'Task 82', 'Description for Task 82', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (83, 'Task 83', 'Description for Task 83', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (84, 'Task 84', 'Description for Task 84', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (85, 'Task 85', 'Description for Task 85', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (86, 'Task 86', 'Description for Task 86', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (87, 'Task 87', 'Description for Task 87', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (88, 'Task 88', 'Description for Task 88', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (89, 'Task 89', 'Description for Task 89', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (90, 'Task 90', 'Description for Task 90', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (91, 'Task 91', 'Description for Task 91', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (92, 'Task 92', 'Description for Task 92', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (93, 'Task 93', 'Description for Task 93', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (94, 'Task 94', 'Description for Task 94', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (95, 'Task 95', 'Description for Task 95', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (96, 'Task 96', 'Description for Task 96', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (97, 'Task 97', 'Description for Task 97', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (98, 'Task 98', 'Description for Task 98', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (99, 'Task 99', 'Description for Task 99', '2023-10-22 16:13:35.736988');
INSERT INTO public.tasks VALUES (100, 'Task 100', 'Description for Task 100', '2023-10-22 16:13:35.736988');


--
-- TOC entry 4844 (class 0 OID 24581)
-- Dependencies: 216
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'User1', 'user1@example.com', '123456789', 'Location1');
INSERT INTO public.users VALUES (2, 'User2', 'user2@example.com', '234567890', 'Location2');
INSERT INTO public.users VALUES (3, 'User3', 'user3@example.com', '345678901', 'Location3');
INSERT INTO public.users VALUES (4, 'User4', 'user4@example.com', '456789012', 'Location4');
INSERT INTO public.users VALUES (5, 'User5', 'user5@example.com', '567890123', 'Location5');
INSERT INTO public.users VALUES (6, 'User6', 'user6@example.com', '678901234', 'Location6');
INSERT INTO public.users VALUES (7, 'User7', 'user7@example.com', '789012345', 'Location7');
INSERT INTO public.users VALUES (8, 'User8', 'user8@example.com', '890123456', 'Location8');
INSERT INTO public.users VALUES (9, 'User9', 'user9@example.com', '901234567', 'Location9');
INSERT INTO public.users VALUES (10, 'User10', 'user10@example.com', '012345678', 'Location10');
INSERT INTO public.users VALUES (11, 'User11', 'user11@example.com', '123456789', 'Location11');
INSERT INTO public.users VALUES (12, 'User12', 'user12@example.com', '234567890', 'Location12');
INSERT INTO public.users VALUES (13, 'User13', 'user13@example.com', '345678901', 'Location13');
INSERT INTO public.users VALUES (14, 'User14', 'user14@example.com', '456789012', 'Location14');
INSERT INTO public.users VALUES (15, 'User15', 'user15@example.com', '567890123', 'Location15');
INSERT INTO public.users VALUES (16, 'User16', 'user16@example.com', '678901234', 'Location16');
INSERT INTO public.users VALUES (17, 'User17', 'user17@example.com', '789012345', 'Location17');
INSERT INTO public.users VALUES (18, 'User18', 'user18@example.com', '890123456', 'Location18');
INSERT INTO public.users VALUES (19, 'User19', 'user19@example.com', '901234567', 'Location19');
INSERT INTO public.users VALUES (20, 'User20', 'user20@example.com', '012345678', 'Location20');
INSERT INTO public.users VALUES (21, 'User21', 'user21@example.com', '123456789', 'Location21');
INSERT INTO public.users VALUES (22, 'User22', 'user22@example.com', '234567890', 'Location22');
INSERT INTO public.users VALUES (23, 'User23', 'user23@example.com', '345678901', 'Location23');
INSERT INTO public.users VALUES (24, 'User24', 'user24@example.com', '456789012', 'Location24');
INSERT INTO public.users VALUES (25, 'User25', 'user25@example.com', '567890123', 'Location25');
INSERT INTO public.users VALUES (26, 'User26', 'user26@example.com', '678901234', 'Location26');
INSERT INTO public.users VALUES (27, 'User27', 'user27@example.com', '789012345', 'Location27');
INSERT INTO public.users VALUES (28, 'User28', 'user28@example.com', '890123456', 'Location28');
INSERT INTO public.users VALUES (29, 'User29', 'user29@example.com', '901234567', 'Location29');
INSERT INTO public.users VALUES (30, 'User30', 'user30@example.com', '012345678', 'Location30');
INSERT INTO public.users VALUES (31, 'User31', 'user31@example.com', '123456789', 'Location31');
INSERT INTO public.users VALUES (32, 'User32', 'user32@example.com', '234567890', 'Location32');
INSERT INTO public.users VALUES (33, 'User33', 'user33@example.com', '345678901', 'Location33');
INSERT INTO public.users VALUES (34, 'User34', 'user34@example.com', '456789012', 'Location34');
INSERT INTO public.users VALUES (35, 'User35', 'user35@example.com', '567890123', 'Location35');
INSERT INTO public.users VALUES (36, 'User36', 'user36@example.com', '678901234', 'Location36');
INSERT INTO public.users VALUES (37, 'User37', 'user37@example.com', '789012345', 'Location37');
INSERT INTO public.users VALUES (38, 'User38', 'user38@example.com', '890123456', 'Location38');
INSERT INTO public.users VALUES (39, 'User39', 'user39@example.com', '901234567', 'Location39');
INSERT INTO public.users VALUES (40, 'User40', 'user40@example.com', '012345678', 'Location40');
INSERT INTO public.users VALUES (41, 'User41', 'user41@example.com', '123456789', 'Location41');
INSERT INTO public.users VALUES (42, 'User42', 'user42@example.com', '234567890', 'Location42');
INSERT INTO public.users VALUES (43, 'User43', 'user43@example.com', '345678901', 'Location43');
INSERT INTO public.users VALUES (44, 'User44', 'user44@example.com', '456789012', 'Location44');
INSERT INTO public.users VALUES (45, 'User45', 'user45@example.com', '567890123', 'Location45');
INSERT INTO public.users VALUES (46, 'User46', 'user46@example.com', '678901234', 'Location46');
INSERT INTO public.users VALUES (47, 'User47', 'user47@example.com', '789012345', 'Location47');
INSERT INTO public.users VALUES (48, 'User48', 'user48@example.com', '890123456', 'Location48');
INSERT INTO public.users VALUES (49, 'User49', 'user49@example.com', '901234567', 'Location49');
INSERT INTO public.users VALUES (50, 'User50', 'user50@example.com', '012345678', 'Location50');


--
-- TOC entry 4855 (class 0 OID 0)
-- Dependencies: 217
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tasks_id_seq', 100, true);


--
-- TOC entry 4856 (class 0 OID 0)
-- Dependencies: 215
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 50, true);


--
-- TOC entry 4699 (class 2606 OID 24596)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 4697 (class 2606 OID 24586)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2023-10-22 16:28:54

--
-- PostgreSQL database dump complete
--

