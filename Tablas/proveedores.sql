IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'proveedores'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.proveedores
    (
      proveedor_id    INT NOT NULL,
      nombre_empresa  NVARCHAR(100) NOT NULL,
      nombre_contacto NVARCHAR(100) NULL,
      correo          NVARCHAR(100) NULL,
      telefono        NVARCHAR(20) NULL,
      activo          BIT NOT NULL
      CONSTRAINT pk_proveedor_id PRIMARY KEY(proveedor_id)
    )
END
GO