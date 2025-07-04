/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : MODELO CALIDAD - CALIDAD_BANCO_REGLA.
  FECHA DE CREACIÓN: 10/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

truncate table `slv-tpg-urp-2025-464218.slv_gobierno.calidad_banco_regla`;

insert into `slv-tpg-urp-2025-464218.slv_gobierno.calidad_banco_regla`
select
  'REG-DE-' || id_regla as id_regla,
  id_regla,
  trim(des_regla),
  safe_cast(tipo_regla as int64),
  dimension,
  trim(script_regla),
  current_datetime('America/Lima') as fec_proceso
FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.banco_reglas`
where id_regla is not null;