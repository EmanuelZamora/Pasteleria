IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_usuarios'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_usuarios
END
GO

CREATE PROCEDURE dbo.sp_crea_usuarios
(
  @usuario_id  INT,
  @nombre      CHAR(50),
  @apellido    CHAR(50),
  @correo      CHAR(100),
  @contrasenia CHAR(50),
  @telefono    CHAR(20),
  @roll_id     INT,
  @activo      BIT
)
AS
BEGIN
    INSERT INTO dbo.usuarios
    (
      usuario_id,
      nombre,
      apellido,
      correo,
      contrasenia,
      telefono,
      roll_id,
      activo
    )
    VALUES
    (
      @usuario_id,
      @nombre,
      @apellido,
      @correo,
      @contrasenia,
      @telefono,
      @roll_id,
      @activo
    )
END
GO