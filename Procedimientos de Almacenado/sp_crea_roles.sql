IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_roles'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_roles
END
GO

CREATE PROCEDURE dbo.sp_crea_roles
(
  @roll_id     INT,
  @nombre_rol  NVARCHAR(50),
  @descripcion NVARCHAR(255),
  @activo      BIT
)
AS
BEGIN
    INSERT INTO dbo.roles
    (
      roll_id,
      nombre_rol,
      descripcion,
      activo
    )
    VALUES
    (
      @roll_id,
      @nombre_rol,
      @descripcion,
      @activo
    )
END
GO