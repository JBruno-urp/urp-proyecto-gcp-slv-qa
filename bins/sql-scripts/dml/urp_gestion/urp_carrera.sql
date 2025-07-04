/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER CARRERA.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_carrera`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_carrera`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto.carrera
  SELECT 
    SAFE_CAST(id_carrera AS STRING) AS id_carrera,
    nombre_carrera,
    duracion_anhos,
    cursos_electivos_requeridos,
    id_nivel_carrera,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.carrera`

  UNION ALL

  -- Fuente 2: backend_proyecto.carrera
  SELECT 
    SAFE_CAST(id_carrera AS STRING) AS id_carrera,
    nombre_carrera AS nombre_carrera,
    SAFE_CAST(duracion_anhos AS STRING),
    SAFE_CAST(cursos_electivos_requeridos AS STRING),
    SAFE_CAST(id_nivel_carrera AS STRING) AS id_nivel_carrera,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.backend_proyecto.carrera`
)

SELECT * FROM base_union;
