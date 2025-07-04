/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER URP_OCURRENCIA_CURSO.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_ocurrencia_curso` (
  id_ocurrencia_curso STRING OPTIONS (description="id_ocurrencia_curso: Campo auto generado desde archivo xlsx"),
  id_curso STRING OPTIONS (description="id_curso: Campo auto generado desde archivo xlsx"),
  anho_ocurrencia STRING OPTIONS (description="anho_ocurrencia: Campo auto generado desde archivo xlsx"),
  codigo_ocurrencia_curso STRING OPTIONS (description="codigo_ocurrencia_curso: Campo auto generado desde archivo xlsx"),
  id_profesor STRING OPTIONS (description="id_profesor: Campo auto generado desde archivo xlsx"),
  fecha_inicio STRING OPTIONS (description="fecha_inicio: Campo auto generado desde archivo xlsx"),
  fecha_fin STRING OPTIONS (description="fecha_fin: Campo auto generado desde archivo xlsx"),
  capacidad STRING OPTIONS (description="capacidad: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
