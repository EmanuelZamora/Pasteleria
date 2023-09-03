IF EXISTS
(
  SELECT TOP 1 1
    FROM sysobjects
   WHERE name = 'vw_visualiza_productos'
     AND type = 'V'
)
BEGIN
    DROP VIEW dbo.vw_visualiza_productos
END
GO

CREATE VIEW dbo.vw_visualiza_productos
AS
    SELECT * FROM productos
GO