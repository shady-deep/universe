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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    unit integer NOT NULL,
    count integer NOT NULL,
    moon_count numeric(4,1) NOT NULL,
    galaxy_name character varying(20) NOT NULL
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
    name character varying(40) NOT NULL,
    unit integer NOT NULL,
    destination integer NOT NULL,
    liquid_count numeric(4,1) NOT NULL,
    girl text NOT NULL,
    gravity boolean NOT NULL,
    moon_id integer NOT NULL,
    space character varying(40) NOT NULL
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
    name character varying(40) NOT NULL,
    unit integer NOT NULL,
    space integer NOT NULL,
    life_planet numeric(4,1) NOT NULL,
    girl text,
    human text
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
-- Name: space_x; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_x (
    name character varying(30) NOT NULL,
    company character varying(20) NOT NULL,
    profit character varying(20) NOT NULL,
    space_x_id integer NOT NULL
);


ALTER TABLE public.space_x OWNER TO freecodecamp;

--
-- Name: space_x_space_x_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_x_space_x_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_x_space_x_id_seq OWNER TO freecodecamp;

--
-- Name: space_x_space_x_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_x_space_x_id_seq OWNED BY public.space_x.space_x_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    unit integer NOT NULL,
    count integer NOT NULL,
    small_stars numeric(4,1) NOT NULL,
    fall boolean NOT NULL,
    human text NOT NULL,
    star_color character varying(50) NOT NULL,
    galaxy_name character varying(40)
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
-- Name: space_x space_x_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_x ALTER COLUMN space_x_id SET DEFAULT nextval('public.space_x_space_x_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'the milky way', 2, 5, 3.0, 'same');
INSERT INTO public.galaxy VALUES (2, 'The milky way', 4, 6, 8.0, 'same_as');
INSERT INTO public.galaxy VALUES (3, 'just_one', 7, 7, 7.0, 'same_as_is');
INSERT INTO public.galaxy VALUES (4, 'just_one', 9, 9, 9.0, 'no_changes');
INSERT INTO public.galaxy VALUES (5, 'no_more', 11, 11, 11.0, 'no_changes_yet');
INSERT INTO public.galaxy VALUES (7, 'no_more', 12, 12, 12.0, 'no_changes_at_all');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 2, 'long');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 3, 'short');
INSERT INTO public.moon VALUES ('black', 7, 7, 13.0, 'awesome', false, 4, 'medium');
INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 5, 'lon');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 6, 'shor');
INSERT INTO public.moon VALUES ('black', 7, 17, 11.0, 'awesome', false, 7, 'med');
INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 8, 'lo');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 9, 'sho');
INSERT INTO public.moon VALUES ('black', 7, 17, 11.0, 'awesome', false, 10, 'me');
INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 11, 'loll');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 12, 'sholl');
INSERT INTO public.moon VALUES ('black', 7, 17, 11.0, 'awesome', false, 13, 'mell');
INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 14, 'lollo');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 15, 'shollo');
INSERT INTO public.moon VALUES ('black', 7, 17, 11.0, 'awesome', false, 16, 'mello');
INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 17, 'lollol');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 18, 'shollol');
INSERT INTO public.moon VALUES ('black', 7, 17, 11.0, 'awesome', false, 19, 'mellol');
INSERT INTO public.moon VALUES ('purple', 2, 4, 5.0, 'fantastic', true, 20, 'lolloll');
INSERT INTO public.moon VALUES ('white', 1, 8, 9.0, 'sexy', true, 21, 'sholloll');
INSERT INTO public.moon VALUES ('black', 7, 17, 11.0, 'awesome', false, 22, 'melloll');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'blue', 2, 3, 5.0, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'yellow', 1, 2, 4.0, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'pink', 4, 7, 8.0, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'pink', 2, 6, 9.0, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'black', 2, 6, 9.0, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'white', 2, 6, 9.0, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'white', 3, 3, 3.0, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'purple', 3, 3, 3.0, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'purple', 2, 2, 2.0, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'purple', 2, 2, 2.0, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'white', 1, 8, 6.0, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'black', 7, 5, 9.0, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'purple', 2, 2, 2.0, 'fantastic', NULL);
INSERT INTO public.planet VALUES (15, 'white', 1, 8, 6.0, 'sexy', NULL);
INSERT INTO public.planet VALUES (16, 'black', 7, 5, 9.0, 'awesome', NULL);


--
-- Data for Name: space_x; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_x VALUES ('elon_mask', 'belladonna', 'many', 1);
INSERT INTO public.space_x VALUES ('giff_bizos', 'amazon', 'low', 2);
INSERT INTO public.space_x VALUES ('bill_gates', 'microsoft', 'a_lot', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'no_changes', 12, 12, 5.0, true, 'famous', 'blue', NULL);
INSERT INTO public.star VALUES (8, 'no_changes', 12, 12, 4.0, true, 'very_famous', 'yellow', NULL);
INSERT INTO public.star VALUES (9, 'no_changes', 12, 12, 8.0, true, 'very_very_famous', 'white', NULL);
INSERT INTO public.star VALUES (10, 'no_changes', 12, 12, 9.0, true, 'very_very_famous_one', 'black', NULL);
INSERT INTO public.star VALUES (12, 'no_changes', 12, 12, 13.0, true, 'very_very_famous_one_man', 'pink', NULL);
INSERT INTO public.star VALUES (13, 'no_changes', 12, 12, 14.0, true, 'special_one', 'purple', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: space_x_space_x_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_x_space_x_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: star human; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT human UNIQUE (human);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_space_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_space_key UNIQUE (space);


--
-- Name: planet planet_girl_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_girl_key UNIQUE (girl);


--
-- Name: planet planet_human_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_human_key UNIQUE (human);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: space_x space_x_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_x
    ADD CONSTRAINT space_x_pkey PRIMARY KEY (space_x_id);


--
-- Name: space_x space_x_profit_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_x
    ADD CONSTRAINT space_x_profit_key UNIQUE (profit);


--
-- Name: space_x space_x_space_x_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_x
    ADD CONSTRAINT space_x_space_x_id_key UNIQUE (space_x_id);


--
-- Name: star star_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_color_key UNIQUE (star_color);


--
-- Name: moon moon_girl_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_girl_fkey FOREIGN KEY (girl) REFERENCES public.planet(girl);


--
-- Name: planet planet_human_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_human_fkey FOREIGN KEY (human) REFERENCES public.star(human);


--
-- Name: star star_galaxy_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_name_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

