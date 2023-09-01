IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_detalle_pedidos'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_detalle_pedidos
END
GO

CREATE PROCEDURE dbo.sp_crea_detalle_pedidos
(
  @detalle_id  INT,
  @pedido_id   INT,
  @producto_id INT,
  @cantidad    INT,
  @subtotal    DECIMAL(10,2)
)
AS
BEGIN
    INSERT INTO dbo.detalle_pedido
    (
      detalle_id,
      pedido_id,
      producto_id,
      cantidad,
      subtotal
    )
    VALUES
    (
      @detalle_id,
      @pedido_id,
      @producto_id,
      @cantidad,
      @subtotal
    )
END
GO