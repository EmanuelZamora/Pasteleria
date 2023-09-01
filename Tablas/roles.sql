IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'roles'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.roles
    (
      roll_id     INT NOT NULL,
      nombre_rol  NVARCHAR(50) NOT NULL,
      descripcion NVARCHAR(255) NULL,
      activo      BIT NOT NULL
      CONSTRAINT pk_roll_id PRIMARY KEY(roll_id)
    )
END
GO