IF EXISTS
(
  SELECT TOP 1 1
    FROM sysobjects
   WHERE name = 'vw_pedidos_detalles'
     AND type = 'V'
)
BEGIN
    DROP VIEW dbo. vw_pedidos_detalles
END
GO

CREATE VIEW dbo. vw_pedidos_detalles
AS
    SELECT pe.pedido_id,
           pe.fecha_hora_pedido,
           u.nombre AS nombre_usuario,
           pr.nombre_producto, dp.cantidad
      FROM dbo.pedidos pe
           INNER JOIN dbo.usuarios u ON pe.usuario_id = u.usuario_id
           INNER JOIN dbo.detalle_pedido dp ON pe.pedido_id = dp.pedido_id
           INNER JOIN dbo.productos pr ON dp.producto_id = pr.producto_id;
GO
