IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'tr_reducir_stock'
       AND TYPE = 'TR'
)
BEGIN
    DROP TRIGGER tr_reducir_stock
END
GO

CREATE TRIGGER tr_reducir_stock ON detalle_pedido
AFTER INSERT
AS
BEGIN
    UPDATE productos
    SET stock = stock - i.cantidad
    FROM dbo.productos AS p
    INNER JOIN INSERTED AS i ON p.producto_id = i.producto_id

    DECLARE @producto_id VARCHAR(MAX);
    SELECT @producto_id = COALESCE(@producto_id + ', ', '') + CAST(i.producto_id AS VARCHAR)
    FROM INSERTED i

    PRINT 'Stock reducido para los productos con producto_id: ' + @producto_id
END
GO