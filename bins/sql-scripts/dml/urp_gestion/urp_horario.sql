/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER HORARIO.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_horario`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_horario`
WITH base_union AS (
  -- Fuente 1: dataentry_proyecto.horario
  SELECT 
    SAFE_CAST(id_horario AS STRING) AS id_horario,
    SAFE_CAST(id_ocurrencia_curso AS STRING) AS id_ocurrencia_curso,
    dia_semana,
    hora_inicio,
    hora_fin,
    SAFE_CAST(id_aula AS STRING) AS id_aula,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.horario`

  UNION ALL

  -- Fuente 2: backend_proyecto.horario
  SELECT 
    SAFE_CAST(id_horario AS STRING) AS id_horario,
    SAFE_CAST(id_ocurrencia_curso AS STRING) AS id_ocurrencia_curso,
    dia_semana,
    SAFE_CAST(hora_inicio AS STRING),
    SAFE_CAST(hora_fin AS STRING),
    SAFE_CAST(id_aula AS STRING) AS id_aula,
    CURRENT_DATETIME() AS fec_proceso
  FROM `brz-tpg-urp-2025-464218.backend_proyecto.horario`
)

SELECT * FROM base_union;
