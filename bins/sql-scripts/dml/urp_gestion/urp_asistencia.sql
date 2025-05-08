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
TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.asistencia`;

INSERT INTO `slv-tpg-urp-2025.data_entries.asistencia`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.asistencia`
)
SELECT
  SAFE_CAST(id_asistencia AS INT64) AS id_asistencia,
  SAFE_CAST(id_estudiante AS INT64) AS id_estudiante,
  SAFE_CAST(id_curso AS INT64) AS id_curso,
  SAFE_CAST(fecha AS DATE) AS fecha,
  CURRENT_DATETIME() AS fec_proceso

FROM base_data;