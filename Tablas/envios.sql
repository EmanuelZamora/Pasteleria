IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'envios'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.envios
    (
      envio_id         INT NOT NULL,
      pedido_id        INT NOT NULL,
      repartidor_id    INT NOT NULL,
      fecha_hora_envio DATETIME NULL,
      estado_envio_id  INT NULL
      CONSTRAINT pk_envio_id PRIMARY KEY(envio_id)
      CONSTRAINT fk_usuario_pedido_id FOREIGN KEY (pedido_id) REFERENCES usuarios(usuario_id),
      CONSTRAINT fk_estado_envio_id FOREIGN KEY (estado_envio_id) REFERENCES estado_envio(estado_envio_id),
      CONSTRAINT fk_envio_pedido_id FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id)
    )
END
GO
