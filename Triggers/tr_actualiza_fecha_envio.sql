IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'tr_actualiza_fecha_envio'
       AND TYPE = 'TR'
)
BEGIN
    DROP TRIGGER tr_actualiza_fecha_envio
END
GO

CREATE TRIGGER tr_actualiza_fecha_envio ON pedidos
AFTER INSERT, UPDATE
AS
BEGIN
   IF EXISTS (SELECT 1
                FROM INSERTED i
                     INNER JOIN dbo.estado_pedido ep ON i.estado_pedido_id = ep.estado_pedido_id
               WHERE nombre_estado_pedido = 'Enviado')
   BEGIN
      UPDATE envios
         SET fecha_hora_envio = GETDATE()
        FROM dbo.envios e
             INNER JOIN INSERTED i ON e.pedido_id = i.pedido_id
   END
END