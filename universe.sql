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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    celestial_bodies_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(40)
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL
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
-- Name: galaxy_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_star_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_star_id_seq OWNED BY public.galaxy.star_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean
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
    name character varying(30),
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    moon_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moon_id_seq OWNER TO freecodecamp;

--
-- Name: planet_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moon_id_seq OWNED BY public.planet.moon_id;


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
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_id_seq OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_id_seq OWNED BY public.star.planet_id;


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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN star_id SET DEFAULT nextval('public.galaxy_star_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN moon_id SET DEFAULT nextval('public.planet_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN planet_id SET DEFAULT nextval('public.star_planet_id_seq'::regclass);


--
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES (1, 'galaxy', NULL);
INSERT INTO public.celestial_bodies VALUES (2, 'star', NULL);
INSERT INTO public.celestial_bodies VALUES (3, 'planet', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, false, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', NULL, NULL, NULL, false, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', NULL, NULL, NULL, false, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'Whirpool', NULL, NULL, NULL, false, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'Black eye', NULL, NULL, NULL, false, NULL, 6);
INSERT INTO public.galaxy VALUES (7, 'Canis', NULL, NULL, NULL, false, NULL, 7);
INSERT INTO public.galaxy VALUES (8, 'Virgo', NULL, NULL, NULL, false, NULL, 8);
INSERT INTO public.galaxy VALUES (9, 'Maffei', NULL, NULL, NULL, false, NULL, 9);
INSERT INTO public.galaxy VALUES (10, 'Magellanic Clouds', NULL, NULL, NULL, false, NULL, 10);
INSERT INTO public.galaxy VALUES (11, NULL, NULL, NULL, NULL, false, NULL, 11);
INSERT INTO public.galaxy VALUES (12, NULL, NULL, NULL, NULL, false, NULL, 12);
INSERT INTO public.galaxy VALUES (13, NULL, NULL, NULL, NULL, false, NULL, 13);
INSERT INTO public.galaxy VALUES (14, NULL, NULL, NULL, NULL, false, NULL, 14);
INSERT INTO public.galaxy VALUES (15, NULL, NULL, NULL, NULL, false, NULL, 15);
INSERT INTO public.galaxy VALUES (16, NULL, NULL, NULL, NULL, false, NULL, 16);
INSERT INTO public.galaxy VALUES (17, NULL, NULL, NULL, NULL, false, NULL, 17);
INSERT INTO public.galaxy VALUES (18, NULL, NULL, NULL, NULL, false, NULL, 18);
INSERT INTO public.galaxy VALUES (19, NULL, NULL, NULL, NULL, false, NULL, 19);
INSERT INTO public.galaxy VALUES (20, NULL, NULL, NULL, NULL, false, NULL, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (2, 'Tungi', NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (3, 'Kuu', NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, NULL, false, NULL);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, NULL, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Charon', NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, false, NULL, 2);
INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, false, NULL, 3);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, false, NULL, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, false, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, false, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, false, NULL, 7);
INSERT INTO public.planet VALUES (4, 'Earth', NULL, NULL, NULL, false, NULL, 8);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, false, NULL, 9);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, false, NULL, 10);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, false, NULL, 11);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, false, NULL, 12);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, NULL, false, NULL, 13);
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, NULL, false, NULL, 14);
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, NULL, false, NULL, 15);
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, NULL, false, NULL, 16);
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, NULL, false, NULL, 17);
INSERT INTO public.planet VALUES (18, NULL, NULL, NULL, NULL, false, NULL, 18);
INSERT INTO public.planet VALUES (19, NULL, NULL, NULL, NULL, false, NULL, 19);
INSERT INTO public.planet VALUES (20, NULL, NULL, NULL, NULL, false, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'alpha', NULL, NULL, NULL, false, NULL, 1);
INSERT INTO public.star VALUES (2, 'beta', NULL, NULL, NULL, false, NULL, 2);
INSERT INTO public.star VALUES (3, 'gamma', NULL, NULL, NULL, false, NULL, 3);
INSERT INTO public.star VALUES (4, 'delta', NULL, NULL, NULL, false, NULL, 4);
INSERT INTO public.star VALUES (5, 'epsilon', NULL, NULL, NULL, false, NULL, 5);
INSERT INTO public.star VALUES (6, 'zeta', NULL, NULL, NULL, false, NULL, 6);
INSERT INTO public.star VALUES (7, 'eta', NULL, NULL, NULL, false, NULL, 7);
INSERT INTO public.star VALUES (8, 'theta', NULL, NULL, NULL, false, NULL, 8);
INSERT INTO public.star VALUES (9, 'iota', NULL, NULL, NULL, false, NULL, 9);
INSERT INTO public.star VALUES (10, 'kappa', NULL, NULL, NULL, false, NULL, 10);
INSERT INTO public.star VALUES (11, 'lambda', NULL, NULL, NULL, false, NULL, 11);
INSERT INTO public.star VALUES (12, 'mu', NULL, NULL, NULL, false, NULL, 12);
INSERT INTO public.star VALUES (13, 'nu', NULL, NULL, NULL, false, NULL, 13);
INSERT INTO public.star VALUES (14, NULL, NULL, NULL, NULL, false, NULL, 14);
INSERT INTO public.star VALUES (15, NULL, NULL, NULL, NULL, false, NULL, 15);
INSERT INTO public.star VALUES (16, NULL, NULL, NULL, NULL, false, NULL, 16);
INSERT INTO public.star VALUES (17, NULL, NULL, NULL, NULL, false, NULL, 17);
INSERT INTO public.star VALUES (18, NULL, NULL, NULL, NULL, false, NULL, 18);
INSERT INTO public.star VALUES (19, NULL, NULL, NULL, NULL, false, NULL, 19);
INSERT INTO public.star VALUES (20, NULL, NULL, NULL, NULL, false, NULL, 20);


--
-- Name: celestial_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: galaxy_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_star_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 3, true);


--
-- Name: planet_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: celestial_bodies celestial_bodies_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_description_key UNIQUE (description);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_key UNIQUE (star_id);


--
-- Name: planet has; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT has UNIQUE (name);


--
-- Name: star has_life; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT has_life UNIQUE (name);


--
-- Name: galaxy id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id UNIQUE (name);


--
-- Name: moon life; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT life UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: celestial_bodies name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_key UNIQUE (planet_id);


--
-- Name: moon moon_moon_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey1 FOREIGN KEY (moon_id) REFERENCES public.planet(moon_id);


--
-- Name: planet planet_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.star(planet_id);


--
-- Name: star star_star_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey1 FOREIGN KEY (star_id) REFERENCES public.galaxy(star_id);


--
-- PostgreSQL database dump complete
--

