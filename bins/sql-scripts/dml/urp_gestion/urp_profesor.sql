/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER PROFESOR.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_profesor`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_profesor`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto.profesor
  SELECT 
    SAFE_CAST(id_profesor AS STRING) AS id_profesor,
    nombre,
    apellido,
    email,
    numero_telefono,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.profesor`

  UNION ALL

  -- Fuente 2: backend_proyecto.profesor
  SELECT 
    SAFE_CAST(id_profesor AS STRING) AS id_profesor,
    nombre,
    apellido,
    email,
    numero_telefono,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.backend_proyecto.profesor`
)

SELECT * FROM base_union;
