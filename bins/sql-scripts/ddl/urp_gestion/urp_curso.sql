/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER CURSO.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_curso` (
  id_curso STRING OPTIONS (description="id_curso: Campo auto generado desde archivo xlsx"),
  nombre_curso STRING OPTIONS (description="nombre_curso: Campo auto generado desde archivo xlsx"),
  id_carrera STRING OPTIONS (description="id_carrera: Campo auto generado desde archivo xlsx"),
  codigo_curso STRING OPTIONS (description="codigo_curso: Campo auto generado desde archivo xlsx"),
  semestre STRING OPTIONS (description="semestre: Campo auto generado desde archivo xlsx"),
  electivo STRING OPTIONS (description="electivo: Campo auto generado desde archivo xlsx"),
  creditos STRING OPTIONS (description="creditos: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
