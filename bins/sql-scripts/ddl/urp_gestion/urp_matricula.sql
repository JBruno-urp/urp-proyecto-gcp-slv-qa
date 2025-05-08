/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER MATRICULA.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025.data_entries.matricula` (
  id_matricula INT64 OPTIONS (description="id_matricula: Campo auto generado desde archivo xlsx"),
  id_estudiante INT64 OPTIONS (description="id_estudiante: Campo auto generado desde archivo xlsx"),
  id_curso INT64 OPTIONS (description="id_curso: Campo auto generado desde archivo xlsx"),
  id_profesor INT64 OPTIONS (description="id_profesor: Campo auto generado desde archivo xlsx"),
  periodo_academico STRING OPTIONS (description="periodo_academico: Campo auto generado desde archivo xlsx"),
  nota_final FLOAT64 OPTIONS (description="nota_final: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
