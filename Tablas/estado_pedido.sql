IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'estado_pedido'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.estado_pedido
    (
      estado_pedido_id     INT NOT NULL,
      nombre_estado_pedido NVARCHAR(50) NOT NULL,
      descripcion          NVARCHAR(50) NULL
      CONSTRAINT pk_estado_pedido_id PRIMARY KEY(estado_pedido_id)
    )
END
GO