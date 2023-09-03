IF EXISTS
(
  SELECT TOP 1 1
    FROM sysobjects
   WHERE name = 'vw_envios_estado'
     AND type = 'V'
)
BEGIN
    DROP VIEW dbo.vw_envios_estado
END
GO

CREATE VIEW dbo. vw_envios_estado
AS
    SELECT e.envio_id,
           e.fecha_hora_envio,
           es.nombre_estado_envio
      FROM dbo.envios e
           INNER JOIN dbo.estado_envio es ON e.estado_envio_id = es.estado_envio_id;
GO
