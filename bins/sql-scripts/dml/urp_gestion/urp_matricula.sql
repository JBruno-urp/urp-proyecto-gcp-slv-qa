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

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.matricula`;

INSERT INTO `slv-tpg-urp-2025.data_entries.matricula`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.matricula`
)
SELECT
  SAFE_CAST(id_matricula AS INT64) AS id_matricula,
  SAFE_CAST(id_estudiante AS INT64) AS id_estudiante,
  SAFE_CAST(id_curso AS INT64) AS id_curso,
  SAFE_CAST(id_profesor AS INT64) AS id_profesor,
  SAFE_CAST(periodo_academico AS STRING) AS periodo_academico,
  SAFE_CAST(nota_final AS FLOAT64) AS nota_final,
  CURRENT_DATETIME() AS fec_proceso
FROM base_data;
