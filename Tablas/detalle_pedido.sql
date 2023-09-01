IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'detalle_pedido'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.detalle_pedido
    (
      detalle_id  INT NOT NULL,
      pedido_id   INT NOT NULL,
      producto_id INT NOT NULL,
      cantidad    INT NULL,
      subtotal    DECIMAL(10,2) NULL
      CONSTRAINT pk_detalle_id PRIMARY KEY(detalle_id)
      CONSTRAINT fk_pedido_id FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id),
      CONSTRAINT fk_producto_id FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
    )
END
GO