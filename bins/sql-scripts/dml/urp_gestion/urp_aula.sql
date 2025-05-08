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

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.aula`;

INSERT INTO `slv-tpg-urp-2025.data_entries.aula`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.aula`
)
SELECT
  SAFE_CAST(id_aula AS INT64) AS id_aula,
  SAFE_CAST(codigo_aula AS STRING) AS codigo_aula,
  SAFE_CAST(capacidad AS INT64) AS capacidad,
  SAFE_CAST(piso AS INT64) AS piso,
  SAFE_CAST(ubicacion AS STRING) AS ubicacion,
  CURRENT_DATETIME() AS fec_proceso
FROM base_data;
