/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER HORARIO.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.horario`;

INSERT INTO `slv-tpg-urp-2025.data_entries.horario`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.horario`
)
SELECT
  SAFE_CAST(id_horario AS INT64) AS id_horario,
  SAFE_CAST(id_curso AS INT64) AS id_curso,
  SAFE_CAST(id_aula AS INT64) AS id_aula,
  SAFE_CAST(dia_semana AS STRING) AS dia_semana,
  SAFE_CAST(hora_inicio AS STRING) AS hora_inicio,
  SAFE_CAST(hora_fin AS STRING) AS hora_fin,
  CURRENT_DATETIME() AS fec_proceso
FROM base_data;
