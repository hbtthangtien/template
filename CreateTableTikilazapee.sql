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
CREATE TABLE Color
(
	color_id INT IDENTITY(1,1) PRIMARY KEY,
	color_name NVARCHAR(500)
)
CREATE TABLE Oauth_Account
(	
	[user_id] INT NOT NULL PRIMARY KEY,
	FOREIGN KEY ([user_id]) REFERENCES [Users]([user_id]),
	[oauth_user_id]	NVARCHAR(500),
	[from] INT
)
CREATE TABLE Account
(
	[user_id] INT NOT NULL PRIMARY KEY,
	FOREIGN KEY ([user_id]) REFERENCES [Users]([user_id]),
	[username] NVARCHAR(200) NULL UNIQUE,
	[password] NVARCHAR(500),
	startDate DATE DEFAULT(GETDATE()),
	auth BIT DEFAULT(0),
	[status] INT DEFAULT(1)
)

CREATE TABLE Categories
(
	category_id INT IDENTITY(1,1) PRIMARY KEY,
	[name] NVARCHAR(200),
	[nameImage] NVARCHAR(200)
)

CREATE TABLE [Filters]
(
	filter_id INT IDENTITY(1,1) PRIMARY KEY,
	category_id INT CONSTRAINT fk_FilterCategories_category_id
				FOREIGN KEY REFERENCES Categories(category_id) ON DELETE CASCADE,
	[nameFilter] NVARCHAR(200)
)

CREATE TABLE ImageSliders
(
	slider_id INT IDENTITY(1,1) PRIMARY KEY,
	category_id INT CONSTRAINT fk_ImageSlidersCategories_category_id
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
	product_percentSale INT DEFAULT(0),
	product_importDate DATE DEFAULT(GETDATE()),
	product_describes NVARCHAR(MAX),
	isActive BIT DEFAULT(0) -- 0 - not accept by admin; 1 -- accepted by admin
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
	product_id INT CONSTRAINT fk_FeedbacksProduct_product_id
					FOREIGN KEY REFERENCES [Products]([product_id]),
	feedback_rateStars INT DEFAULT(0),
	feedback_comment NVARCHAR(MAX),
	feedback_commentDate DATE DEFAULT(GETDATE()),
	feedback_modifed	 DATE
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
	type_describes NVARCHAR(200)
)

CREATE TABLE [Orders]
(
	order_id INT IDENTITY(1,1) PRIMARY KEY,
	--order_title NVARCHAR(200) DEFAULT N'Hóa đơn thanh toán',
	customer_id INT CONSTRAINT fk_OrdersCustomers_user_id
				FOREIGN KEY REFERENCES [Users]([user_id]) ON DELETE CASCADE,
	store_id INT CONSTRAINT fk_OrdersStores_store_id
					FOREIGN KEY REFERENCES Stores(store_id),
	order_totalPrice MONEY,
	order_dateOrder DATE DEFAULT(GETDATE()),
	order_status INT DEFAULT(0), -- -2 cancel -1 declined, 0 Awaiting for confirm, 1 Awaiting for prepare produt, 2 On shipping ,3 Success
	order_payment_method INT, -- 0 Thanh toan khi nhan hang, 1 Thanh toan VNPAY
	order_payment_status INT DEFAULT(0) -- 0 Chua thanh toan, 1 Da thanh toan
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
	[color_id] INT CONSTRAINT fk_OrderDetailsColor_color_id
				FOREIGN KEY REFERENCES [Color] ([color_id]) ON DELETE CASCADE,
	unitPrice INT,
	quantityProduct INT,
	intoPrice MONEY,
	isFeedback BIT DEFAULT(0)
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
	[color_id] INT CONSTRAINT fk_ShoppingColor_color_id
				FOREIGN KEY REFERENCES [Color] ([color_id]), 
	unitPrice INT,
	quantityProduct INT,
	intoPrice MONEY
)


CREATE TABLE ProductTypeColor
(
	productTypeColor_id INT IDENTITY(1,1) PRIMARY KEY,
	product_id INT,
	[type_id] INT,
	[color_id] INT,
	UNIQUE(product_id,[type_id],[color_id]),
	CONSTRAINT fk_ProductType_product_id
					FOREIGN KEY(product_id) REFERENCES Products(product_id) ON DELETE CASCADE,
	CONSTRAINT fk_ProductType_type_id
					FOREIGN KEY([type_id]) REFERENCES [Types]([type_id]) ON DELETE CASCADE,
	CONSTRAINT fk_ProductTypColor_color_id
				FOREIGN KEY([color_id]) REFERENCES [Color] ([color_id]) ON DELETE CASCADE,
	[quantity] INT
)

CREATE TABLE Wishlist
(
	wishlist_id INT IDENTITY PRIMARY KEY,
	product_id INT CONSTRAINT fk_ProductWishlist_product_id
					FOREIGN KEY REFERENCES Products(product_id) ON DELETE CASCADE,
	customer_id INT CONSTRAINT fk_Wishlist_user_id FOREIGN KEY (customer_id) REFERENCES [Users]([user_id]),
	UNIQUE(customer_id, product_id)
)

CREATE TABLE Blog
(
	blog_id INT IDENTITY(1,1) PRIMARY KEY,
	[user_id] INT FOREIGN KEY ([user_id]) REFERENCES [Users]([user_id]),
	category_id INT CONSTRAINT fk_BlogCategories_category_id
				FOREIGN KEY REFERENCES Categories(category_id) ON DELETE CASCADE,
	blog_title NVARCHAR(500),
	blog_content NVARCHAR(MAX),
	blog_image NVARCHAR(300),
	blog_create_day DATE DEFAULT(GETDATE())
)

CREATE TABLE Interaction_Blog
(
	interaction_blog_id INT IDENTITY(1,1) PRIMARY KEY,
	[user_id] INT FOREIGN KEY ([user_id]) REFERENCES [Users]([user_id]),
	blog_id INT CONSTRAINT fk_blog_id REFERENCES Blog(blog_id) ON DELETE CASCADE,
	UNIQUE([user_id], blog_id),
	blog_isReaction BIT,
)

CREATE TABLE Interaction_Blog_Comment
(
	comment_id INT IDENTITY(1,1) PRIMARY KEY,
	blog_id INT CONSTRAINT fk_blog_id_comment REFERENCES Blog(blog_id) ON DELETE CASCADE,
	interaction_blog_id INT REFERENCES Interaction_Blog(interaction_blog_id),
	comment_create_day DATE DEFAULT(GETDATE()),
	comment NVARCHAR(1500)
)

CREATE TABLE Payment
(
	payment_id INT IDENTITY(1,1) PRIMARY KEY,
	vnp_Amount MONEY,
	vnp_BankCode NVARCHAR(500),
	vnp_BankTranNo NVARCHAR(500),
	vnp_PayDate NVARCHAR(500),
	vnp_OrderInfo NVARCHAR(500),
	vnp_TransactionStatus NVARCHAR(500),
	vnp_TxnRef NVARCHAR(500)	
)