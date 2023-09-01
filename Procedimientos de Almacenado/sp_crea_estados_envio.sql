IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_estados_envio'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_estados_envio
END
GO

CREATE PROCEDURE dbo.sp_crea_estados_envio
(
  @estado_envio_id     INT,
  @nombre_estado_envio NVARCHAR(50),
  @descripcion         NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO dbo.estado_envio
    (
      estado_envio_id,
      nombre_estado_envio,
      descripcion
    )
    VALUES
    (
      @estado_envio_id,
      @nombre_estado_envio,
      @descripcion
    )
END
GO