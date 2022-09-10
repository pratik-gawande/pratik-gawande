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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30),
    mob numeric,
    is_active boolean NOT NULL,
    is_on boolean NOT NULL,
    address text
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_type numeric,
    galaxy_type character varying(30),
    distance_from_earth integer
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
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_type numeric,
    galaxy_type character varying(30),
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_d_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_d_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_d_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_d_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_d_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_type numeric,
    galaxy_type character varying(30),
    distance_from_earth integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
    planet_type numeric,
    galaxy_type character varying(30),
    distance_from_earth integer,
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_d_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'om', 1, true, false, 'Pune');
INSERT INTO public.extra VALUES (2, 'Arya', 2, true, false, 'Pune');
INSERT INTO public.extra VALUES (3, 'Archana', 3, false, true, 'Chakan');
INSERT INTO public.extra VALUES (4, 'Pratik', 4, false, false, 'Chakan');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'abc', 'this is description', true, false, 25487, 24, 'pqr', 6547);
INSERT INTO public.galaxy VALUES (2, 'abc2', 'this is description2', true, false, 789, 14, 'pqr2', 3216547);
INSERT INTO public.galaxy VALUES (3, 'abc3', 'this is description3', false, true, 147, 20, 'pqr3', 98745);
INSERT INTO public.galaxy VALUES (4, 'abc4', 'This is abc  description 4', true, true, 999, 888, 'pqr 4', 777);
INSERT INTO public.galaxy VALUES (5, 'abc5', 'This is abc  description 5', false, false, 888, 777, 'pqr 5', 999);
INSERT INTO public.galaxy VALUES (6, 'abc6', 'This is abc  description 6', false, true, 789, 456, 'pqr 6', 123);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'xyz1', 'This is xyz  description 1', false, true, 333, 222, 'mno1', 111, 1);
INSERT INTO public.moon VALUES (2, 'xyz2', 'This is xyz  description 2', true, true, 666, 555, 'mno2', 444, 2);
INSERT INTO public.moon VALUES (3, 'xyz3', 'This is xyz  description 3', true, false, 999, 888, 'mno3', 777, 3);
INSERT INTO public.moon VALUES (4, 'xyz 4', 'This is xyz  description 4', true, true, 111, 111, 'mno 4', 222, 4);
INSERT INTO public.moon VALUES (5, 'xyz 5', 'this is xyz 5', true, false, 2222, 3333, 'mno 5', 2222, 5);
INSERT INTO public.moon VALUES (6, 'xyz 6', 'this is xyz 6', false, false, 3333, 4444, 'mno 6', 3333, 7);
INSERT INTO public.moon VALUES (7, 'xyz 7', 'this is xyz 7', true, false, 4444, 5555, 'mno 7', 4444, 8);
INSERT INTO public.moon VALUES (8, 'xyz 8', 'this is xyz 8', true, false, 5555, 6666, 'mno 8', 5555, 9);
INSERT INTO public.moon VALUES (9, 'xyz 9', 'This is xyz  description 9', true, true, 6666, 7777, 'mno 9', 6666, 10);
INSERT INTO public.moon VALUES (10, 'xyz 10', 'this is xyz 10', true, false, 7777, 8888, 'mno 10', 8888, 11);
INSERT INTO public.moon VALUES (11, 'xyz 11', 'this is xyz 11', false, false, 9999, 1010, 'mno 11', 9999, 12);
INSERT INTO public.moon VALUES (12, 'xyz 12', 'this is xyz 12', true, false, 11111, 22222, 'mno 12', 1010, 1);
INSERT INTO public.moon VALUES (13, 'xyz 13', 'this is xyz 13', true, false, 22222, 33333, 'mno 13', 11111, 2);
INSERT INTO public.moon VALUES (14, 'xyz 14', 'this is xyz 14', true, true, 33333, 44444, 'mno 14', 22222, 3);
INSERT INTO public.moon VALUES (15, 'xyz 15', 'This is xyz  description 15', true, true, 44444, 55555, 'mno 15', 33333, 4);
INSERT INTO public.moon VALUES (16, 'xyz 16', 'this is xyz 16', true, false, 55555, 66666, 'mno 16', 44444, 5);
INSERT INTO public.moon VALUES (17, 'xyz 17', 'this is xyz 17', false, false, 66666, 77777, 'mno 17', 55555, 7);
INSERT INTO public.moon VALUES (18, 'xyz 18', 'this is xyz 18', true, false, 88888, 99999, 'mno 18', 66666, 8);
INSERT INTO public.moon VALUES (19, 'xyz 19', 'this is xyz 19', true, false, 111111, 222222, 'mno 19', 111111, 9);
INSERT INTO public.moon VALUES (20, 'xyz 20', 'this is xyz 20', true, true, 333333, 444444, 'mno 20', 222222, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'xyz', 'This is xyz  description', false, true, 951, 753, 'mno', 684, 1);
INSERT INTO public.planet VALUES (2, 'xyz1', 'This is xyz  description 2', true, false, 348, 128, 'mno1', 946, 2);
INSERT INTO public.planet VALUES (3, 'xyz3', 'This is xyz  description 3', false, true, 193, 754, 'mno2', 584, 3);
INSERT INTO public.planet VALUES (4, 'xyz 4', 'This is xyz  description 4', true, false, 285, 946, 'mno 4', 714, 4);
INSERT INTO public.planet VALUES (5, 'xyz 5', 'This is xyz  description 5', true, true, 1122, 9988, 'mno 5', 7235, 5);
INSERT INTO public.planet VALUES (7, 'xyz 5', 'This is xyz  description 5', true, true, 1122, 9988, 'mno 5', 227235, 5);
INSERT INTO public.planet VALUES (8, 'xyz 6', 'this is xyz 6', true, false, 4455, 4545, 'mno 6', 9895, 6);
INSERT INTO public.planet VALUES (9, 'xyz 7', 'this is xyz 7', false, false, 7788, 6547, 'mno 7', 5461, 1);
INSERT INTO public.planet VALUES (10, 'xyz 8', 'this is xyz 8', true, false, 3249, 3549, 'mno 8', 1256, 2);
INSERT INTO public.planet VALUES (11, 'xyz 9', 'this is xyz 9', true, false, 67941, 34657, 'mno 9', 45674, 3);
INSERT INTO public.planet VALUES (12, 'xyz 10', 'This is xyz  description 10', true, true, 21122, 1988, 'mno10', 9465, 6);
INSERT INTO public.planet VALUES (13, 'xyz 11', 'This is xyz  description 11', true, true, 2112, 19856, 'mno 11', 36548, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'pqr', 'This is description', false, false, 369, 14789, 'abc', 258, 1);
INSERT INTO public.star VALUES (2, 'pqr2', 'This is description2', true, true, 3469, 147879, 'abc2', 2587, 2);
INSERT INTO public.star VALUES (3, 'pqr3', 'This is description3', false, true, 845, 654, 'abc3', 789, 3);
INSERT INTO public.star VALUES (4, 'abc4', 'This is abc  description 4', false, true, 147, 258, 'pqr 4', 369, 4);
INSERT INTO public.star VALUES (5, 'abc5', 'This is abc  description 5', false, false, 471, 582, 'pqr 5', 693, 5);
INSERT INTO public.star VALUES (6, 'abc6', 'This is abc  description 6', true, false, 639, 528, 'pqr 6', 417, 6);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_d_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_d_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_mob_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_mob_key UNIQUE (mob);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

