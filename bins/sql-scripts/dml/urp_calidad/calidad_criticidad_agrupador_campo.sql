/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO GOBIERNO - CALIDAD_CRITICIDAD_AGRUPADOR_CAMPO.
  FECHA DE CREACIÓN: 10/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

truncate table `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_agrupador_campo`;

insert into `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_agrupador_campo`
select
  'AGR-DE-' || frente || '-' || dominio || '-' || agrupador_campo as id_criticidad_agrupador_campo,
  frente,
  dominio,
  subdominio,
  agrupador_campo,
  safe_cast(criticidad as numeric),
  safe_cast(universo_campo as numeric),
  current_datetime('America/Lima') as fec_proceso
FROM `brz-tpg-urp-2025-464218.dataentry_proyecto.calidad_criticidad_agrupador_campos`
where frente is not null and dominio is not null and agrupador_campo is not null;