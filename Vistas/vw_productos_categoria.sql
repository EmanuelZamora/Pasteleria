IF EXISTS
(
  SELECT TOP 1 1
    FROM sysobjects
   WHERE name = 'vw_productos_categoria'
     AND type = 'V'
)
BEGIN
    DROP VIEW dbo. vw_productos_categoria
END
GO

CREATE VIEW dbo. vw_productos_categoria
AS
    SELECT p.producto_id,
           p.nombre_producto,
           p.descripcion,
           p.precio,
           p.stock,
           c.nombre_categoria
      FROM dbo.productos p
           INNER JOIN dbo.categoria_productos c ON p.categoria_id = c.categoria_producto_id;
GO
