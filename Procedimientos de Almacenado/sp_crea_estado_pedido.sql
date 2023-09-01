IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_estado_pedido'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_estado_pedido
END
GO

CREATE PROCEDURE dbo.sp_crea_estado_pedido
(
  @estado_pedido_id     INT,
  @nombre_estado_pedido NVARCHAR(50),
  @descripcion          NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO dbo.estado_pedido
    (
      estado_pedido_id,
      nombre_estado_pedido,
      descripcion
    )
    VALUES
    (
      @estado_pedido_id,
      @nombre_estado_pedido,
      @descripcion
    )
END
GO