# dags/urp_gestion_dag.py
from airflow import DAG
from airflow.providers.google.cloud.operators.bigquery import BigQueryInsertJobOperator
from airflow.utils.dates import days_ago
from pathlib import Path
import os

# Configuraciones
PROJECT_ID = "slv-tpg-urp-2025"
LOCATION = "US"
BQ_CONN_ID = "google_cloud_default"
DAG_ID = "urp_gestion_dag"
SQL_FOLDER = "/home/airflow/gcs/data/sql-scripts/dml/urp_gestion"

# Lista manual de scripts SQL que quieres ejecutar
SQL_SCRIPTS = [
    "urp_asistencia.sql",
    "urp_curso.sql",
    "urp_estudiante.sql",
    "urp_programa"
    
]

default_args = {
    "start_date": days_ago(1),
    "retries": 1
}

with DAG(
    dag_id=DAG_ID,
    default_args=default_args,
    schedule_interval=None,
    catchup=False,
    tags=["urp", "dml", "gestion"]
) as dag:

    for script in SQL_SCRIPTS:
        script_path = os.path.join(SQL_FOLDER, script)
        task_id = f"run_{Path(script).stem}"

        with open(script_path, "r") as f:
            query = f.read()

        BigQueryInsertJobOperator(
            task_id=task_id,
            job_id=f"{task_id}_{{{{ ts_nodash }}}}",
            configuration={
                "query": {
                    "query": query,
                    "useLegacySql": False,
                    "writeDisposition": "WRITE_TRUNCATE"
                }
            },
            location=LOCATION,
            gcp_conn_id=BQ_CONN_ID,
            project_id=PROJECT_ID,
        )
