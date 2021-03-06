USE [MANAGER_DRINK]
GO
/****** Object:  Table [dbo].[Beverage]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Beverage](
	[Id_beverage] [int] IDENTITY(1,1) NOT NULL,
	[Name_beverage] [nvarchar](255) NULL,
	[Typeofbeverage_id] [int] NULL,
	[Price] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Manufacturing_date] [datetime] NOT NULL,
	[Expiry_date] [datetime] NULL,
	[Date_in] [datetime] NOT NULL,
	[Date_out] [date] NULL,
	[Total_input] [int] NULL,
	[Inventory] [int] NULL,
 CONSTRAINT [PK__Beverage__92F5BB6385C55783] PRIMARY KEY CLUSTERED 
(
	[Id_beverage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id_order] [int] IDENTITY(1,1) NOT NULL,
	[Name_customer] [nvarchar](255) NULL,
	[Phone_number] [char](20) NULL,
	[Customer_balance] [float] NULL,
	[Email] [nvarchar](50) NULL,
	[Order_status] [int] NULL,
	[Order_date] [date] NOT NULL,
	[User_id] [int] NULL,
	[Address] [nvarchar](255) NULL,
	[Total_money] [float] NULL,
 CONSTRAINT [PK__Order__33F95B5C6254ECDE] PRIMARY KEY CLUSTERED 
(
	[Id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[Id_orderdetail] [int] IDENTITY(1,1) NOT NULL,
	[Beverage_id] [int] NULL,
	[Order_id] [int] NULL,
	[Price] [float] NULL,
	[Num] [int] NULL,
	[Total_money] [float] NULL,
	[Note] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_orderdetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id_role] [int] NOT NULL,
	[Name_role] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id_status] [int] NOT NULL,
	[Name_status] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfBeverage]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfBeverage](
	[Id_TypeOfBeverage] [int] IDENTITY(1,1) NOT NULL,
	[Name_TypeOfBeverage] [nvarchar](255) NULL,
	[Created_at] [date] NOT NULL,
 CONSTRAINT [PK__TypeOfBe__DE52B8670070FF4B] PRIMARY KEY CLUSTERED 
(
	[Id_TypeOfBeverage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id_user] [int] IDENTITY(1,1) NOT NULL,
	[Name_user] [nvarchar](255) NULL,
	[Phone_number] [char](20) NULL,
	[Email] [char](50) NULL,
	[Address] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[Role_id] [int] NULL,
	[Created_at] [date] NOT NULL,
	[Update_at] [date] NULL,
 CONSTRAINT [PK__User__B607F24878B909C3] PRIMARY KEY CLUSTERED 
(
	[Id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Beverage] ON 

INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (1, N'Sting', 3, 100000, N'A carbonated energy drink from PepsiCo International and produced by Rockstar Inc', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2021-12-01T00:00:00.000' AS DateTime), NULL, 500, 485)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (2, N'Seven up', 3, 20000, N'An American brand of lemon-lime-flavored non-caffeinated soft drink', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2021-12-01T00:00:00.000' AS DateTime), NULL, 500, 497)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (3, N'Aquafina', 4, 5000, N'An American brand of purified bottled water that is produced by PepsiCo, consisting of both unflavored and flavored water', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2021-12-01T00:00:00.000' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (4, N'Lavie', 4, 5000, N'A great source of essential nutrients that our bodies need daily and untouched pure natural water from deep aquifer', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2021-12-01T00:00:00.000' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (5, N'Beer 333', 1, 30000, N'Production moved to Ho Chi Minh City, Vietnam, where it continued to be produced from original German ingredients and the best German technology', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2021-12-01T00:00:00.000' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (37, N'Aquafina', 4, 5000, N'An American brand of purified bottled water that is produced by PepsiCo, consisting of both unflavored and flavored water', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2022-01-12T05:53:37.720' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (38, N'Beer 353', 1, 30000, N'Production moved to Ho Chi Minh City, Vietnam, where it continued to be produced from original German ingredients and the best German technology', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2022-01-12T06:04:24.530' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (40, N'Beer 32', 1, 30000, N'Production moved to Ho Chi Minh City, Vietnam, where it continued to be produced from original German ingredients and the best German technology', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2022-01-12T06:08:32.083' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (41, N'Beer 3233', 1, 30000, N'Production moved to Ho Chi Minh City, Vietnam, where it continued to be produced from original German ingredients and the best German technology', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2022-01-12T06:10:27.630' AS DateTime), NULL, 500, 500)
INSERT [dbo].[Beverage] ([Id_beverage], [Name_beverage], [Typeofbeverage_id], [Price], [Description], [Manufacturing_date], [Expiry_date], [Date_in], [Date_out], [Total_input], [Inventory]) VALUES (42, N'Beer 3217', 1, 30000, N'Production moved to Ho Chi Minh City, Vietnam, where it continued to be produced from original German ingredients and the best German technology', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), CAST(N'2022-01-12T06:12:44.997' AS DateTime), NULL, 500, 500)
SET IDENTITY_INSERT [dbo].[Beverage] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id_order], [Name_customer], [Phone_number], [Customer_balance], [Email], [Order_status], [Order_date], [User_id], [Address], [Total_money]) VALUES (32, N'Anh', N'111                 ', 20, N'anhbnt                                            ', 1, CAST(N'2021-12-01' AS Date), 1, N'ấdf', 620000)
INSERT [dbo].[Order] ([Id_order], [Name_customer], [Phone_number], [Customer_balance], [Email], [Order_status], [Order_date], [User_id], [Address], [Total_money]) VALUES (33, N'Hau', N'111                 ', NULL, N'sdg', 1, CAST(N'2022-01-10' AS Date), NULL, NULL, 1000000)
INSERT [dbo].[Order] ([Id_order], [Name_customer], [Phone_number], [Customer_balance], [Email], [Order_status], [Order_date], [User_id], [Address], [Total_money]) VALUES (34, N'dsf', N'110                 ', NULL, N'hautlc19@uef', 1, CAST(N'2022-01-10' AS Date), 1, N'Hồ Chí Minh', 0)
INSERT [dbo].[Order] ([Id_order], [Name_customer], [Phone_number], [Customer_balance], [Email], [Order_status], [Order_date], [User_id], [Address], [Total_money]) VALUES (38, N'dsf', N'110                 ', NULL, N'anhbtn19', 0, CAST(N'2022-01-11' AS Date), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([Id_orderdetail], [Beverage_id], [Order_id], [Price], [Num], [Total_money], [Note]) VALUES (138, 1, 33, 100000, 10, 1000000, NULL)
INSERT [dbo].[Order_Detail] ([Id_orderdetail], [Beverage_id], [Order_id], [Price], [Num], [Total_money], [Note]) VALUES (139, 1, 32, 100000, 5, 500000, NULL)
INSERT [dbo].[Order_Detail] ([Id_orderdetail], [Beverage_id], [Order_id], [Price], [Num], [Total_money], [Note]) VALUES (140, 5, 32, 30000, 4, 120000, NULL)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
INSERT [dbo].[Role] ([Id_role], [Name_role]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id_role], [Name_role]) VALUES (2, N'User')
GO
INSERT [dbo].[Status] ([Id_status], [Name_status]) VALUES (0, N'Waiting')
INSERT [dbo].[Status] ([Id_status], [Name_status]) VALUES (1, N'Finish')
GO
SET IDENTITY_INSERT [dbo].[TypeOfBeverage] ON 

INSERT [dbo].[TypeOfBeverage] ([Id_TypeOfBeverage], [Name_TypeOfBeverage], [Created_at]) VALUES (1, N'Beer', CAST(N'2021-12-01' AS Date))
INSERT [dbo].[TypeOfBeverage] ([Id_TypeOfBeverage], [Name_TypeOfBeverage], [Created_at]) VALUES (2, N'Whisky', CAST(N'2021-12-01' AS Date))
INSERT [dbo].[TypeOfBeverage] ([Id_TypeOfBeverage], [Name_TypeOfBeverage], [Created_at]) VALUES (3, N'Water', CAST(N'2021-12-01' AS Date))
INSERT [dbo].[TypeOfBeverage] ([Id_TypeOfBeverage], [Name_TypeOfBeverage], [Created_at]) VALUES (4, N'Beverage', CAST(N'2021-12-01' AS Date))
SET IDENTITY_INSERT [dbo].[TypeOfBeverage] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id_user], [Name_user], [Phone_number], [Email], [Address], [Password], [Role_id], [Created_at], [Update_at]) VALUES (1, N' Hậu Trần ', N'9999999999          ', N'a@gmail.com                                       ', N'Quảng Trị', N'123', 1, CAST(N'2021-12-01' AS Date), NULL)
INSERT [dbo].[User] ([Id_user], [Name_user], [Phone_number], [Email], [Address], [Password], [Role_id], [Created_at], [Update_at]) VALUES (2, N'Nguyễn Bình', N'2222222222          ', N'b@gmail.com                                       ', N'Hồ Chí Minh', N'456', 2, CAST(N'2021-12-01' AS Date), NULL)
INSERT [dbo].[User] ([Id_user], [Name_user], [Phone_number], [Email], [Address], [Password], [Role_id], [Created_at], [Update_at]) VALUES (3, N'Đỗ Sơn', N'3333333333          ', N's@gmail.com                                       ', N'Hồ Chí Minh', N'789', 2, CAST(N'2021-12-01' AS Date), NULL)
INSERT [dbo].[User] ([Id_user], [Name_user], [Phone_number], [Email], [Address], [Password], [Role_id], [Created_at], [Update_at]) VALUES (4, N'Trần An', N'1111111111          ', N'h@gmail.com                                       ', N'Hồ Chí Minh', N'000', 2, CAST(N'2021-12-01' AS Date), NULL)
INSERT [dbo].[User] ([Id_user], [Name_user], [Phone_number], [Email], [Address], [Password], [Role_id], [Created_at], [Update_at]) VALUES (6, N'hautran', N'000                 ', N'a@123                                             ', N'ccc', N'0', 1, CAST(N'2022-01-05' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Beverage] ADD  CONSTRAINT [DF__Beverage__Date_i__36B12243]  DEFAULT (getdate()) FOR [Date_in]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__Order_sta__412EB0B6]  DEFAULT ((0)) FOR [Order_status]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__Order_dat__4222D4EF]  DEFAULT (getdate()) FOR [Order_date]
GO
ALTER TABLE [dbo].[TypeOfBeverage] ADD  CONSTRAINT [DF__TypeOfBev__Creat__398D8EEE]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_role_in_user]  DEFAULT ((2)) FOR [Role_id]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Created_at__3E52440B]  DEFAULT (getdate()) FOR [Created_at]
GO
ALTER TABLE [dbo].[Beverage]  WITH CHECK ADD  CONSTRAINT [FK_BEVERAGE_TYPEOF] FOREIGN KEY([Typeofbeverage_id])
REFERENCES [dbo].[TypeOfBeverage] ([Id_TypeOfBeverage])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Beverage] CHECK CONSTRAINT [FK_BEVERAGE_TYPEOF]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_ORDERSTATUS] FOREIGN KEY([Order_status])
REFERENCES [dbo].[Status] ([Id_status])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_ORDER_ORDERSTATUS]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_USER] FOREIGN KEY([User_id])
REFERENCES [dbo].[User] ([Id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_ORDER_USER]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_ORDERDETAIL_BEVERAGE] FOREIGN KEY([Beverage_id])
REFERENCES [dbo].[Beverage] ([Id_beverage])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_ORDERDETAIL_BEVERAGE]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK_ORDERDETAIL_ORDER] FOREIGN KEY([Order_id])
REFERENCES [dbo].[Order] ([Id_order])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK_ORDERDETAIL_ORDER]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_USER_ROLE] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([Id_role])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_USER_ROLE]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_Inventory]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[TR_UPDATE_Inventory] ON [dbo].[Beverage]
	FOR INSERT, UPDATE
	AS
	BEGIN
		DECLARE @MASP int;
		DECLARE @SOLUONGSP INT;

		SELECT @MASP = inserted.id_beverage
		FROM inserted

		SELECT @SOLUONGSP = inserted.total_input
		FROM inserted

		IF((SELECT COUNT(Beverage_id)
			FROM Order_Detail
			WHERE Beverage_id= @MASP)<1 or (SELECT COUNT(Beverage_id)
			FROM Order_Detail
			WHERE Beverage_id= @MASP)=null)
		BEGIN 
			UPDATE Beverage
			SET Inventory = Total_input
			WHERE Id_Beverage = @MASP
		END
		ELSE
		BEGIN
			Rollback
		END
	END
	
GO
ALTER TABLE [dbo].[Beverage] ENABLE TRIGGER [TR_UPDATE_Inventory]
GO
/****** Object:  Trigger [dbo].[deleteOrder_Detail]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	Create trigger [dbo].[deleteOrder_Detail] On [dbo].[Order_Detail]
	for delete
	as
	begin
		declare @idOrder int, @total float
		select @idOrder = deleted.Order_id from deleted
		select @total = sum(Total_Money) from Order_Detail 
		where Order_id = @idOrder
		if (@total is not null or @total != 0)
		begin
			update [Order]
			set Total_money =@total
			where Id_order = @idOrder
		end
		else
		begin
		update [Order]
			set Total_money =0
			where Id_order = @idOrder
		end
	end
GO
ALTER TABLE [dbo].[Order_Detail] ENABLE TRIGGER [deleteOrder_Detail]
GO
/****** Object:  Trigger [dbo].[TR_Order_Order_Detail]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[TR_Order_Order_Detail]
ON [dbo].[Order_Detail]
FOR INSERT,UPDATE
AS
Begin

	DECLARE	@ORDER_ID int,
			@TOTAL_MONEY FLoat

	SELECT @ORDER_ID=INSERTED.order_id
	FROM		INSERTED


	Select @TOTAL_MONEY=sum(total_money) from order_detail where order_id=@order_id group by order_id
	
	UPDATE [dbo].[Order]
   SET total_money = @total_money where id_order=@order_id


End

GO
ALTER TABLE [dbo].[Order_Detail] ENABLE TRIGGER [TR_Order_Order_Detail]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_NUMOFBEVERAGE]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_NUMOFBEVERAGE] ON [dbo].[Order_Detail]
	FOR INSERT, UPDATE
	AS
	BEGIN
		DECLARE @MASP int;
		DECLARE @SOLUONGBAN INT;

		SELECT @MASP = inserted.Beverage_id
		FROM inserted

		SELECT @SOLUONGBAN = SUM(NUM)  FROM Order_Detail
		WHERE Beverage_id = @MASP 

		IF((SELECT COUNT(Beverage_id)
			FROM Order_Detail
			WHERE Beverage_id= @MASP)<1 and (SELECT COUNT(Beverage_id)
			FROM Order_Detail
			WHERE Beverage_id= @MASP)=null)
		BEGIN 
			UPDATE Beverage
			SET Inventory = Total_input
			WHERE Id_Beverage = @MASP
		END
		ELSE
		BEGIN
			UPDATE Beverage
			SET Inventory = Total_input - @SOLUONGBAN
			WHERE Id_Beverage = @MASP
			PRINT N'INSERT AND UPDATE SUCCESSFUL! CẬP NHẬT SỐ LƯỢNG TỒN'
		END
	END
	
	--Drop trigger TR_UPDATE_NUMOFBEVERAGE

	--select *from order_detail
	--select *from beverage
GO
ALTER TABLE [dbo].[Order_Detail] ENABLE TRIGGER [TR_UPDATE_NUMOFBEVERAGE]
GO
/****** Object:  Trigger [dbo].[TR_UPDATE_TOTALMONEY]    Script Date: 1/13/2022 10:03:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_UPDATE_TOTALMONEY] ON [dbo].[Order_Detail]
	FOR INSERT, UPDATE
	AS
	BEGIN
	
	DECLARE @MASP int;
	DECLARE @MAORDER int;
	DECLARE @NUM Int;
	DECLARE @PRICE float;

	SELECT @NUM = inserted.Num
	FROM inserted


	SELECT @MASP = inserted.Beverage_id
	FROM inserted

	SELECT @MAORDER = inserted.Id_orderdetail
	FROM inserted
	
	SELECT @PRICE = SUM(Price)  FROM Beverage
	WHERE Id_Beverage = @MASP

	IF((SELECT COUNT(*) from Order_Detail)<=0)
	BEGIN
		ROLLBACK TRAN
	END
	ELSE
	BEGIN
	-- 
		UPDATE Order_Detail
		SET Price = @PRICE
		WHERE Beverage_id = @MASP
		
		UPDATE Order_Detail
		SET Total_money = @PRICE*@NUM
		WHERE(Id_orderdetail=@MAORDER)
	END		
	END
	--DROP Trigger TR_UPDATE_TOTALMONEY

GO
ALTER TABLE [dbo].[Order_Detail] ENABLE TRIGGER [TR_UPDATE_TOTALMONEY]
GO
