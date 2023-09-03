IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'tr_checar_stock_ingredientes'
       AND TYPE = 'TR'
)
BEGIN
    DROP TRIGGER tr_checar_stock_ingredientes
END
GO

CREATE TRIGGER tr_checar_stock_ingredientes ON ingredientes
AFTER UPDATE
AS
BEGIN
    IF EXISTS (
       SELECT 1
         FROM INSERTED i
        WHERE i.cantidad_disponible < 5
    )
    BEGIN
        DECLARE @ingredientes_bajos VARCHAR(MAX)
    
        SELECT @ingredientes_bajos = COALESCE(@ingredientes_bajos + ', ', '') + CAST(i.ingrediente_id AS VARCHAR)
          FROM INSERTED i
         WHERE i.cantidad_disponible < 5

        PRINT 'Stock bajo para los ingredientes: ' + @ingredientes_bajos
    END
END
GO
GO