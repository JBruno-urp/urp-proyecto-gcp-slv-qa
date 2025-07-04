/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER CURSO.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_curso`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_curso`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto.curso
  SELECT 
    SAFE_CAST(id_curso AS STRING) AS id_curso,
    nombre_curso,
    id_carrera,
    codigo_curso,
    semestre,
    electivo,
    creditos,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.curso`

  UNION ALL

  -- Fuente 2: backend_proyecto.curso
  SELECT 
    SAFE_CAST(id_curso AS STRING) AS id_curso,
    nombre_curso AS nombre_curso,
    safe_cast(id_carrera as string),
    codigo_curso,
    safe_cast(semestre as string),
    safe_cast(electivo as string),
    safe_cast(creditos as string),
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.backend_proyecto.curso`
)

SELECT * FROM base_union;
