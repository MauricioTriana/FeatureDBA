USE [Proyectos]
GO

/****** Object:  Table [dbo].[PersonaProyecto]    Script Date: 1/11/2020 5:33:41 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PersonaProyecto](
	[IdPerPro] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[IdProyecto] [int] NOT NULL,
	[valorAporta] [bigint] NOT NULL,
 CONSTRAINT [PK_PersonaProyecto] PRIMARY KEY CLUSTERED 
(
	[IdPerPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PersonaProyecto]  WITH CHECK ADD  CONSTRAINT [FK_PersonaProyecto_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO

ALTER TABLE [dbo].[PersonaProyecto] CHECK CONSTRAINT [FK_PersonaProyecto_Persona]
GO

ALTER TABLE [dbo].[PersonaProyecto]  WITH CHECK ADD  CONSTRAINT [FK_PersonaProyecto_Proyecto] FOREIGN KEY([IdProyecto])
REFERENCES [dbo].[Proyecto] ([IdProyecto])
GO

ALTER TABLE [dbo].[PersonaProyecto] CHECK CONSTRAINT [FK_PersonaProyecto_Proyecto]
GO

