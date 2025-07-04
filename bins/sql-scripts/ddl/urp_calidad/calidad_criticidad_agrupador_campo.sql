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

CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_agrupador_campo`(
  id_criticidad_agrupador_campo   string          OPTIONS (description="Identificador de la criticidad agrupador campo"),
  nom_frente                      string          OPTIONS (description="Nombre del frente"),
  nom_dominio                     string          OPTIONS (description="Nombre del dominio"),
  nom_subdominio                  string          OPTIONS (description="Nombre del subdominio"),
  nom_agrupador_campo             string          OPTIONS (description="Nombre del agrupador de campos"),
  num_criticidad                  numeric(18, 4)  OPTIONS (description="Indicador de criticidad"),
  num_universo_campo              numeric(18, 4)  OPTIONS (description="Numero de universo del campo"),
  fec_proceso                     datetime        OPTIONS (description="Fecha y hora de carga de la tabla")
)
OPTIONS (
    description = 'Tabla que contiene la criticidad de los agrupadores de campos'
);
