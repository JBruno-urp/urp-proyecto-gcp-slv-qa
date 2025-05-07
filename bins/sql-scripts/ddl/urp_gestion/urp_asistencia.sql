/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER ASISTENCIA.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025.data_entries.asistencia` (
  id_asistencia INT64 OPTIONS (description="id_asistencia: Campo auto generado desde archivo xlsx"),
  id_estudiante INT64 OPTIONS (description="id_estudiante: Campo auto generado desde archivo xlsx"),
  id_curso INT64 OPTIONS (description="id_curso: Campo auto generado desde archivo xlsx"),
  fecha DATE OPTIONS (description="fecha: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);