--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Homebrew)
-- Dumped by pg_dump version 16.3 (Homebrew)

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
-- Name: users; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA users;


ALTER SCHEMA users OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employees; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.employees (
    id integer,
    first_name character varying(255),
    last_name character varying(255),
    username character varying(255),
    password character varying(255),
    birthday date,
    address character varying(255),
    phone character varying(255),
    sss character varying(255),
    tin character varying(255),
    pagibig character varying(255),
    status character varying(50),
    designation character varying(255),
    supervisor character varying(255),
    basic_salary numeric(10,2),
    rice_subsidy numeric(10,2),
    phone_allowance numeric(10,2),
    clothing_allowance numeric(10,2),
    gross_semi_monthly_rate numeric(10,2),
    hourly_rate numeric(10,2),
    philhealth character varying(255)
);


ALTER TABLE users.employees OWNER TO "postgres";

--
-- Name: users; Type: TABLE; Schema: users; Owner: postgres
--

CREATE TABLE users.users (
    username character varying,
    password character varying,
    firstname character varying,
    lastname character varying,
    birthday character varying,
    address character varying
);


ALTER TABLE users.users OWNER TO "postgres";

--
-- Data for Name: employees; Type: TABLE DATA; Schema: users; Owner: postgres
--

INSERT INTO users.employees VALUES (9, 'Rosie', 'Atienza', 'r.atienza', 'atienza12345qwert', '1948-09-24', '90A Dibbert Terrace Apt. 190, San Lorenzo 6056 Davao del Norte', '266-036-427', '41-0644692-3', '604-997-793-000', '260108000000 ', 'Regular', 'HR Rank and File', 'San, Jose Brad', 22500.00, 1500.00, 500.00, 500.00, 11250.00, 133.93, '708988000000 ');
INSERT INTO users.employees VALUES (10, 'Roderick', 'Alvaro', 'r.alvaro', 'alvaro12345qwert', '1988-03-30', '#284 T. Morato corner, Scout Rallos Street, Quezon City', '053-381-386', '64-7605054-4', '525-420-419-000', '799254000000 ', 'Regular', 'Accounting Head', 'Aquino, Bianca Sofia', 52670.00, 1500.00, 1000.00, 1000.00, 26335.00, 313.51, '578115000000 ');
INSERT INTO users.employees VALUES (6, 'Andrea Mae', 'Villanueva', 'am.villanueva', 'villanueva12345qwert', '1988-02-14', '17/85 Stracke Via Suite 042, Poblacion, Las Pi?as 4783 Dinagat Islands', '918-621-603', '49-1632020-8', '317-674-022-000', '441093000000 ', 'Regular', 'HR Manager', 'Lim, Antonio', 52670.00, 1500.00, 1000.00, 1000.00, 26335.00, 313.51, '382189000000 ');
INSERT INTO users.employees VALUES (8, 'Alice', 'Romualdez', 'a.romualdez', 'romualdez12345qwert', '1992-05-14', '12A/33 Upton Isle Apt. 420, Roxas City 1814 Surigao del Norte', '983-606-799', '55-4476527-2', '888-572-294-000', '211386000000 ', 'Regular', 'HR Rank and File', 'San, Jose Brad', 22500.00, 1500.00, 500.00, 500.00, 11250.00, 133.93, '545653000000 ');
INSERT INTO users.employees VALUES (11, 'Anthony', 'Salcedo', 'a.salcedo', 'salcedo12345qwert', '1993-09-14', '93/54 Shanahan Alley Apt. 183, Santo Tomas 1572 Masbate', '070-766-300', '26-9647608-3', '210-805-911-000', '218002000000 ', 'Regular', 'Payroll Manager', 'Alvaro, Roderick', 50825.00, 1500.00, 1000.00, 1000.00, 25412.50, 302.53, '126445000000 ');
INSERT INTO users.employees VALUES (12, 'Josie', 'Lopez', 'j.lopez', 'lopez12345qwert', '1987-01-14', '49 Springs Apt. 266, Poblacion, Taguig 3200 Occidental Mindoro', '478-355-427', '44-8563448-3', '218-489-737-000', '113071000000 ', 'Regular', 'Payroll Team Leader', 'Salcedo, Anthony', 38475.00, 1500.00, 800.00, 800.00, 19237.50, 229.02, '431709000000 ');
INSERT INTO users.employees VALUES (13, 'Martha', 'Farala', 'm.farala', 'farala12345qwert', '1942-01-11', '42/25 Sawayn Stream, Ubay 1208 Zamboanga del Norte', '329-034-366', '45-5656375-0', '210-835-851-000', '631130000000 ', 'Regular', 'Payroll Rank and File', 'Salcedo, Anthony', 24000.00, 1500.00, 500.00, 500.00, 12000.00, 142.86, '233694000000 ');
INSERT INTO users.employees VALUES (14, 'Leila', 'Martinez', 'l.martinez', 'martinez12345qwert', '1970-07-11', '37/46 Kulas Roads, Maragondon 0962 Quirino', '877-110-749', '27-2090996-4', '275-792-513-000', '101205000000 ', 'Regular', 'Payroll Rank and File', 'Salcedo, Anthony', 24000.00, 1500.00, 500.00, 500.00, 12000.00, 142.86, '515741000000 ');
INSERT INTO users.employees VALUES (15, 'Fredrick', 'Romualdez', 'f.romualdez', 'romualdez12345qwert', '1985-03-10', '22A/52 Lubowitz Meadows, Pililla 4895 Zambales', '023-079-009', '26-8768374-1', '598-065-761-000', '223058000000 ', 'Regular', 'Account Manager', 'Lim, Antonio', 53500.00, 1500.00, 1000.00, 1000.00, 26750.00, 318.45, '308367000000 ');
INSERT INTO users.employees VALUES (17, 'Selena', 'De Leon', 's.deleon', 'deleon12345qwert', '1975-02-20', '89A Armstrong Trace, Compostela 7874 Maguindanao', '975-432-139', '27-2090208-8', '482-259-498-000', '719008000000 ', 'Regular', 'Account Team Leader', 'Romualdez, Fredrick', 41850.00, 1500.00, 800.00, 800.00, 20925.00, 249.11, '587272000000 ');
INSERT INTO users.employees VALUES (18, 'Allison', 'San Jose', 'a.sanjose', 'sanjose12345qwert', '1986-06-24', '08 Grant Drive Suite 406, Poblacion, Iloilo City 9186 La Union', '179-075-129', '45-3251383-0', '121-203-336-000', '114902000000 ', 'Regular', 'Account Rank and File', 'Mata, Christian', 22500.00, 1500.00, 500.00, 500.00, 11250.00, 133.93, '745148000000 ');
INSERT INTO users.employees VALUES (19, 'Cydney', 'Rosario', 'c.rosario', 'rosario12345qwert', '1996-10-06', '93A/21 Berge Points, Tapaz 2180 Quezon', '868-819-912', '49-1629900-2', '122-244-511-000', '265104000000 ', 'Regular', 'Account Rank and File', 'Mata, Christian', 22500.00, 1500.00, 500.00, 500.00, 11250.00, 133.93, '579253000000 ');
INSERT INTO users.employees VALUES (20, 'Mark', 'Bautista', 'm.bautista', 'bautista12345qwert', '1991-02-12', '65 Murphy Center Suite 094, Poblacion, Palayan 5636 Quirino', '683-725-348', '49-1647342-5', '273-970-941-000', '260055000000 ', 'Regular', 'Account Rank and File', 'Mata, Christian', 23250.00, 1500.00, 500.00, 500.00, 11625.00, 138.39, '399665000000 ');
INSERT INTO users.employees VALUES (21, 'Darlene', 'Lazaro', 'd.lazaro', 'lazaro12345qwert', '1985-11-25', '47A/94 Larkin Plaza Apt. 179, Poblacion, Caloocan 2751 Quirino', '740-721-558', '45-5617168-2', '354-650-951-000', '104908000000 ', 'Probationary', 'Account Rank and File', 'Mata, Christian', 23250.00, 1500.00, 500.00, 500.00, 11625.00, 138.39, '606387000000 ');
INSERT INTO users.employees VALUES (23, 'Vella', 'Santos', 'v.santos', 'santos12345qwert', '1983-12-31', '99A Padberg Spring, Poblacion, Mabalacat 3959 Lanao del Sur', '955-879-269', '52-9883524-3', '101-558-994-000', '360028000000 ', 'Probationary', 'Account Rank and File', 'Mata, Christian', 22500.00, 1500.00, 500.00, 500.00, 11250.00, 133.93, '548670000000 ');
INSERT INTO users.employees VALUES (22, 'Kolby', 'Delos Santos', 'k.delossantos', 'delosantos12345qwert', '1980-02-26', '06A Gulgowski Extensions, Bongabon 6085 Zamboanga del Sur', '739-443-033', '52-0109570-6', '187-500-345-000', '113018000000 ', 'Probationary', 'Account Rank and File', 'Mata, Christian', 24000.00, 1500.00, 500.00, 500.00, 12000.00, 142.86, '357451000000 ');
INSERT INTO users.employees VALUES (7, 'San Jose', 'Brader', 'b.sanjose', 'sanjose12345qwert', '1996-03-15', '99 Strosin Hills, Poblacion, Bislig 5340 Tawi-Tawi', '797-009-261', '40-2400714-1', '672-474-690-000', '210850000000 ', 'Regular', 'HR Team Leader', 'Villanueva, Andrea Mae', 42975.00, 1500.00, 800.00, 800.00, 21487.50, 255.80, '239193000000 ');


--
-- Data for Name: users; Type: TABLE DATA; Schema: users; Owner: postgres
--

INSERT INTO users.users VALUES ('test', 'test', NULL, NULL, NULL, NULL);
INSERT INTO users.users VALUES ('test1', 'test2', 'test', 'test', NULL, NULL);
INSERT INTO users.users VALUES ('test1', 'test', 'test', 'test', NULL, NULL);
INSERT INTO users.users VALUES ('test2', 'test', 'testuser', 'testuser', NULL, NULL);
INSERT INTO users.users VALUES ('test3', 'test', 'test', 'test', NULL, NULL);


--
-- PostgreSQL database dump complete
--

