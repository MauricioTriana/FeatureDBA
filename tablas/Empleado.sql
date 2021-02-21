USE [PruebaIntergrupo]
GO

/****** Object:  Table [dbo].[Empleado]    Script Date: 21/02/2021 8:35:00 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empleado](
	[Id_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Empleado] [nvarchar](200) NOT NULL,
	[Apellido_Empleado] [nvarchar](200) NOT NULL,
	[Documento_Identidad] [nvarchar](50) NOT NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[contrasena] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

