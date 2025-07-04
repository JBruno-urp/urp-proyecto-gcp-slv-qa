/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER URP_HORARIO.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_horario` (
  id_horario STRING OPTIONS (description="id_horario: Campo auto generado desde archivo xlsx"),
  id_ocurrencia_curso STRING OPTIONS (description="id_ocurrencia_curso: Campo auto generado desde archivo xlsx"),
  dia_semana STRING OPTIONS (description="dia_semana: Campo auto generado desde archivo xlsx"),
  hora_inicio STRING OPTIONS (description="hora_inicio: Campo auto generado desde archivo xlsx"),
  hora_fin STRING OPTIONS (description="hora_fin: Campo auto generado desde archivo xlsx"),
  id_aula STRING OPTIONS (description="id_aula: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
