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

CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gobierno.calidad_criticidad_subdominio`(
  id_criticidad_subdominio    string          OPTIONS (description="Identificador de la criticidad subdominio"),
  nom_frente                  string          OPTIONS (description="Nombre del frente"),
  nom_dominio                 string          OPTIONS (description="Nombre del dominio"),
  nom_subdominio              string          OPTIONS (description="Nombre del subdominio"),
  nom_responsable_dato        string          OPTIONS (description="Nombre del data owner"),
  num_criticidad              numeric(18, 4)  OPTIONS (description="Indicador de criticidad"),
  nom_columna_comun_excel     string          OPTIONS (description="Nombres de las columnas excel"),
  fec_proceso                 datetime        OPTIONS (description="Fecha y hora de carga de la tabla")
)
OPTIONS (
    description = 'Tabla que contiene la criticidad de los subdominios'
);
