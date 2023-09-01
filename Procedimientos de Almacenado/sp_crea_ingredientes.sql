IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_ingredientes'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_ingredientes
END
GO

CREATE PROCEDURE dbo.sp_crea_ingredientes
(
  @ingrediente_id      INT,
  @nombre_ingrediente  NVARCHAR(100),
  @cantidad_disponible INT,
  @unidad_medida       NVARCHAR(20),
  @proveedor_id        INT,
  @activo              BIT
)
AS
BEGIN
    INSERT INTO dbo.ingredientes
    (
      ingrediente_id,
      nombre_ingrediente,
      cantidad_disponible,
      unidad_medida,
      proveedor_id,
      activo
    )
    VALUES
    (
      @ingrediente_id,
      @nombre_ingrediente,
      @cantidad_disponible,
      @unidad_medida,
      @proveedor_id,
      @activo
    )
END
GO