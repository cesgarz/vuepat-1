/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 100001
 Source Host           : localhost:5432
 Source Catalog        : vuepat
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100001
 File Encoding         : 65001

 Date: 09/09/2018 00:06:22
*/


-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona";
CREATE TABLE "public"."persona" (
  "id_persona" int4 NOT NULL DEFAULT nextval('persona_id_persona_seq'::regclass),
  "nb_nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "nb_apellido" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_cedula" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
	"bo_pasaporte" boolean,
	"nu_pasaporte" int4,
	"fe_pasaporte" date,
	"id_ubicacion" int4 NOT NULL,
  "tx_sexo" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "fe_nacimiento" date,
  "id_estado_civil" int4 NOT NULL,
  "id_parentesco" int4 NOT NULL,
  "tx_telefono" varchar(20) COLLATE "pg_catalog"."default",
  "tx_celular" varchar(20) COLLATE "pg_catalog"."default",
	"bo_enfermedad" boolean,
	"tx_enfermedad" varchar(100) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;


-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO "public"."persona" VALUES (16, 'luisss', 'dfsfasf', '3222535332', NULL, NULL, NULL, 1, 'F', '2018-08-01', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-08-27 04:34:07', '2018-08-27 04:34:07');
INSERT INTO "public"."persona" VALUES (6, 'LUIS DANIEL', 'YUSTIZ AZUAJE', '13479149', NULL, NULL, NULL, 2, 'M', '2018-08-16', 1, 99, '76786767887', NULL, NULL, NULL, NULL, 1, 1, NULL, '2018-08-29 10:46:34');
INSERT INTO "public"."persona" VALUES (17, 'JOSE', 'PACHEO', '646456456', NULL, NULL, NULL, 1, 'F', '2018-08-03', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 1, '2018-08-27 04:45:42', '2018-08-27 04:45:42');
INSERT INTO "public"."persona" VALUES (25, 'JOSE', 'PEREZ', '43422423', NULL, NULL, NULL, 1, 'M', '2017-02-02', 2, 99, '523525', NULL, NULL, NULL, NULL, 1, 8, '2018-08-29 11:19:16', '2018-08-29 11:19:16');
INSERT INTO "public"."persona" VALUES (36, 'RYRTY', 'RTYRYTY', '545345', NULL, NULL, NULL, 1, 'M', '1982-02-03', 1, 99, '534534535', '545353', NULL, NULL, NULL, 1, 7, '2018-08-29 17:33:25', '2018-08-29 17:33:30');
INSERT INTO "public"."persona" VALUES (40, 'YUSTIZ AZUAJE', 'LUIS DANIEL', '13479148', NULL, NULL, NULL, 2, 'M', '1979-08-11', 2, 99, '0582125054922', '0584129098862', NULL, NULL, NULL, 1, 10, '2018-08-30 01:16:43', '2018-09-02 06:31:56');
INSERT INTO "public"."persona" VALUES (48, 'FGDFGD', 'GDFG', 'V52352323', NULL, NULL, NULL, 1, 'M', '2018-08-08', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 10, '2018-08-30 03:31:28', '2018-08-30 03:31:28');
INSERT INTO "public"."persona" VALUES (49, 'FSDFSDFS', 'DFSFDSF', 'V24333334', NULL, NULL, NULL, 2, 'F', '2018-08-07', 1, 99, '534534534', '433234334', NULL, NULL, NULL, 1, 16, '2018-08-30 14:20:05', '2018-08-30 14:20:05');
INSERT INTO "public"."persona" VALUES (50, 'GFDG', 'GDFGDFG', 'V3534535', NULL, NULL, NULL, 2, 'M', '2018-08-22', 3, 99, '4242443234', '324324', NULL, NULL, NULL, 1, 18, '2018-08-30 16:45:39', '2018-08-30 16:45:39');
INSERT INTO "public"."persona" VALUES (51, 'FDSFF', 'FDSF', '55345353', NULL, NULL, NULL, 2, 'M', '2018-08-08', 2, 99, '34342342423', '4342424243', NULL, NULL, NULL, 1, 19, '2018-08-30 22:30:07', '2018-08-30 22:30:07');
INSERT INTO "public"."persona" VALUES (52, 'ERWERWER', 'WEREW', '34423423', NULL, NULL, NULL, 1, 'F', '2018-08-14', 1, 2, NULL, NULL, NULL, NULL, NULL, 1, 19, '2018-08-30 22:30:30', '2018-08-30 22:30:30');
INSERT INTO "public"."persona" VALUES (29, 'FDDFSSD', 'FDSFSFF', '3243422', NULL, NULL, NULL, 1, 'M', '2018-08-01', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, '2018-08-29 11:42:09', '2018-09-01 05:03:29');
INSERT INTO "public"."persona" VALUES (54, 'ADDSADAD', 'ADDDASDSA', '43242342', NULL, NULL, NULL, 1, 'M', '2018-05-08', 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, '2018-09-01 05:54:31', '2018-09-01 05:54:31');

-- ----------------------------
-- Uniques structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "uk_tx_cedula" UNIQUE ("tx_cedula");

-- ----------------------------
-- Primary Key structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "pk_id_persona" PRIMARY KEY ("id_persona");

-- View: public.rep_persona

-- DROP VIEW public.rep_persona;

CREATE OR REPLACE VIEW public.rep_persona AS 
 SELECT per.nb_nombre,
    per.nb_apellido,
    per.tx_cedula,
    per.tx_sexo,
    per.fe_nacimiento,
    per.id_estado_civil,
    esc.nb_estado_civil,
    per.tx_telefono,
    per.tx_celular,
    viv.co_pais AS id_pais,
    pai.nb_pais,
    viv.nb_estado,
    viv.nb_ciudad,
    viv.tx_calle,
    viv.tx_casa
   FROM persona per
     JOIN vivienda viv ON viv.id_usuario = per.id_usuario
     JOIN pais pai ON pai.co_pais::text = viv.co_pais::text
     JOIN estado_civil esc ON esc.id_estado_civil = per.id_estado_civil
  WHERE per.id_parentesco = 99 AND viv.id_ubicacion = 2;

ALTER TABLE public.rep_persona
  OWNER TO postgres;
COMMENT ON COLUMN public.rep_persona.nb_nombre IS 'NOMBRE';
COMMENT ON COLUMN public.rep_persona.nb_apellido IS 'APELLIDO';
COMMENT ON COLUMN public.rep_persona.tx_cedula IS 'CEDULA';
COMMENT ON COLUMN public.rep_persona.tx_sexo IS 'SEXO';
COMMENT ON COLUMN public.rep_persona.fe_nacimiento IS 'FEC NACIMIENTO';
COMMENT ON COLUMN public.rep_persona.id_estado_civil IS 'ESTADO CIVIL';
COMMENT ON COLUMN public.rep_persona.nb_estado_civil IS 'ESTADO CIVIL';
COMMENT ON COLUMN public.rep_persona.tx_telefono IS 'TELEFONO';
COMMENT ON COLUMN public.rep_persona.tx_celular IS 'CELULAR';
COMMENT ON COLUMN public.rep_persona.id_pais IS 'PAIS';
COMMENT ON COLUMN public.rep_persona.nb_pais IS 'PAIS';
COMMENT ON COLUMN public.rep_persona.nb_estado IS 'REGION';
COMMENT ON COLUMN public.rep_persona.nb_ciudad IS 'CIUDAD';
COMMENT ON COLUMN public.rep_persona.tx_calle IS 'CALLE';
COMMENT ON COLUMN public.rep_persona.tx_casa IS 'CASA';

