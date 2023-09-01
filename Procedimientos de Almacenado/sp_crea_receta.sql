IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'sp_crea_receta'
       AND TYPE = 'P'
)
BEGIN
    DROP PROCEDURE dbo.sp_crea_receta
END
GO

CREATE PROCEDURE dbo.sp_crea_receta
(
  @receta_id          INT,
  @producto_id        INT,
  @ingrediente_id     INT,
  @cantidad_requerida INT
)
AS
BEGIN
    INSERT INTO dbo.receta
    (
      receta_id,
      producto_id,
      ingrediente_id,
      cantidad_requerida
    )
    VALUES
    (
      @receta_id,
      @producto_id,
      @ingrediente_id,
      @cantidad_requerida
    )
END
GO