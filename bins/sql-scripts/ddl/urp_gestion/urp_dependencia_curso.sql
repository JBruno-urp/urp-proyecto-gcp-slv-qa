/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER URP_EVALUACION_INSCRIPCION_CURSO.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_evaluacion_inscripcion_curso` (
  id_evaluacion_inscripcion_curso STRING OPTIONS (description="id_evaluacion_inscripcion_curso: Campo auto generado desde archivo xlsx"),
  id_inscripcion_curso STRING OPTIONS (description="id_inscripcion_curso: Campo auto generado desde archivo xlsx"),
  id_tipo_evaluacion STRING OPTIONS (description="id_tipo_evaluacion: Campo auto generado desde archivo xlsx"),
  fecha_evaluacion STRING OPTIONS (description="fecha_evaluacion: Campo auto generado desde archivo xlsx"),
  puntaje STRING OPTIONS (description="puntaje: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
