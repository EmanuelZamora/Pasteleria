IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'estado_envio'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.estado_envio
    (
      estado_envio_id     INT NOT NULL,
      nombre_estado_envio NVARCHAR(50) NOT NULL,
      descripcion         NVARCHAR (255) NULL
      CONSTRAINT pk_estado_envio_id PRIMARY KEY(estado_envio_id)
    )
END
GO