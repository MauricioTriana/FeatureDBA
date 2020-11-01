USE [Proyectos]
GO

/****** Object:  Table [dbo].[Asociacion]    Script Date: 1/11/2020 5:33:02 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Asociacion](
	[IdAsociacion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[nit] [nvarchar](50) NOT NULL,
	[tipo] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](150) NOT NULL,
	[telefono] [bigint] NOT NULL,
 CONSTRAINT [PK_Asociacion] PRIMARY KEY CLUSTERED 
(
	[IdAsociacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

