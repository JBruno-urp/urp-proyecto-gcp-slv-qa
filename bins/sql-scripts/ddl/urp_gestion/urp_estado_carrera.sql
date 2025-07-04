/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER ESTADO_CARRERA.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_estado_carrera` (
  id_estado_carrera STRING OPTIONS (description="id_estado_carrera: Campo auto generado desde archivo xlsx"),
  nombre_estado_carrera STRING OPTIONS (description="nombre_estado_carrera: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
