IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'categoria_productos'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.categoria_productos
    (
      categoria_producto_id INT NOT NULL,
      nombre_categoria      NVARCHAR(50) NOT NULL,
      descripcion           NVARCHAR(255) NULL,
      activo                BIT NOT NULL
      CONSTRAINT pk_categoria_producto_id PRIMARY KEY(categoria_producto_id)
    )
END
GO