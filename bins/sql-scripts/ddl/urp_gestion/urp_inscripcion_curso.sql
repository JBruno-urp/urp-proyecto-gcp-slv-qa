/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER URP_INSCRIPCION_CURSO.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_inscripcion_curso` (
  id_inscripcion_curso STRING OPTIONS (description="id_inscripcion_curso: Campo auto generado desde archivo xlsx"),
  id_estudiante STRING OPTIONS (description="id_estudiante: Campo auto generado desde archivo xlsx"),
  id_ocurrencia_curso STRING OPTIONS (description="id_ocurrencia_curso: Campo auto generado desde archivo xlsx"),
  calificacion_final STRING OPTIONS (description="calificacion_final: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
