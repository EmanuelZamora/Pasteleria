IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_categoria_productos'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_categoria_productos
END
GO

CREATE PROCEDURE dbo.sp_crea_categoria_productos
(
  @categoria_producto_id INT,
  @nombre_categoria      NVARCHAR(50),
  @descripcion           NVARCHAR(255),
  @activo                BIT
)
AS
BEGIN
    INSERT INTO dbo.categoria_productos
    (
      categoria_producto_id,
      nombre_categoria,
      descripcion,
      activo
    )
    VALUES
    (
      @categoria_producto_id,
      @nombre_categoria,
      @descripcion,
      @activo
    )
END
GO