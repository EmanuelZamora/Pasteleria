IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_envios'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_envios
END
GO

CREATE PROCEDURE dbo.sp_crea_envios
(
  @envio_id         INT,
  @pedido_id        INT,
  @repartidor_id    INT,
  @fecha_hora_envio DATETIME,
  @estado_envio_id  INT
)
AS
BEGIN
    INSERT INTO dbo.envios
    (
      envio_id,
      pedido_id,
      repartidor_id,
      fecha_hora_envio,
      estado_envio_id
    )
    VALUES
    (
      @envio_id,
      @pedido_id,
      @repartidor_id,
      @fecha_hora_envio,
      @estado_envio_id
    )
END
GO