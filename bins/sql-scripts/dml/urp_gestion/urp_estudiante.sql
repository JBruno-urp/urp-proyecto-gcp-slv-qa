/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER ESTUDIANTE.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_estudiante`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_estudiante`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto.estudiante
  SELECT 
    SAFE_CAST(id_estudiante AS STRING) AS id_estudiante,
    nombre,
    apellido,
    fecha_nacimiento,
    email,
    numero_telefono,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.estudiante`

  UNION ALL

  -- Fuente 2: backend_proyecto.estudiante
  SELECT 
    SAFE_CAST(id_estudiante AS STRING) AS id_estudiante,
    nombre,
    apellido,
    SAFE_CAST(fecha_nacimiento AS STRING),
    email,
    numero_telefono,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.backend_proyecto.estudiante`
)

SELECT * FROM base_union;
