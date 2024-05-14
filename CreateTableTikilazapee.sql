USE master
GO
CREATE DATABASE Tikilazapee
GO
USE Tikilazapee
GO

CREATE TABLE [Roles]
(
	role_id INT IDENTITY(1,1) PRIMARY KEY,
	role_name NVARCHAR(200),
	
)

CREATE TABLE [Users]
(
	[user_id] INT IDENTITY(1,1) PRIMARY KEY,
	fullname NVARCHAR(200),
	phoneNumber NVARCHAR(200),
	email NVARCHAR(200),
	gender INT,
	[address] NVARCHAR(200),
	DOB DATE,
	[Image] NVARCHAR(500),
	role_id INT FOREIGN KEY REFERENCES [Roles](role_id) ON DELETE CASCADE
)

CREATE TABLE Account
(
	[user_id] INT NOT NULL PRIMARY KEY,
	FOREIGN KEY ([user_id]) REFERENCES [Users]([user_id]),
	[username] NVARCHAR(200) UNIQUE,
	[password] NVARCHAR(500),
	startDate DATE DEFAULT(GETDATE()),
	auth BIT DEFAULT(0)
)

CREATE TABLE Categories
(
	category_id INT IDENTITY(1,1) PRIMARY KEY,
	[name] NVARCHAR(200),
)

CREATE TABLE [Filters]
(
	filter_id INT IDENTITY(1,1) PRIMARY KEY,
	category_id INT CONSTRAINT fk_FilterCategories_category_id
				FOREIGN KEY REFERENCES Categories(category_id) ON DELETE CASCADE,
	[nameFilter] NVARCHAR(200)
)

CREATE TABLE ImageBanners
(
	banner_id INT IDENTITY(1,1) PRIMARY KEY,
	category_id INT CONSTRAINT fk_ImageBannerCategories_category_id
				FOREIGN KEY REFERENCES Categories(category_id) ON DELETE CASCADE,
	nameURL NVARCHAR(200)
)

CREATE TABLE Brands
(
	brand_id INT IDENTITY(1,1) PRIMARY KEY,
	brandName NVARCHAR(200)
)

CREATE TABLE Stores
(
	store_id INT NOT NULL PRIMARY KEY,
	FOREIGN KEY(store_id) REFERENCES [Users]([user_id]) ON DELETE CASCADE,
	store_name NVARCHAR(200),
	store_phone NVARCHAR(200),
	store_address NVARCHAR(200),
	store_image NVARCHAR(200)
)

CREATE TABLE Products
(
	product_id INT IDENTITY(1,1) PRIMARY KEY,
	category_id INT CONSTRAINT fk_ProductsCategories_category_id
				FOREIGN KEY REFERENCES Categories(category_id) ON DELETE CASCADE,
	filter_id INT CONSTRAINT fk_ProductsFilters_filter_id
				FOREIGN KEY REFERENCES Filters(filter_id),
	brand_id INT CONSTRAINT fk_ProductsBrands_brand_id	
				FOREIGN KEY REFERENCES Brands(brand_id) ON DELETE CASCADE,
	store_id INT CONSTRAINT fk_StoresProducts_store_id
				FOREIGN KEY REFERENCES Stores(store_id) ON DELETE CASCADE,
	product_name NVARCHAR(500),
	product_originPrice MONEY,
	product_importDate DATE DEFAULT(GETDATE()),
	product_describes TEXT,
	quantity INT
)

CREATE TABLE ImageProducts
(
	imageProcduct_id INT IDENTITY(1,1) PRIMARY KEY,
	product_id INT CONSTRAINT fk_ImageProductsAndProduct_product_id
				FOREIGN KEY REFERENCES Products(product_id) ON DELETE CASCADE,
	imageProduct_url NVARCHAR(200)
)

CREATE TABLE Feedbacks
(
	feedback_id INT IDENTITY(1,1) PRIMARY KEY,
	customer_id INT CONSTRAINT fk_FeedbacksUsers_user_id
					FOREIGN KEY REFERENCES [Users]([user_id]) ON DELETE CASCADE,
	feedback_rateStars INT DEFAULT(0),
	feedback_comment TEXT,
	feedback_commentDate DATE DEFAULT(GETDATE()),
	feedback_modifed DATE
)

CREATE TABLE ImageFeedbacks
(
	imageFeedback_id INT IDENTITY(1,1) PRIMARY KEY,
	feedback_id INT CONSTRAINT fk_ImageFeedBacksAndFeedbacks_feedback_id
				FOREIGN KEY REFERENCES Feedbacks(feedback_id) ON DELETE CASCADE,
	imageFeedback_url NVARCHAR(500)
)

CREATE TABLE [Types] 
(
	[type_id] INT IDENTITY(1,1) PRIMARY KEY,
	type_describes NVARCHAR(200),
)

CREATE TABLE [Orders]
(
	order_id INT IDENTITY(1,1) PRIMARY KEY,
	order_title NVARCHAR(200) DEFAULT N'Hóa đơn thanh toán',
	customer_id INT CONSTRAINT fk_OrdersCustomers_user_id
				FOREIGN KEY REFERENCES [Users]([user_id]) ON DELETE CASCADE,
	store_id INT CONSTRAINT fk_OrdersStores_store_id
					FOREIGN KEY REFERENCES Stores(store_id),
	order_totalPrice MONEY,
	order_dateOrder DATE DEFAULT(GETDATE()),
	order_status BIT DEFAULT(0)
)

CREATE TABLE [OrderDetails]
(
	orderDetai_id INT IDENTITY(1,1) PRIMARY KEY,
	order_id INT CONSTRAINT fk_OrdersProduct_order_id
			FOREIGN KEY REFERENCES [Orders] (order_id) ON DELETE CASCADE,
	product_id INT CONSTRAINT fk_OrderProduct_product_id
			FOREIGN KEY REFERENCES Products(product_id) ,
	[type_id] INT CONSTRAINT fk_OrderType_type_id
			FOREIGN KEY REFERENCES [Types]([type_id]) ON DELETE CASCADE,
	quantityProduct INT,
	intoPrice MONEY,
	status_orderDetails INT DEFAULT(0)
)

CREATE TABLE ShoppingCart
(
	shoppingCart_id INT NOT NULL PRIMARY KEY,
	FOREIGN KEY(shoppingCart_id) REFERENCES [Users]([user_id]) ON DELETE CASCADE
)

CREATE TABLE CartItem
(
	cartItem_id INT IDENTITY(1,1) PRIMARY KEY,
	shoppingCart_id INT CONSTRAINT fk_ShoppingCartProduct_ShoppingCart_id
			FOREIGN KEY REFERENCES [ShoppingCart] (shoppingCart_id) ON DELETE CASCADE,
	product_id INT CONSTRAINT fk_ShoppingCartProduct_product_id
			FOREIGN KEY REFERENCES Products(product_id) ,
	[type_id] INT CONSTRAINT fk_ShoppingType_type_id
			FOREIGN KEY REFERENCES [Types]([type_id]) ON DELETE CASCADE,
	quantityProduct INT,
	intoPrice MONEY
)

CREATE TABLE ProductType
(
	productType_id INT IDENTITY(1,1) PRIMARY KEY,
	product_id INT CONSTRAINT fk_ProductType_product_id
					FOREIGN KEY REFERENCES Products(product_id) ON DELETE CASCADE,
	[type_id] INT CONSTRAINT fk_ProductType_type_id
					FOREIGN KEY REFERENCES [Types]([type_id]) ON DELETE CASCADE
)