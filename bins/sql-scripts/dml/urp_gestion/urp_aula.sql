/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER AULA.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_aula`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_aula`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto.aula
  SELECT 
    SAFE_CAST(id_aula AS STRING) AS id_aula,
    codigo_aula,
    SAFE_CAST(nombre_sala AS STRING) AS piso,
    SAFE_CAST(capacidad_sala AS STRING) AS capacidad,
    ubicacion,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.aula`

  UNION ALL

  -- Fuente 2: backend_proyecto.aula
  SELECT 
    SAFE_CAST(id_aula AS STRING) AS id_aula,
    codigo_aula,
    SAFE_CAST(nombre_sala AS STRING) AS piso,
    SAFE_CAST(capacidad_sala AS STRING) AS capacidad,
    ubicacion,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.backend_proyecto.aula`
)

SELECT * FROM base_union;
