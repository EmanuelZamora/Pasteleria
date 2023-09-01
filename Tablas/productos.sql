IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'productos'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.productos
    (
      producto_id     INT NOT NULL,
      nombre_producto NVARCHAR(100) NOT NULL,
      descripcion     NVARCHAR(255) NULL,
      precio          DECIMAL(10,2) NULL,
      categoria_id    INT NOT NULL,
      stock           INT NULL,
      activo          BIT NOT NULL
      CONSTRAINT pk_producto_id PRIMARY KEY(producto_id)
      CONSTRAINT fk_categoria_id FOREIGN KEY (categoria_id) REFERENCES categoria_productos(categoria_producto_id)
    )
END
GO