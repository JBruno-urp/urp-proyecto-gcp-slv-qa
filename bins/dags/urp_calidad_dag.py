
from airflow import DAG
from airflow.operators.python import PythonOperator
from airflow.providers.google.cloud.operators.bigquery import BigQueryInsertJobOperator
from airflow.utils.dates import days_ago
from airflow.utils.email import send_email
import os
import json
from datetime import timedelta

PARAMS_FILE = os.path.join(os.path.dirname(__file__), "sql-scripts/dml/urp_calidad/parameters.json")

def cargar_parametros():
    with open(PARAMS_FILE) as f:
        return json.load(f)

def leer_sql_como_string(path):
    with open(path, "r") as f:
        return f.read()

def notificar_fallo(context):
    asunto = f"Fallo en DAG: {context['dag'].dag_id}"
    mensaje = f"""
    DAG: {context['dag'].dag_id}<br>
    Tarea: {context['task_instance'].task_id}<br>
    Ejecución: {context['execution_date']}<br>
    Error: {context['exception']}<br>
    """
    send_email(to=PARAMS['mail_responsables'], subject=asunto, html_content=mensaje)

PARAMS = cargar_parametros()

with DAG(
    dag_id=PARAMS["dag_id"],
    default_args={
        "retries": PARAMS.get("retries", 1),
        "retry_delay": timedelta(minutes=PARAMS.get("retry_delay", 1)),
        "on_failure_callback": notificar_fallo
    },
    schedule_interval=None,
    start_date=days_ago(1),
    catchup=False,
    tags=["urp", "calidad", "silver"]
) as dag:

    for group in PARAMS["write_dispositions"]:
        for script_name in group["scripts"]:
            sql_path = os.path.join(os.path.dirname(__file__), f"sql-scripts/dml/urp_calidad/{script_name}.sql")
            sql_query = leer_sql_como_string(sql_path)

            config_query = {
                "query": sql_query,
                "useLegacySql": False
            }

            if sql_query.strip().count(";") <= 1:
                config_query["createDisposition"] = PARAMS["create_disposition"]
                config_query["writeDisposition"] = group["write_disposition"]

            task = BigQueryInsertJobOperator(
                task_id=f"load_{script_name}",
                configuration={"query": config_query},
                location=PARAMS["location"],
                project_id=PARAMS["project_id"],
                gcp_conn_id="google_cloud_default"
            )
