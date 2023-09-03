IF EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'tr_checar_stock'
       AND TYPE = 'TR'
)
BEGIN
    DROP TRIGGER tr_checar_stock
END
GO

CREATE TRIGGER tr_checar_stock ON productos
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    IF (EXISTS(SELECT stock FROM INSERTED WHERE stock <10))
    BEGIN
        PRINT 'Stock is less than 10. Please take action.'
    END
END
