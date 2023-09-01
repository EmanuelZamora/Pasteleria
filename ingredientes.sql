IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'ingredientes'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.ingredientes
    (
      ingrediente_id      INT NOT NULL,
      nombre_ingrediente  NVARCHAR(100) NOT NULL,
      cantidad_disponible INT NULL,
      unidad_medida       NVARCHAR(20) NULL,
      proveedor_id        INT NOT NULL,
      activo              INT NOT NULL
      CONSTRAINT pk_ingrediente_id PRIMARY KEY(ingrediente_id)
      CONSTRAINT fk_ingredite_proveedor_id FOREIGN KEY (proveedor_id) REFERENCES proveedores(proveedor_id),
    )
END
GO