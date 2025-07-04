/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO GOBIERNO - CALIDAD_CRITICIDAD_CAMPO.
  FECHA DE CREACIÓN: 05/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

truncate table `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_campo`;

insert into `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_campo`
select
  'CMP-DE-' || frente || '-' || dominio || '-' || agrupador_campo || '-' || trim(campo) as id_criticidad_campo,
  frente,
  dominio,
  subdominio,
  agrupador_campo,
  trim(campo),
  safe_cast(criticidad as numeric),
  current_datetime('America/Lima') as fec_proceso
FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.calidad_criticidad_campo`