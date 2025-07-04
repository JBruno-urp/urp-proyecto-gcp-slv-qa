/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : CARGA SILVER URP_OCURRENCIA_CURSO.
  FECHA DE CREACIÓN: 25/06/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

TRUNCATE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_ocurrencia_curso`;

INSERT INTO `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_ocurrencia_curso`
SELECT 
  SAFE_CAST(id_ocurrencia_curso AS STRING) AS id_ocurrencia_curso,
  SAFE_CAST(id_curso AS STRING) AS id_curso,
  anho_ocurrencia,
  codigo_ocurrencia_curso,
  SAFE_CAST(id_profesor AS STRING) AS id_profesor,
  fecha_inicio,
  fecha_fin,
  capacidad,
  CURRENT_DATETIME() AS fec_proceso
FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.ocurrencia_curso`;
