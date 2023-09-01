IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'receta'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.receta
    (
      receta_id          INT NOT NULL,
      producto_id         INT NOT NULL,
      ingrediente_id     INT NOT NULL,
      cantidad_requerida INT NULL
      CONSTRAINT pk_receta_id PRIMARY KEY(receta_id)
      CONSTRAINT fk_receta_producto_id FOREIGN KEY (producto_id) REFERENCES productos(producto_id),
      CONSTRAINT fk_ingrediente_id FOREIGN KEY (ingrediente_id) REFERENCES ingredientes(ingrediente_id)
    )
END
GO