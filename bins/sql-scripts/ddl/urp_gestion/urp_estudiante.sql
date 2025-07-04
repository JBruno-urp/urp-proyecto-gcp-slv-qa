/*
*********************************************************************************************************************
  USUARIO DE CREACIÓN : BIPARRGUIRRE,
  DETALLE : TABLA SILVER ESTUDIANTE.
  FECHA DE CREACIÓN: 06/05/2025

  HISTORIAL DE MODIFICACIÓN:		
  --------------------------
  FECHA     |  USUARIO  |  DETALLE  
  ---------------------------------
*********************************************************************************************************************
*/
CREATE OR REPLACE TABLE `slv-tpg-urp-2025-464218.slv_gestion_urp.urp_estudiante` (
  id_estudiante STRING OPTIONS (description="id_estudiante: Campo auto generado desde archivo xlsx"),
  nombre STRING OPTIONS (description="nombre: Campo auto generado desde archivo xlsx"),
  apellido STRING OPTIONS (description="apellido: Campo auto generado desde archivo xlsx"),
  fecha_nacimiento STRING OPTIONS (description="fecha_nacimiento: Campo auto generado desde archivo xlsx"),
  email STRING OPTIONS (description="email: Campo auto generado desde archivo xlsx"),
  numero_telefono STRING OPTIONS (description="numero_telefono: Campo auto generado desde archivo xlsx"),
  fec_proceso DATETIME OPTIONS (description="Fecha de procesamiento actual")
) OPTIONS (
  description = "Tabla generada automáticamente desde archivo Bronze"
);
