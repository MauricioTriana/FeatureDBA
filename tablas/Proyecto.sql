USE [Proyectos]
GO

/****** Object:  Table [dbo].[Proyecto]    Script Date: 1/11/2020 5:34:00 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Proyecto](
	[IdProyecto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](150) NOT NULL,
	[objetivo] [nvarchar](500) NOT NULL,
	[paisDesarrollo] [nvarchar](80) NOT NULL,
	[IdProyectoPadre] [int] NULL,
	[IdAsociacion] [int] NOT NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[IdProyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [FK_Proyecto_Asociacion] FOREIGN KEY([IdAsociacion])
REFERENCES [dbo].[Asociacion] ([IdAsociacion])
GO

ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [FK_Proyecto_Asociacion]
GO

ALTER TABLE [dbo].[Proyecto]  WITH CHECK ADD  CONSTRAINT [FK_Proyecto_Proyecto] FOREIGN KEY([IdProyectoPadre])
REFERENCES [dbo].[Proyecto] ([IdProyecto])
GO

ALTER TABLE [dbo].[Proyecto] CHECK CONSTRAINT [FK_Proyecto_Proyecto]
GO

