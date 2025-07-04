/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRAGUIRRE
  DETALLE : MODELO CALIDAD - CALIDAD_MAESTRO_CONTROL_BAU.
  FECHA DE CREACIÓN: 10/06/2025
  
  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/

CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gobierno.calidad_maestro_control_bau`(
  id_control_bau              string          OPTIONS (description="Identificador del control BAU"),
  id_control_bau_origen       string          OPTIONS (description="Identificador del control"),
  des_control                 string          OPTIONS (description="Descripción del control"),
  id_regla                    string          OPTIONS (description="Identificador de la regla"),
  num_criticidad              numeric(18, 4)  OPTIONS (description="Cantidad de parámetros"),
  nom_parametro1_regla        string          OPTIONS (description="Nombre de parametro 1 de la regla"),
  nom_parametro2_regla        string          OPTIONS (description="Nombre de parametro 2 de la regla"),
  nom_tabla_calidad           string          OPTIONS (description="Nombre de la tabla de calidad"),
  nom_columna_calidad         string          OPTIONS (description="Nombre de la columna de calidad"),
  des_alcance                 string          OPTIONS (description="Descripción del alcance"),
  des_alcancefuncional        string          OPTIONS (description="Descripción del alcance funcional"),
  des_sistema_fuente          string          OPTIONS (description="Sistema fuente"),
  nom_tabla_fuente            string          OPTIONS (description="Nombre de la tabla fuente"),
  nom_columna_fuente          string          OPTIONS (description="Nombre de la columna fuente"),
  nom_campo                   string          OPTIONS (description="Nombre del campo"),
  nom_agrupador_campo         string          OPTIONS (description="Nombre del agrupador de campos"),
  nom_subdominio              string          OPTIONS (description="Nombre del subdominio"),
  nom_dominio                 string          OPTIONS (description="Nombre del dominio"),
  nom_frente                  string          OPTIONS (description="Nombre del frente"),
  des_filtro1                 string          OPTIONS (description="Descripción del filtro 1"),
  des_filtro2                 string          OPTIONS (description="Descripción del filtro 2"),
  des_filtro3                 string          OPTIONS (description="Descripción del filtro 3"),
  nom_columna_excel           string          OPTIONS (description="Nombres de las columnas excel"),
  flg_aprobado_bau            int64           OPTIONS (description="Flag de aprobación (1 = Desarrollo, 2 = Aprobado, 0 = Inactivo)"),
  tip_control                 string          OPTIONS (description="Tipo de control"),
  des_momento_implementacion  string          OPTIONS (description="Momento de la implementación"),
  fec_proceso                 datetime        OPTIONS (description="Fecha y hora de carga de la tabla")
)
OPTIONS (
    description = 'Tabla que contiene las controles de calidad de los procesos BAU'
);
