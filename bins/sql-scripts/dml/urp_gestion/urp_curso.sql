/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER CURSO.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.curso` WHERE TRUE;

INSERT INTO `slv-tpg-urp-2025.data_entries.curso`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.curso`
)
SELECT
  SAFE_CAST(id_curso AS INT64) AS id_curso,
  nombre_curso,
  creditos,
  CURRENT_DATETIME() AS fec_proceso

FROM base_data;
