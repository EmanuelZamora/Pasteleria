IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'metodo_entrega'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.metodo_entrega
    (
      metodo_entrega_id INT NOT NULL,
      nombre_metodo     NVARCHAR(50) NOT NULL,
      descripcion       NVARCHAR(255) NULL
      CONSTRAINT pk_metodo_entrega_id PRIMARY KEY(metodo_entrega_id)
    )
END
GO