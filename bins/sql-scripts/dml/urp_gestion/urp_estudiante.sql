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

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.estudiante` WHERE TRUE;

INSERT INTO `slv-tpg-urp-2025.data_entries.estudiante`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.estudiante`
)
SELECT
  SAFE_CAST(id_estudiante AS INT64) AS id_estudiante,
  nombre,
  SAFE_CAST(apellido AS INT64) AS apellido,
  correo,
  CURRENT_DATETIME() AS fec_proceso

FROM base_data;
