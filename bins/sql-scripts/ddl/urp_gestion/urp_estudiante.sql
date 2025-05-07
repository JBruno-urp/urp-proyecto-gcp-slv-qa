/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER ESTUDIANTE.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/


CREATE OR REPLACE TABLE `slv-tpg-urp-2025.data_entries.estudiante` (
  id_estudiante INT64 OPTIONS (description="id_estudiante: Campo auto generado desde archivo xlsx"),
  nombre STRING OPTIONS (description="nombre: Campo auto generado desde archivo xlsx"),
  apellido INT64 OPTIONS (description="apellido: Campo auto generado desde archivo xlsx"),
  correo STRING OPTIONS (description="correo: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
