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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    exist boolean NOT NULL,
    circle boolean,
    size numeric,
    descr text,
    age integer,
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    exist boolean NOT NULL,
    circle boolean,
    size numeric,
    descr text,
    age integer,
    distance integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    exist boolean NOT NULL,
    circle boolean,
    size numeric,
    descr text,
    age integer,
    distance integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_id integer NOT NULL,
    name character varying(20) NOT NULL,
    exist boolean NOT NULL,
    circle boolean,
    size numeric,
    descr text,
    age integer,
    distance integer
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    exist boolean NOT NULL,
    circle boolean,
    size numeric,
    descr text,
    age integer,
    distance integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', true, true, 1, 'aa', 12, 123);
INSERT INTO public.galaxy VALUES (2, 'b', true, true, 21, 'bb', 12, 123);
INSERT INTO public.galaxy VALUES (3, 'c', true, true, 21, 'cc', 12, 123);
INSERT INTO public.galaxy VALUES (4, 'd', true, true, 21, 'dd', 12, 123);
INSERT INTO public.galaxy VALUES (6, 'e', true, true, 21, 'ee', 12, 123);
INSERT INTO public.galaxy VALUES (7, 'f', true, true, 21, 'ff', 12, 123);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ma', true, true, 21, 'ee', 12, 123, 1);
INSERT INTO public.moon VALUES (2, 'mb', true, true, 21, 'ff', 12, 123, 2);
INSERT INTO public.moon VALUES (3, 'mc', true, true, 21, 'mf', 12, 123, 3);
INSERT INTO public.moon VALUES (4, 'md', true, true, 21, 'ff', 12, 123, 4);
INSERT INTO public.moon VALUES (5, 'me', true, true, 21, 'ff', 12, 123, 5);
INSERT INTO public.moon VALUES (6, 'mf', true, true, 21, 'ff', 12, 123, 6);
INSERT INTO public.moon VALUES (7, 'mg', true, true, 21, 'ff', 12, 123, 7);
INSERT INTO public.moon VALUES (8, 'h', true, true, 21, 'ee', 12, 123, 8);
INSERT INTO public.moon VALUES (9, 'mi', true, true, 21, 'ff', 12, 123, 9);
INSERT INTO public.moon VALUES (10, 'mj', true, true, 21, 'mf', 12, 123, 10);
INSERT INTO public.moon VALUES (11, 'mk', true, true, 21, 'ff', 12, 123, 11);
INSERT INTO public.moon VALUES (12, 'ml', true, true, 21, 'ff', 12, 123, 12);
INSERT INTO public.moon VALUES (13, 'mn', true, true, 21, 'ff', 12, 123, 13);
INSERT INTO public.moon VALUES (14, 'mo', true, true, 21, 'ee', 12, 123, 1);
INSERT INTO public.moon VALUES (15, 'mp', true, true, 21, 'ff', 12, 123, 2);
INSERT INTO public.moon VALUES (16, 'mq', true, true, 21, 'mr', 12, 123, 3);
INSERT INTO public.moon VALUES (17, 'ms', true, true, 21, 'ff', 12, 123, 4);
INSERT INTO public.moon VALUES (18, 'mt', true, true, 21, 'ff', 12, 123, 5);
INSERT INTO public.moon VALUES (19, 'mu', true, true, 21, 'ff', 12, 123, 6);
INSERT INTO public.moon VALUES (20, 'mv', true, true, 21, 'ff', 12, 123, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pa', true, true, 21, 'ee', 12, 123, 1);
INSERT INTO public.planet VALUES (2, 'pb', true, true, 21, 'ff', 12, 123, 2);
INSERT INTO public.planet VALUES (3, 'pc', true, true, 21, 'ff', 12, 123, 3);
INSERT INTO public.planet VALUES (4, 'pd', true, true, 21, 'ff', 12, 123, 4);
INSERT INTO public.planet VALUES (5, 'pe', true, true, 21, 'ff', 12, 123, 5);
INSERT INTO public.planet VALUES (6, 'pf', true, true, 21, 'ff', 12, 123, 6);
INSERT INTO public.planet VALUES (7, 'pg', true, true, 21, 'ff', 12, 123, 1);
INSERT INTO public.planet VALUES (8, 'ph', true, true, 21, 'ee', 12, 123, 2);
INSERT INTO public.planet VALUES (9, 'pi', true, true, 21, 'ff', 12, 123, 3);
INSERT INTO public.planet VALUES (10, 'pj', true, true, 21, 'ff', 12, 123, 4);
INSERT INTO public.planet VALUES (11, 'pk', true, true, 21, 'ff', 12, 123, 5);
INSERT INTO public.planet VALUES (12, 'pl', true, true, 21, 'ff', 12, 123, 6);
INSERT INTO public.planet VALUES (13, 'pm', true, true, 21, 'ff', 12, 123, 1);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (1, 'spa', true, true, 21, 'ee', 12, 123);
INSERT INTO public.space VALUES (2, 'spb', true, true, 21, 'ff', 12, 123);
INSERT INTO public.space VALUES (3, 'spc', true, true, 21, 'ff', 12, 123);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sa', true, true, 21, 'ee', 12, 123, 1);
INSERT INTO public.star VALUES (2, 'sb', true, true, 21, 'ff', 12, 123, 2);
INSERT INTO public.star VALUES (3, 'sc', true, true, 21, 'ff', 12, 123, 3);
INSERT INTO public.star VALUES (4, 'sd', true, true, 21, 'ff', 12, 123, 4);
INSERT INTO public.star VALUES (5, 'se', true, true, 21, 'ff', 12, 123, 6);
INSERT INTO public.star VALUES (6, 'sf', true, true, 21, 'ff', 12, 123, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_name_key UNIQUE (name);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


