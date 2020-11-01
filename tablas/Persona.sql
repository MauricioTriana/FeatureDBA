USE [Proyectos]
GO

/****** Object:  Table [dbo].[Persona]    Script Date: 1/11/2020 5:33:27 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Persona](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](150) NOT NULL,
	[cedula] [bigint] NOT NULL,
	[direccion] [nvarchar](100) NOT NULL,
	[telContacto] [int] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

