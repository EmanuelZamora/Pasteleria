IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'pedidos'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.pedidos
    (
      pedido_id         INT NOT NULL,
      usuario_id        INT NOT NULL,
      fecha_hora_pedido DATETIME NULL,
      estado_pedido_id  INT NOT NULL,
      metodo_entrega_id INT NOT NULL
      CONSTRAINT pk_pedido_id PRIMARY KEY(pedido_id)
      CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
      CONSTRAINT fk_estado_pedido_id FOREIGN KEY (estado_pedido_id) REFERENCES estado_pedido(estado_pedido_id),
      CONSTRAINT fk_metodo_entrega_id FOREIGN KEY (metodo_entrega_id) REFERENCES metodo_entrega(metodo_entrega_id)
    )
END
GO