/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO CALIDAD - CALIDAD_MAESTRO_CONTROL_BAU.
  FECHA DE CREACIÓN: 19/12/2023
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

truncate table `slv-tpg-urp-2025-464218.slv_gobierno.calidad_maestro_control_bau`;

insert into `slv-tpg-urp-2025-464218.slv_gobierno.calidad_maestro_control_bau`
with base_controles as (
  select
    id_control,
    des_control,
    id_regla,
    criticidad,
    parametro1_regla,
    parametro2_regla,
    tabla_calidad,
    columna_calidad,
    alcance,
    alcancefuncional,
    sistema_fuente,
    tabla_fuente,
    columna_fuente,
    campo,
    agrupador_campos,
    subdominio,
    dominio,
    frente,
    filtro1,
    filtro2,
    filtro3,
    columnas_excel,
    aprobado_bau,
    tipo_control,
    momento_implementacion
  from `brz-tpg-urp-2025-464218.dataentry_proyecto.maestro_controles_universidad`
)
SELECT
  'BAU-DE-' || NULLIF(TRIM(id_control), '') AS id_control_bau,
  NULLIF(TRIM(id_control), 'nan') AS id_control,
  NULLIF(TRIM(des_control), 'nan') AS des_control,
  'REG-DE-' || id_regla,
  SAFE_CAST(NULLIF(criticidad, 'nan') AS NUMERIC) AS num_criticidad,
  CASE WHEN TRIM(parametro1_regla) IN ('', 'nan') THEN NULL ELSE TRIM(parametro1_regla) END AS nom_parametro1_regla,
  CASE WHEN TRIM(parametro2_regla) IN ('', 'nan') THEN NULL ELSE TRIM(parametro2_regla) END AS nom_parametro2_regla,
  NULLIF(TRIM(tabla_calidad), 'nan') AS nom_tabla_calidad,
  NULLIF(TRIM(columna_calidad), 'nan') AS nom_columna_calidad,
  CASE WHEN TRIM(alcance) IN ('', 'nan') THEN NULL ELSE TRIM(alcance) END AS des_alcance,
  CASE WHEN TRIM(alcancefuncional) IN ('', 'nan') THEN NULL ELSE TRIM(alcancefuncional) END AS des_alcancefuncional,
  CASE WHEN TRIM(sistema_fuente) IN ('', 'nan') THEN NULL ELSE TRIM(sistema_fuente) END AS des_sistema_fuente,
  CASE WHEN TRIM(tabla_fuente) IN ('', 'nan') THEN NULL ELSE TRIM(tabla_fuente) END AS nom_tabla_fuente,
  CASE WHEN TRIM(columna_fuente) IN ('', 'nan') THEN NULL ELSE TRIM(columna_fuente) END AS nom_columna_fuente,
  NULLIF(TRIM(campo), 'nan') AS nom_campo,
  NULLIF(TRIM(agrupador_campos), 'nan') AS nom_agrupador_campo,
  CASE WHEN TRIM(subdominio) IN ('', 'nan') THEN NULL ELSE TRIM(subdominio) END AS nom_subdominio,
  NULLIF(TRIM(dominio), 'nan') AS nom_dominio,
  NULLIF(TRIM(frente), 'nan') AS nom_frente,
  CASE WHEN TRIM(filtro1) IN ('', 'nan') THEN NULL ELSE TRIM(filtro1) END AS des_filtro1,
  CASE WHEN TRIM(filtro2) IN ('', 'nan') THEN NULL ELSE TRIM(filtro2) END AS des_filtro2,
  CASE WHEN TRIM(filtro3) IN ('', 'nan') THEN NULL ELSE TRIM(filtro3) END AS des_filtro3,
  CASE WHEN TRIM(columnas_excel) IN ('', 'nan') THEN NULL ELSE TRIM(columnas_excel) END AS nom_columna_excel,
  SAFE_CAST(NULLIF(aprobado_bau, 'nan') AS INT64) AS flg_aprobado_bau,
  CASE WHEN TRIM(tipo_control) IN ('', 'nan') THEN NULL ELSE TRIM(tipo_control) END AS tip_control,
  NULLIF(TRIM(momento_implementacion), 'nan') AS des_momento_implementacion,
  CURRENT_DATETIME('America/Lima') AS fec_proceso
FROM base_controles;