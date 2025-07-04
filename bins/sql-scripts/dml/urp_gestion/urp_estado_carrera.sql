/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER NIVEL_CARRERA.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_nivel_carrera`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_nivel_carrera`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto
  SELECT 
    SAFE_CAST(id_nivel_carrera AS STRING) AS id_nivel_carrera,
    nombre_nivel_carrera,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.nivel_carrera`


)

SELECT * FROM base_union;
