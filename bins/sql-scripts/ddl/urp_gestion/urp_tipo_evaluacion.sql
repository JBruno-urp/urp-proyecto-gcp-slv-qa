/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER URP_TIPO_EVALUACION.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_tipo_evaluacion` (
  id_tipo_evaluacion STRING OPTIONS (description="id_tipo_evaluacion: Campo auto generado desde archivo xlsx"),
  nombre_tipo_evaluacion STRING OPTIONS (description="nombre_tipo_evaluacion: Campo auto generado desde archivo xlsx"),
  es_actividad_grupal STRING OPTIONS (description="es_actividad_grupal: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
