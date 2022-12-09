-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler version: 1.0.0-alpha1
-- PostgreSQL version: 14.0
-- Project Site: pgmodeler.io
-- Model Author: ---
-- object: sociolink_admin | type: ROLE --
-- DROP ROLE IF EXISTS sociolink_admin;
CREATE ROLE sociolink_admin WITH ;
-- ddl-end --

-- object: sociolink_client | type: ROLE --
-- DROP ROLE IF EXISTS sociolink_client;
CREATE ROLE sociolink_client WITH ;
-- ddl-end --


-- Database creation must be performed outside a multi lined SQL file. 
-- These commands were put in this file only as a convenience.
-- 
-- object: sociolink_db | type: DATABASE --
-- DROP DATABASE IF EXISTS sociolink_db;
CREATE DATABASE sociolink_db;
-- ddl-end --


-- object: "USR" | type: SCHEMA --
-- DROP SCHEMA IF EXISTS "USR" CASCADE;
CREATE SCHEMA "USR";
-- ddl-end --
ALTER SCHEMA "USR" OWNER TO sociolink_admin;
-- ddl-end --

-- object: "CFG" | type: SCHEMA --
-- DROP SCHEMA IF EXISTS "CFG" CASCADE;
CREATE SCHEMA "CFG";
-- ddl-end --
ALTER SCHEMA "CFG" OWNER TO sociolink_admin;
-- ddl-end --

SET search_path TO pg_catalog,public,"USR","CFG";
-- ddl-end --

-- object: "USR"."user" | type: TABLE --
-- DROP TABLE IF EXISTS "USR"."user" CASCADE;
CREATE TABLE "USR"."user" (
	id serial NOT NULL,
	phone_number varchar(15) NOT NULL,
	email varchar(100) NOT NULL,
	password text NOT NULL,
	CONSTRAINT user_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "USR"."user" OWNER TO sociolink_admin;
-- ddl-end --

-- object: "CFG".country | type: TABLE --
-- DROP TABLE IF EXISTS "CFG".country CASCADE;
CREATE TABLE "CFG".country (
	id regrole NOT NULL,
	name text NOT NULL,
	description text,
	created_at timestamp DEFAULT now(),
	CONSTRAINT country_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "CFG".country OWNER TO sociolink_admin;
-- ddl-end --

-- object: "CFG".rol | type: TABLE --
-- DROP TABLE IF EXISTS "CFG".rol CASCADE;
CREATE TABLE "CFG".rol (
	id serial NOT NULL,
	name text NOT NULL,
	description text,
	CONSTRAINT rol_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "CFG".rol OWNER TO sociolink_admin;
-- ddl-end --

-- object: "CFG".departmet | type: TABLE --
-- DROP TABLE IF EXISTS "CFG".departmet CASCADE;
CREATE TABLE "CFG".departmet (
	id serial NOT NULL,
	name text NOT NULL,
	code_dane text NOT NULL,
	CONSTRAINT departmet_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "CFG".departmet OWNER TO sociolink_admin;
-- ddl-end --

-- object: "CFG".city | type: TABLE --
-- DROP TABLE IF EXISTS "CFG".city CASCADE;
CREATE TABLE "CFG".city (
	id serial NOT NULL,
	name text NOT NULL,
	code_dane text NOT NULL,
	CONSTRAINT city_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "CFG".city OWNER TO sociolink_admin;
-- ddl-end --

-- object: "USR".user_validation | type: TABLE --
-- DROP TABLE IF EXISTS "USR".user_validation CASCADE;
CREATE TABLE "USR".user_validation (
	id serial NOT NULL,
	postal_code varchar(20),
	document_number text NOT NULL,
	document_front text NOT NULL,
	document_back text NOT NULL,
	created_at timestamp DEFAULT now(),
	CONSTRAINT user_validation_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "USR".user_validation OWNER TO sociolink_admin;
-- ddl-end --

-- object: "USR".document_type | type: TABLE --
-- DROP TABLE IF EXISTS "USR".document_type CASCADE;
CREATE TABLE "USR".document_type (
	id serial NOT NULL,
	name text NOT NULL,
	description text,
	status varchar(20) DEFAULT 'active',
	created_at timestamp DEFAULT now(),
	CONSTRAINT document_type_pk PRIMARY KEY (id)
);
-- ddl-end --
ALTER TABLE "USR".document_type OWNER TO sociolink_admin;
-- ddl-end --

-- object: grant_rawd_71efee10b0 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE
   ON TABLE "USR"."user"
   TO sociolink_client;
-- ddl-end --

-- object: grant_rawd_96069a752c | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE
   ON TABLE "CFG".country
   TO sociolink_client;
-- ddl-end --

-- object: grant_rawd_44be6ae1d1 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE
   ON TABLE "CFG".rol
   TO sociolink_client;
-- ddl-end --

-- object: grant_rawd_4471ef6331 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE
   ON TABLE "CFG".departmet
   TO sociolink_client;
-- ddl-end --

-- object: grant_rawd_d5f9519bc8 | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE
   ON TABLE "USR".user_validation
   TO sociolink_client;
-- ddl-end --

-- object: grant_rawd_0adbc6992b | type: PERMISSION --
GRANT SELECT,INSERT,UPDATE,DELETE
   ON TABLE "USR".document_type
   TO sociolink_client;
-- ddl-end --


