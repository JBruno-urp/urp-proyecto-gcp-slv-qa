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
CREATE OR REPLACE TABLE `slv-tpg-urp-2025.data_entries.aula` (
  id_aula INT64 OPTIONS (description="id_aula: Campo auto generado desde archivo xlsx"),
  codigo_aula STRING OPTIONS (description="codigo_aula: Campo auto generado desde archivo xlsx"),
  capacidad INT64 OPTIONS (description="capacidad: Campo auto generado desde archivo xlsx"),
  piso INT64 OPTIONS (description="piso: Campo auto generado desde archivo xlsx"),
  ubicacion STRING OPTIONS (description="ubicacion: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
