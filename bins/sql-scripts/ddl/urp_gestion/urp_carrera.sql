/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER CARRERA.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_carrera` (
  id_carrera STRING OPTIONS (description="id_carrera: Campo auto generado desde archivo xlsx"),
  nombre_carrera STRING OPTIONS (description="nombre_carrera: Campo auto generado desde archivo xlsx"),
  duracion_anhos STRING OPTIONS (description="duracion_anhos: Campo auto generado desde archivo xlsx"),
  cursos_electivos_requeridos STRING OPTIONS (description="cursos_electivos_requeridos: Campo auto generado desde archivo xlsx"),
  id_nivel_carrera STRING OPTIONS (description="id_nivel_carrera: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
