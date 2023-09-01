IF NOT EXISTS
(
    SELECT TOP 1 1
      FROM dbo.sysobjects
     WHERE name = 'usuarios'
       AND TYPE = 'U'
)
BEGIN
    CREATE TABLE dbo.usuarios
    (
      usuario_id  INT NOT NULL,
      nombre      CHAR(50) NOT NULL,
      apellido    CHAR(50) NOT NULL,
      correo      CHAR(100) NOT NULL,
      contrasenia CHAR(50) NOT NULL,
      telefono    CHAR(20) NULL,
      roll_id     INT NOT NULL,
      activo      BIT NOT NULL
      CONSTRAINT pk_usuario_id PRIMARY KEY(usuario_id)
      CONSTRAINT fk_roll_id FOREIGN KEY (roll_id) REFERENCES roles(roll_id)
    )
END
GO
