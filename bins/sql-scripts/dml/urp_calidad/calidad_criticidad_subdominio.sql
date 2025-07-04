/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO GOBIERNO - CALIDAD_CRITICIDAD_SUBDOMINIO.
  FECHA DE CREACIÓN: 10/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

truncate table `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_subdominio`;

insert into `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_subdominio`
select
  'SUB-DE-' || frente || '-' || dominio || '-' || subdominio as id_criticidad_subdominio,
  frente,
  trim(dominio),
  subdominio,
  case when trim(data_owner) = '' then null else trim(data_owner) end,
  safe_cast(criticidad as numeric),
  case when trim(columnas_comunes) = '' then null else trim(columnas_comunes) end,
  current_datetime('America/Lima') as fec_proceso
FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.calidad_criticidad_subdominio`;