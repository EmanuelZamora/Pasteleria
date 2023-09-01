IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_productos'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_productos
END
GO

CREATE PROCEDURE dbo.sp_crea_productos
(
  @producto_id     INT,
  @nombre_producto NVARCHAR(100),
  @descripcion     NVARCHAR(255),
  @precio          DECIMAL(10,2),
  @categoria_id    INT,
  @stock           INT,
  @activo          BIT
)
AS
BEGIN
    INSERT INTO dbo.productos
    (
      producto_id,
      nombre_producto,
      descripcion,
      precio,
      categoria_id,
      stock,
      activo
    )
    VALUES
    (
      @producto_id,
      @nombre_producto,
      @descripcion,
      @precio,
      @categoria_id,
      @stock,
      @activo
    )
END
GO