/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER PROGRAMA.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/


TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.programa` WHERE TRUE;

INSERT INTO `slv-tpg-urp-2025.data_entries.programa`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.programa`
)
SELECT
  SAFE_CAST(id_programa AS INT64) AS id_programa,
  nombre_programa,
  facultad,
  CURRENT_DATETIME() AS fec_proceso

FROM base_data;
