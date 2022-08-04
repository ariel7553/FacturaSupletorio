USE [BDFactura]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CedRuc] [nchar](15) NOT NULL,
	[Nombres] [nvarchar](100) NULL,
	[Apellidos] [nvarchar](100) NULL,
	[Telefono] [nchar](15) NULL,
	[Direccion] [nvarchar](200) NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Factura]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Factura](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Fac] [int] NOT NULL,
	[ID_Pro] [int] NOT NULL,
	[Precio] [decimal](12, 4) NOT NULL,
	[Cant] [decimal](12, 4) NOT NULL,
	[SubTotal] [decimal](12, 4) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Detall_Factura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cliente] [int] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Fecha] [datetime] NULL,
	[Total] [decimal](12, 4) NOT NULL,
	[IVA] [decimal](12, 4) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Url] [varchar](50) NOT NULL,
	[Icono] [varchar](50) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](200) NOT NULL,
	[Precio] [decimal](12, 4) NOT NULL,
	[Costo] [decimal](12, 4) NOT NULL,
	[Stock] [decimal](12, 4) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMaster]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMaster](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RollName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRolesMapping]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRolesMapping](
	[ID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[Nombres] [varchar](100) NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK__Users__3214EC27B4B25379] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Menu]    Script Date: 4/8/2022 8:24:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[ID_Menu] [int] NOT NULL,
	[Estado] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 
GO
INSERT [dbo].[Cliente] ([ID], [CedRuc], [Nombres], [Apellidos], [Telefono], [Direccion], [Estado]) VALUES (31, N'1896325412     ', N'Cliente1', N'Cliente2', N'0986325411     ', N'Ambato', 1)
GO
INSERT [dbo].[Cliente] ([ID], [CedRuc], [Nombres], [Apellidos], [Telefono], [Direccion], [Estado]) VALUES (32, N'1800000055     ', N'Ariel', N'Ariel', N'1852369854     ', N'Ambato', 1)
GO
INSERT [dbo].[Cliente] ([ID], [CedRuc], [Nombres], [Apellidos], [Telefono], [Direccion], [Estado]) VALUES (35, N'1850477553     ', N'Luis', N'Chimbolema', N'0987452361     ', N'Ambato', 1)
GO
INSERT [dbo].[Cliente] ([ID], [CedRuc], [Nombres], [Apellidos], [Telefono], [Direccion], [Estado]) VALUES (36, N'1805475173     ', N'Prueba2', N'Prueba2', N'0985632145     ', N'Ambato', 1)
GO
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Detalle_Factura] ON 
GO
INSERT [dbo].[Detalle_Factura] ([ID], [ID_Fac], [ID_Pro], [Precio], [Cant], [SubTotal], [Estado]) VALUES (18, 18, 7, CAST(13.0000 AS Decimal(12, 4)), CAST(5.0000 AS Decimal(12, 4)), CAST(65.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Detalle_Factura] ([ID], [ID_Fac], [ID_Pro], [Precio], [Cant], [SubTotal], [Estado]) VALUES (19, 19, 5, CAST(12.3000 AS Decimal(12, 4)), CAST(5.0000 AS Decimal(12, 4)), CAST(61.5000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Detalle_Factura] ([ID], [ID_Fac], [ID_Pro], [Precio], [Cant], [SubTotal], [Estado]) VALUES (20, 21, 2, CAST(1.2000 AS Decimal(12, 4)), CAST(255.0000 AS Decimal(12, 4)), CAST(306.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Detalle_Factura] ([ID], [ID_Fac], [ID_Pro], [Precio], [Cant], [SubTotal], [Estado]) VALUES (21, 22, 4, CAST(12.3000 AS Decimal(12, 4)), CAST(1.0000 AS Decimal(12, 4)), CAST(12.3000 AS Decimal(12, 4)), 1)
GO
SET IDENTITY_INSERT [dbo].[Detalle_Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 
GO
INSERT [dbo].[Factura] ([ID], [ID_Cliente], [Usuario], [Fecha], [Total], [IVA], [Estado]) VALUES (18, 31, N'admin', CAST(N'2022-08-03T15:44:25.377' AS DateTime), CAST(72.8000 AS Decimal(12, 4)), CAST(7.8000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Factura] ([ID], [ID_Cliente], [Usuario], [Fecha], [Total], [IVA], [Estado]) VALUES (19, 31, N'admin', CAST(N'2022-08-03T16:04:34.110' AS DateTime), CAST(68.8800 AS Decimal(12, 4)), CAST(7.3800 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Factura] ([ID], [ID_Cliente], [Usuario], [Fecha], [Total], [IVA], [Estado]) VALUES (21, 32, N'admin', CAST(N'2022-08-03T21:11:56.877' AS DateTime), CAST(342.7200 AS Decimal(12, 4)), CAST(36.7200 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Factura] ([ID], [ID_Cliente], [Usuario], [Fecha], [Total], [IVA], [Estado]) VALUES (22, 32, N'admin', CAST(N'2022-08-03T21:21:19.077' AS DateTime), CAST(13.7760 AS Decimal(12, 4)), CAST(1.4760 AS Decimal(12, 4)), 1)
GO
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 
GO
INSERT [dbo].[Menu] ([ID], [Nombre], [Url], [Icono], [Estado]) VALUES (1, N'Inicio', N'Principal', N'bi bi-grid-fill', 1)
GO
INSERT [dbo].[Menu] ([ID], [Nombre], [Url], [Icono], [Estado]) VALUES (2, N'Clientes', N'Cliente', N'bi bi-person-lines-fill', 1)
GO
INSERT [dbo].[Menu] ([ID], [Nombre], [Url], [Icono], [Estado]) VALUES (5, N'Productos', N'Producto', N'bi bi-bookmark-fill', 1)
GO
INSERT [dbo].[Menu] ([ID], [Nombre], [Url], [Icono], [Estado]) VALUES (6, N'Factura', N'Facturar', N'bi bi-receipt-cutoff', 1)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (2, N'Producto1', CAST(1.2000 AS Decimal(12, 4)), CAST(1.5000 AS Decimal(12, 4)), CAST(2665.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (3, N'Producto2', CAST(12.3000 AS Decimal(12, 4)), CAST(12.8000 AS Decimal(12, 4)), CAST(175.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (4, N'Prueba', CAST(12.3000 AS Decimal(12, 4)), CAST(13.3000 AS Decimal(12, 4)), CAST(12.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (5, N'Producto4', CAST(12.3000 AS Decimal(12, 4)), CAST(13.0000 AS Decimal(12, 4)), CAST(4.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (6, N'Prueba3', CAST(18.6000 AS Decimal(12, 4)), CAST(20.3000 AS Decimal(12, 4)), CAST(47.0000 AS Decimal(12, 4)), 0)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (7, N'prueba', CAST(13.0000 AS Decimal(12, 4)), CAST(15.0000 AS Decimal(12, 4)), CAST(20.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (8, N'Prueba5', CAST(20.3000 AS Decimal(12, 4)), CAST(19.2800 AS Decimal(12, 4)), CAST(185.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (9, N'Producto52', CAST(2.3000 AS Decimal(12, 4)), CAST(2.0000 AS Decimal(12, 4)), CAST(600.0000 AS Decimal(12, 4)), 1)
GO
INSERT [dbo].[Producto] ([ID], [Nombre], [Precio], [Costo], [Stock], [Estado]) VALUES (10, N'Producto12', CAST(2.3000 AS Decimal(12, 4)), CAST(2.1500 AS Decimal(12, 4)), CAST(300.0000 AS Decimal(12, 4)), 1)
GO
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] ON 
GO
INSERT [dbo].[RoleMaster] ([ID], [RollName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[RoleMaster] ([ID], [RollName]) VALUES (2, N'User')
GO
SET IDENTITY_INSERT [dbo].[RoleMaster] OFF
GO
INSERT [dbo].[UserRolesMapping] ([ID], [UserID], [RoleID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[UserRolesMapping] ([ID], [UserID], [RoleID]) VALUES (2, 1, 2)
GO
INSERT [dbo].[UserRolesMapping] ([ID], [UserID], [RoleID]) VALUES (4, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([ID], [UserName], [UserPassword], [Nombres], [Estado]) VALUES (1, N'admin', N'admin2022', N'Ariel Chimbolema', 1)
GO
INSERT [dbo].[Users] ([ID], [UserName], [UserPassword], [Nombres], [Estado]) VALUES (2, N'user', N'user2002', N'Usuario ', 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario_Menu] ON 
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (1, N'admin', 1, 1)
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (2, N'admin', 2, 1)
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (4, N'admin', 5, 1)
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (5, N'admin', 6, 1)
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (6, N'user', 6, 1)
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (7, N'user', 2, 1)
GO
INSERT [dbo].[Usuario_Menu] ([ID], [UserName], [ID_Menu], [Estado]) VALUES (8, N'user', 5, 1)
GO
SET IDENTITY_INSERT [dbo].[Usuario_Menu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users]    Script Date: 4/8/2022 8:24:21 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Factura] ADD  CONSTRAINT [DF_Factura_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura_Factura] FOREIGN KEY([ID_Fac])
REFERENCES [dbo].[Factura] ([ID])
GO
ALTER TABLE [dbo].[Detalle_Factura] CHECK CONSTRAINT [FK_Detalle_Factura_Factura]
GO
ALTER TABLE [dbo].[Detalle_Factura]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Factura_Producto] FOREIGN KEY([ID_Pro])
REFERENCES [dbo].[Producto] ([ID])
GO
ALTER TABLE [dbo].[Detalle_Factura] CHECK CONSTRAINT [FK_Detalle_Factura_Producto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([ID_Cliente])
REFERENCES [dbo].[Cliente] ([ID])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Users] FOREIGN KEY([Usuario])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Users]
GO
ALTER TABLE [dbo].[UserRolesMapping]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[RoleMaster] ([ID])
GO
ALTER TABLE [dbo].[UserRolesMapping]  WITH CHECK ADD  CONSTRAINT [FK__UserRoles__UserI__286302EC] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[UserRolesMapping] CHECK CONSTRAINT [FK__UserRoles__UserI__286302EC]
GO
ALTER TABLE [dbo].[Usuario_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Menu_Menu] FOREIGN KEY([ID_Menu])
REFERENCES [dbo].[Menu] ([ID])
GO
ALTER TABLE [dbo].[Usuario_Menu] CHECK CONSTRAINT [FK_Usuario_Menu_Menu]
GO
ALTER TABLE [dbo].[Usuario_Menu]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Menu_Users] FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Usuario_Menu] CHECK CONSTRAINT [FK_Usuario_Menu_Users]
GO
