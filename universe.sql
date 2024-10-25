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
-- Name: comets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comets (
    comets_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    next_appearance date
);


ALTER TABLE public.comets OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comets_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comets_id_seq OWNED BY public.comets.comets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_age numeric(15,2),
    description_galaxy text,
    galaxy_type character varying(40)
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
    name character varying(30) NOT NULL,
    planet_id integer,
    radio integer,
    masa integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    description_planet text,
    is_spherical boolean,
    radio integer,
    masa integer,
    is_habitable boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    temperature double precision,
    luminosity integer
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
-- Name: comets comets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets ALTER COLUMN comets_id SET DEFAULT nextval('public.comets_comets_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comets VALUES (1, 'Halley', 1, '2061-07-28');
INSERT INTO public.comets VALUES (2, 'Hale-Bopp', 1, '4385-04-01');
INSERT INTO public.comets VALUES (3, 'Encke', 1, '2030-10-23');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 13600000000.00, 'Nuestra galaxia, contiene nuestro sistema solar.', 'Espiral barrada');
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 100000000000.00, 'Galaxia vecina más cercana a la Vía Láctea', 'Espiral');
INSERT INTO public.galaxy VALUES (3, 'Galaxia del Sombrero (M104)', 13000000000.00, 'Destaca por su núcleo brillante y un disco prominente de polvo.', 'Espiral lenticular');
INSERT INTO public.galaxy VALUES (4, 'Galaxia de Bode (M81)', 12000000000.00, 'Una de las galaxias espirales más brillantes y cercanas a nosotros, ubicada en la constelación de la Osa Mayor.', 'Espiral');
INSERT INTO public.galaxy VALUES (5, 'Galaxia del Triángulo (M33)', 10000000000.00, 'Parte del Grupo Local de galaxias, al que pertenecen la Vía Láctea y Andrómeda.', 'espiral');
INSERT INTO public.galaxy VALUES (6, 'Galaxia de la Rueda de Carro', 500000000.00, 'Una galaxia anular producto de una colisión galáctica. Edad: 500 millones de años desde la colisión.', 'Lenticular con anillo prominente');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 1737, 0);
INSERT INTO public.moon VALUES (2, 'Fobos', 2, 11, 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 6, 0);
INSERT INTO public.moon VALUES (4, 'Io', 3, 1822, 0);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 1561, 0);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 3, 2634, 0);
INSERT INTO public.moon VALUES (7, 'Calisto', 3, 2410, 0);
INSERT INTO public.moon VALUES (8, 'Titán', 4, 2575, 0);
INSERT INTO public.moon VALUES (9, 'Encélado', 4, 252, 0);
INSERT INTO public.moon VALUES (10, 'Mimas', 4, 198, 0);
INSERT INTO public.moon VALUES (11, 'Rea', 4, 765, 0);
INSERT INTO public.moon VALUES (12, 'Dione', 4, 561, 0);
INSERT INTO public.moon VALUES (13, 'Tritón', 7, 1353, 0);
INSERT INTO public.moon VALUES (14, 'Nereida', 7, 170, 0);
INSERT INTO public.moon VALUES (15, 'Oberón', 8, 761, 0);
INSERT INTO public.moon VALUES (16, 'Titania', 8, 788, 0);
INSERT INTO public.moon VALUES (17, 'Miranda', 8, 236, 0);
INSERT INTO public.moon VALUES (18, 'Umbriel', 8, 585, 0);
INSERT INTO public.moon VALUES (19, 'Ariel', 8, 579, 0);
INSERT INTO public.moon VALUES (20, 'Caronte', 9, 606, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 1, 'El único planeta conocido con vida.', true, 6371, 1, true);
INSERT INTO public.planet VALUES (2, 'Marte', 1, 'Planeta rocoso, posible candidato para la colonización.', true, 3390, 0, false);
INSERT INTO public.planet VALUES (3, 'Júpiter', 1, 'El planeta más grande del sistema solar, gigante gaseoso.', true, 69911, 318, false);
INSERT INTO public.planet VALUES (4, 'Saturno', 1, 'Famoso por sus anillos, gigante gaseoso.', true, 58232, 95, false);
INSERT INTO public.planet VALUES (5, 'Venus', 1, 'Similar a la Tierra en tamaño, pero con un clima infernal.', true, 6052, 1, false);
INSERT INTO public.planet VALUES (6, 'Mercurio', 1, 'El planeta más cercano al Sol y el más pequeño del sistema solar.', true, 2440, 0, false);
INSERT INTO public.planet VALUES (7, 'Neptuno', 1, 'Gigante helado, conocido por sus vientos extremos.', true, 24622, 17, false);
INSERT INTO public.planet VALUES (8, 'Urano', 1, 'Gigante helado que rota de lado.', true, 25362, 15, false);
INSERT INTO public.planet VALUES (9, 'Plutón', 1, 'Planeta enano en el Cinturón de Kuiper.', true, 1188, 0, false);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 2, 'Exoplaneta en la zona habitable de su estrella.', true, 2, NULL, true);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 3, 'Exoplaneta en la zona habitable de Proxima Centauri.', true, 1, 1, true);
INSERT INTO public.planet VALUES (12, 'Trappist-1e', 4, 'Exoplaneta en el sistema Trappist-1, en la zona habitable.', true, 1, 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 5778, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 9940, 25);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 3500, 120000);
INSERT INTO public.star VALUES (4, 'Procyon', 1, 6530, 7);
INSERT INTO public.star VALUES (5, 'Rigel', 1, 11000, 120000);
INSERT INTO public.star VALUES (6, 'Vega', 1, 9602, 40);


--
-- Name: comets_comets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comets_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comets comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comets_id);


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
-- Name: comets unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: comets fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comets
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

