/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER AULA.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_aula` (
  id_aula STRING OPTIONS (description="id_aula: Campo auto generado desde archivo xlsx"),
  codigo_aula STRING OPTIONS (description="codigo_aula: Campo auto generado desde archivo xlsx"),
  nombre_sala STRING OPTIONS (description="nombre_sala: Campo auto generado desde archivo xlsx"),
  capacidad_sala STRING OPTIONS (description="capacidad_sala: Campo auto generado desde archivo xlsx"),
  ubicacion STRING OPTIONS (description="ubicacion: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
