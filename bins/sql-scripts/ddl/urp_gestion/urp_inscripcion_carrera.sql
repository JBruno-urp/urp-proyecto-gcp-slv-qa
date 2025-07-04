/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER INSCRIPCION_CARRERA.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_inscripcion_carrera` (
  id_inscripcion_carrera STRING OPTIONS (description="id_inscripcion_carrera: Campo auto generado desde archivo xlsx"),
  id_estudiante STRING OPTIONS (description="id_estudiante: Campo auto generado desde archivo xlsx"),
  id_carrera STRING OPTIONS (description="id_carrera: Campo auto generado desde archivo xlsx"),
  fecha_inscripcion STRING OPTIONS (description="fecha_inscripcion: Campo auto generado desde archivo xlsx"),
  id_estado_carrera STRING OPTIONS (description="id_estado_carrera: Campo auto generado desde archivo xlsx"),
  fecha_estado_carrera STRING OPTIONS (description="fecha_estado_carrera: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);

