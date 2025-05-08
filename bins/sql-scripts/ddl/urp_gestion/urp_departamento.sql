/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER DEPARTAMENTO.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025.data_entries.departamento` (
  id_departamento INT64 OPTIONS (description="id_departamento: Campo auto generado desde archivo xlsx"),
  nombre_departamento STRING OPTIONS (description="nombre_departamento: Campo auto generado desde archivo xlsx"),
  facultad STRING OPTIONS (description="facultad: Campo auto generado desde archivo xlsx"),
  jefe_departamento STRING OPTIONS (description="jefe_departamento: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
