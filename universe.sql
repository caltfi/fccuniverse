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
    description text,
    distance_from_earth integer,
    galaxy_type character varying(30),
    name character varying(30) NOT NULL
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
    description text,
    moon_orbit_radius numeric,
    name character varying(30) NOT NULL,
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
    description text,
    has_life boolean,
    name character varying(30) NOT NULL,
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
-- Name: satellites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellites (
    satellites_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.satellites OWNER TO freecodecamp;

--
-- Name: satellites_satellites_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellites_satellites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellites_satellites_id_seq OWNER TO freecodecamp;

--
-- Name: satellites_satellites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellites_satellites_id_seq OWNED BY public.satellites.satellites_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    age_in_million_years integer,
    name character varying(30) NOT NULL,
    is_supernova boolean,
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
-- Name: satellites satellites_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites ALTER COLUMN satellites_id SET DEFAULT nextval('public.satellites_satellites_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way is our Galaxy. where the Solar System is located', 8, 'spiral', 'The Milky Way');
INSERT INTO public.galaxy VALUES (2, 'A Galaxy far far away....', 1550, 'dwarf', 'Bear Paw Galaxy');
INSERT INTO public.galaxy VALUES (3, 'It was referenced in that movie... remember?', 85, 'barred-spiral', 'Andromeda');
INSERT INTO public.galaxy VALUES (5, 'It was discovered in 1774.', 12, 'starburst', 'Messier 82');
INSERT INTO public.galaxy VALUES (6, 'Its structure cannot be explained by science yet. Discovered in 1944', 500, 'lenticular-ring', 'Cartwheel Galaxy');
INSERT INTO public.galaxy VALUES (7, 'Probably the coolest galaxy name. Also called NGC 1232 but thats not as cool', 8, 'spiral', 'Eye of God');
INSERT INTO public.galaxy VALUES (8, 'The least metal and chemical rich galaxy ever discovered. Low chance of life.', 2, 'blue-dwarf', 'Peekaboo Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'our moon, we see it every day', 1.23, 'The Moon', 1);
INSERT INTO public.moon VALUES (2, 'small martian moon', 2.34, 'Deimos', 4);
INSERT INTO public.moon VALUES (3, 'another martian moon', 4.5, 'Phobos', 4);
INSERT INTO public.moon VALUES (4, 'one of the largest moons in the solar system', 3.5, 'Europa', 5);
INSERT INTO public.moon VALUES (5, 'another large moon of jupiter', 5.5, 'Io', 5);
INSERT INTO public.moon VALUES (6, 'another large moon of jupiter', 5.5, 'Ganymede', 5);
INSERT INTO public.moon VALUES (7, 'another large moon of jupiter', 5.5, 'Callisto', 5);
INSERT INTO public.moon VALUES (8, 'a very large moon of Saturn', 6.5, 'Titan', 6);
INSERT INTO public.moon VALUES (9, 'moon on neptune', 9.5, 'Triton', 7);
INSERT INTO public.moon VALUES (10, 'moon of pluto', 8.3, 'Charon', 9);
INSERT INTO public.moon VALUES (11, 'moon of Uranus', 3.3, 'Ariel', 8);
INSERT INTO public.moon VALUES (12, 'moon of Uranus', 3.3, 'Umbriel', 8);
INSERT INTO public.moon VALUES (13, 'moon of Uranus', 3.3, 'Miranda', 8);
INSERT INTO public.moon VALUES (14, 'moon of Uranus', 3.3, 'Puck', 8);
INSERT INTO public.moon VALUES (15, 'moon of Uranus', 3.3, 'Titania', 8);
INSERT INTO public.moon VALUES (16, 'moon of Uranus', 3.3, 'Oberon', 8);
INSERT INTO public.moon VALUES (17, 'Another moon of Saturn', 2.7, 'Rhea', 6);
INSERT INTO public.moon VALUES (18, 'Another moon of Saturn', 2.7, 'Mimas', 6);
INSERT INTO public.moon VALUES (19, 'Another moon of Saturn', 2.7, 'Dione', 6);
INSERT INTO public.moon VALUES (20, 'Another moon of Saturn', 2.7, 'Tethys', 6);
INSERT INTO public.moon VALUES (21, 'Another moon of Saturn', 2.7, 'Iapetus', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'where we live', true, 'Earth', 1);
INSERT INTO public.planet VALUES (2, 'closes to the sun', false, 'Mercury', 1);
INSERT INTO public.planet VALUES (3, 'close to earth, but too hot', false, 'Venus', 1);
INSERT INTO public.planet VALUES (4, 'God of war', false, 'Mars', 1);
INSERT INTO public.planet VALUES (5, 'largest planet in solar system', false, 'Jupiter', 1);
INSERT INTO public.planet VALUES (6, 'has cool rings', false, 'Saturn', 1);
INSERT INTO public.planet VALUES (7, 'inhospitable', false, 'Neptune', 1);
INSERT INTO public.planet VALUES (8, 'acid oceans', false, 'Uranus', 1);
INSERT INTO public.planet VALUES (9, 'Not really a planet but actually maybe it is?', false, 'Pluto', 1);
INSERT INTO public.planet VALUES (10, 'possibly habitable for life', true, 'Proxima Centauri b', 5);
INSERT INTO public.planet VALUES (11, 'possibly habitable exoplanet', true, 'Proxima Centauri d', 5);
INSERT INTO public.planet VALUES (12, 'disputed planet 7 times size of earth', false, 'Proxima Centauri c', 5);


--
-- Data for Name: satellites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellites VALUES (1, 'Aqua', 'A NASA research satellite', 1);
INSERT INTO public.satellites VALUES (2, 'CALIPSO', 'A NASA research satellite', 1);
INSERT INTO public.satellites VALUES (3, 'SMOS', 'A european satellite', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The centre of our solar system.', 4500, 'The Sun', false, 1);
INSERT INTO public.star VALUES (2, 'A star that died and shed itself to create the Helix Nebula', 10000, 'GJ 9785', false, 7);
INSERT INTO public.star VALUES (3, 'The andromeda supernova the only one in that galaxy', 10000, 'SN 1885A', true, 3);
INSERT INTO public.star VALUES (4, 'A type two supernova', 10000, 'SN 2021afdx', true, 6);
INSERT INTO public.star VALUES (5, 'In the milky way', 10000, 'Proxima Centauri', false, 1);
INSERT INTO public.star VALUES (6, 'In the milky way as well', 10000, 'Rigil Kentaurus', false, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellites_satellites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellites_satellites_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: satellites satellites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_name_key UNIQUE (name);


--
-- Name: satellites satellites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_pkey PRIMARY KEY (satellites_id);


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
-- Name: satellites satellites_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellites
    ADD CONSTRAINT satellites_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

