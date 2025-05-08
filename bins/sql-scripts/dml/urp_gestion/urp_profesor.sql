/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER PROFESOR.
  FECHA DE CREACIÓN: 06/05/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025.data_entries.profesor`;

INSERT INTO `slv-tpg-urp-2025.data_entries.profesor`
WITH base_data AS (
  SELECT * FROM `qa-tpg-urp-2025.data_entries.profesor`
)
SELECT
  SAFE_CAST(id_profesor AS INT64) AS id_profesor,
  SAFE_CAST(nombre AS STRING) AS nombre,
  SAFE_CAST(apellido AS STRING) AS apellido,
  SAFE_CAST(correo AS STRING) AS correo,
  SAFE_CAST(telefono AS STRING) AS telefono,
  SAFE_CAST(especialidad AS STRING) AS especialidad,
  SAFE_CAST(id_departamento AS INT64) AS id_departamento,
  CURRENT_DATETIME() AS fec_proceso
FROM base_data;
