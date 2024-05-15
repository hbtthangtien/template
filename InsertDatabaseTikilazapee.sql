USE Tikilazapee
GO

INSERT into [Roles]( role_name)
values ('Admin'),
		('Seller'),
		('Customer');

Insert into [Users]( fullname, phoneNumber, email, gender, [address], DOB, [Image], role_id )
values ('Admin',null,'admin123@123.admin', 2, null, null, '15-5-2024', 1),
		(N'Phạm Hoàng Anh', '0853082922', 'pham94729@gmail.com', 1, 'Than Uyen-Lai Chau','03-20-2003',null,  3),
		(N'Nguyễn Quốc Khánh', '0234112233', 'khanhnqhe173524@fpt.edu.vn', 1, 'Ninh Binh', '11-09-2003', null, 2),
		(N'Nguyễn Mạnh Hùng', '0123112233', 'hungnmhe176678@fpt.edu.vn', 1, 'Ha Nam', '04-11-2003', null,  3),
		(N'Bùi Đức Tùng', '09999999999', 'tungbdhe170285@fpt.edu.vn', 1, 'Thach That - Ha Noi','01-01-2003', null, 3),
		(N'Trần Việt Thịnh', '0888888888', 'thinhtvhe170782@fpt.edu.vn', 1, 'Ha Noi', '01-02-2003', null, 2),
		(N'Nguyễn Xuân Vĩ', '02401948', 'vinxhe172309@fpt.edu.vn', 1, 'Ha Noi', '02-02-2003', null, 3),
		(N'Trần Quang Trường', '03401948', 'truongtqhe172652@fpt.edu.vn', 1, 'Ha Noi', '02-03-2003', null, 2),
		(N'Giang Minh Phương', '022222222', 'phuonggmhe182324@fpt.edu.vn', 0, 'Ha Noi','05-04-2003', null,  3);

Insert into [Account]([user_id], [username],[password],[startDate],[auth])
values(1,'admin','admin','15-05-2024',1),
		(2,'anhpro123','Anhpro123','15-05-2024',0),
		(3,'khanhnguyen','khanh123', '15-05-2024', 0),
		(4,'hungnguyen','hung123', '15-05-2024',0),
		(5,'tungbui', 'tung123', '15-05-2024',0),
		(6,'vietthinh', 'thinh123','15-05-2024',0),
		(7,'vingungoc', 'vingungoc', '15-05-2024',0),
		(8,'truongtran', 'truong123', '05-15-2024',0),
		(9, 'phuongmi', 'phuong123', '05-15-2024',0);

Insert into [Categories] ( [name])
values ('Man Fashion'),
		('Woman Fashion'),
		('Balo'),
		('Electronic Device'),
		('Laptop & PC'),
		('Cosmetic'),
		('Shoes'),
		('Toys'),
		('Houseware'),
		('Pets'),
		('Food'),
		('Department store'),
		('Mom & Baby'),
		('Heath'),
		('Book'),
		('phones and accessories'),
		('Sport');

Insert into [Brands](brandName)
values('Nike'),
		('Adidas'),
		('Puma'),
		('Rolex'),
		('Louis Vuiton'),
		('Chanel'),
		('Dior'),
		('Gucci'),
		('Iphone'),
		('Samsung'),
		('Made in China'),
		('Hublot'),
		('Asus'),
		('Acer'),
		('Lenovo'),
		('Readme');

insert into [Stores](store_id, store_name, store_phone, store_address, store_image)
values(3, 'Khanhdan_Unisex', '012345678', 'Ha Noi', null),
		(6, 'AloThinh', '012345679', 'Ha Noi', null),
		(8, 'TruongPC', '012345601', 'Ha Noi', null);

		
		

		


