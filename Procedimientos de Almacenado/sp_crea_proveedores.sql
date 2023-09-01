IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_proveedores'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_proveedores
END
GO

CREATE PROCEDURE dbo.sp_crea_proveedores
(
  @proveedor_id    INT,
  @nombre_empresa  NVARCHAR(100),
  @nombre_contacto NVARCHAR(100),
  @correo          NVARCHAR(100),
  @telefono        NVARCHAR(20),
  @activo          BIT
)
AS
BEGIN
    INSERT INTO dbo.proveedores
    (
      proveedor_id,
      nombre_empresa,
      nombre_contacto,
      correo,
      telefono,
      activo
    )
    VALUES
    (
      @proveedor_id,
      @nombre_empresa,
      @nombre_contacto,
      @correo,
      @telefono,
      @activo
    )
END
GO