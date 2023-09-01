IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_pedidos'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_pedidos
END
GO

CREATE PROCEDURE dbo.sp_crea_pedidos
(
  @pedido_id         INT,
  @usuario_id        INT,
  @fecha_hora_pedido DATETIME,
  @estado_pedido_id  INT,
  @metodo_entrega_id INT
)
AS
BEGIN
    INSERT INTO dbo.pedidos
    (
      pedido_id,
      usuario_id,
      fecha_hora_pedido,
      estado_pedido_id,
      metodo_entrega_id
    )
    VALUES
    (
      @pedido_id,
      @usuario_id,
      @fecha_hora_pedido,
      @estado_pedido_id,
      @metodo_entrega_id
    )
END
GO