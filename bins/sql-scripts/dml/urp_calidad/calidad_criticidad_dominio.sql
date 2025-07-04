/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO GOBIERNO - CALIDAD_CRITICIDAD_DOMINIO.
  FECHA DE CREACIÓN: 10/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

truncate table `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_dominio`;

insert into `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_dominio`
select
  'DOM-DE-' || frente || '-' || dominio as id_criticidad_dominio,
  frente,
  dominio,
  safe_cast(criticidad as numeric),
  proceso,
  current_datetime('America/Lima') as fec_proceso
FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.calidad_criticidad_dominio`