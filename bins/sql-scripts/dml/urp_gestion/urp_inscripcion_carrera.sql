/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER INSCRIPCION_CARRERA.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_inscripcion_carrera`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_inscripcion_carrera`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto
  SELECT 
    SAFE_CAST(id_inscripcion_carrera AS STRING) AS id_inscripcion_carrera,
    SAFE_CAST(id_estudiante AS STRING) AS id_estudiante,
    SAFE_CAST(id_carrera AS STRING) AS id_carrera,
    fecha_inscripcion,
    SAFE_CAST(id_estado_carrera AS STRING) AS id_estado_carrera,
    fecha_estado_carrera,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.inscripcion_carrera`

)

SELECT * FROM base_union;
