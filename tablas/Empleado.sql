USE [Proyectos]
GO

/****** Object:  Table [dbo].[Empleado]    Script Date: 1/11/2020 5:33:12 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Empleado](
	[IdPersona] [int] NOT NULL,
	[IdAsociacion] [int] NOT NULL,
	[tipo] [nvarchar](20) NOT NULL,
	[salario] [bigint] NULL,
	[numeroHorasAportadaa] [int] NULL,
	[edad] [int] NULL,
	[profesion] [nvarchar](200) NULL,
	[fechaIngreso] [datetime] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC,
	[IdAsociacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Asociacion] FOREIGN KEY([IdAsociacion])
REFERENCES [dbo].[Asociacion] ([IdAsociacion])
GO

ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Asociacion]
GO

ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Persona] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[Persona] ([IdPersona])
GO

ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Persona]
GO

ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD CHECK  (([tipo]='ASALARIADO' OR [TIPO]='VOLUNTARIO'))
GO

