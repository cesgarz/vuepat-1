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

 Date: 26/08/2018 01:49:01
*/


-- ----------------------------
-- Sequence structure for ciudad_id_ciudad_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ciudad_id_ciudad_seq";
CREATE SEQUENCE "public"."ciudad_id_ciudad_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for discapacidad_id_discapacidad_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."discapacidad_id_discapacidad_seq";
CREATE SEQUENCE "public"."discapacidad_id_discapacidad_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for empleo_id_empleo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."empleo_id_empleo_seq";
CREATE SEQUENCE "public"."empleo_id_empleo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estado_civil_id_estado_civil_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estado_civil_id_estado_civil_seq";
CREATE SEQUENCE "public"."estado_civil_id_estado_civil_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estado_id_estado_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estado_id_estado_seq";
CREATE SEQUENCE "public"."estado_id_estado_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for estudio_id_estudio_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."estudio_id_estudio_seq";
CREATE SEQUENCE "public"."estudio_id_estudio_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for grupo_migracion_id_grupo_migracion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."grupo_migracion_id_grupo_migracion_seq";
CREATE SEQUENCE "public"."grupo_migracion_id_grupo_migracion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jornada_id_jornada_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jornada_id_jornada_seq";
CREATE SEQUENCE "public"."jornada_id_jornada_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migracion_id_migracion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migracion_id_migracion_seq";
CREATE SEQUENCE "public"."migracion_id_migracion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for mision_id_mision_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mision_id_mision_seq";
CREATE SEQUENCE "public"."mision_id_mision_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for misiones_id_misiones_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."misiones_id_misiones_seq";
CREATE SEQUENCE "public"."misiones_id_misiones_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for moneda_id_moneda_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."moneda_id_moneda_seq";
CREATE SEQUENCE "public"."moneda_id_moneda_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for motivo_id_motivo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."motivo_id_motivo_seq";
CREATE SEQUENCE "public"."motivo_id_motivo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for nivel_estudio_id_nivel_estudio_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."nivel_estudio_id_nivel_estudio_seq";
CREATE SEQUENCE "public"."nivel_estudio_id_nivel_estudio_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pais_id_pais_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pais_id_pais_seq";
CREATE SEQUENCE "public"."pais_id_pais_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for parentesco_id_parentesco_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."parentesco_id_parentesco_seq";
CREATE SEQUENCE "public"."parentesco_id_parentesco_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_discapacidad_id_persona_discapacidad_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_discapacidad_id_persona_discapacidad_seq";
CREATE SEQUENCE "public"."persona_discapacidad_id_persona_discapacidad_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_empresa_id_persona_empresa_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_empresa_id_persona_empresa_seq";
CREATE SEQUENCE "public"."persona_empresa_id_persona_empresa_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_id_persona_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_id_persona_seq";
CREATE SEQUENCE "public"."persona_id_persona_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_mision_id_persona_mision_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_mision_id_persona_mision_seq";
CREATE SEQUENCE "public"."persona_mision_id_persona_mision_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_misiones_id_persona_misiones_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_misiones_id_persona_misiones_seq";
CREATE SEQUENCE "public"."persona_misiones_id_persona_misiones_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for recursos_id_recursos_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."recursos_id_recursos_seq";
CREATE SEQUENCE "public"."recursos_id_recursos_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for remuneracion_id_remuneracion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."remuneracion_id_remuneracion_seq";
CREATE SEQUENCE "public"."remuneracion_id_remuneracion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sector_id_sector_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sector_id_sector_seq";
CREATE SEQUENCE "public"."sector_id_sector_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for servicio_id_servicio_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."servicio_id_servicio_seq";
CREATE SEQUENCE "public"."servicio_id_servicio_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for servicios_id_servicios_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."servicios_id_servicios_seq";
CREATE SEQUENCE "public"."servicios_id_servicios_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_id_status_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_id_status_seq";
CREATE SEQUENCE "public"."status_id_status_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_cargo_id_tipo_cargo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_cargo_id_tipo_cargo_seq";
CREATE SEQUENCE "public"."tipo_cargo_id_tipo_cargo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_discapacidad_id_tipo_discapacidad_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_discapacidad_id_tipo_discapacidad_seq";
CREATE SEQUENCE "public"."tipo_discapacidad_id_tipo_discapacidad_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_persona_id_tipo_persona_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_persona_id_tipo_persona_seq";
CREATE SEQUENCE "public"."tipo_persona_id_tipo_persona_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tipo_vivienda_id_tipo_vivienda_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tipo_vivienda_id_tipo_vivienda_seq";
CREATE SEQUENCE "public"."tipo_vivienda_id_tipo_vivienda_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for transporte_id_transporte_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."transporte_id_transporte_seq";
CREATE SEQUENCE "public"."transporte_id_transporte_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ubicacion_id_ubicacion_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ubicacion_id_ubicacion_seq";
CREATE SEQUENCE "public"."ubicacion_id_ubicacion_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_id_usuario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_id_usuario_seq";
CREATE SEQUENCE "public"."usuario_id_usuario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_persona_id_usuario_persona_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_persona_id_usuario_persona_seq";
CREATE SEQUENCE "public"."usuario_persona_id_usuario_persona_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vivienda_id_vivienta_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vivienda_id_vivienta_seq";
CREATE SEQUENCE "public"."vivienda_id_vivienta_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vivienda_servicio_id_vivienda_servicio_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vivienda_servicio_id_vivienda_servicio_seq";
CREATE SEQUENCE "public"."vivienda_servicio_id_vivienda_servicio_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for vivienda_servicios_id_vivienda_servicios_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."vivienda_servicios_id_vivienda_servicios_seq";
CREATE SEQUENCE "public"."vivienda_servicios_id_vivienda_servicios_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for ciudad
-- ----------------------------
DROP TABLE IF EXISTS "public"."ciudad";
CREATE TABLE "public"."ciudad" (
  "id_ciudad" int4 NOT NULL DEFAULT nextval('ciudad_id_ciudad_seq'::regclass),
  "nb_ciudad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_estado" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of ciudad
-- ----------------------------
INSERT INTO "public"."ciudad" VALUES (1, 'Maroa', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (2, 'Puerto Ayacucho', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (3, 'San Fernando de Atabapo', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (4, 'Anaco', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (5, 'Aragua de Barcelona', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (6, 'Barcelona', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (7, 'Boca de Uchire', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (8, 'Cantaura', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (9, 'Clarines', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (10, 'El Chaparro', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (11, 'El Pao Anzoátegui', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (12, 'El Tigre', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (13, 'El Tigrito', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (14, 'Guanape', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (15, 'Guanta', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (16, 'Lechería', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (17, 'Onoto', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (18, 'Pariaguán', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (19, 'Píritu', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (20, 'Puerto La Cruz', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (21, 'Puerto Píritu', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (22, 'Sabana de Uchire', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (23, 'San Mateo Anzoátegui', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (24, 'San Pablo Anzoátegui', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (25, 'San Tomé', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (26, 'Santa Ana de Anzoátegui', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (27, 'Santa Fe Anzoátegui', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (28, 'Santa Rosa', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (29, 'Soledad', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (30, 'Urica', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (31, 'Valle de Guanape', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (43, 'Achaguas', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (44, 'Biruaca', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (45, 'Bruzual', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (46, 'El Amparo', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (47, 'El Nula', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (48, 'Elorza', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (49, 'Guasdualito', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (50, 'Mantecal', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (51, 'Puerto Páez', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (52, 'San Fernando de Apure', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (53, 'San Juan de Payara', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (54, 'Barbacoas', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (55, 'Cagua', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (56, 'Camatagua', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (58, 'Choroní', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (59, 'Colonia Tovar', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (60, 'El Consejo', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (61, 'La Victoria', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (62, 'Las Tejerías', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (63, 'Magdaleno', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (64, 'Maracay', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (65, 'Ocumare de La Costa', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (66, 'Palo Negro', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (67, 'San Casimiro', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (68, 'San Mateo', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (69, 'San Sebastián', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (70, 'Santa Cruz de Aragua', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (71, 'Tocorón', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (72, 'Turmero', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (73, 'Villa de Cura', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (74, 'Zuata', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (75, 'Barinas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (76, 'Barinitas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (77, 'Barrancas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (78, 'Calderas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (79, 'Capitanejo', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (80, 'Ciudad Bolivia', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (81, 'El Cantón', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (82, 'Las Veguitas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (83, 'Libertad de Barinas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (84, 'Sabaneta', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (85, 'Santa Bárbara de Barinas', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (86, 'Socopó', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (87, 'Caicara del Orinoco', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (88, 'Canaima', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (89, 'Ciudad Bolívar', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (90, 'Ciudad Piar', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (91, 'El Callao', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (92, 'El Dorado', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (93, 'El Manteco', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (94, 'El Palmar', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (95, 'El Pao', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (96, 'Guasipati', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (97, 'Guri', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (98, 'La Paragua', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (99, 'Matanzas', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (100, 'Puerto Ordaz', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (101, 'San Félix', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (102, 'Santa Elena de Uairén', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (103, 'Tumeremo', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (104, 'Unare', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (105, 'Upata', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (106, 'Bejuma', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (107, 'Belén', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (108, 'Campo de Carabobo', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (109, 'Canoabo', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (110, 'Central Tacarigua', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (111, 'Chirgua', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (112, 'Ciudad Alianza', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (113, 'El Palito', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (114, 'Guacara', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (115, 'Guigue', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (116, 'Las Trincheras', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (117, 'Los Guayos', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (118, 'Mariara', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (119, 'Miranda', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (120, 'Montalbán', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (121, 'Morón', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (122, 'Naguanagua', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (123, 'Puerto Cabello', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (124, 'San Joaquín', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (125, 'Tocuyito', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (126, 'Urama', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (127, 'Valencia', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (128, 'Vigirimita', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (129, 'Aguirre', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (130, 'Apartaderos Cojedes', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (131, 'Arismendi', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (132, 'Camuriquito', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (133, 'El Baúl', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (134, 'El Limón', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (135, 'El Pao Cojedes', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (136, 'El Socorro', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (137, 'La Aguadita', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (138, 'Las Vegas', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (139, 'Libertad de Cojedes', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (140, 'Mapuey', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (141, 'Piñedo', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (142, 'Samancito', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (143, 'San Carlos', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (144, 'Sucre', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (145, 'Tinaco', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (146, 'Tinaquillo', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (147, 'Vallecito', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (148, 'Tucupita', 9, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (149, 'Caracas', 24, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (150, 'El Junquito', 24, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (151, 'Adícora', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (152, 'Boca de Aroa', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (153, 'Cabure', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (154, 'Capadare', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (155, 'Capatárida', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (156, 'Chichiriviche', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (157, 'Churuguara', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (158, 'Coro', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (159, 'Cumarebo', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (160, 'Dabajuro', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (161, 'Judibana', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (162, 'La Cruz de Taratara', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (163, 'La Vela de Coro', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (164, 'Los Taques', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (165, 'Maparari', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (166, 'Mene de Mauroa', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (167, 'Mirimire', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (168, 'Pedregal', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (169, 'Píritu Falcón', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (170, 'Pueblo Nuevo Falcón', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (171, 'Puerto Cumarebo', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (172, 'Punta Cardón', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (173, 'Punto Fijo', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (174, 'San Juan de Los Cayos', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (175, 'San Luis', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (176, 'Santa Ana Falcón', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (177, 'Santa Cruz De Bucaral', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (178, 'Tocopero', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (179, 'Tocuyo de La Costa', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (180, 'Tucacas', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (181, 'Yaracal', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (182, 'Altagracia de Orituco', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (183, 'Cabruta', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (184, 'Calabozo', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (185, 'Camaguán', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (196, 'Chaguaramas Guárico', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (197, 'El Socorro ', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (198, 'El Sombrero', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (199, 'Las Mercedes de Los Llanos', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (200, 'Lezama', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (201, 'Onoto ', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (202, 'Ortíz', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (203, 'San José de Guaribe', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (204, 'San Juan de Los Morros', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (205, 'San Rafael de Laya', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (206, 'Santa María de Ipire', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (207, 'Tucupido', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (208, 'Valle de La Pascua', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (209, 'Zaraza', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (210, 'Aguada Grande', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (211, 'Atarigua', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (212, 'Barquisimeto', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (213, 'Bobare', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (214, 'Cabudare', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (215, 'Carora', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (216, 'Cubiro', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (217, 'Cují', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (218, 'Duaca', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (219, 'El Manzano', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (220, 'El Tocuyo', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (221, 'Guaríco', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (222, 'Humocaro Alto', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (223, 'Humocaro Bajo', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (224, 'La Miel', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (225, 'Moroturo', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (226, 'Quíbor', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (227, 'Río Claro', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (228, 'Sanare', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (229, 'Santa Inés', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (230, 'Sarare', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (231, 'Siquisique', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (232, 'Tintorero', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (233, 'Apartaderos Mérida', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (234, 'Arapuey', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (235, 'Bailadores', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (236, 'Caja Seca', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (237, 'Canaguá', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (238, 'Chachopo', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (239, 'Chiguara', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (240, 'Ejido', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (241, 'El Vigía', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (242, 'La Azulita', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (243, 'La Playa', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (244, 'Lagunillas Mérida', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (245, 'Mérida', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (246, 'Mesa de Bolívar', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (247, 'Mucuchíes', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (248, 'Mucujepe', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (249, 'Mucuruba', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (250, 'Nueva Bolivia', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (251, 'Palmarito', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (252, 'Pueblo Llano', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (253, 'Santa Cruz de Mora', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (254, 'Santa Elena de Arenales', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (255, 'Santo Domingo', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (256, 'Tabáy', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (257, 'Timotes', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (258, 'Torondoy', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (259, 'Tovar', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (260, 'Tucani', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (261, 'Zea', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (262, 'Araguita', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (263, 'Carrizal', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (264, 'Caucagua', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (265, 'Chaguaramas Miranda', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (266, 'Charallave', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (267, 'Chirimena', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (268, 'Chuspa', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (269, 'Cúa', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (270, 'Cupira', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (271, 'Curiepe', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (272, 'El Guapo', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (273, 'El Jarillo', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (274, 'Filas de Mariche', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (275, 'Guarenas', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (276, 'Guatire', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (277, 'Higuerote', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (278, 'Los Anaucos', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (279, 'Los Teques', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (280, 'Ocumare del Tuy', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (281, 'Panaquire', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (282, 'Paracotos', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (283, 'Río Chico', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (284, 'San Antonio de Los Altos', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (285, 'San Diego de Los Altos', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (286, 'San Fernando del Guapo', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (287, 'San Francisco de Yare', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (288, 'San José de Los Altos', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (289, 'San José de Río Chico', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (290, 'San Pedro de Los Altos', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (291, 'Santa Lucía', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (292, 'Santa Teresa', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (293, 'Tacarigua de La Laguna', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (294, 'Tacarigua de Mamporal', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (295, 'Tácata', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (296, 'Turumo', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (297, 'Aguasay', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (298, 'Aragua de Maturín', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (299, 'Barrancas del Orinoco', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (300, 'Caicara de Maturín', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (301, 'Caripe', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (302, 'Caripito', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (303, 'Chaguaramal', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (305, 'Chaguaramas Monagas', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (307, 'El Furrial', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (308, 'El Tejero', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (309, 'Jusepín', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (310, 'La Toscana', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (311, 'Maturín', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (312, 'Miraflores', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (313, 'Punta de Mata', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (314, 'Quiriquire', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (315, 'San Antonio de Maturín', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (316, 'San Vicente Monagas', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (317, 'Santa Bárbara', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (318, 'Temblador', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (319, 'Teresen', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (320, 'Uracoa', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (321, 'Altagracia', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (322, 'Boca de Pozo', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (323, 'Boca de Río', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (324, 'El Espinal', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (325, 'El Valle del Espíritu Santo', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (326, 'El Yaque', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (327, 'Juangriego', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (328, 'La Asunción', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (329, 'La Guardia', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (330, 'Pampatar', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (331, 'Porlamar', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (332, 'Puerto Fermín', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (333, 'Punta de Piedras', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (334, 'San Francisco de Macanao', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (335, 'San Juan Bautista', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (336, 'San Pedro de Coche', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (337, 'Santa Ana de Nueva Esparta', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (338, 'Villa Rosa', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (339, 'Acarigua', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (340, 'Agua Blanca', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (341, 'Araure', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (342, 'Biscucuy', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (343, 'Boconoito', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (344, 'Campo Elías', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (345, 'Chabasquén', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (346, 'Guanare', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (347, 'Guanarito', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (348, 'La Aparición', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (349, 'La Misión', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (350, 'Mesa de Cavacas', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (351, 'Ospino', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (352, 'Papelón', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (353, 'Payara', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (354, 'Pimpinela', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (355, 'Píritu de Portuguesa', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (356, 'San Rafael de Onoto', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (357, 'Santa Rosalía', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (358, 'Turén', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (359, 'Altos de Sucre', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (360, 'Araya', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (361, 'Cariaco', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (362, 'Carúpano', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (363, 'Casanay', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (364, 'Cumaná', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (365, 'Cumanacoa', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (366, 'El Morro Puerto Santo', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (367, 'El Pilar', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (368, 'El Poblado', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (369, 'Guaca', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (370, 'Guiria', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (371, 'Irapa', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (372, 'Manicuare', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (373, 'Mariguitar', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (374, 'Río Caribe', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (375, 'San Antonio del Golfo', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (376, 'San José de Aerocuar', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (377, 'San Vicente de Sucre', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (378, 'Santa Fe de Sucre', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (379, 'Tunapuy', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (380, 'Yaguaraparo', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (381, 'Yoco', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (382, 'Abejales', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (383, 'Borota', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (384, 'Bramon', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (385, 'Capacho', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (386, 'Colón', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (387, 'Coloncito', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (388, 'Cordero', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (389, 'El Cobre', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (390, 'El Pinal', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (391, 'Independencia', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (392, 'La Fría', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (393, 'La Grita', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (394, 'La Pedrera', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (395, 'La Tendida', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (396, 'Las Delicias', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (397, 'Las Hernández', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (398, 'Lobatera', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (399, 'Michelena', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (400, 'Palmira', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (401, 'Pregonero', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (402, 'Queniquea', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (403, 'Rubio', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (404, 'San Antonio del Tachira', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (405, 'San Cristobal', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (406, 'San José de Bolívar', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (407, 'San Josecito', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (408, 'San Pedro del Río', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (409, 'Santa Ana Táchira', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (410, 'Seboruco', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (411, 'Táriba', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (412, 'Umuquena', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (413, 'Ureña', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (414, 'Batatal', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (415, 'Betijoque', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (416, 'Boconó', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (417, 'Carache', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (418, 'Chejende', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (419, 'Cuicas', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (420, 'El Dividive', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (421, 'El Jaguito', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (422, 'Escuque', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (423, 'Isnotú', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (424, 'Jajó', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (425, 'La Ceiba', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (426, 'La Concepción de Trujllo', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (427, 'La Mesa de Esnujaque', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (428, 'La Puerta', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (429, 'La Quebrada', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (430, 'Mendoza Fría', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (431, 'Meseta de Chimpire', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (432, 'Monay', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (433, 'Motatán', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (434, 'Pampán', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (435, 'Pampanito', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (436, 'Sabana de Mendoza', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (437, 'San Lázaro', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (438, 'Santa Ana de Trujillo', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (439, 'Tostós', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (440, 'Trujillo', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (441, 'Valera', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (442, 'Carayaca', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (443, 'Litoral', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (444, 'Archipiélago Los Roques', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (445, 'Aroa', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (446, 'Boraure', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (447, 'Campo Elías de Yaracuy', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (448, 'Chivacoa', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (449, 'Cocorote', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (450, 'Farriar', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (451, 'Guama', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (452, 'Marín', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (453, 'Nirgua', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (454, 'Sabana de Parra', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (455, 'Salom', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (456, 'San Felipe', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (457, 'San Pablo de Yaracuy', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (458, 'Urachiche', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (459, 'Yaritagua', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (460, 'Yumare', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (461, 'Bachaquero', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (462, 'Bobures', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (463, 'Cabimas', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (464, 'Campo Concepción', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (465, 'Campo Mara', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (466, 'Campo Rojo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (467, 'Carrasquero', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (468, 'Casigua', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (469, 'Chiquinquirá', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (470, 'Ciudad Ojeda', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (471, 'El Batey', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (472, 'El Carmelo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (473, 'El Chivo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (474, 'El Guayabo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (475, 'El Mene', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (476, 'El Venado', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (477, 'Encontrados', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (478, 'Gibraltar', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (479, 'Isla de Toas', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (480, 'La Concepción del Zulia', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (481, 'La Paz', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (482, 'La Sierrita', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (483, 'Lagunillas del Zulia', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (484, 'Las Piedras de Perijá', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (485, 'Los Cortijos', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (486, 'Machiques', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (487, 'Maracaibo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (488, 'Mene Grande', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (489, 'Palmarejo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (490, 'Paraguaipoa', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (491, 'Potrerito', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (492, 'Pueblo Nuevo del Zulia', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (493, 'Puertos de Altagracia', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (494, 'Punta Gorda', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (495, 'Sabaneta de Palma', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (496, 'San Francisco', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (497, 'San José de Perijá', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (498, 'San Rafael del Moján', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (499, 'San Timoteo', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (500, 'Santa Bárbara Del Zulia', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (501, 'Santa Cruz de Mara', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (502, 'Santa Cruz del Zulia', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (503, 'Santa Rita', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (504, 'Sinamaica', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (505, 'Tamare', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (506, 'Tía Juana', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (507, 'Villa del Rosario', 23, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (508, 'La Guaira', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (509, 'Catia La Mar', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (510, 'Macuto', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (511, 'Naiguatá', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (512, 'Archipiélago Los Monjes', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (513, 'Isla La Tortuga y Cayos adyacentes', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (514, 'Isla La Sola', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (515, 'Islas Los Testigos', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (516, 'Islas Los Frailes', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (517, 'Isla La Orchila', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (518, 'Archipiélago Las Aves', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (519, 'Isla de Aves', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (520, 'Isla La Blanquilla', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (521, 'Isla de Patos', 25, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ciudad" VALUES (522, 'Islas Los Hermanos', 25, NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for discapacidad
-- ----------------------------
DROP TABLE IF EXISTS "public"."discapacidad";
CREATE TABLE "public"."discapacidad" (
  "id_discapacidad" int4 NOT NULL DEFAULT nextval('discapacidad_id_discapacidad_seq'::regclass),
  "nb_discapacidad" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_tipo_discapacidad" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of discapacidad
-- ----------------------------
INSERT INTO "public"."discapacidad" VALUES (1, 'Miembros  superiores', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."discapacidad" VALUES (2, 'Miembros  inferiores', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."discapacidad" VALUES (3, 'Auditiva', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."discapacidad" VALUES (4, 'Visual', 2, NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for empleo
-- ----------------------------
DROP TABLE IF EXISTS "public"."empleo";
CREATE TABLE "public"."empleo" (
  "id_empleo" int4 NOT NULL DEFAULT nextval('empleo_id_empleo_seq'::regclass),
  "id_persona" int4 NOT NULL,
  "tx_empresa" varchar(100) COLLATE "pg_catalog"."default",
  "id_sector" int4 NOT NULL,
  "id_tipo_cargo" int4 NOT NULL,
  "tx_cargo" varchar(100) COLLATE "pg_catalog"."default",
  "id_jornada" int4 NOT NULL,
  "id_remuneracion" int4 NOT NULL,
  "id_moneda" int4 NOT NULL,
  "mo_remuneracion" numeric(15,2),
  "bo_empresa_propia" bool,
  "nb_empresa_propia" varchar(100) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for estado
-- ----------------------------
DROP TABLE IF EXISTS "public"."estado";
CREATE TABLE "public"."estado" (
  "id_estado" int4 NOT NULL DEFAULT nextval('estado_id_estado_seq'::regclass),
  "nb_estado" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "id_pais" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of estado
-- ----------------------------
INSERT INTO "public"."estado" VALUES (1, 'Amazonas', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (2, 'Anzoátegui', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (3, 'Apure', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (4, 'Aragua', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (5, 'Barinas', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (6, 'Bolívar', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (7, 'Carabobo', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (8, 'Cojedes', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (9, 'Delta Amacuro', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (10, 'Falcón', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (11, 'Guárico', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (12, 'Lara', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (13, 'Mérida', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (14, 'Miranda', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (15, 'Monagas', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (16, 'Nueva Esparta', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (17, 'Portuguesa', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (18, 'Sucre', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (19, 'Táchira', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (20, 'Trujillo', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (21, 'Vargas', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (22, 'Yaracuy', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (23, 'Zulia', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (24, 'Distrito Capital', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado" VALUES (25, 'Dependencias Federales', 1, NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for estado_civil
-- ----------------------------
DROP TABLE IF EXISTS "public"."estado_civil";
CREATE TABLE "public"."estado_civil" (
  "id_estado_civil" int4 NOT NULL DEFAULT nextval('estado_civil_id_estado_civil_seq'::regclass),
  "nb_estado_civil" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of estado_civil
-- ----------------------------
INSERT INTO "public"."estado_civil" VALUES (1, 'Soltero/Soltera', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado_civil" VALUES (2, 'Casado/Casada', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado_civil" VALUES (3, 'Viudo/Viuda', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."estado_civil" VALUES (4, 'Divorciado/a', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for estudio
-- ----------------------------
DROP TABLE IF EXISTS "public"."estudio";
CREATE TABLE "public"."estudio" (
  "id_estudio" int4 NOT NULL DEFAULT nextval('estudio_id_estudio_seq'::regclass),
  "id_persona" int4 NOT NULL,
  "id_nivel_estudio" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for grupo_migracion
-- ----------------------------
DROP TABLE IF EXISTS "public"."grupo_migracion";
CREATE TABLE "public"."grupo_migracion" (
  "id_grupo_migracion" int4 NOT NULL DEFAULT nextval('grupo_migracion_id_grupo_migracion_seq'::regclass),
  "nb_grupo_migracion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of grupo_migracion
-- ----------------------------
INSERT INTO "public"."grupo_migracion" VALUES (1, 'Solo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."grupo_migracion" VALUES (2, 'Con su Pareja', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."grupo_migracion" VALUES (3, 'Con el núcleo Familiar', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."grupo_migracion" VALUES (4, 'En Grupo de Amigos', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."grupo_migracion" VALUES (5, 'Otros', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for jornada
-- ----------------------------
DROP TABLE IF EXISTS "public"."jornada";
CREATE TABLE "public"."jornada" (
  "id_jornada" int4 NOT NULL DEFAULT nextval('jornada_id_jornada_seq'::regclass),
  "nb_jornada" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of jornada
-- ----------------------------
INSERT INTO "public"."jornada" VALUES (1, '4 HORAS', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."jornada" VALUES (2, '8 HORAS', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."jornada" VALUES (3, '12 HORAS', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."jornada" VALUES (4, 'MÁS DE 12 HORAS', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for migracion
-- ----------------------------
DROP TABLE IF EXISTS "public"."migracion";
CREATE TABLE "public"."migracion" (
  "id_migracion" int4 NOT NULL DEFAULT nextval('migracion_id_migracion_seq'::regclass),
  "id_persona" int4 NOT NULL,
  "id_motivo" int4 NOT NULL,
  "id_recurso" int4 NOT NULL,
  "id_grupo_migracion" int4 NOT NULL,
  "tx_grupo_migracion" varchar(50) COLLATE "pg_catalog"."default",
  "id_transporte" int4 NOT NULL,
  "fe_salida" timestamp(6),
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for mision
-- ----------------------------
DROP TABLE IF EXISTS "public"."mision";
CREATE TABLE "public"."mision" (
  "id_mision" int4 NOT NULL DEFAULT nextval('mision_id_mision_seq'::regclass),
  "nb_mision" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of mision
-- ----------------------------
INSERT INTO "public"."mision" VALUES (1, 'GMVV', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."mision" VALUES (2, 'CLAP', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."mision" VALUES (3, 'Hogares de la Patria', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."mision" VALUES (4, 'Bonos', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."mision" VALUES (5, '0800SALUD YA', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."mision" VALUES (6, 'Chamba Jubenil', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for moneda
-- ----------------------------
DROP TABLE IF EXISTS "public"."moneda";
CREATE TABLE "public"."moneda" (
  "id_moneda" int4 NOT NULL DEFAULT nextval('moneda_id_moneda_seq'::regclass),
  "nb_moneda" varchar(25) COLLATE "pg_catalog"."default",
  "co_moneda" varchar(5) COLLATE "pg_catalog"."default",
  "tx_signo" varchar(3) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of moneda
-- ----------------------------
INSERT INTO "public"."moneda" VALUES (2, 'Afgani de Afganistán', 'AFN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (3, 'Lek albanés', 'ALL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (4, 'Dram armenio', 'AMD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (5, 'Angola kwanza', 'AOA', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (6, 'Peso argentino', 'ARS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (7, 'Dólar australiano', 'AUD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (8, 'Florin Aruba', 'AWG', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (9, 'Azerbaiyán manat', 'AZN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (10, 'Convertibles marca', 'BAM', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (11, 'Dólar de Barbados', 'BBD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (12, 'Bitcoin Cash', 'BCH', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (13, 'Bangladesh Taka', 'BDT', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (14, 'Lev', 'BGN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (15, 'Dinar de Bahrein', 'BHD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (16, 'Franco de Burundi', 'BIF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (17, 'Dólar de Bermudas', 'BMD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (18, 'Dólar de Brunei', 'BND', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (19, 'Boliviano', 'BOB', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (20, 'Real brasileño', 'BRL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (21, 'Dólar de las Bahamas', 'BSD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (22, 'Bitcoin', 'BTC', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (23, 'Ngultrum Bhután', 'BTN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (24, 'Pula de Botswana', 'BWP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (25, 'Rublo bielorruso', 'BYN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (26, 'Dólar de Belice', 'BZD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (27, 'Dolar canadiense', 'CAD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (28, 'Franco congoleño', 'CDF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (29, 'Franco suizo', 'CHF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (30, 'Peso chileno', 'CLP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (31, 'Chino Yuan', 'CNY', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (32, 'Peso colombiano', 'COP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (33, 'Costa Rica Colón', 'CRC', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (34, 'Peso cubano', 'CUP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (35, 'Escudo caboverdiano', 'CVE', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (36, 'Corona checa', 'CZK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (37, 'Franco de Yibuti', 'DJF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (38, 'Danesa', 'DKK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (39, 'Peso dominicano', 'DOP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (40, 'Dinar argelino', 'DZD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (41, 'Sucre ecuatoriano', 'ECS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (42, 'Libra egipcia', 'EGP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (43, 'Nakfa Eritrea', 'ERN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (44, 'Birr etíope', 'ETB', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (45, 'Etereum', 'ETH', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (46, 'Euro', 'EUR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (47, 'Dólar fiyiano', 'FJD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (48, 'Libra  Islas Malvinas', 'FKP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (49, 'Libra esterlina', 'GBP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (50, 'Lari georgiano', 'GEL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (51, 'Cedi de Ghana', 'GHS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (52, 'Libra de Gibraltar', 'GIP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (53, 'Dalasi de Gambia', 'GMD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (54, 'Guinea franco', 'GNF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (55, 'Guatemala quetzal', 'GTQ', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (56, 'Dólar de Guyana', 'GYD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (57, 'Dolar de Hong Kong', 'HKD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (58, 'Lempira hondureño', 'HNL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (59, 'Kuna croata', 'HRK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (60, 'Gourde haitiano', 'HTG', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (61, 'Florín húngaro', 'HUF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (62, 'Rupia Indonesia', 'IDR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (63, 'Shekel israelí', 'ILS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (64, 'Rupia india', 'INR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (65, 'Dinar iraquí', 'IQD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (66, 'Rial iraní', 'IRR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (67, 'Corona islandesa', 'ISK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (68, 'Dólar de Jamaica', 'JMD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (69, 'Dinar jordano', 'JOD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (70, 'Yen japonés', 'JPY', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (71, 'Chelín keniano', 'KES', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (72, 'Som kirguís', 'KGS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (73, 'Riel camboyano', 'KHR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (74, 'Comoras Franco', 'KMF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (75, 'Won de Corea del Norte', 'KPW', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (76, 'Corea del Sur ganó', 'KRW', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (77, 'Dinar kuwaití', 'KWD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (78, 'Dólar de las Islas Caimán', 'KYD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (79, 'Tenge kazajo', 'KZT', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (80, 'Kip lao', 'LAK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (81, 'Libra libanesa', 'LBP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (82, 'Rupia de Sri Lanka', 'LKR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (83, 'Dólar liberiano', 'LRD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (84, 'Loti de Lesotho', 'LSL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (85, 'Litecoin', 'LTC', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (86, 'Dinar libio', 'LYD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (87, 'Dirham marroquí', 'MAD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (88, 'Leu moldavo', 'MDL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (89, 'Ariary malgache', 'MGA', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (90, 'Denar macedonio', 'MKD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (91, 'Kyat birmano', 'MMK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (92, 'Mongolia Tugrik', 'MNT', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (93, 'Pataca de Macao', 'MOP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (94, 'Mauritania ouguiya', 'MRO', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (95, 'Rupia de Mauricio', 'MUR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (96, 'Rufiyaa de Maldivas', 'MVR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (97, 'Kwacha de Malawi', 'MWK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (98, 'Peso mejicano', 'MXN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (99, 'Ringgit malayo', 'MYR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (100, 'Dólar de Namibia', 'NAD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (101, 'Naira Nigeria', 'NGN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (102, 'Córdoba', 'NIO', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (103, 'Corona noruega', 'NOK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (104, 'Rupia de Nepal', 'NPR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (105, 'Dolar de Nueva Zelanda', 'NZD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (106, 'Rial de Omán', 'OMR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (107, 'Balboa panameño', 'PAB', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (108, 'Sol peruano', 'PEN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (109, 'Papua Nueva Guinea Kina', 'PGK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (110, 'Peso filipino', 'PHP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (111, 'Rupia paquistaní', 'PKR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (112, 'Zloty polaco', 'PLN', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (113, 'Guaraní paraguayo', 'PYG', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (114, 'Rial qatarí', 'QAR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (115, 'Leu rumano', 'RON', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (116, 'Dinar serbio', 'RSD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (117, 'Rublo ruso', 'RUB', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (118, 'Ruanda franco', 'RWF', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (119, 'Riyal saudí', 'SAR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (120, 'Dólar Islas Salomón', 'SBD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (121, 'Rupia de Seychelles', 'SCR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (122, 'Corona sueca', 'SEK', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (123, 'Dolar de Singapur', 'SGD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (124, 'Saint Helena Libra', 'SHP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (125, 'Leone de Sierra Leona', 'SLL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (126, 'Chelín somalí', 'SOS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (127, 'Dólar de Surinam', 'SRD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (128, 'Santo Tomé', 'STD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (129, 'Colón salvadoreño', 'SVC', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (130, 'Libra Siria', 'SYP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (131, 'Swazilandia Lilangeni', 'SZL', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (132, 'Baht tailandés', 'THB', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (133, 'Dinar tunecino', 'TND', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (134, 'Pa''anga tongano', 'TOP', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (135, 'Lira turca', 'TRY', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (136, 'Trinidad', 'TTD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (137, 'Dólar de Taiwán', 'TWD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (138, 'Shilling tanzano', 'TZS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (139, 'Hryvnia Ucrania', 'UAH', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (140, 'Shilling de Uganda', 'UGX', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (141, 'Dólar', 'USD', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (142, 'Peso uruguayo', 'UYU', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (143, 'Som uzbekistani', 'UZS', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (144, 'Dong vietnamita', 'VND', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (145, 'Vanuatu Vatu', 'VUV', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (146, 'Samoan Tala', 'WST', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (147, 'Rial yemení', 'YER', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (148, 'Rand sudafricano', 'ZAR', '', '', 1, 1, NULL, NULL);
INSERT INTO "public"."moneda" VALUES (1, 'Dírham Emiratos Árabes', 'AED', '', '', 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for motivo
-- ----------------------------
DROP TABLE IF EXISTS "public"."motivo";
CREATE TABLE "public"."motivo" (
  "id_motivo" int4 NOT NULL DEFAULT nextval('motivo_id_motivo_seq'::regclass),
  "nb_motivo" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of motivo
-- ----------------------------
INSERT INTO "public"."motivo" VALUES (1, 'Oferta de Trabajo Recibida', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."motivo" VALUES (2, 'Busqueda de nuevas experiencias', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."motivo" VALUES (3, 'Situación económica', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."motivo" VALUES (4, 'Estudios', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."motivo" VALUES (5, 'Otros', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for nivel_estudio
-- ----------------------------
DROP TABLE IF EXISTS "public"."nivel_estudio";
CREATE TABLE "public"."nivel_estudio" (
  "id_nivel_estudio" int4 NOT NULL DEFAULT nextval('nivel_estudio_id_nivel_estudio_seq'::regclass),
  "nb_nivel_estudio" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of nivel_estudio
-- ----------------------------
INSERT INTO "public"."nivel_estudio" VALUES (1, 'Primaria', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."nivel_estudio" VALUES (2, 'Bachillerato', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."nivel_estudio" VALUES (3, 'TSU', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."nivel_estudio" VALUES (4, 'Universitaria', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."nivel_estudio" VALUES (5, 'Cuarto Nivel', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."nivel_estudio" VALUES (6, 'PHD', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS "public"."pais";
CREATE TABLE "public"."pais" (
  "id_pais" int4 NOT NULL DEFAULT nextval('pais_id_pais_seq'::regclass),
  "nb_pais" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "co_pais" varchar(2) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of pais
-- ----------------------------
INSERT INTO "public"."pais" VALUES (2, 'Afghanistan', 'af', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (3, 'Albania', 'al', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (4, 'Algeria', 'dz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (5, 'Andorra', 'ad', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (6, 'Angola', 'ao', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (7, 'Anguilla', 'ai', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (8, 'Antigua and Barbuda', 'ag', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (9, 'Argentina', 'ar', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (10, 'Armenia', 'am', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (11, 'Aruba', 'aw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (12, 'Australia', 'au', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (13, 'Austria', 'at', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (14, 'Azerbaijan', 'az', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (15, 'Bahamas', 'bs', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (16, 'Bahrain', 'bh', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (17, 'Bangladesh', 'bd', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (18, 'Barbados', 'bb', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (19, 'Belarus', 'by', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (20, 'Belgium', 'be', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (21, 'Belize', 'bz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (22, 'Benin', 'bj', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (23, 'Bermuda', 'bm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (24, 'Bhutan', 'bt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (25, 'Bolivia', 'bo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (26, 'Bosnia and Herzegovina', 'ba', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (27, 'Botswana', 'bw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (28, 'Brazil', 'br', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (29, 'Brunei Darussalam', 'bn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (30, 'Bulgaria', 'bg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (31, 'Burkina Faso', 'bf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (32, 'Burundi', 'bi', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (33, 'Cambodia', 'kh', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (34, 'Cameroon', 'cm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (35, 'Canada', 'ca', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (36, 'Cape Verde', 'cv', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (38, 'Central African Republic', 'cf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (39, 'Chad', 'td', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (40, 'Chile', 'cl', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (41, 'China', 'cn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (42, 'Christmas Island', 'cx', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (43, 'Cocos (Keeling) Islands', 'cc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (44, 'Colombia', 'co', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (45, 'Comoros', 'km', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (46, 'Congo', 'cg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (47, 'Cook Islands', 'ck', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (48, 'Costa Rica', 'cr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (49, 'Cote D''Ivoire (Ivory Coast)', 'ci', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (51, 'Cuba', 'cu', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (52, 'Cyprus', 'cy', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (54, 'Democratic Republic of the Congo', 'cd', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (56, 'Djibouti', 'dj', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (57, 'Dominica', 'dm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (59, 'Ecuador', 'ec', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (61, 'El Salvador', 'sv', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (62, 'Equatorial Guinea', 'gq', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (63, 'Eritrea', 'er', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (64, 'Estonia', 'ee', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (65, 'Ethiopia', 'et', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (66, 'Falkland Islands (Malvinas)', 'fk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (67, 'Faroe Islands', 'fo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (68, 'Federated States of Micronesia', 'fm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (69, 'Fiji', 'fj', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (72, 'French Guiana', 'gf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (73, 'French Polynesia', 'pf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (74, 'French Southern Territories', 'tf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (75, 'Gabon', 'ga', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (76, 'Gambia', 'gm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (77, 'Georgia', 'ge', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (79, 'Ghana', 'gh', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (80, 'Gibraltar', 'gi', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (85, 'Guadeloupe', 'gp', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (86, 'Guatemala', 'gt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (87, 'Guinea', 'gn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (88, 'Guinea-Bissau', 'gw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (89, 'Guyana', 'gy', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (90, 'Haiti', 'ht', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (91, 'Honduras', 'hn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (92, 'Hong Kong', 'hk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (95, 'India', 'in', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (96, 'Indonesia', 'id', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (97, 'Iran', 'ir', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (98, 'Iraq', 'iq', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (100, 'Israel', 'il', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (102, 'Jamaica', 'jm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (103, 'Japan', 'jp', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (104, 'Jordan', 'jo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (105, 'Kazakhstan', 'kz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (106, 'Kenya', 'ke', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (107, 'Kiribati', 'ki', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (110, 'Kuwait', 'kw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (111, 'Kyrgyzstan', 'kg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (112, 'Laos', 'la', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (113, 'Latvia', 'lv', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (114, 'Lebanon', 'lb', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (115, 'Lesotho', 'ls', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (116, 'Liberia', 'lr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (117, 'Libya', 'ly', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (118, 'Liechtenstein', 'li', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (119, 'Lithuania', 'lt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (121, 'Macao', 'mo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (122, 'Macedonia', 'mk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (123, 'Madagascar', 'mg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (124, 'Malawi', 'mw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (125, 'Malaysia', 'my', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (126, 'Maldives', 'mv', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (127, 'Mali', 'ml', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (128, 'Malta', 'mt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (129, 'Marshall Islands', 'mh', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (131, 'Mauritania', 'mr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (132, 'Mauritius', 'mu', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (133, 'Mayotte', 'yt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (134, 'Mexico', 'mx', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (135, 'Moldova', 'md', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (136, 'Monaco', 'mc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (137, 'Mongolia', 'mn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (138, 'Montserrat', 'ms', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (140, 'Mozambique', 'mz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (141, 'Myanmar', 'mm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (142, 'Namibia', 'na', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (143, 'Nauru', 'nr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (144, 'Nepal', 'np', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (145, 'Netherlands', 'nl', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (37, 'Isla Caiman', 'ky', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (50, 'Croacia (Hrvatska)', 'hr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (53, 'Republica Checa', 'cz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (55, 'Denamarca', 'dk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (58, 'Republica Dominicana ', 'do', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (60, 'Egipto', 'eg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (70, 'Finlandia', 'fi', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (71, 'Francia', 'fr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (78, 'Alemania', 'de', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (82, 'Grecia', 'gr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (83, 'Greenlandia', 'gl', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (84, 'Granada', 'gd', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (93, 'Hungria', 'hu', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (94, 'Icelandia', 'is', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (99, 'Irlanda', 'ie', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (101, 'Italia', 'it', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (108, 'Korea (Norte)', 'kp', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (109, 'Korea (Sur)', 'kr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (120, 'Luxemburgo', 'lu', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (130, 'Martinica', 'mq', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (139, 'Marruecos', 'ma', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (146, 'Netherlands Antilles', 'an', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (147, 'New Caledonia', 'nc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (148, 'New Zealand (Aotearoa)', 'nz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (149, 'Nicaragua', 'ni', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (150, 'Niger', 'ne', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (151, 'Nigeria', 'ng', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (152, 'Niue', 'nu', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (153, 'Norfolk Island', 'nf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (154, 'Northern Mariana Islands', 'mp', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (155, 'Norway', 'no', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (156, 'Guernsey', 'gg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (157, 'Oman', 'om', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (158, 'Pakistan', 'pk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (159, 'Palau', 'pw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (160, 'Palestinian Territory', 'ps', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (161, 'Panama', 'pa', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (162, 'Papua New Guinea', 'pg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (163, 'Paraguay', 'py', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (164, 'Peru', 'pe', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (165, 'Philippines', 'ph', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (166, 'Pitcairn', 'pn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (167, 'Poland', 'pl', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (168, 'Portugal', 'pt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (169, 'Qatar', 'qa', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (170, 'Reunion', 're', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (171, 'Romania', 'ro', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (172, 'Russian Federation', 'ru', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (173, 'Rwanda', 'rw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (174, 'S. Georgia and S. Sandwich Islands', 'gs', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (175, 'Saint Helena', 'sh', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (176, 'Saint Kitts and Nevis', 'kn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (177, 'Saint Lucia', 'lc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (178, 'Saint Pierre and Miquelon', 'pm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (179, 'Saint Vincent and the Grenadines', 'vc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (180, 'Samoa', 'ws', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (181, 'San Marino', 'sm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (182, 'Sao Tome and Principe', 'st', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (183, 'Saudi Arabia', 'sa', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (184, 'Senegal', 'sn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (185, 'Seychelles', 'sc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (187, 'Singapore', 'sg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (191, 'Somalia', 'so', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (192, 'South Africa', 'za', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (194, 'Sri Lanka', 'lk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (195, 'Sudan', 'sd', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (196, 'Suriname', 'sr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (197, 'Svalbard and Jan Mayen', 'sj', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (201, 'Syria', 'sy', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (202, 'Taiwan', 'tw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (203, 'Tajikistan', 'tj', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (204, 'Tanzania', 'tz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (205, 'Thailand', 'th', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (206, 'Togo', 'tg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (207, 'Tokelau', 'tk', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (208, 'Tonga', 'to', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (209, 'Trinidad and Tobago', 'tt', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (210, 'Tunisia', 'tn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (211, 'Turkey', 'tr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (212, 'Turkmenistan', 'tm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (213, 'Turks and Caicos Islands', 'tc', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (214, 'Tuvalu', 'tv', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (215, 'Uganda', 'ug', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (216, 'Ukraine', 'ua', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (219, 'Uruguay', 'uy', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (220, 'Uzbekistan', 'uz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (221, 'Vanuatu', 'vu', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (222, 'Viet Nam', 'vn', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (223, 'Virgin Islands (British)', 'vg', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (224, 'Virgin Islands (U.S.)', 'vi', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (225, 'Wallis and Futuna', 'wf', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (226, 'Western Sahara', 'eh', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (227, 'Yemen', 'ye', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (228, 'Zaire (former)', 'zr', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (229, 'Zambia', 'zm', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (230, 'Zimbabwe', 'zw', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (1, 'Venezuela', 've', NULL, 2, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (81, 'Gran Bretaña (UK)', 'gb', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (186, 'Sierra Leona', 'sl', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (190, 'Isla Salomon', 'sb', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (193, 'España', 'es', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (217, 'Emiratos Arabes Unidos  ', 'ae', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (218, 'Estados Unidos', 'us', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (199, 'Suecia', 'se', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (198, 'Suazilandia', 'sz', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (200, 'Suiza', 'ch', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (189, 'Eslovenia', 'si', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."pais" VALUES (188, 'Eslovakia', 'sk', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for parentesco
-- ----------------------------
DROP TABLE IF EXISTS "public"."parentesco";
CREATE TABLE "public"."parentesco" (
  "id_parentesco" int4 NOT NULL DEFAULT nextval('parentesco_id_parentesco_seq'::regclass),
  "nb_parentesco" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of parentesco
-- ----------------------------
INSERT INTO "public"."parentesco" VALUES (1, 'Hijo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (2, 'Hija', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (3, 'Abuelo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (4, 'Abuela', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (5, 'Tio', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (6, 'Tia', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (7, 'Sobrino', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (8, 'Sobrina', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (9, 'Otros', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."parentesco" VALUES (99, 'Titular', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona";
CREATE TABLE "public"."persona" (
  "id_persona" int4 NOT NULL DEFAULT nextval('persona_id_persona_seq'::regclass),
  "nb_nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "nb_apellido" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_cedula" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_sexo" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "fe_nacimiento" timestamp(6),
  "id_estado_civil" int4 NOT NULL,
  "id_parentesco" int4 NOT NULL,
  "tx_telefono" varchar(20) COLLATE "pg_catalog"."default",
  "tx_celular" varchar(20) COLLATE "pg_catalog"."default",
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
INSERT INTO "public"."persona" VALUES (5, 'sgsdfgd', 'gdfgdsfgdfg', '42332424', 'M', '2018-08-14 00:00:00', 3, 1, '6564564', '4656465465', NULL, 1, 1, '2018-08-25 02:46:31', '2018-08-25 02:46:31');
INSERT INTO "public"."persona" VALUES (6, 'LUIS DANIEL', 'YUSTIZ', '13479149', 'F', '2018-08-03 00:00:00', 2, 99, '020129098862', '04129098862', NULL, 1, 1, '2018-08-25 13:56:01', '2018-08-25 16:36:59');

-- ----------------------------
-- Table structure for persona_discapacidad
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_discapacidad";
CREATE TABLE "public"."persona_discapacidad" (
  "id_persona_discapacidad" int4 NOT NULL DEFAULT nextval('persona_discapacidad_id_persona_discapacidad_seq'::regclass),
  "id_persona" int4 NOT NULL,
  "id_discapacidad" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for persona_mision
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona_mision";
CREATE TABLE "public"."persona_mision" (
  "id_persona_mision" int4 NOT NULL DEFAULT nextval('persona_mision_id_persona_mision_seq'::regclass),
  "id_persona" int4 NOT NULL,
  "id_mision" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for recursos
-- ----------------------------
DROP TABLE IF EXISTS "public"."recursos";
CREATE TABLE "public"."recursos" (
  "id_recursos" int4 NOT NULL DEFAULT nextval('recursos_id_recursos_seq'::regclass),
  "nb_recursos" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of recursos
-- ----------------------------
INSERT INTO "public"."recursos" VALUES (1, 'Propios', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."recursos" VALUES (2, 'Crédito', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."recursos" VALUES (3, 'Prestamo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."recursos" VALUES (4, 'Otros', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for remuneracion
-- ----------------------------
DROP TABLE IF EXISTS "public"."remuneracion";
CREATE TABLE "public"."remuneracion" (
  "id_remuneracion" int4 NOT NULL DEFAULT nextval('remuneracion_id_remuneracion_seq'::regclass),
  "nb_remuneracion" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of remuneracion
-- ----------------------------
INSERT INTO "public"."remuneracion" VALUES (1, 'Por Hora', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."remuneracion" VALUES (4, 'Mensual', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."remuneracion" VALUES (3, 'Semanal', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."remuneracion" VALUES (2, 'Diaria', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for sector
-- ----------------------------
DROP TABLE IF EXISTS "public"."sector";
CREATE TABLE "public"."sector" (
  "id_sector" int4 NOT NULL DEFAULT nextval('sector_id_sector_seq'::regclass),
  "nb_sector" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of sector
-- ----------------------------
INSERT INTO "public"."sector" VALUES (1, 'Agricola', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (2, 'Pecuaria', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (3, 'Construcción Civil', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (4, 'Obras Civiles', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (5, 'Comercio', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (6, 'Turismo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (7, 'Educación', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (8, 'Salud', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (9, 'Finanzas', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (10, 'Ambiental', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (11, 'Pesca', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (12, 'Alimentos', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (13, 'Textil', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (14, 'Confección', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (15, 'Metalmecanica', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."sector" VALUES (16, 'Forestal', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for servicio
-- ----------------------------
DROP TABLE IF EXISTS "public"."servicio";
CREATE TABLE "public"."servicio" (
  "id_servicio" int4 NOT NULL DEFAULT nextval('servicio_id_servicio_seq'::regclass),
  "nb_servicio" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of servicio
-- ----------------------------
INSERT INTO "public"."servicio" VALUES (1, 'Electicidad', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."servicio" VALUES (2, 'Agua potable', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."servicio" VALUES (3, 'Agua Servida', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."servicio" VALUES (4, 'Linea Telefonica', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."servicio" VALUES (5, 'Gas domestico', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."servicio" VALUES (6, 'Otros', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS "public"."status";
CREATE TABLE "public"."status" (
  "id_status" int4 NOT NULL DEFAULT nextval('status_id_status_seq'::regclass),
  "nb_status" varchar(50) COLLATE "pg_catalog"."default",
  "nb_secundario" varchar(50) COLLATE "pg_catalog"."default",
  "nb_grupo" varchar(15) COLLATE "pg_catalog"."default",
  "bo_activo" bool NOT NULL,
  "id_padre" int4,
  "nu_orden" int4,
  "tx_observaciones" varchar(150) COLLATE "pg_catalog"."default",
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(0),
  "fe_actualizado" timestamp(0)
)
;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO "public"."status" VALUES (1, 'Activo', NULL, 'GRAL', 't', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (2, 'Inactivo', NULL, 'GRAL', 't', NULL, 2, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (3, 'Anulado', NULL, 'GRAL', 't', NULL, 3, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (10, 'Alquilada', NULL, 'VIVIENDA', 't', NULL, 1, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (11, 'Comodato', NULL, 'VIVIENDA', 't', NULL, 2, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (12, 'Cedida/Heredada', NULL, 'VIVIENDA', 't', NULL, 3, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (13, 'Nucleo Familiar', NULL, 'VIVIENDA', 't', NULL, 4, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (14, 'Propia Pagada', NULL, 'VIVIENDA', 't', NULL, 5, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (15, 'Propia Pangandose', NULL, 'VIVIENDA', 't', NULL, 6, NULL, 1, NULL, NULL);
INSERT INTO "public"."status" VALUES (16, 'Prestada', NULL, 'VIVIENDA', 't', NULL, 7, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for tipo_cargo
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_cargo";
CREATE TABLE "public"."tipo_cargo" (
  "id_tipo_cargo" int4 NOT NULL DEFAULT nextval('tipo_cargo_id_tipo_cargo_seq'::regclass),
  "nb_tipo_cargo" varchar(20) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of tipo_cargo
-- ----------------------------
INSERT INTO "public"."tipo_cargo" VALUES (1, 'Obrero', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_cargo" VALUES (2, 'Administrativo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_cargo" VALUES (3, 'Otros', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for tipo_discapacidad
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_discapacidad";
CREATE TABLE "public"."tipo_discapacidad" (
  "id_tipo_discapacidad" int4 NOT NULL DEFAULT nextval('tipo_discapacidad_id_tipo_discapacidad_seq'::regclass),
  "nb_tipo_discapacidad" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of tipo_discapacidad
-- ----------------------------
INSERT INTO "public"."tipo_discapacidad" VALUES (1, 'Físicas', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_discapacidad" VALUES (2, 'Sensorial', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_discapacidad" VALUES (3, 'Congnitivas', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_discapacidad" VALUES (4, 'Otros', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for tipo_persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_persona";
CREATE TABLE "public"."tipo_persona" (
  "id_tipo_persona" int4 NOT NULL DEFAULT nextval('tipo_persona_id_tipo_persona_seq'::regclass),
  "nb_tipo_persona" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for tipo_vivienda
-- ----------------------------
DROP TABLE IF EXISTS "public"."tipo_vivienda";
CREATE TABLE "public"."tipo_vivienda" (
  "id_tipo_vivienda" int4 NOT NULL DEFAULT nextval('tipo_vivienda_id_tipo_vivienda_seq'::regclass),
  "nb_tipo_vivienda" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of tipo_vivienda
-- ----------------------------
INSERT INTO "public"."tipo_vivienda" VALUES (1, 'Casa', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_vivienda" VALUES (2, 'Apartamento', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_vivienda" VALUES (3, 'Cuarto Inquilinato', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."tipo_vivienda" VALUES (4, 'Otro', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for transporte
-- ----------------------------
DROP TABLE IF EXISTS "public"."transporte";
CREATE TABLE "public"."transporte" (
  "id_transporte" int4 NOT NULL DEFAULT nextval('transporte_id_transporte_seq'::regclass),
  "nb_transporte" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of transporte
-- ----------------------------
INSERT INTO "public"."transporte" VALUES (1, 'Maritimo', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."transporte" VALUES (2, 'Terrestre', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."transporte" VALUES (3, 'Aereo', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for ubicacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."ubicacion";
CREATE TABLE "public"."ubicacion" (
  "id_ubicacion" int4 NOT NULL DEFAULT nextval('ubicacion_id_ubicacion_seq'::regclass),
  "nb_ubicacion" varchar(12) COLLATE "pg_catalog"."default" NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of ubicacion
-- ----------------------------
INSERT INTO "public"."ubicacion" VALUES (1, 'Venezuela', NULL, 1, 1, NULL, NULL);
INSERT INTO "public"."ubicacion" VALUES (2, 'Exterior', NULL, 1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."usuario";
CREATE TABLE "public"."usuario" (
  "id_usuario" int4 NOT NULL DEFAULT nextval('usuario_id_usuario_seq'::regclass),
  "nb_usuario" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nb_nombre" varchar(50) COLLATE "pg_catalog"."default",
  "nb_apellido" varchar(50) COLLATE "pg_catalog"."default",
  "tx_email" varchar(50) COLLATE "pg_catalog"."default",
  "tx_token" varchar(64) COLLATE "pg_catalog"."default",
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario_e" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO "public"."usuario" VALUES (7, 'prueba', '$2y$10$TGdvCW4gvRgxvVkRMrtvBO9NUeNV1bdWlr6KTj1OxTBUEW273y5DK', NULL, NULL, 'prueba@bandes.gob.ve', NULL, NULL, 1, 1, '2018-08-23 10:33:22', '2018-08-23 10:33:22');
INSERT INTO "public"."usuario" VALUES (8, 'bandes', '$2y$10$G.w8aXhqieLXCOGgfLHlUeG2BGYD/qLxm5Z8/ZRdsHuCWQxrhvIji', NULL, NULL, 'bandes@bandes.gob.ve', NULL, NULL, 1, 1, '2018-08-23 11:04:24', '2018-08-23 11:04:24');
INSERT INTO "public"."usuario" VALUES (1, 'admin', '$2y$10$XnVGzwUpYVFbpFgVptJvyOv0/TiuzOvE1fkLEAOlCXz7/jkwzLV9q', NULL, NULL, 'admin@bandes.gob.ve', 'T7Ph3ApusIYdaQYDEXD2mSaQEfk2sTHBmVvQ1sJWvkwhThL3vJX3nOxZ7DnE', NULL, 1, 1, '2018-08-23 10:30:32', '2018-08-23 10:30:32');

-- ----------------------------
-- Table structure for vivienda
-- ----------------------------
DROP TABLE IF EXISTS "public"."vivienda";
CREATE TABLE "public"."vivienda" (
  "id_vivienda" int4 NOT NULL DEFAULT nextval('vivienda_id_vivienta_seq'::regclass),
  "id_ubicacion" int4 NOT NULL,
  "id_tipo_vivienda" int4 NOT NULL,
  "co_pais" varchar(2) COLLATE "pg_catalog"."default",
  "nb_estado" varchar(100) COLLATE "pg_catalog"."default",
  "nb_ciudad" varchar(100) COLLATE "pg_catalog"."default",
  "tx_calle" varchar(100) COLLATE "pg_catalog"."default",
  "tx_casa" varchar(100) COLLATE "pg_catalog"."default",
  "tx_telefono" varchar(20) COLLATE "pg_catalog"."default",
  "nu_personas" int4,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Table structure for vivienda_servicio
-- ----------------------------
DROP TABLE IF EXISTS "public"."vivienda_servicio";
CREATE TABLE "public"."vivienda_servicio" (
  "id_vivienda_servicio" int4 NOT NULL DEFAULT nextval('vivienda_servicio_id_vivienda_servicio_seq'::regclass),
  "id_vivienda" int4 NOT NULL,
  "id_servicio" int4 NOT NULL,
  "tx_observaciones" varchar(100) COLLATE "pg_catalog"."default",
  "id_status" int4 NOT NULL,
  "id_usuario" int4 NOT NULL,
  "fe_creado" timestamp(6),
  "fe_actualizado" timestamp(6)
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ciudad_id_ciudad_seq"', 2, false);
SELECT setval('"public"."discapacidad_id_discapacidad_seq"', 6, true);
SELECT setval('"public"."empleo_id_empleo_seq"', 3, false);
SELECT setval('"public"."estado_civil_id_estado_civil_seq"', 6, true);
SELECT setval('"public"."estado_id_estado_seq"', 2, false);
SELECT setval('"public"."estudio_id_estudio_seq"', 3, false);
SELECT setval('"public"."grupo_migracion_id_grupo_migracion_seq"', 7, true);
SELECT setval('"public"."jornada_id_jornada_seq"', 6, true);
SELECT setval('"public"."migracion_id_migracion_seq"', 3, false);
SELECT setval('"public"."mision_id_mision_seq"', 8, true);
SELECT setval('"public"."misiones_id_misiones_seq"', 3, false);
SELECT setval('"public"."moneda_id_moneda_seq"', 3, false);
SELECT setval('"public"."motivo_id_motivo_seq"', 7, true);
SELECT setval('"public"."nivel_estudio_id_nivel_estudio_seq"', 8, true);
SELECT setval('"public"."pais_id_pais_seq"', 231, true);
SELECT setval('"public"."parentesco_id_parentesco_seq"', 11, true);
SELECT setval('"public"."persona_discapacidad_id_persona_discapacidad_seq"', 3, false);
SELECT setval('"public"."persona_empresa_id_persona_empresa_seq"', 3, false);
SELECT setval('"public"."persona_id_persona_seq"', 10, true);
SELECT setval('"public"."persona_mision_id_persona_mision_seq"', 3, false);
SELECT setval('"public"."persona_misiones_id_persona_misiones_seq"', 3, false);
SELECT setval('"public"."recursos_id_recursos_seq"', 6, true);
SELECT setval('"public"."remuneracion_id_remuneracion_seq"', 6, true);
SELECT setval('"public"."sector_id_sector_seq"', 18, true);
SELECT setval('"public"."servicio_id_servicio_seq"', 8, true);
SELECT setval('"public"."servicios_id_servicios_seq"', 3, false);
SELECT setval('"public"."status_id_status_seq"', 7, true);
SELECT setval('"public"."tipo_cargo_id_tipo_cargo_seq"', 5, true);
SELECT setval('"public"."tipo_discapacidad_id_tipo_discapacidad_seq"', 6, true);
SELECT setval('"public"."tipo_persona_id_tipo_persona_seq"', 3, false);
SELECT setval('"public"."tipo_vivienda_id_tipo_vivienda_seq"', 5, true);
SELECT setval('"public"."transporte_id_transporte_seq"', 5, true);
SELECT setval('"public"."ubicacion_id_ubicacion_seq"', 4, true);
SELECT setval('"public"."usuario_id_usuario_seq"', 9, true);
SELECT setval('"public"."usuario_persona_id_usuario_persona_seq"', 3, false);
SELECT setval('"public"."vivienda_id_vivienta_seq"', 3, false);
SELECT setval('"public"."vivienda_servicio_id_vivienda_servicio_seq"', 3, false);
SELECT setval('"public"."vivienda_servicios_id_vivienda_servicios_seq"', 3, false);

-- ----------------------------
-- Uniques structure for table ciudad
-- ----------------------------
ALTER TABLE "public"."ciudad" ADD CONSTRAINT "uk_nb_ciudad" UNIQUE ("nb_ciudad");

-- ----------------------------
-- Primary Key structure for table ciudad
-- ----------------------------
ALTER TABLE "public"."ciudad" ADD CONSTRAINT "pk_id_ciudad" PRIMARY KEY ("id_ciudad");

-- ----------------------------
-- Uniques structure for table discapacidad
-- ----------------------------
ALTER TABLE "public"."discapacidad" ADD CONSTRAINT "uk_nb_discapacidad" UNIQUE ("nb_discapacidad");

-- ----------------------------
-- Primary Key structure for table discapacidad
-- ----------------------------
ALTER TABLE "public"."discapacidad" ADD CONSTRAINT "pk_id_discapacidad" PRIMARY KEY ("id_discapacidad");

-- ----------------------------
-- Primary Key structure for table empleo
-- ----------------------------
ALTER TABLE "public"."empleo" ADD CONSTRAINT "pk_id_empleo" PRIMARY KEY ("id_empleo");

-- ----------------------------
-- Uniques structure for table estado
-- ----------------------------
ALTER TABLE "public"."estado" ADD CONSTRAINT "uk_nb_estado" UNIQUE ("nb_estado");

-- ----------------------------
-- Primary Key structure for table estado
-- ----------------------------
ALTER TABLE "public"."estado" ADD CONSTRAINT "pk_id_estado" PRIMARY KEY ("id_estado");

-- ----------------------------
-- Uniques structure for table estado_civil
-- ----------------------------
ALTER TABLE "public"."estado_civil" ADD CONSTRAINT "uk_nb_estado_civil" UNIQUE ("nb_estado_civil");

-- ----------------------------
-- Primary Key structure for table estado_civil
-- ----------------------------
ALTER TABLE "public"."estado_civil" ADD CONSTRAINT "pk_id_estado_civil" PRIMARY KEY ("id_estado_civil");

-- ----------------------------
-- Uniques structure for table estudio
-- ----------------------------
ALTER TABLE "public"."estudio" ADD CONSTRAINT "uk_persona_nivel_estudio" UNIQUE ("id_persona", "id_nivel_estudio");

-- ----------------------------
-- Primary Key structure for table estudio
-- ----------------------------
ALTER TABLE "public"."estudio" ADD CONSTRAINT "pk_id_estudio" PRIMARY KEY ("id_estudio");

-- ----------------------------
-- Uniques structure for table grupo_migracion
-- ----------------------------
ALTER TABLE "public"."grupo_migracion" ADD CONSTRAINT "uk_nb_grupo_migracion" UNIQUE ("nb_grupo_migracion");

-- ----------------------------
-- Primary Key structure for table grupo_migracion
-- ----------------------------
ALTER TABLE "public"."grupo_migracion" ADD CONSTRAINT "pk_id_grupo_migracion" PRIMARY KEY ("id_grupo_migracion");

-- ----------------------------
-- Uniques structure for table jornada
-- ----------------------------
ALTER TABLE "public"."jornada" ADD CONSTRAINT "uk_nb_jornada" UNIQUE ("nb_jornada");

-- ----------------------------
-- Primary Key structure for table jornada
-- ----------------------------
ALTER TABLE "public"."jornada" ADD CONSTRAINT "pk_id_jornada" PRIMARY KEY ("id_jornada");

-- ----------------------------
-- Primary Key structure for table migracion
-- ----------------------------
ALTER TABLE "public"."migracion" ADD CONSTRAINT "pk_id_migracion" PRIMARY KEY ("id_migracion");

-- ----------------------------
-- Uniques structure for table mision
-- ----------------------------
ALTER TABLE "public"."mision" ADD CONSTRAINT "uk_nb_mision" UNIQUE ("nb_mision");

-- ----------------------------
-- Primary Key structure for table mision
-- ----------------------------
ALTER TABLE "public"."mision" ADD CONSTRAINT "pk_id_mision" PRIMARY KEY ("id_mision");

-- ----------------------------
-- Uniques structure for table moneda
-- ----------------------------
ALTER TABLE "public"."moneda" ADD CONSTRAINT "uk_nb_moneda" UNIQUE ("nb_moneda");

-- ----------------------------
-- Primary Key structure for table moneda
-- ----------------------------
ALTER TABLE "public"."moneda" ADD CONSTRAINT "pk_id_moneda" PRIMARY KEY ("id_moneda");

-- ----------------------------
-- Uniques structure for table motivo
-- ----------------------------
ALTER TABLE "public"."motivo" ADD CONSTRAINT "uk_nb_motivo" UNIQUE ("nb_motivo");

-- ----------------------------
-- Primary Key structure for table motivo
-- ----------------------------
ALTER TABLE "public"."motivo" ADD CONSTRAINT "pk_id_motivo" PRIMARY KEY ("id_motivo");

-- ----------------------------
-- Uniques structure for table nivel_estudio
-- ----------------------------
ALTER TABLE "public"."nivel_estudio" ADD CONSTRAINT "uk_nb_nivel_estudio" UNIQUE ("nb_nivel_estudio");

-- ----------------------------
-- Primary Key structure for table nivel_estudio
-- ----------------------------
ALTER TABLE "public"."nivel_estudio" ADD CONSTRAINT "pk_id_nivel_estudio" PRIMARY KEY ("id_nivel_estudio");

-- ----------------------------
-- Uniques structure for table pais
-- ----------------------------
ALTER TABLE "public"."pais" ADD CONSTRAINT "uk_nb_pais" UNIQUE ("nb_pais");

-- ----------------------------
-- Primary Key structure for table pais
-- ----------------------------
ALTER TABLE "public"."pais" ADD CONSTRAINT "pk_id_pais" PRIMARY KEY ("id_pais");

-- ----------------------------
-- Uniques structure for table parentesco
-- ----------------------------
ALTER TABLE "public"."parentesco" ADD CONSTRAINT "uk_nb_parentesco" UNIQUE ("nb_parentesco");

-- ----------------------------
-- Primary Key structure for table parentesco
-- ----------------------------
ALTER TABLE "public"."parentesco" ADD CONSTRAINT "pk_id_parentesco" PRIMARY KEY ("id_parentesco");

-- ----------------------------
-- Uniques structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "uk_tx_cedula" UNIQUE ("tx_cedula");

-- ----------------------------
-- Primary Key structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "pk_id_persona" PRIMARY KEY ("id_persona");

-- ----------------------------
-- Uniques structure for table persona_discapacidad
-- ----------------------------
ALTER TABLE "public"."persona_discapacidad" ADD CONSTRAINT "uk_persona_discapacidad" UNIQUE ("id_persona", "id_discapacidad");

-- ----------------------------
-- Primary Key structure for table persona_discapacidad
-- ----------------------------
ALTER TABLE "public"."persona_discapacidad" ADD CONSTRAINT "pk_id_persona_discapacidad" PRIMARY KEY ("id_persona_discapacidad");

-- ----------------------------
-- Uniques structure for table persona_mision
-- ----------------------------
ALTER TABLE "public"."persona_mision" ADD CONSTRAINT "uk_persona_mision" UNIQUE ("id_persona", "id_mision");

-- ----------------------------
-- Primary Key structure for table persona_mision
-- ----------------------------
ALTER TABLE "public"."persona_mision" ADD CONSTRAINT "pk_id_persona_mision" PRIMARY KEY ("id_persona_mision");

-- ----------------------------
-- Uniques structure for table recursos
-- ----------------------------
ALTER TABLE "public"."recursos" ADD CONSTRAINT "uk_nb_recursos" UNIQUE ("nb_recursos");

-- ----------------------------
-- Primary Key structure for table recursos
-- ----------------------------
ALTER TABLE "public"."recursos" ADD CONSTRAINT "pk_id_recursos" PRIMARY KEY ("id_recursos");

-- ----------------------------
-- Uniques structure for table remuneracion
-- ----------------------------
ALTER TABLE "public"."remuneracion" ADD CONSTRAINT "uk_nb_remuneracion" UNIQUE ("nb_remuneracion");

-- ----------------------------
-- Primary Key structure for table remuneracion
-- ----------------------------
ALTER TABLE "public"."remuneracion" ADD CONSTRAINT "pk_id_remuneracion" PRIMARY KEY ("id_remuneracion");

-- ----------------------------
-- Uniques structure for table sector
-- ----------------------------
ALTER TABLE "public"."sector" ADD CONSTRAINT "uk_nb_sector" UNIQUE ("nb_sector");

-- ----------------------------
-- Primary Key structure for table sector
-- ----------------------------
ALTER TABLE "public"."sector" ADD CONSTRAINT "pk_id_sector" PRIMARY KEY ("id_sector");

-- ----------------------------
-- Uniques structure for table servicio
-- ----------------------------
ALTER TABLE "public"."servicio" ADD CONSTRAINT "uk_nb_servicio" UNIQUE ("nb_servicio");

-- ----------------------------
-- Primary Key structure for table servicio
-- ----------------------------
ALTER TABLE "public"."servicio" ADD CONSTRAINT "pk_id_servicio" PRIMARY KEY ("id_servicio");

-- ----------------------------
-- Uniques structure for table status
-- ----------------------------
ALTER TABLE "public"."status" ADD CONSTRAINT "uk_nb_status" UNIQUE ("nb_status");

-- ----------------------------
-- Primary Key structure for table status
-- ----------------------------
ALTER TABLE "public"."status" ADD CONSTRAINT "pk_status" PRIMARY KEY ("id_status");

-- ----------------------------
-- Uniques structure for table tipo_cargo
-- ----------------------------
ALTER TABLE "public"."tipo_cargo" ADD CONSTRAINT "uk_nb_tipo_cargo" UNIQUE ("nb_tipo_cargo");

-- ----------------------------
-- Primary Key structure for table tipo_cargo
-- ----------------------------
ALTER TABLE "public"."tipo_cargo" ADD CONSTRAINT "pk_id_tipo_cargo" PRIMARY KEY ("id_tipo_cargo");

-- ----------------------------
-- Uniques structure for table tipo_discapacidad
-- ----------------------------
ALTER TABLE "public"."tipo_discapacidad" ADD CONSTRAINT "uk_nb_tipo_discapacidad" UNIQUE ("nb_tipo_discapacidad");

-- ----------------------------
-- Primary Key structure for table tipo_discapacidad
-- ----------------------------
ALTER TABLE "public"."tipo_discapacidad" ADD CONSTRAINT "pk_id_tipo_discapacidad" PRIMARY KEY ("id_tipo_discapacidad");

-- ----------------------------
-- Uniques structure for table tipo_persona
-- ----------------------------
ALTER TABLE "public"."tipo_persona" ADD CONSTRAINT "uk_nb_tipo_persona" UNIQUE ("nb_tipo_persona");

-- ----------------------------
-- Primary Key structure for table tipo_persona
-- ----------------------------
ALTER TABLE "public"."tipo_persona" ADD CONSTRAINT "pk_id_tipo_persona" PRIMARY KEY ("id_tipo_persona");

-- ----------------------------
-- Uniques structure for table tipo_vivienda
-- ----------------------------
ALTER TABLE "public"."tipo_vivienda" ADD CONSTRAINT "uk_nb_tipo_vivienda" UNIQUE ("nb_tipo_vivienda");

-- ----------------------------
-- Primary Key structure for table tipo_vivienda
-- ----------------------------
ALTER TABLE "public"."tipo_vivienda" ADD CONSTRAINT "pk_id_tipo_vivienda" PRIMARY KEY ("id_tipo_vivienda");

-- ----------------------------
-- Uniques structure for table transporte
-- ----------------------------
ALTER TABLE "public"."transporte" ADD CONSTRAINT "uk_nb_transporte" UNIQUE ("nb_transporte");

-- ----------------------------
-- Primary Key structure for table transporte
-- ----------------------------
ALTER TABLE "public"."transporte" ADD CONSTRAINT "pk_id_transporte" PRIMARY KEY ("id_transporte");

-- ----------------------------
-- Uniques structure for table ubicacion
-- ----------------------------
ALTER TABLE "public"."ubicacion" ADD CONSTRAINT "uk_nb_ubicacion" UNIQUE ("nb_ubicacion");

-- ----------------------------
-- Primary Key structure for table ubicacion
-- ----------------------------
ALTER TABLE "public"."ubicacion" ADD CONSTRAINT "pk_id_ubicacion" PRIMARY KEY ("id_ubicacion");

-- ----------------------------
-- Uniques structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "uk_tx_email" UNIQUE ("tx_email");
ALTER TABLE "public"."usuario" ADD CONSTRAINT "uk_usuario" UNIQUE ("nb_usuario");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "pk_usuario" PRIMARY KEY ("id_usuario");

-- ----------------------------
-- Primary Key structure for table vivienda
-- ----------------------------
ALTER TABLE "public"."vivienda" ADD CONSTRAINT "pk_id_vivienda" PRIMARY KEY ("id_vivienda");

-- ----------------------------
-- Uniques structure for table vivienda_servicio
-- ----------------------------
ALTER TABLE "public"."vivienda_servicio" ADD CONSTRAINT "uk_vivienda_servicio" UNIQUE ("id_vivienda", "id_servicio");

-- ----------------------------
-- Primary Key structure for table vivienda_servicio
-- ----------------------------
ALTER TABLE "public"."vivienda_servicio" ADD CONSTRAINT "pk_id_vivienda_servicio" PRIMARY KEY ("id_vivienda_servicio");
