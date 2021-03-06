/****** Object:  Table [dbo].[Order]    Script Date: 7/23/2020 11:03:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [nvarchar](20) NULL,
	[Quantity] [int] NOT NULL,
	[OrderDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (1, N'JOCNLDFIJYYJHMAB', 32, CAST(N'2020-06-01T10:54:17.413' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (2, N'JNKGCMXFDSBWVMTT', 38, CAST(N'2020-06-02T03:24:58.713' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (3, N'OXPUKUWCPKXWGMUG', 591, CAST(N'2020-06-02T03:33:10.513' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (4, N'postman-sql', 12, CAST(N'2020-06-03T09:08:30.193' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (5, N'EGUPRFQCCCHNKFXD', 18, CAST(N'2020-06-08T07:43:20.567' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (6, N'UOFMNORKHFTJMWOQ', 82, CAST(N'2020-06-08T07:43:22.850' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (7, N'TCHSVTEYGYXVQRGB', 78, CAST(N'2020-06-10T09:08:18.537' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (8, N'IDFRNFITXEINSDWR', 36, CAST(N'2020-06-10T09:08:19.847' AS DateTime))
INSERT [dbo].[Order] ([OrderId], [ProductCode], [Quantity], [OrderDateTime]) VALUES (9, N'XRGGBIGBGKPUHWXE', 93, CAST(N'2020-06-10T09:08:20.863' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Quantity]  DEFAULT (floor(rand()*(((25)-(10))+(1)))+(10)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OrderDateTime]  DEFAULT (getdate()) FOR [OrderDateTime]
GO
