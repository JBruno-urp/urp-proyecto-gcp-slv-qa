/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO CALIDAD - CALIDAD_BANCO_REGLA.
  FECHA DE CREACIÓN: 10/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gobierno.calidad_banco_regla`(
  id_regla                    string          OPTIONS (description="Identificador de la regla"),
  id_regla_origen             string          OPTIONS (description="Identificador de la regla"),
  des_regla                   string          OPTIONS (description="Descripción de la regla"),
  flg_tipo_regla              int64           OPTIONS (description="Tipo de regla"),
  nom_dimension               string          OPTIONS (description="Nombre de la dimensión"),
  val_script_regla            string          OPTIONS (description="Script de la regla"),
  fec_proceso                 datetime        OPTIONS (description="Fecha y hora de carga de la tabla")
)
OPTIONS (
    description = 'Tabla que contiene el banco de reglas de calidad'
);