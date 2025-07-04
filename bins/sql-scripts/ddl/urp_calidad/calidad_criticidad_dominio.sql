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

CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_dominio`(
  id_criticidad_dominio       string          OPTIONS (description="Identificador de la criticidad dominio"),
  nom_frente                  string          OPTIONS (description="Nombre del frente"),
  nom_dominio                 string          OPTIONS (description="Nombre del dominio"),
  num_criticidad              numeric(18, 4)  OPTIONS (description="Indicador de criticidad"),
  nom_proceso                 string          OPTIONS (description="Nombre del proceso"),
  fec_proceso                 datetime        OPTIONS (description="Fecha y hora de carga de la tabla")
)
OPTIONS (
    description = 'Tabla que contiene la criticidad de los dominios'
);
