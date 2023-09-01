IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_metodo_entrega'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_metodo_entrega
END
GO

CREATE PROCEDURE dbo.sp_crea_metodo_entrega
(
  @metodo_entrega_id INT,
  @nombre_metodo     NVARCHAR(50),
  @descripcion       NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO dbo.metodo_entrega
    (
      metodo_entrega_id,
      nombre_metodo,
      descripcion
    )
    VALUES
    (
      @metodo_entrega_id,
      @nombre_metodo,
      @descripcion
    )
END
GO