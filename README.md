# Proyecto URP - Automatización de Cargas con Airflow y BigQuery

Este repositorio contiene los DAGs de Apache Airflow y los scripts SQL utilizados para la automatización de procesos de carga y transformación de datos académicos de la Universidad Ricardo Palma. El entorno está desplegado en Cloud Composer y utiliza BigQuery como base de datos analítica.

## Estructura del proyecto

El proyecto está organizado de la siguiente manera:

├── dags/
│ ├── urp_gestion_dag.py
│ └── urp_calidad_dag.py
│
├── sql-scripts/
│ ├── ddl/
│ │ ├── urp_gestion/
│ │ └── urp_calidad/
│ │
│ └── dml/
│ ├── urp_gestion/
│ │ └── parameters.json
│ └── urp_calidad/
│ └── parameters.json


## Descripción de carpetas

- `dags/`: contiene los DAGs de Airflow que ejecutan los scripts DML dinámicamente usando el operador `BigQueryInsertJobOperator`.
- `sql-scripts/ddl/`: incluye los scripts de definición de tablas para los distintos módulos del proyecto.
- `sql-scripts/dml/`: contiene los scripts de carga de datos, que normalmente incluyen instrucciones `TRUNCATE TABLE` y `INSERT INTO`, así como el archivo `parameters.json` que define la lógica de ejecución.

## Archivo parameters.json

Cada módulo contiene un archivo `parameters.json` que define la configuración dinámica del DAG. Por ejemplo:

```json
{
  "dag_id": "urp_gestion_dag",
  "project_id": "slv-tpg-urp-2025-464218",
  "location": "US",
  "create_disposition": "CREATE_IF_NEEDED",
  "write_dispositions": [
    {
      "write_disposition": "WRITE_TRUNCATE",
      "scripts": [
        "urp_estudiante",
        "urp_profesor",
        "urp_curso"
      ]
    }
  ],
  "mail_responsables": ["joseph.iparraguirre@urp.edu.pe"]
}

Recomendaciones de permisos
El entorno de Cloud Composer debe contar con permisos adecuados sobre los datasets involucrados:

Permiso roles/bigquery.dataViewer en los datasets de origen (por ejemplo, brz-tpg-urp-2025-464218.dataentry_proyecto)

Permiso roles/bigquery.dataEditor en los datasets de destino (por ejemplo, slv-tpg-urp-2025-464218.slv_gestion_urp)

Despliegue
Subir los DAGs y scripts al bucket de Cloud Composer, dentro del directorio /dags/

Validar que los archivos parameters.json estén correctamente configurados

Ejecutar manualmente desde la interfaz de Airflow o programar su ejecución periódica

Contacto
Este proyecto fue desarrollado como parte del trabajo académico de la Universidad Ricardo Palma.

Responsable: Joseph Iparraguirre
Correo: joseph.iparraguirre@urp.edu.pe
