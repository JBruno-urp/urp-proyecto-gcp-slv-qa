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

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.departamento`;

INSERT INTO `slv-tpg-urp-2025.data_entries.departamento`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.departamento`
)
SELECT
  SAFE_CAST(id_departamento AS INT64) AS id_departamento,
  SAFE_CAST(nombre_departamento AS STRING) AS nombre_departamento,
  SAFE_CAST(facultad AS STRING) AS facultad,
  SAFE_CAST(jefe_departamento AS STRING) AS jefe_departamento,
  CURRENT_DATETIME() AS fec_proceso
FROM base_data;
