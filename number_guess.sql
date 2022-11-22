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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    games_played integer,
    best_game integer
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Lucas', NULL, NULL);
INSERT INTO public.users VALUES (2, 'Kiko', NULL, NULL);
INSERT INTO public.users VALUES (3, 'user_1668791351481', NULL, NULL);
INSERT INTO public.users VALUES (4, 'user_1668791351481', NULL, NULL);
INSERT INTO public.users VALUES (5, 'user_1668791351480', NULL, NULL);
INSERT INTO public.users VALUES (6, 'user_1668791351480', NULL, NULL);
INSERT INTO public.users VALUES (7, 'user_1668791351481', NULL, NULL);
INSERT INTO public.users VALUES (8, 'user_1668791351481', NULL, NULL);
INSERT INTO public.users VALUES (9, 'user_1668791351481', NULL, NULL);
INSERT INTO public.users VALUES (10, 'Pep', NULL, NULL);
INSERT INTO public.users VALUES (11, 'user_1668791503097', NULL, NULL);
INSERT INTO public.users VALUES (12, 'user_1668791503097', NULL, NULL);
INSERT INTO public.users VALUES (13, 'user_1668791503096', NULL, NULL);
INSERT INTO public.users VALUES (14, 'user_1668791503096', NULL, NULL);
INSERT INTO public.users VALUES (15, 'user_1668791503097', NULL, NULL);
INSERT INTO public.users VALUES (16, 'user_1668791503097', NULL, NULL);
INSERT INTO public.users VALUES (17, 'user_1668791503097', NULL, NULL);
INSERT INTO public.users VALUES (18, 'user_1668791554871', NULL, NULL);
INSERT INTO public.users VALUES (19, 'user_1668791554871', NULL, NULL);
INSERT INTO public.users VALUES (20, 'user_1668791554870', NULL, NULL);
INSERT INTO public.users VALUES (21, 'user_1668791554870', NULL, NULL);
INSERT INTO public.users VALUES (22, 'user_1668791554871', NULL, NULL);
INSERT INTO public.users VALUES (23, 'user_1668791554871', NULL, NULL);
INSERT INTO public.users VALUES (24, 'user_1668791554871', NULL, NULL);
INSERT INTO public.users VALUES (25, 'Jess', NULL, NULL);
INSERT INTO public.users VALUES (26, 'Michael', NULL, NULL);
INSERT INTO public.users VALUES (27, 'John', NULL, NULL);
INSERT INTO public.users VALUES (28, 'Jani', NULL, NULL);
INSERT INTO public.users VALUES (29, 'Men', NULL, NULL);
INSERT INTO public.users VALUES (30, 'Mige', NULL, NULL);
INSERT INTO public.users VALUES (31, 'Ol', NULL, NULL);
INSERT INTO public.users VALUES (32, 'user_1668792527382', NULL, NULL);
INSERT INTO public.users VALUES (33, 'user_1668792527382', NULL, NULL);
INSERT INTO public.users VALUES (34, 'user_1668792527381', NULL, NULL);
INSERT INTO public.users VALUES (35, 'user_1668792527381', NULL, NULL);
INSERT INTO public.users VALUES (36, 'user_1668792527382', NULL, NULL);
INSERT INTO public.users VALUES (37, 'user_1668792527382', NULL, NULL);
INSERT INTO public.users VALUES (38, 'user_1668792527382', NULL, NULL);
INSERT INTO public.users VALUES (39, 'Paul', NULL, NULL);
INSERT INTO public.users VALUES (40, 'user_1668792779235', NULL, NULL);
INSERT INTO public.users VALUES (41, 'user_1668792779235', NULL, NULL);
INSERT INTO public.users VALUES (42, 'user_1668792779234', NULL, NULL);
INSERT INTO public.users VALUES (43, 'user_1668792779234', NULL, NULL);
INSERT INTO public.users VALUES (44, 'user_1668792779235', NULL, NULL);
INSERT INTO public.users VALUES (45, 'user_1668792779235', NULL, NULL);
INSERT INTO public.users VALUES (46, 'user_1668792779235', NULL, NULL);
INSERT INTO public.users VALUES (47, 'lUCAS', NULL, NULL);
INSERT INTO public.users VALUES (48, 'user_1668793520382', NULL, NULL);
INSERT INTO public.users VALUES (49, 'user_1668793520381', NULL, NULL);
INSERT INTO public.users VALUES (81, 'user_1668793738780', NULL, NULL);
INSERT INTO public.users VALUES (82, 'user_1668793738779', NULL, NULL);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 82, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

