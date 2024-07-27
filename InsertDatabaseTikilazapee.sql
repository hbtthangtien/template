USE Tikilazapee
GO

INSERT into [Roles]( role_name)
values ('Admin'),
		('Seller'),
		('Customer');

Insert into [Users]( fullname, phoneNumber, email, gender, [address], DOB, [Image], role_id )
values ('Admin',null,'admin123@123.admin', 2, null, '2024-5-15', 'image\image_avatar_user\Admin.jpg',  1),
		(N'Phạm Hoàng Anh', '0853082922', 'pham94729@gmail.com', 1, 'Than Uyen-Lai Chau','2003-03-20','image\image_avatar_user\avataruser(1).jpg',  3),
		(N'Nguyễn Quốc Khánh', '0234112233', 'khanhnqhe173524@fpt.edu.vn', 1, 'Ninh Binh', '2003-09-11', 'image\image_avatar_user\avataruser(1).jpg', 2),
		(N'Nguyễn Mạnh Hùng', '0123112233', 'hungnmhe176678@fpt.edu.vn', 1, 'Ha Nam', '2003-11-04', 'image\image_avatar_user\avataruser(1).jpg',  2),
		(N'Bùi Đức Tùng', '09999999999', 'tungbdhe170285@fpt.edu.vn', 1, 'Thach That - Ha Noi','2003-01-01', 'image\image_avatar_user\avataruser(1).jpg', 2),
		(N'Trần Việt Thịnh', '0888888888', 'thinhtvhe170782@fpt.edu.vn', 1, 'Ha Noi', '2003-02-01', 'image\image_avatar_user\avataruser(1).jpg', 2),
		(N'Nguyễn Xuân Vĩ', '02401948', 'vinxhe172309@fpt.edu.vn', 1, 'Ha Noi', '02-02-2003', 'image\image_avatar_user\avataruser(1).jpg', 3),
		(N'Trần Quang Trường', '03401948', 'truongtqhe172652@fpt.edu.vn', 1, 'Ha Noi', '2003-03-02', 'image\image_avatar_user\avataruser(2).jpg', 2),
		(N'Giang Minh Phương', '022222222', 'phuonggmhe182324@fpt.edu.vn', 0, 'Ha Noi','2003-04-05', 'image\image_avatar_user\avataruser(0).jpg',  3);

Insert into [Account]([user_id], [username],[password],[auth])
values(1,'admin','hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',1),
		(2,'anhpro123','hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0),
		(3,'khanhnguyen','hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==', 0),
		(4,'hungnguyen','hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0),
		(5,'ductung1706', 'hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0),
		(6,'vietthinh', 'hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0),
		(7,'vingungoc', 'hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0),
		(8,'truongtran', 'hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0),
		(9, 'phuongmi', 'hWDiHEHT7apkvFuUXJOlIUv6SZW4c45Hq6C3wA==',0);

Insert into [Categories] ( [name], [nameImage] )
values ('Man Fashion','image\image_logo\image_logo_categories\man_fashion.jpg'),
		('Woman Fashion','image\image_logo\image_logo_categories\woman_fashion.jpg'),
		('Balo','image\image_logo\image_logo_categories\balo.jpg'),
		('Electronic Device','image\image_logo\image_logo_categories\thietbidientu.jpg'),
		('Laptop & PC','image\image_logo\image_logo_categories\Laptop.jpg'),
		('Cosmetic','image\image_logo\image_logo_categories\mypham.jpg'),
		('Shoes','image\image_logo\image_logo_categories\shoes.jpg'),
		('Toys','image\image_logo\image_logo_categories\Toys.jpg'),
		('Houseware','image\image_logo\image_logo_categories\houseware.jpg'),
		('Pets','image\image_logo\image_logo_categories\Pets.jpg'),
		('Department store','image\image_logo\image_logo_categories\Department_Stores.jpg'),
		('Mom & Baby','image\image_logo\image_logo_categories\Momandbaby.jpg'),
		('Heath','image\image_logo\image_logo_categories\suckhoe.jpg'),
		('Book','image\image_logo\image_logo_categories\sach.jpg'),
		('phones and accessories','image\image_logo\image_logo_categories\dienthoai.jpg'),
		('Sport','image\image_logo\image_logo_categories\thethao.jpg');

Insert into [Brands](brandName)
values('Nike'),
		('Adidas'),
		('Puma'),
		('Rolex'),
		('Louis Vuiton'),
		('Chanel'),
		('Dior'),
		('Gucci'),
		('Apple'),
		('Samsung'),
		('Made in Japan'),
		('Hublot'),
		('Asus'),
		('Acer'),
		('Lenovo'),
		('Readme'),
		('DirtyCoins'),
		('Made in China'),
		('Haras'),
		('Paradox'),
		('Bad Habits'),
		('Feelex'),
		('Oxy'),
		('Made in Vietnam'),
		('Vasaline'),
		('Oppo'),
		('Hp'),
		('Canon'),
		('LG'),
		('Xiaomi'),
		('Toshiba'),
		('Microsoft');
		

insert into [Stores](store_id, store_name, store_phone, store_address, store_image)
values(3, 'Khanhdan_Unisex', '012345678', 'Ha Noi', null),
		(6, 'AloThinh', '012345679', 'Ha Noi', null),
		(8, 'TruongPC', '012345601', 'Ha Noi', null),
		(4, 'Hung_ManchesterUnited', '012345602', 'Ha Noi', null),
		(5, 'TungCanTeam', '012345603', 'Ha Noi', null);

insert into [Filters] ( [category_id], [nameFilter])
values(1,'Jacket'),
		(1, 'Vest and Blazer'),
		(1, 'hoodie, sweater, Sweatshirts'),
		(1, 'long pants, casual pants'),
		(1, 'shirt'),
		(1, 'three holes shirt'),
		(1, 'underwear'),
		(1, 'pajamas'),
		(1,'fashion accessories'),
		(2,'clothes'),
		(2,'shirt'),
		(2,'shorts'),
		(2,'skirt'),
		(2,'jeans'),
		(2,'dress'),
		(2,'hoodie, sweater, Sweatshirts'),
		(2,'pajamas'),
		(2, 'underwear'),
		(2,'fashion accessories'),
		(3,'Crossbody bag'),
		(3,'Laptop bag'),
		(3,'Wallet'),
		(3,'Waist bag'),
		(3,'Office briefcase'),
		(3,'Student backpack'),
		(4,'loudspeaker'),
		(4,'Television'),
		(4,'Game Console'),
		(4,'Fridge'),
		(4,'Washing machine'),
		(4,'Headphones'),
		(4,'Accessories'),
		(4,'Microwave oven'),
		(5,'Accessories'),
		(5,'Laptop'),
		(5,'PC'),
		(5,'Projector'),
		(5,'Printer'),
		(5,'Screen'),
		(5,'Network equipment'),
		(5,'Storage device'),
		(6,'Facial care'),
		(6,'Body care'),
		(6,'Hair care'),
		(6,'Make up'),
		(6,'Teeth cleaning'),
		(6,'Men care'),
		(6,'Perfume'),
		(7,'Men shoes'),
		(7,'Woman shoes'),
		(7,'Sport shoes'),
		(7,'High heels'),
		(7,'Slippers'),
		(7,'Accessories'),
		(8,'Entertainment toys'),
		(8,'Educational toys'),
		(8,'Hobbies and collections'),
		(8,'Doll'),
		(8,'Stuffed animal'),
		(9,'Blankets, sheets, pillows, mattresses'),
		(9,'Furniture'),
		(9,'Home decoration'),
		(9,'Kitchen utensils'),
		(9,'Utility tools and equipment'),
		(10,'Food'),
		(10,'Accessory'),
		(10,'Clothes'),
		(10,'Take care of the pet'),
		(10,'Pet hygiene'),
		(11,'Snacks'),
		(11,'Prepared food'),
		(11,'Cooking ingredients'),
		(11,'Drinks'),
		(11,'Acoholic drink'),
		(11,'Fresh and frozen foods'),
		(11,'Cake'),
		(11,'Cereal - eggs'),
		(12,'Travel items for babies'),
		(12,'Weaning utensils for babies'),
		(12,'Accessories for mothers'),
		(12,'Bathroom supplies & Baby body care'),
		(12,'Baby bedroom furniture'),
		(12,'Baby food'),
		(12,'Diapers & baby potties'),
		(13,'Medical supplies'),
		(13,'Anti-mosquito & repel insects'),
		(13,'Functional foods'),
		(13,'Sexual support'),
		(13,'Adult diapers'),
		(13,'Massage and therapy tools'),
		(14,'Vietnamese book'),
		(14,'Foreign literature books'),
		(14,'Pen'),
		(14,'Colors, Painting Tools and Crafts'),
		(14,'Student & office supplies'),
		(14,'Souvenir'),
		(15,'Iphone 15 Series'),
		(15,'Iphone 13 Series'),
		(15,'Iphone 14 Series'),
		(15,'Iphone 12 Series'),
		(15,'Iphone 11 Series'),
		(15,'Tablet'),
		(15,'Battery backup'),
		(15,'Cases, leather cases, phone stickers'),
		(15,'Screen protector'),
		(15,'Internal Battery, Cable and Charger'),
		(15,'Memory Stick'),
		(15,'Sim'),
		(15,'Headphone'),
		(15,  'Other Phones'),
		(15,'Other accessories'),
		(16,'Vali'),
		(16,'Travel bags'),
		(16,'Travel accessories'),
		(16,'Sports & Outdoor Equipment'),
		(16,'Sport shoes'),
		(16,'Sports & Outdoor Fashion');

INSERT INTO [dbo].[Products]
           ([category_id]
           ,[filter_id]
           ,[brand_id]
           ,[store_id]
           ,[product_name]
           ,[product_originPrice]
           ,[product_percentSale]
           ,[product_describes]
		   ,isActive)
		   VALUES (3, 25, 18, 3, 'School Bag', 430000, 10,N'- Chất liệu: Vải Poly dù lạnh mềm mại chống thăm nước nhẹ nhàng
- Màu sắc: Đen, Be Trắng, Đỏ, Xanh
- Kích thước: 45x30x14cm đựng được laptop lên đến 16inch
- Công dụng: Mang đi học, du lịch, đi chơi,...
- Phụ kiện đi kèm: Sticker cài, móc khoá gấu, vịt, ếch xanh...
- Xuất xứ: Việt Nam
Balo đi học Ulzzang Hàn Quốc trơn basic nam nữ cặp sách đi chơi du lịch thời trang Unisex BL03 chất liệu vài dù Poly lạnh cao cấp khả năng chống thấm nước nhẹ, mang chắc chắn vừa vặn với khung nười Việt Nam.
- Balo đi học ulzzang đi học Hàn Quốc nam nữ đều mang được.
- Dùng để đi học, thời trang phong cách Hàn Quốc
- Phụ kiện thời trang mang đi chơi, đi du lịch. Kích thước lớn đựng được nhiều đồ.',1 ),
		(3, 25, 7, 3, 'Balo Dior', 2300000, 7,N'Balo đi học size to 40 nam nữ giá rẻ thời trang đi chơi du lịch đựng vừa A4 BL335
Balo Đẹp Nam Nữ , BaLô Công Sở, Laptop, Chống Sốc, Chống Thấm Nước, Đi Chơi, Du Lịch
- Màu Sắc: Nhiều họa tiết
- Kích thước: size 40 cm ( Đựng vừa laptop, A4...)
- Chất liệu: Da PU
',1),
		(3, 21, 18, 8, 'Balo Laptop', 230000, 5, N'Kích thước: 46 x 31 x 18 (cm) | Ngăn Laptop Chống Sốc 17 - 17.3 inch
– Màu Sắc : Đen 
– Chất liệu vải:  Vải Cordura 500D chính hãng cao cấp, có tác dụng chống thấm nước kép 2 lớp, chống xước,  không phai màu. 
– Cân nặng: 0.8 Kg.
 Balo Laptop 17 - 17.3 inch được thiết kế từ chất liệu Vải Cordura 500D chính hãng cao cấp được thiết kế bằng Vải Oxford chính hãng được ép nhiệt với độ bền cao. Cấu trúc kép hoàn thiện 2 lớp của vải Oxford giúp Balo tăng cường được khả năng chống thấm nước, ngăn các loại chất lỏng xâm nhập vào bên trong Balo. Đồng thời, vải Oxford có tính năng chống xước và không phai màu giúp sản phẩm duy trì được vẻ đẹp và độ mới mẻ trong thời gian dài sử dụng. 

+ Balo Laptop 17 - 17.3 inch Thiết kế khoa học, chia thành nhiều ngăn tiện lợi:

Ngăn Chính sức chứa lớn dùng để chứa đựng các vật dụng cần thiết như tài liệu, sách vở khổ A4, hộp đựng bút, các vật dụng, tư trang cá nhân như quần áo, bàn phím, tai nghe ..v.v. Tiện lợi khi sử dụng mang đi làm, đi học, đi chơi, đi du lịch.

Nhiều ngăn Phụ nhỏ khác nhau dùng để chứa các vật dụng nhỏ gọn như điện thoại, Ipad, giấy tờ, hộ chiếu, bút, thước, chìa khóa, thẻ nhà. Ngăn nhỏ bí mật giúp để chứa ví tiền cũng như tài sản cá khác như ví tiền, trang sức, 2 bên có ngăn nhỏ đựng bình nước, ô dù.

Ngăn đựng Laptop: Ngăn laptop thiết kế bằng vải Polyester lót bông dày dặn khoảng 2-3cm, chống sốc, chống va đập khi di chuyển, bảo vệ laptop cá nhân an toàn. Ngăn laptop phù hợp cho các dòng máy có kích thước từ 17 - 17.3 inch inch như Macbook Air, Macbook Pro  Dell, ASUS, VAIO, DELL, AU…, và một số dòng máy Gaming khác.

Khóa Kéo YKK: Zip khóa YKK tạo độ mượt, trượt khi kéo, giúp người sử dụng dễ dàng mở và đóng khi sử dụng

+ Tích hợp cổng sạc USB: Balo được thiết kế tích hợp cổng sạc USB để đáp ứng nhu cầu sạc pin cho các thiết bị di động như điện thoại, máy tính bảng, tai nghe không dây, v.v.

+ Quai đeo thoáng khí, kết cấu trợ lực.',1),
		(3, 25, 19, 3, 'Balo Haras', 700000, 0, N' Chất liệu: Da PU Cao Cấp - Trượt nước
- Hoạ tiết: thêu logo nổi
- Size: 40cm X 30cm X 12cm
- Ngăn chống sốc đựng vừa laptop 13inch, 14inch
- Thương hiệu: PRAZA
- Sản xuất: Việt Nam
- Màu sắc và họa tiết được thiết kế riêng
- Bảo hành: 60 ngày',1),
		(1, 1, 17, 3, 'Jacket DirtyCoins', 1500000, 10, N'• Mặt ngoài: Sợi tổng hợp phối da PU; lót trong: Polyester.
• Màu sắc: Đỏ
• Kích cỡ: M - L - XL
• Regular Fit.
• Phối đắp mảnh da trên cầu vai.
• Hình thêu logo trên mặt trước và mặt sau lưng áo.',1 ),
		(1, 1, 1, 4, 'Jacket Nike', 4620000, 20, N'- Chất liệu: Vải gió dù
- Form: Cơ bản- Đem lại sự thoải mái tiện lợi nhất cho người mặc đi mưa,cản gió,chống nắng
- áo khoác gió DEGO  được thiết kế theo đúng form chuẩn của nam giới Việt Nam
Hướng dẫn sử dụng áo gió 
- Đối với sản phẩm áo khoác gió mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang áo khoác gió khác
- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal
- Sản phẩm phù hợp cho giặt máy/giặt tay',1),
		(1, 1, 2, 4, 'Jacket Adidas', 3500000, 15, N'- Chất liệu: Vải gió 
- Form: Cơ bản- Đem lại sự thoải mái tiện lợi nhất cho người mặc đi mưa,cản gió,chống 
- áo khoác gió DEGO  được thiết kế theo đúng form chuẩn của nam giới Việt Nam
Hướng dẫn sử dụng áo gió :
- Đối với sản phẩm áo khoác gió mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang áo khoác gió 
- Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal
- Sản phẩm phù hợp cho giặt máy/giặt tay',1),
		(1, 1, 20, 3, 'Jacket Paradox', 900000, 5, N'• Tự hào sản xuất tại Việt Nam bởi chính Paradox - là một Local Brand đã có mặt nhiều năm trên thị trường.

• Chất liệu vải micro-parachute (dù) 2 lớp, là một dòng sản phẩm chất liệu thuộc hạng cao cấp được gia công từ các chất liệu như: polyester, cotton, nylon và tơ nhân tạo...

• Khả năng chống thấm nước rất cao: Có thể nói vải dù là một trong những chất liệu có khả năng chống thấm vượt trội hơn cả các chất liệu như vải Nylon hay Spandex. Và ưu điểm này cũng là một trong những yếu tố cần thiết để ứng dụng trên các sản phẩm sử dụng ngoài trời hay có tính năng che chắn tiện dụng. Khả năng chống thấm vượt trội cũng là một trong những ưu điểm giúp bạn tiết kiệm thời gian vệ sinh và giặt giũ.

• Sợi vải bền và chắc: Kết cấu chất liệu vải dù Polyester được làm từ cả những sợi vải thô, chính vì vậy mà khi kết hợp lại chúng rất bền và chắc, có khả năng chịu lực tốt, sợi vải không dễ bị đứt gãy trong quá trình sử dụng, giúp đảm bảo tuổi thọ sử dụng theo thời gian.

• Trọng lượng: Bên cạnh những ưu điểm như độ bền cao, khả năng chống thấm tốt thì vải dù cũng có trọng lượng nặng tay, dày dặn và dễ dàng tiện lơi khi mặc cũng như mang theo.

• Độ thoáng khí cao: Tuy là một sản phẩm có độ trượt nước, chống thấm tốt, nhưng nó cũng rất thoáng khí, phù hợp mặc cả trong mùa hè nóng bức.

• Hoạ tiết được in chuyển nhiệt có độ tinh xảo, sắc nét cao

• Có khoá kéo chắc chắn, cổ hình trụ',1 ),
		(1, 3, 17, 3, 'Sweater DirtyCoins', 500000, 10, N'• Chất liệu: Cotton.

• Màu sắc: Đen

• Size: M - L

• Relaxed Fit.

• Họa tiết monogram đặc trưng của DirtyCoins được dệt trên vải.

• Bo tay áo, bo cổ và bo thân được đánh rách nhẹ.',1),
		(1, 3, 18, 3, 'Sweater Not Bad', 230000, 0, N'- Chất liệu: Nỉ da cá 380gsm

- Màu Sắc: Đen, Xám Nhạt, Hồng Đậm',1),
		(1, 3, 1, 4, 'Sweater Nike', 1200000, 30, N'- Sản phẩm: Áo Sweater Richky Premium Nỉ Nike Big Logo Mid

- Thương hiệu: RICHKY

- Chất liệu: Nỉ chân cua nhập khẩu cao cấp 

- Size: M, L, XL

- Kiểu dáng: Áo thuộc dạng form rộng, unisex, mặc thoải mái rồi nên khi đặt không cần nhích size ( trừ trường hợp thích oversize size hẳn )

- Phong cách thời trang trẻ trung năng động, kiểu dáng đơn giản nhưng dễ dàng thu hút ánh nhìn của người đối diện 

',1),
		(1, 3, 2, 4, 'Sweater Adidas', 980000, 20, N'áo hoodie chuẩn, tem mác chuẩn chính hãng.
- Chất liệu áo hoodie: Nỉ cao cấp. vải mềm, vải mịn, không xù lông.
- áo khoác hoodie có đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.
- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.
- áo khoác hoodie thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ',1),
		(1, 5, 17, 3, 'Shirt DirtyCoins', 300000, 20, N'• Chất liệu: Polyester.

• Màu sắc: Đen - Đỏ - Trắng

• Size: M - L - XL

• Relaxed Fit.

• Hình in mặt trước và mặt sau áo áp dụng công nghệ in kéo lụa.

• Nhãn dệt riêng ở góc dưới thân áo.',1 ),
		(1, 5, 21, 3, 'Shirt Bad Habits', 410000, 15, N'• Chất liệu: Kaki

• Kỹ thuật: Thêu và In',1 ),
		(1, 5, 1, 4, 'Shirt Nike', 1050000, 20, N' Định lượng cotton lên tới 320gsm tạo form dáng ổn định sau nhiều lần sử dụng

- Công nghệ Enzyme wash cả cây vải tạo độ mềm, chống co giãn hay biến dạng, làm sợi vải xốp hơn, thân thiện và mềm mại trên da

- Oversized fit',1),
		(1, 5, 2, 4, 'Shirt Adidas', 860000, 15, N'Cảm hứng thiết kế : Mẫu T-shirt với slogan mang một thông điệp mạnh mẽ : “Sick of being kind”, được in to ở mặt đằng trước áo, tạo nên một vibe cực kỳ cool ngầu khi diện chiếc áo này. 2 phối màu đen và be kết hợp với màu chữ in trên áo một cách tinh tế, khiến cho mẫu áo này nổi bật và rất dễ phối cùng với các items khác.',1),
		(6, 47, 22, 5, 'Men Care Feelex', 205000,5, N'- Tên sản phẩm: Bọt vệ sinh nam giới Feelex Care Men dung dịch vệ sinh tạo bọt 100ml

- Xuất xứ: Việt Nam

- Mùi hương: Mát lạnh, Strongman quyến rũ, One DG nam tính

- Độ lưu hương: Từ 10-12 phút, độ tỏa hương từ 2-5cm

- Thương hiêu: Feelex

- Ngày sản xuất: In trên bao bì

- Hạn sử dụng: 03 năm kể từ ngày sản xuất



Vệ sinh cá nhân là một phần quan trọng đối với sức khỏe nam giới. Sự tích tụ của mồ hôi, bụi bẩn và vi khuẩn (vi trùng) ở vùng kín có thể gây ra viêm nhiễm do vi khuẩn hoặc nấm và dị ứng dẫn đến mùi hôi. Bọt vệ sinh nam giới Feelex Care Men loại bỏ nhanh chóng các yếu tố này, giữ độ ẩm cho vùng kín.
Bọt vệ sinh nam giới là sản phẩm rửa sạch nhẹ nhàng và hiệu quả vùng kín nam giới, giúp loại bỏ mùi hôi và tăng cường độ ẩm cho vùng kín. Với dạng bọt tuyết tiện dụng không chỉ giúp cánh mày râu vệ sinh cậu nhỏ dễ dàng mà còn mang đến cảm giác mát nhẹ, hương thơm dễ chịu.',1),
		(6, 42, 23, 5, 'Cleanser Oxy ', 99000, 0, N'
Da mụn trứng cá, Mọi loại da, Da hỗn hợp, Khô
Chăm Sóc Da
Mụn Trứng Cá/ Thâm, Mụn đầu đen, Se khít lỗ chân lông, Nám/ tàn nhang, Da dầu
Dạng rửa mặt
Dạng sữa
Thể tích
300ml
Xuất xứ
Việt Nam
Trọng lượng
120g',1),
		(6, 43, 23, 5, 'shower gel Oxy',170000, 10, N'Sữa tắm, rửa mặt không xà phòng cho mọi loại da và da nhạy cảm 740ML
Xuất xứ & sx tại: Pháp

Dung tích: 740ml

Hạn dùng: 3 năm kể từ ngày sản xuất

Nsx/Hsd: Xem trên sản phẩm

Công dụng: Sữa tắm, rửa mặt không xà phòng làm sạch và cấp ẩm cho da, phù hợp cho mọi loại da và da nhạy cảm

 

Ưu điểm sản phẩm:

- Làm sạch nhẹ nhàng da mặt và cơ thể, không gây khô da, không gây kích ứng da được bổ sung glycerin nổi trội với đặc tính dưỡng ẩm cho da.

- Dưỡng ẩm, cấp nước cho da. Bảo vệ và duy trì màng nước, độ PH sinh lý trên da giúp da mềm mại mịn màng. 

- Công thức không xà phòng, không chứa sulfate giúp hạn chế kích ứng và tình trạng khô da.

- Lý tưởng để dùng vệ sinh làm sạch hàng ngày cho cả gia đình và trẻ em từ 3 tuổi trở lên. Độ lành tính cao nhờ chiết xuất tự nhiên, được làm giàu với glycerin giúp dưỡng ẩm nhẹ nhàng. 

- Công thức tối giản, chứa 93% nguyên liệu từ tự nhiên và 99% nguyên liệu phân huỷ sinh học dễ dàng 

- Công thức thuần chay: Không chứa các nguyên liệu hay chất dẫn xuất có nguồn gốc từ động vật.

- Bao bì được sản xuất từ 100% nhựa tái chế và dễ dàng tái chế sau sử dụng, chai lọ nhẹ hơn

- Vòi xịt tái sử dụng (lên tới 7 lần*) giúp tiết kiệm khi sử dụng trên mỗi lần xịt và tiện lợi khi sử dụng

- Sản phẩm đã được kiểm nghiệm da liễu, nhãn khoa và trên 100% trên da nhạy cảm. 

- Sản xuất tại Pháp

',1 ),
		(6, 42, 18, 5, 'Moisturizer', 59000, null, N'Gel dưỡng ẩm kết hợp Ceramide, Hyaluronic Acid, Centella Asiatica giúp cải thiện các vấn đề về hàng rào bảo vệ da bị tổn thương như mụn, m.ẩn đỏ, da sần, da khô một cách nhanh chóng nhưng vẫn an toàn cho hàng rào bảo vệ da. Với công nghệ 5X Ceramide, là sự kết hợp của 5 loại Ceramide giúp dưỡng ẩm sâu và giữ các lớp da khoẻ mạnh. 5X Ceramide này giúp cải thiện hàng rào bảo vệ da bằng cách giữ ẩm và tránh các nhân tố gây hại bên ngoài.

Khối lượng: 30g

 

Công dụng:

- Cải thiện các vấn đề về hàng rào bảo vệ da như mụn trứng cá, m.ẩn đỏ, da khô và da sần sùi

- Dưỡng ẩm cho da

- Kiểm soát dầu cho da

- Cải thiện hàng rào bảo vệ da

- Làm da dịu đi và mềm mịn

Hiệu quả sản phẩm phụ thuộc vào tình trạng da và cơ địa của mỗi người',1),
		(6, 44, 18, 5, 'Hair care essential oil', 109000, 0, N'Hỗ trợ cải thiện mái tóc hư tổn
- Giúp tóc bớt rụng nhiều
- Hỗ trợ phục hồi và nuôi dưỡng mái tóc chắc khỏe 
- Hạn chế tóc hư tổn trước những tác nhân gây hại
* Dung tích 100ml',1),
		(6, 47, 18, 5, 'Shaving cream', 45000, 0, N'Bộ sản phẩm gồm 02 Lưỡi cạo gồm 5 lưỡi nhỏ + 1
Lưỡi cạo với 5 lưỡi nhỏ sắc bén được sản xuất bằng thép không gỉ của Thuỵ Điển
Đầu dao cạo có thanh cấp ẩm và con lăn giúp thao tác cạo râu dễ dàng hơn
Dễ dàng tháo lắp, thay thế lưỡi cạo với phần chốt ở giữa phần chuôi cầm và lưỡi cạo
Sản xuất tại nhà máy Mers Razor Solution
',1),
		(6, 44, 18, 5,'Hair wax', 130000, 0, N'Sáp, Wax vuốt tóc Sawensito Deluxe Hair Wax 100gr tạo kiểu giữ nếp cho tóc. HÀNG CHÍNH HÃNG
-Mùi thơm nam tính dễ chịu.
-Chất sáp cứng phù hợp tóc cứng khó tạo nếp
-Độ cứng: 5/5 - giữ nếp cả ngày
-Không gây bết dính, dễ dàng gội đầu sau khi sử dụng.',1),
		(6, 42, 24, 5, 'The cocoon', 145000, 10, N'Không ngừng cải tiến để tạo ra những sản phẩm có hiệu quả vượt trội hơn, Cocoon chính thức ra mắt PHIÊN BẢN NÂNG CẤP của NƯỚC DƯỠNG TÓC TINH DẦU BƯỞI POMELO.
Nước dưỡng tóc tinh dầu bưởi pomelo thuần chay phiên bản nâng cấp là sản phẩm treatment dành cho tóc rụng, tóc yếu, tóc thưa mỏng và chậm phát triển. Bên cạnh các thành phần chủ đạo của phiên bản hiện tại, phiên bản nâng cấp được bổ sung thêm 2 hoạt chất là Baicapil và Bisabolol, mang đến giải pháp mạnh mẽ giải quyết tình trạng rụng tóc và tăng cường sự phát triển của mái tóc.
Thành phần chính nước dưỡng tóc pomelo cocoon:
• Tinh dầu vỏ bưởi nguyên chất: Chứa hàm lượng limonene rất cao giúp ức chế mạnh mẽ enzyme 5-alpha reductase gây ra tình trạng rụng tóc, có tính kháng khuẩn cao giúp hạn chế tình trạng gàu.
• Vitamin B5 (Panthenol): cung cấp độ ẩm cho tóc, ngăn ngừa hư tổn, làm dày tóc và cải thiện độ bóng khỏe của mái tóc.
• Xylishine: Được chiết xuất từ các loại đường tự nhiên từ gỗ và từ tảo nâu Pelvetia Canaliculata giúp cấp ẩm, phục hồi và tăng cường độ bóng của tóc.
• Baicapil: Là tổ hợp các chất được chiết xuất từ cây hoàng cầm, mầm đậu nành và mầm lúa mạch. Hoạt chất này có tác dụng mạnh mẽ trong việc giúp mọc tóc nhanh, giảm rụng tóc rõ rệt, gia tăng mật độ của tóc và làm cho sợi tóc dày.
• Bisabolol: Chiết xuất từ tinh dầu hoa cúc, có tác dụng bảo vệ và làm lành da đầu khỏi tác động của căng thẳng hàng ngày, phù hợp với da đầu. Ngoài ra Bisabolol còn có tác dụng giữ ẩm và kiểm soát bã nhờn trên da đầu.',1),
		(6, 43, 24, 5, 'Clean Texture', 236500, 20, N'1. Applicable Model: Fuel tank cover oil gas cap trim fit for MK7 MK7.5 2014‑2019, high quality car decorative accessory.
2. Premium Material: Oil gas cap trim is made of high quality carbon fiber material, light weight, clear and beautiful texture, smooth touch.
3. Long Durability: Carbon fiber fuel tank cover is very durable, weatherproof, resistant to high and low temperatures, and will not fade.
4. Stylish Car Trim: Perfect for the oil tank cover, it changes the look of the car and adds a sporty and stylish look to the car.
5. Easy Installation: Self adhesive design, just peel and stick, no need to modify. Easy to remove and clean without any residue.',1),
		(6, 45, 24, 5, 'Eye Water Proof', 49000, 0,N' Không thấm nước và chống mồ hôi, hiệu ứng lâu trôi, không dễ phai màu, đều màu, lâu trôi và không bị nhòe.

* Màu sắc tự nhiên, nét cọ mịn và tinh tế, dễ kẻ, không gây tổn thương da.
* Thiết kế bút hai đầu, một sản phẩm có 2 công dụng, đầu kẻ màu xiên 3D và cọ chải lông mày xoắn ốc. 
01 Màu xám đậm 
Thích hợp cho màu da: Sáng, tự nhiên 
Thích hợp cho màu tóc: Màu tóc tự nhiên, màu tóc nhẹ 
02 Màu nâu 
Thích hợp cho màu da: Sáng, tự nhiên 
Thích hợp cho màu tóc: Vàng, nâu đậm, đỏ tía, v.v. 
03 Màu đen 
Thích hợp cho màu da: Da tự nhiên, khỏe mạnh 
Thích hợp cho màu tóc: Tóc đen tự nhiên, tóc sẫm màu 
* Với bút kẻ lông mày hai đầu này, bạn sẽ tạm biệt những sợi lông mày đã lỗi thời, theo xu hướng thời trang theo hai hiệu ứng khác nhau. 
* Bút kẻ lông mày ngòi dẹt để trang điểm tốt hơn. Màu sắc tự nhiên, sản phẩm thích hợp cho người mới bắt đầu, dễ kiểm soát độ dày nét kẻ, không cần mài bút, chỉ cần xoay nhẹ là sử dụng. 
* Đầu cọ xoay bằng lông mềm và bền, không dễ bị biến dạng. Nếu chải lông mày nhẹ nhàng trước khi kẻ, lông mày sẽ trở nên đẹp sau khi trang điểm. ',1 ),
		(6,45, 24, 5, 'Fixer Spray',99000 ,0, N'- Loại sản phẩm: xịt khoá nền sau khi trang điểm

- Xuất xứ: Nội địa Trung

- Quy cách sản phẩm: Chai vỏ nhựa

Công dụng:

Mùa hè làm cho nàng phát bực vì lớp make up cứ trôi tuột đi không kiểm soát

Cố định lớp trang điểm bền đẹp, mịn, không vệt, nứt và không trôi cả ngày 18-24 tiếng kể cả gặp thời tiết nắng nóng.

Cung cấp độ ẩm, đem đến sự mềm mại cho làn da

Nâng tông da, cho làn da sáng mịn màng lấp lánh.

Thích hợp sử dụng cho mọi loại da

- Hướng dẫn sử dụng: 

+ Lắc đều đến khi thấy chai từ trong suốt thành màu trắng nhũ chảy

+ Để đầu xịt cách mặt 30cm, xịt đều. đợi khô tự nhiên hoặc dùng khăn giấy sạch thấm bớt lượng nước thừa. 

+ Có thể dùng xịt trước khi make up giúp da đủ ẩm ăn nền hơn, hoặc sau khi đánh nền giúp lớp make up dễ dàng lên màu hơn, hoặc dùng bước cuối cùng sau khi hoàn tất make up giúp cố định lớp make up và hiệu quả da sáng bóng hơn.

',1 ),
		(6,43,25,5, 'Care Body', 110000, 10,N'Sữa Tắm Yogurt White Shower Cream

✔ Loại bỏ tế bào da chết và tái tạo làn da mới

✔ Dưỡng ẩm sâu, làm mịn và làm mềm da khô

✔ Tẩy da chết tự nhiên và cải thiện vẻ trẻ trung

✔ Ngăn ngừa tích tụ vi khuẩn

✔ Làm sạch sâu và cân bằng độ ẩm da mà không gây khô da

✔ Da sáng hơn và làm giảm 40% đốm nâu da sau 4 tuần sử dụng



🔷 THÀNH PHẦN: 10x vitamin C, Double Milk Extract (sữa dê, sữa cừu và sữa chua kefir)

',1),
		(6, 45, 24, 5,'Toner', 49000, 5, N'"ƯU ĐIỂM NỔI TRỘI
 - Nước cân bằng Simple Soothing Toner chứa Vitamin B5, chiết xuất Hoa cúc La Mã Chamomile và Allantoin giúp làm dịu da và cấp ẩm tức thì, mang đến một làn da mềm mại, mịn màng mà không để lại cảm giác nhờn dính.
 - Bổ sung chiết xuất Cây phỉ Witch Hazel giúp chống lão hóa, cho da tươi tắn, đàn hồi.
 - Không chứa 2000 hóa chất gây hại cho da, hương liệu, cồn, dầu khoáng, không gây kích ứng da',1),
		(6, 42, 24, 5, 'Hyaluronic Acid', 150000,10,N'"ƯU ĐIỂM NỔI TRỘI
 - Nước cân bằng Simple Soothing Toner chứa Vitamin B5, chiết xuất Hoa cúc La Mã Chamomile và Allantoin giúp làm dịu da và cấp ẩm tức thì, mang đến một làn da mềm mại, mịn màng mà không để lại cảm giác nhờn dính.
 - Bổ sung chiết xuất Cây phỉ Witch Hazel giúp chống lão hóa, cho da tươi tắn, đàn hồi.
 - Không chứa 2000 hóa chất gây hại cho da, hương liệu, cồn, dầu khoáng, không gây kích ứng da',1),
		(15, 109, 9, 6, 'Air Pod Pro 4', 7100000, 30, N'

• Chip mới nhất



• Vi trình mới nhất



• Màng loa cải thiện. Cho chất lượng âm thanh hay hơn. 



• Dung lượng pin cao hơn so với các bản cũ.



• Bo mạch. Bảo vệ nguồn Dock sạc. 



• Theo dõi được % pin 



• Cảm biến tiệm cận - Cảm biến nhiệt. Khắc phục delay cho tai nghe. ',1),
		(15, 109, 9, 6, 'Air Pod Pro 6', 9400000, 20, N'THÔNG SỐ KỸ THUẬT:

    - Tính năng nghe gọi và mic đàm thoại  ổn định

    - Thời lượng Pin trâu từ 4-6h liên tục

    - Hộp sạc có thể sạc cho tai nghe 2-3 lần

    - Tai nghe còn được trang bị tính năng tự động kích hoạt trong lúc đeo và ngắt kết nối lúc ta tháo ra

    - Tai nghe cũng có cảm ứng 1-2 chạm dễ dàng

    - Tích hợp chip xử lý tự động kết nối khi mở nắp

    - Tai nghe được trang bị thêm âm thanh không gian 

    - Hỗ trợ sạc không dây tiện lợi sử dụng

    - Tính năng tìm kiếm tai nghe khi thất lạc

 ĐĂC ĐIỂM SẢN PHẨM: 

     - Tai nghe được thiết kế sang trọng, vẻ ngoài thanh thoát, tinh tế

     - Các chi tiết của tai được làm khá sắc nét, khớp nối mịn và không bị hở

     - Chất liệu nhựa của tai được làm nhựa tốt nên màu trắng của tai rất đẹp, tai cầm chắc chắn',1),
		(15, 109, 18, 6, 'IPX4', 420000, 20, N'Thương hiệu

Model “ Tai nghe nhét tai không dây Baseus Bowie E16 Ture

Chất liệu ABS

Màu “ Trắng ” Đen

Phiên bản Bluetooth V5.3

Giao diện “ Loại C

Tổng thời lượng pin với hộp sạc - 30 giờ

Thời gian sạc - khoảng 1,5 giờ

',1),
		(15, 109,15,6,'Headphone Lenovo',1050000, 25, N'Headphone tai nghe bluetooth không dây chụp tai Rockspace O2 có mic nghe nhạc liên tục 15h hàng chính hãng BH 1 năm chống ồn cực tốt, đệm tai êm không đau tai, là tai nghe chụp tai không dây quốc dân, có thể nghe nhạc liên tục 15 tiếng.',1),
		(15, 109,18,6,'i7S TWS', 222000, 30, N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày



Nguồn điện:

1.Hỗ trợ âm nhạc bên dưới và cuộc gọi: Sử dụng thuận tiện.

2.Hỗ trợ ID cuộc gọi: Tất cả các lời nhắc bằng giọng nói bằng tiếng Trung và thông minh bằng tiếng Trung.

3.Kết nối tự động: Sau khi kết nối với điện thoại, tiếp theo tai nghe bluetooth sẽ tự động kết nối với điện thoại.

Mô tả:

1. Hỗ trợ tất cả điện thoại hỗ trợ Bluetooth, máy tính bảng, máy tính xách tay.

Thông tin chi tiết:

Model và chức năng sản phẩm: I7

Phiên bản Bluetooth: Phiên bản 4.2

Chất liệu: Nhựa

Lưu ý:

1. Do khác biệt giữa các màn hình khác nhau, hình ảnh có thể không phản ánh màu sắc sản phẩm thực tế. Chúng tôi đảm bảo phong cách giống như trong hình ảnh.

2. Vui lòng cho phép khác biệt kích thước nhỏ do biện pháp thủ công khác nhau',1),
(15, 109,18,6,'Y08 Headphone', 122000, 30, N' Thông tin chi tiết sản phẩm tai nghe chụp tai Y08
  .Hỗ trợ đọc thẻ TF, hỗ trợ gọi điện thoại rảnh tay.

  .Chip Bluetooth 5.0, hiệu suất cao, tiêu thụ điện năng thấp, nhanh hơn và ổn định hơn.

  .Ba phương thức kết nối (thẻ TF, Bluetooth và dây), có thể đáp ứng các yêu cầu khác nhau của bạn.

  .Khả năng tương thích rộng, tương thích với tất cả các thiết bị hỗ trợ Bluetooth.

  

  Tên sản phẩm : tai nghe Chụp Tai Bluetooth Y08, 



✔️  Chất liệu: ABS

✔️  Phiên bản Bluetooth: 5.0

✔️   Khoảng cách kết nối: 10m

✔️   Loại phích cắm: 3,5 mm

✔️   Đầu vào AUX: Hỗ trợ

✔️  Khe cắm thẻ TF: Hỗ trợ (không bao gồm)

✔️  Đài FM: Hỗ trợ

✔️  Tần số đầu ra: lớp 2

✔️   Tần số: 2,4 GHz - 2,4835 GHz

✔️   Pin: Pin sạc

✔️ Delay: Không

✔️ Thời gian sạc: 1 - 2h

✔️ Thời gian chờ: 200h

✔️ Thời gian nghe nhạc: 8-10h',1),
		(15, 109,18,6,'Vupa Headphone', 390000, 26, N'- Thiết kế đậm chất game, hoàn hảo từng chi tiết với kiểu dáng khỏe khoắn, cứng cáp. 

- Tai nghe  là dòng sản phẩm tai nghe với giá bình dân nhưng chất câm vượt trội so với giá tiền, chuyên dùng cho game, kết nối thông dụng với Máy tính, Laptop

- Tai nghe  cổng USB sở hữu âm thanh vòm 7.1 cùng việc thay đổi cổng cắm USB duy nhất mang đến cho người dùng game sự trải nghiệm tốt hơn đặc biệt là với các bạn chơi game PUBG. 

-  Tai nghe chơi game cực tốt với âm bass cực chắc và hay

- Ngoài ra, sở hữu hệ thống LED RGB cực kỳ đẹp mắt

- Bên cạnh đó, Tai nghe  sở hữu chiếc micro dài, có thể uốn cong đa hướng, khả năng thu âm và lọc ồn ở mức tốt. Giúp các bạn có thể học online, hay đàm thoại trong game, hội họp một cách dễ dàng và thoải mái.',1),
		(15, 97,9,6,'Iphone 15 Pro Max', 33450000, 25, N'Thông số kỹ thuật:

- 6.1″

- Màn hình Super Retina XDR

- Màn hình Luôn Bật

- Công nghệ ProMotion

- Titan với mặt sau bằng kính nhám

- Nút Tác Vụ

- Dynamic Island

- Chip A17 Pro với GPU 6 lõi

- SOS Khẩn Cấp 

- Phát Hiện Va Chạm

- Pin: Thời gian xem video lên đến 29 giờ

- USB‑C: Hỗ trợ USB 3 cho tốc độ truyền tải nhanh hơn đến 20x



Camera sau

- Chính 48MP | Ultra Wide | Telephoto

- Ảnh có độ phân giải siêu cao (24MP và 48MP)

- Ảnh chân dung thế hệ mới với Focus và Depth Control

- Phạm vi thu phóng quang học lên đến 6x',1),
		(15, 110,26,6,'Oppo Reno11F', 11500000, 25, N'Hạn bảo hành
12 tháng
Dung lượng pin
5000mAh
Bộ xử lý
Dimensity 7050 5G
Độ phân giải camera chính
64MP
Kích thước màn hình
6.7inches',1),
		(15, 110,26,6,'Oppo Reno8',6250000, 10, N'Bên trong hộp: 

-OPPO RENO8 Pro

- Cáp USB Type C

- Củ sạc Super VOOC 80W

- Không tai nghe

- Dụng cụ lấy SIM

- Sách hướng dẫn

- Miếng dán màn hình (Đã dán sẵn)

- Vỏ bảo vệ',1),
		(15, 110, 10, 6, 'Samsung Galaxy Z Fold 5',21000000, 20,N'Màn hình:

Dynamic AMOLED 2XChính 7.6" & Phụ 6.2"Quad HD+ (2K+)
Hệ điều hành:

Android 13
Camera sau:

Chính 50 MP & Phụ 12 MP, 10 MP
Camera trước:

10 MP & 4 MP
Chip:

Snapdragon 8 Gen 2 for Galaxy
RAM:

12 GB
Dung lượng lưu trữ:

256 GB
SIM:

2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G
Pin, Sạc:

4400 mAh25 W',1),
		(15, 110, 10, 6, 'Samsung Galaxy M14 5',9999999, 10,N'Thông số THIẾT KẾ
Trọng lượng	
206g

Kích thước	
166.8 x 77.2 x 9.4 mm

Chất liệu	
Mặt trước kính, Mặt lưng nhựa, Viền nhựa

Màu sắc	
Bạc, Xanh dương, Xanh lợt

',1),
		(15, 110, 18, 6, 'ZTE Blade V40',250000, 20,N'Bắt trọn mọi khoảnh khắc của bạn với bộ 3 camera 48MP.
Năng lượng cho cả ngày dài nhờ vào viên pin lên đến 5000mAh đi kèm sạc nhanh 22.5W.
Hiệu năng vượt trội và được tăng cường với chip xử lý Unisoc T618 mạnh mẽ.
Màn hình rộng 6.67 inch với độ phân giải Full HD - Trải nghiệm giải trí cực sống động.',1),
		(4, 28, 18, 8, 'PXN Console Game',300000, 25, N'“Bộ điều khiển PC IINE Star-Field ”

★ Chuyển đổi / Pad / PC / Điện thoại / Android TV & TV Box / SteamDeck / Tesla

★ Hỗ trợ kết nối không dây Bluetooth 2,4 GHz

★ Đi kèm với Bộ điều hợp Bluetooth MIỄN PHÍ

★ Nút Quay lại riêng lẻ để thay đổi kết nối các nền tảng khác nhau

★ Nâng cấp Cần điều khiển Hiệu ứng Hall & Kích hoạt Hiệu ứng Hall: Không có vùng chết & Không trôi

★ Kích hoạt hiệu ứng Hall 2 cấp có thể điều chỉnh: Có thể điều chỉnh ba vị trí kích hoạt, cho phép bạn hoạt động chính xác hơn trong các trò chơi khác nhau

★ Chức năng cần điều khiển D-pad và L có thể thay đổi: Đề xuất và phù hợp hơn cho các trò chơi Ngang

★ Hỗ trợ NFC Amiibo

★ Với giắc cắm tai nghe 3,5 mm

★ Cảm biến con quay hồi chuyển 6 trục

★ Rung có thể điều chỉnh 

★ Chức năng lập trình Macro

★ Chức năng tự động bắn

★ Hỗ trợ công tắc đánh thức',1),
		(4, 28, 18, 8, 'T411 Console Game',30000, 15, N'Tay cầm chơi game HOSAN T4W  Kết nối có dây - Phụ kiện gaming cho PC thế hệ mới
1. Tính năng tay cầm chơi game Gamesir T4W

- Các nút bấm trên tay cầm chơi game mang lại cảm giác đi phím rất nhẹ, khá dính tay. Ngoài ra bề mặt sau của nắm tay được làm gân chống trơn trượt và mồ hôi tay. Mang lại cho người chơi cảm giác cầm nắm rất tuyệt vời.

- Lớp vỏ tay kết hợp đèn led full màu ấn tượng làm cho tay cầm chơi game Gamesir T4W trở nên nổi bật và tăng sự phấn khích khi trải nghiệm. Chính phần vỏ mờ trong suốt sẽ mang lại hiệu ứng ánh sáng tuyệt vời cho hệ thống đèn Led có thể tùy chỉnh theo ý thích.

- Kết nối có dây với đường truyền ổn định : Chiều dài dây cáp lên tới 2m với cổng kết nối USB cung cấp phản hồi tức thì, không bị giật lag,  cho phép bạn chơi mọi trò chơi trên PC từ FIFA, đua xe, Liên minh huyền thoại… Thách thức mọi đối thủ và thao tác phức tạp khi chơi game, chỉ cần cắm dây vào thiết bị là chơi, không tốn thời gian kết nối, không còn nỗi lo bị gián đoạn cuộc chơi giữa chừng vì hết pin.

- Chiến game bá đạo cùng tay cầm chơi FIFA Gamesir T4W

- GameSir MCU Chip : Chip công nghệ đời mới của tay cầm chơi game pc Gamesir T4W đảm bảo phản hồi nhanh hơn và hiệu suất cao hơn những tay cầm chơi game thế hệ cũ. Tương thích với tất cả những máy tính, lap tap sử dụng hệ điều hành từ Windows 7 trở lên.

- Động cơ không đối xứng, rung kép mang đến trải nghiệm chân thực : Khi chơi game bạn sẽ cảm nhận được nhiều cường độ rung khác nhau nhờ vào motor rung được trang bị ở hai bên tay cầm chơi game laptop Gamesir T4W. Không còn là 1 kiểu rung mặc định nhàm chán chỉ với một mức độ giờ đây bạn có thể tùy ý cài đặt 5 mức tốc độ tăng cường rung trong trò chơi. Mang đến cho bạn những khoảng thời  gian thật sự nhập vai vào nhân vật và tình huống đang xảy ra trong game, nâng trải nghiệm chơi game lên một tầm cao mới.

- D-pad và Joystick phản hồi tức thời Joystick của Gamesir T4W thật sự có thể xoay chuyển 360 độ cực mượt mà một điểm mà đến ngay cả tay cầm 360 Xbox cũng chưa làm được, D-pad phản hồi thao tác ngay lập tức và không có độ trễ,  chiến game bá đạo , khống chế cuộc chơi chưa bao giờ dễ dàng đến thế.',1),
		(4, 28, 18, 8, 'V7Men Console Game',250000, 30, N'

Tay cầm không dây E-Dra EGP7602 với thiết kế hiện đại, tinh tế theo form chuẩn Châu Âu mang đến khả năng cầm nắm dễ chịu, trọng lượng nhẹ, nút bấm êm. Giúp cho sản phẩm đạt được độ hoàn hảo nhất định khiến cho người khó tính nhất cũng phải “gật đầu”.



Thông số kỹ thuật tay cầm chơi game E-Dra EGP7601 và EGP7602:

Hãng sản xuất: E-Dra

Mã sản phẩm: EGP7602

Tay cầm chơi game không dây sử dụng được cho Windows/Android/PlayStation3

EGP7602 hỗ trợ nền tảng Android (bao gồm cả Android TV) từ 4.0 trở lên, hệ điều hành Windows 7 trở lên.

Không cần phải cài đặt gì thêm.

Sử dụng chip xử lý MCU-32bit cho tốc độ phản hồi nhanh.

Tích hợp motor rung ấn tượng đi kèm khả năng gán Macro cho phím.

Đa kết nối với chế độ Bluetooth hoặc chế độ đầu thu tuỳ ý.

Ngoài ra bạn hoàn toàn có thể dùng dây microUSB để kết nối trực tiếp.

Sản phẩm bảo hành 24 tháng',1),
		(4, 28, 18, 8, 'A102 Console Game',200000, 20, N'[1] Hỗ trợ các trò chơi nhiều người chơi. Được trang bị hai bộ điều khiển không dây, bạn có thể chơi trò chơi với bạn bè và gia đình bất cứ lúc nào.
[2] Chip Upgarde S905X. Amlogic S905X lõi tứ 64-bit hiệu suất cao, Với độ phân giải mạnh hơn và hoạt động mượt mà hơn.
[3] Hỗ trợ các trình giả lập khác nhau như DOS, CP1, CP2, CP2, CP3, Neogeo, GBX, MME, FC, FCE, SFC, GB, GBA, GBC, MD, PS1, PSP, DC, PS và 40 trình mô phỏng khác.
[4] Mở rộng thẻ TF, trò chơi hoài cổ cổ điển lớn. 32G 15000 trò chơi, 64G 30000 trò chơi, 128G 40000 trò chơi.
Sự chỉ rõ:
Mô hình: GD10
Trọng lượng: 0,36kg
Kích thước: 16 * 12 * 10,5cm
Chất liệu: nhựa',1),
		(4, 26, 18, 8, 'Loudspeaker',80000, 10, N'

JBL hãng loa nổi tiếng với những dòng Bluetooth nhỏ gọn cùng thiết kế bắt mắt. Tiếp nối những phiên bản Flip trước đó. Hãng đã cho ra mắt loa Flip 8 với mẫu mã năng động trẻ trung và cải tiến hơn nhằm mang đến những trải nghiệm âm thanh tươi mới cho người dùng.

🔔🔔Thông số kỹ thuật :

- Dung lượng pin 4800 mAh.

- Thiết kế kháng nước IPX7

- Thời gian sử dụng của Flip 8 lên đến 12 tiếng liên tục

- Công suất loa 20W+ .

- Thiết kế thời trang đa màu sắc với tận 11 phiên bản : Dusty Pink, Grey Stone, River Teal, Ocean Blue, Midnight Black

- Sử dụng JBL Connect +

',1),
		(4, 26, 18, 8, 'Bacas Loudspeaker',250000, 10, N'

Thông Tin Sản Phẩm:

- Phiên bản Bluetooth: 5.3

- Công suất loa:  10W*2

- Dung lượng pin: 2000mAh 3.7V

- Hỗ trợ: Thẻ nhớ, kế nối có dây AUX

- Chất liệu: ABS + PVC chất lượng cao

- Màu sắc:ĐEN

- Kích thước: 18.7 x 10 x 5.5 cm

- Trọng lượng: 765g

- Chế độ sạc: Cáp USB Type C

- Điện áp: 5V 2A



- Loa được trang bị hệ thống loa kép công suất khủng lên tới 20w, bộ khuếch đại âm trầm tạo nên trường âm thanh siêu tốc và mạnh mẽ

- Loa karaoke được kèm sẵn 2 micro thiết kế nhỏ gọn, kết nối nhanh chóng, âm thanh sắc nét, có khả năng thanh đổi giọng nói và tông giọng

- Ánh đèn LED RGB bao quanh 360 độ, với 3 chế độ tạo nên bầu không khí lãng mạn

Sản Phẩm đóng gói gồm:

- Loa Bluetooth

- 2 Micro đi kèm

- Cáp sạc loại type C',1),
		(4, 26, 18, 8, 'Peterhot Loudspeaker',370000, 42, N'Loa Soundbar Bluetooth Peterhot A30 DIBESMART, Loa Vi Tính, Tivi SPEAKER 350BS BASS Âm Thanh 360 Độ Nghe Nhạc, Xem Phim',1),
		(4, 26, 18, 8, 'Kardon Loudspeaker',560000, 61, N'Giới chơi âm thanh chắc hẳn không còn lạ lẫm gì với cái tên Go + Play, đây là một trong những mã sản phẩm tạo nên những đột biến trong dòng loa Bluetooth di động mà Harmar Kardon đã làm làm rất tốt, và ngày một cải tiến, và tới nay là mẫu Go Play Mini, nhưng độ hot của sản phẩm này vẫn không hề giảm nhiệt.

- Với khoảng 6 triệu đồng trong tay nếu bạn đang gặp khó khăn trong việc lựa chọn cho mình một chiếc loa kết nối không dây kích thước vừa phải, có quai xách, giá thành phải chăng nhưng lại có pin sạc, mà có thể mang lại một chất âm tốt với công suất cực khủng - Harman Kardon Go + Play Mini thực sự là một lựa chọn sáng suốt.
- Go + Play một mã sản phẩm của Harman đã trở nên quen thuộc trong giới chơi loa với những mẫu loa đình đám trước đó - tiếp nối sự thành công của các đàn "anh" Go + Play Mini một trong những lựa chọn cho dòng loa Bluetooth công suất lớn tốt nhất hiện nay.

- Chất âm tốt phù hợp với nhiều thể loại âm nhạc, âm Bass chắc khỏe, và dày đã được khẳng định từ các thế hệ trước đó của dòng Go + Play.
- HÀNG CÔNG TY, được bảo hành chính hãng trên toàn quốc 12 tháng, và được đổi mới trong 15 ngày nếu có lỗi nhà sản xuất.
 - Có thể kết nối 2 loa cùng lúc nhân đôi công suất, khiến bạn phải ngạc nhiên khi căn phòng rộng lớn được lấp đầy âm thanh, chỉ với 2 chiếc loa nhỏ bé.
- Kích thước nhỏ nhưng với 4 Drivers và 1 Bass Radiator cộng hưởng âm, cho công suất lên đến 60W.
- Thời gian chơi nhạc chất lượng cao 08 giờ liên tục, sạc đầy pin loa mất 03 giờ.
- Tích hợp microphone có tính năng khử ồn, hỗ trợ đàm thoại chất lượng cao trực tiếp trên loa.
- Go Play Mini được Harman Kardon mang đến cho chúng ta với 4 tính năng đáng giá mà hãng nâng cấp, hoàn thiện một cách tỉ mỉ cho sản phẩm thế hệ mới này.

Thiết kế:
- Harman Kardon Go + Play Mini được nhà sản xuất cho ra mắt với 2 màu lựa chọn: Đen, Trắng.
- Thiết kế mặt lưới vải canvat dù phủ nano chống nước và bụi bẩn, bảo vệ loa tuyệt đối, tăng độ bền của loa.
- Phía trên của loa là tay xách bằng thép không gỉ, thiết kế khỏe khoắn, trẻ trung.
- Với mặt trên được bố trí các phím bấm thân thiện, giúp cho việc điều chỉnh dễ dàng hơn.
- Trọng lượng của Go + Play Mini khá nhẹ chỉ 4.3kg dễ dàng mang đi khi di chuyển.- Phía chân loa có đệm cao su chống trượt, và bám chắc trên mặt sàn.
- Tiếng tách biệt rõ ràng, âm trung ấm và dày, âm Bass chắc, có chiều sâu, dù bật ở mức âm lượng tối đa loa cũng sẽ không bị rè hay vỡ tiếng.
- Với Go + Play Mini - loa không dây sử dụng công nghệ Bluetooth 4.1 giúp khách hàng có thể thưởng thức âm nhạc',1),
		(4, 26, 18, 8, 'JVJ Loudspeaker',230000, 19, N'-	Loa kèm mic hát karaoke JVJ YS-103 kết nối Bluetooth được hầu hết với các thiết bị: điện thoại, máy tính bảng, smartphone, Smart TV, laptop, máy tính..

-	Loa kèm mic hát karaoke JVJ YS-103 hỗ trợ cáp kết nối trực tiếp với các thiết bị khi không muốn kết nối qua bluetooth 

-	Mic hát karaoke có hiệu ứng như echo, đổi giọng,...

-	Công suất loa lớn dù nghe nhac hay hát karaoke Loa kèm mic hát karaoke JVJ YS-103 đều có thể đáp ứng được

-	Loa kèm mic Bluetooth JVJ YS-103 chống rè tuyệt đối

-   Loa mini bluetooth nhỏ gọn dễ dàng mang di chuyển

Thông tin chi tiết:

Sản phẩm đa chức năng

-	Loa kèm mic hát karaoke JVJ YS-103 hỗ trợ kết nối không dây với hầu hết các thiết bị âm thanh thông qua bluetooth hoặc kết nối có dây tivi hay, laptop, smartphone thông qua jack cắm 3.5 mm phía cạnh loa

-	Loa được sử dụng với chức năng chủ yếu là karaoke, nhưng người dùng cũng có thể sử dụng nó như một chiếc loa nghe nhạc bình thường bằng cách kết nối JVJ YS-103 với thiết bị để phát nhạc, hoặc sử dụng USB, thẻ nhớ gắn vào loa

-  Trang bị kèm micro không dây hiện đại

-	Kèm theo loa YS-103 là 1 micro không dây tiện lợi, trang bị các phím chức năng điều khiển trực tiếp trên thân mic như bật/ tắt, echo, volume, đổi giọng... 

-  Phím điều chỉnh dễ dàng, tiện lợi

-	Điểm nổi bật của chiếc loa bluetooth JVJ YS-103 này là các nút điều chỉnh trên thân loa, ở giữa là volume tổng để điều chỉnh âm lượng bằng cách vặn xoay dễ dàng, tiện lợi

-	Phía cạnh thân loa là các cổng sạc pin, cổng kết nối USB, khe cắm thẻ nhớ và cổng 3.5 để lấy âm thanh từ tivi hay điện thoại...

-	Pin Lithium được sử dụng cho loa karaoke không dây JVJ YS-103  giúp bạn thoải mái thể hiện niềm đam mê ca hát của mình từ 3-5 giờ liên tục (tùy vào công suất sử dụng)

-  Thời gian sạc đầy loa khoảng 3 giờ và 1 giờ cho mic

-	Công suất hoạt động 10W cho âm thanh trung thực, sống động kết hợp với khoảng cách sử dụng tối đa đến 5 mét (trong điều kiện lý tưởng) YS-103 rất phù hợp với nhu cầu sử dụng cho không gian gia đình hay trong những buội tiệc vui chơi, dã ngoại, giảng dạy...',1),
		(4, 26, 18, 8, 'Hoco HC22 Loudspeaker',370000, 22, N'Xuất xứ: Hong Kong, nhập khẩu Chính hãng

Sản xuất tại: Trung Quốc

👍1, kích thước * 95 * 45mm * Trọng lượng * 272g

👍2 . chip Bluetooth 5.2 " màu xanh da trời AB5365C

👍3 . Dung lượng pin “ 1200mAh ” Thời gian sạc ” 2 giờ

👍4. Thời gian sử dụng  4 giờ

👍5 . Đơn vị còi × Công suất × 5W

👍6, Hỗ trợ Bluetooth, FM, thẻ TF , đĩa U, AUX, TWS và các chế độ khác',1),
		(5, 38, 18, 8, 'Printer',4100000, 15, N'Độ phân giải: 203 DPI
Phương pháp in: in nhạy cảm với nhiệt
Tốc độ in: 152 mm (6 ") / s
Tối đa chiều rộng in: 108mm (4,25 ")
Chiều dài in tối đa: 1778 mm (70 ")
Trường hợp: Nhựa
Kích thước tổng thể: 215 mm (L) x 178 mm (W) x 149,5 mm (H)
Trọng lượng: 1,32 kg
Khả năng cuộn nhãn: 101,6 mm (4 ") OD
Bộ xử lý: Bộ xử lý 32 bit
Bộ nhớ: 8MB flash Menmory 8MB SDRAM / Đầu đọc thẻ flash MicroSD có thể
Mở rộng bộ nhớ lên giao diện 4GB: USB 2.0, cổng mạng, Thẻ TF, WIFI,
Bluetooth
Nguồn cung cấp: Bộ chuyển đổi ■ Đầu vào: AC 100-240V ■ Đầu ra: DC 24V2.5A
Giao diện người dùng: mô hình tiêu chuẩn ■ 1 nút ■ 1 đèn LED hai màu
Cảm biến: ■ Cảm biến giải phóng mặt bằng ■ Cảm biến nắp mở ■ Cảm biến dấu đen
Loại phương tiện: giấy liên tục, giấy khe hở, giấy gấp, giấy đục lỗ,
Giấy nhãn đen
Loại cuộn dây phương tiện: loại cuộn dây bên ngoài
Chiều rộng trung bình: 25,4 mm ~ 116 mm
Độ dày trung bình: 0,06 mm ~ 0,20mm
Đường kính lõi trung bình: 25,4 ~ 76,2 mm (1 "~ 3")
Chiều dài nhãn: 10 mm ~ 1778 mm (0,39 "~ 70")
Phông chữ bên trong: ■ Tám phông chữ bitmap ■ Có thể được tải xuống phông chữ Window s thông qua
Phần mềm
Nhập và xoay mã vạch: 0,90,180,270 °
Bộ hướng dẫn: TSPL, EPL, ZPL, DPL
APP:4barcode',1),
		(5, 38, 18, 8, 'Therma Printer',600000, 15, N'Chức năng	In, sao chép, chụp quét, fax, in mạng, wifi

Khổ giấy Hỗ trợ kích thước giấy ảnh media A4; A5; A5(LEF); B5 (JIS); Oficio; Phong bì (DL,C5)

Loại giấy ảnh media Giấy trơn, giấy dày, giấy mỏng, giấy bông, giấy in màu, giấy in sẵn, giấy tái chế, giấy in nhãn, giấy in bìa, giấy in trái phiếu, giấy bạc halide, giấy in phong bì

Trọng lượng giấy ảnh media, được hỗ trợ 60 đến 163 g/m²

Bộ nhớ	128Mb

Tốc độ	Lên đến 20 trang/phút

In đảo mặt	Không

ADF	Có

Độ phân giải	Chất lượng in đen (tốt nhất) Tối đa 1.200 x 1.200 dpi, Độ phân giải chụp quét, quang học Lên đến 600 x 600 dpi, Độ sâu bít 8 bit (đơn sắc); 16-bit (màu),

Cổng giao tiếp	USB/ LAN/ WIFI

Dùng mực	HP 107A Blk Original Laser Toner Crtg_W1107A ~1000 bản in theo tiêu chuẩn hãng

Mô tả khác	Màn hình LCD 2 dòng (16 ký tự mỗi dòng)

Số lượng người dùng 1-5 Người dùng

Khay nạp giấy 150 tờ

Ngăn giấy ra 100 tờ

Khối lượng trang hàng tháng được khuyến nghị: 100 đến 2.000

Hệ điều hành tương thích Windows®: 7 (32/64 bit), 2008 Server R2, 8 (32/64 bit), 8.1 (32/64 bit), 10 (32/64 bit), 2012 Server, 2016 Server, macOS v10.14 Mojave, macOS v10.13 High Sierra, macOS v10.12 Sierra, OS X v10.11 El Capitan',1),
		(5, 38, 27, 8, 'Hp Printer',2500000, 20, N'• Model: Máy in date cầm tay mini GEMAT HD3

• Loại máy: Máy in phun đơn sắc cầm tay

• Ứng dụng: Trong sản xuất (thực phẩm, dược phẩm, hóa mỹ phẩm, nông nghiệp, công nghiệp, cơ khí, ...)

• Chất liệu ứng dụng : in date, ký tự chữ số tốt trên giấy, decal, PE, nhựa, thủy tinh, nhôm, inox, gỗ, sắt sơn,..

• Chất lượng in (độ nét): 300-400-600 DPI 

• Tốc độ in: 40 - 50m/ phút.

• Khoảng cách từ đầu phun đến mặt in: min 2mm, max 5mm khoảng in tốt nhất.

• Khổ in: 12.7mm,tạo được 1 – 5 dòng và tối đa 2000 ký tự cho 1 bản tin, độ cao ký tự min 2mm, max 12mm

• Hộp mực: Mực in dung môi Hiền Cường INK in ra khô nhanh sau 5s, màu đen, dung tích 42ml (in được 2.000.000 ký tự cao 3mm)

• Ngôn ngữ: Tiếng Việt, Tiếng Anh, Tiếng Trung, Hàn Quốc, và 21 ngôn ngữ khác.

• Bảo hành: 12 Tháng 



MÔ TẢ SẢN PHẨM:

• Máy có màn hình cảm ứng 2.4 inch, dễ dàng soạn thảo bất kỳ nội dung nào muốn in với nhiều dòng. Đặc biệt rất thích hợp in bề mặt Cong, Tròn, Lõm, vật liệu nhỏ.

• Máy in cầm date tay Hiền Cường sử dụng hộp mực khô nhanh, dễ dàng sử dụng, thao tác chỉnh sửa bản tin theo sản phẩm lô hàng nhanh chóng, máy in hoạt động êm ái, không ồn, không độc hại, không tiêu tốn điện năng.

• Với thiết kế nhỏ gọn, tiện lợi thiết kế tay cầm vừa vặn, thoải mái. Khả năng in date, in logo dễ dàng trên hầu hết các bề mặt sản phẩm. Máy in date cầm tay đã giúp rất nhiều cơ sở giải được bài toán in date sản phẩm của mình.',1),
		(5, 38, 27, 8, 'Hp Printer',2900000, 15, N'• Model: Máy in date cầm tay mini GEMAT HD3

• Loại máy: Máy in phun đơn sắc cầm tay

• Ứng dụng: Trong sản xuất (thực phẩm, dược phẩm, hóa mỹ phẩm, nông nghiệp, công nghiệp, cơ khí, ...)

• Chất liệu ứng dụng : in date, ký tự chữ số tốt trên giấy, decal, PE, nhựa, thủy tinh, nhôm, inox, gỗ, sắt sơn,..

• Chất lượng in (độ nét): 300-400-600 DPI 

• Tốc độ in: 40 - 50m/ phút.

• Khoảng cách từ đầu phun đến mặt in: min 2mm, max 5mm khoảng in tốt nhất.

• Khổ in: 12.7mm,tạo được 1 – 5 dòng và tối đa 2000 ký tự cho 1 bản tin, độ cao ký tự min 2mm, max 12mm

• Hộp mực: Mực in dung môi Hiền Cường INK in ra khô nhanh sau 5s, màu đen, dung tích 42ml (in được 2.000.000 ký tự cao 3mm)

• Ngôn ngữ: Tiếng Việt, Tiếng Anh, Tiếng Trung, Hàn Quốc, và 21 ngôn ngữ khác.

• Bảo hành: 12 Tháng 



MÔ TẢ SẢN PHẨM:

• Máy có màn hình cảm ứng 2.4 inch, dễ dàng soạn thảo bất kỳ nội dung nào muốn in với nhiều dòng. Đặc biệt rất thích hợp in bề mặt Cong, Tròn, Lõm, vật liệu nhỏ.

• Máy in cầm date tay Hiền Cường sử dụng hộp mực khô nhanh, dễ dàng sử dụng, thao tác chỉnh sửa bản tin theo sản phẩm lô hàng nhanh chóng, máy in hoạt động êm ái, không ồn, không độc hại, không tiêu tốn điện năng.

• Với thiết kế nhỏ gọn, tiện lợi thiết kế tay cầm vừa vặn, thoải mái. Khả năng in date, in logo dễ dàng trên hầu hết các bề mặt sản phẩm. Máy in date cầm tay đã giúp rất nhiều cơ sở giải được bài toán in date sản phẩm của mình.',1),
		(5, 38, 18, 8, 'Brother Printer',11000000, 9, N'1. Máy in nhãn Brother P-Touch Cube PT-P710BT

Máy in nhãn di động P-touch Cube thế hệ mới 

Với thiết kế nhỏ gọn và thời thượng, máy in nhãn di động Brother PT-P710BT không chỉ phù hợp cho cá nhân, gia đình mà còn cho văn phòng, doanh nghiệp vừa và nhỏ. Bạn có thể dễ dàng in nhãn mọi lúc mọi nơi thông qua kết nối bluetooth. 

Phần mềm thiết kế nhãn chuyên dụng đi kèm 

Phần mềm thiết kế và in nhãn P-touch Design&Print 2 tương thích với máy in nhãn Brother PT-P710BT giúp bạn tạo nhãn từ thiết bị di động một cách tiện lợi. 

Bạn có thể tạo nhãn nhanh chóng với 30 mẫu thiết kế sẵn. Giao diện hiện đại nhưng thân thiện với người dùng, bạn sẽ dễ dàng sử dụng và thao tác. Đa dạng về phông chữ, biểu tượng, hoa văn và cả khung trang trí, giúp bạn thỏa sức thiết kế nhãn theo sở thích. 

Sáng tạo nhãn ruy băng trang trí 

Ngoài in nhãn thường, bạn có thể thiết kế và in nhãn ruy băng phong cách để trang trí các bó hoa, quà tặng và thiệp mời cho các dịp đặc biệt. 

Kết nối với thiết bị di động và máy tính

Máy in nhãn có thể kết nối với cả thiết bị di động và máy tính qua kết nối Bluetooth giúp bạn tạo và chỉnh sửa nhãn một cách thuận tiện. 

In nhãn chia sẻ mã QR 

Bạn có thể dễ dàng tạo mẫu nhãn chia sẻ mã QR tùy chỉnh để gửi thông điệp cá nhân độc đáo trên nhãn của bạn. Người nhận chỉ cần quét mã QR để xem thông điệp của bạn. 

Thông số kỹ thuật 

- Model: PT-P710BT 

- Bảo hành: 12 tháng 

- Vật tư đi kèm: Nhãn TZe 

- Kích thước nhãn: 3.5, 6, 9, 12, 18, 24mm 

- Cách thức in: In nhiệt trực tiếp 

- Cắt nhãn: Tự động 

- Tốc độ in: 20mm/giây 

- Độ phân giải in: 180dpi x 360 dpi 

- Số dòng in được: 7 

- Kết nối di động: Bluetooth 

- Khả năng tương thích với thiết bị di động: Thiết bị di động Apple® và AndroidTM 

- Hệ điều hành tương thích: Windows 7, Windows 8/8.1, Windows 10, MacOS® v.10.11, 10.12, 10.13 

- Nguồn điện: Pin Li-ion hoặc USB 

- Kích thước máy (Rộng x Sâu x Cao): 109 x 55 x 202mm 

- Trọng lượng: 0.64 kg 

- Phụ kiện đi kèm: Nhãn mẫu TZe-251, Cáp nối USB, Hướng dẫn sử dụng 

',1),
		(5, 38, 28, 8, 'Canon Printer',3400000, 10, N'PIXMA TS207

Máy In Nhỏ Gọn Và Thời Trang Với Hộp Mực Chi Phí Thấp

PIXMA TS207 kết hợp giữa bề mặt chống bám vân tay và chống xước với tính năng hoàn hảo như ngoại hình của máy.

Chức năng: In khổ A4

Tốc độ in (A4) tiêu chuẩn ISO: lên tới 7.7ipm (đen trắng) / 4.0ipm (màu)

USB 2.0 tốc độ cao

Lượng bản in khuyến nghị: 10 - 80 trang

Mực in chi phí thấp: Cartridge mực với giá cả dễ chịu mà vẫn mang lại chất lượng bản in cao cấp.

Bề mặt máy in cho phép chống lại các vết xước do va chạm hoặc móng tay cào gây ra.

In ảnh tràn viền lên tới cỡ 4R.',1),
		(5, 37, 18, 8, 'HY300 Pro Projector', 500000, 30, N'🔹 THÔNG SỐ KỸ THUẬT

 ◾ Model	4003dw (2Z610A)

 ◾ Công nghệ in: In Laser

 ◾ Tốc độ 1 mặt: 40 trang/ phút khổ A4 và 42 trang/ phút khổ Letter

 ◾ In đảo mặt: Có

 ◾ Kết nối: USB, Wlan, Bluetooth

 ◾ Khổ giấy tối đa: A4/Letter

 ◾ Độ phân giải: 1200 x 1200 dpi

 ◾ Bộ nhớ chuẩn: 256 MB

 ◾ Bộ xử lý CPU: 1200 MHz

 ◾ Đầu vào xử lý giấy: Khay đa năng 100 tờ 1, Khay đầu vào 250 tờ 2

 ◾ Đầu ra xử lý giấy	Ngăn giấy ra 150 tờ

 ◾ Kích thước: 381 x 357 x 216 mm

 ◾ Trọng lượng: 8,56 kg',1),
		(5, 37, 18, 8, 'Y300 Pro Projector', 350000, 16, N'🔹 THÔNG SỐ KỸ THUẬT

 ◾ Model	4003dw (2Z610A)

 ◾ Công nghệ in: In Laser

 ◾ Tốc độ 1 mặt: 40 trang/ phút khổ A4 và 42 trang/ phút khổ Letter

 ◾ In đảo mặt: Có

 ◾ Kết nối: USB, Wlan, Bluetooth

 ◾ Khổ giấy tối đa: A4/Letter

 ◾ Độ phân giải: 1200 x 1200 dpi

 ◾ Bộ nhớ chuẩn: 256 MB

 ◾ Bộ xử lý CPU: 1200 MHz

 ◾ Đầu vào xử lý giấy: Khay đa năng 100 tờ 1, Khay đầu vào 250 tờ 2

 ◾ Đầu ra xử lý giấy	Ngăn giấy ra 150 tờ

 ◾ Kích thước: 381 x 357 x 216 mm

 ◾ Trọng lượng: 8,56 kg',1),
  (5, 37, 18, 8, 'H8 Pro Max Projector', 320000, 16, null,1),
 (5, 37, 18, 8, 'China Projector', 800000, 5, N'Bộ xử lý TV
Full HD
Trọng lượng
1kg
Tỷ lệ tương phản máy chiếu
10000:1
Loại máy chiếu
Sử dụng cho gia đình
Kết nối đầu vào
Bluetooth, USB, VGA, Wifi
Độ sáng máy chiếu
1100Lumens
Tính năng máy chiếu
Tích hợp audio, Công nghệ LCD, có thể di chuyển, Khoảng cách chiếu gần, Không dây
Xuất xứ
Trung Quốc
Hạn bảo hành
12 tháng
Loại bảo hành
Bảo hành quốc tế
Tiêu thụ điện năng
150W
Điện áp đầu vào
220V',1),
		(4, 32, 29, 8, 'LG Remote', 129000, 10, N'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày

Remote AN-MR600 ANMR600 thay thế cho LG OLED TV LED HDTV

Không cần lập trình hoặc ghép nối, chỉ cần lắp 2 pin kiềm mới vào là hoạt động được.
Đây là thiết bị điều khiển từ xa IR thay thế mới.
Chỉ có các chức năng cơ bản, KHÔNG có chức năng nhận dạng giọng nói. KHÔNG có chức năng của nút con trỏ (Bánh xe). Nhưng remote này hoạt động tốt cho TV.',1),
		(4, 32, 18, 8, 'CHUNGHOP Remote', 69000, 10, N'Remote điều khiển dành cho quạt Senko - 100% chính hãng



Remote Dành Cho Tất Cả Quạt Điều Khiển Senko hiện nay.

Remote có 6 nút nhấn:

+ OFF: Tắt

+LAMP: Đèn ngủ (nếu có)

+ MODE: Loại gió

+ TIMER: Hẹn Giờ

+ SWING: Chuyển hướng

+ ON/SPEED: Mở/Tốc độ

REMOTE QUẠT SENKO LÀ PHỤ KIỆN CHÍNH HÃNG VÀ PHÙ HỢP VỚI TẤT CẢ CÁC QUẠT ĐIỀU KHIỂN TỪ XA SENKO.

Remote sử dụng: Pin AAA x 2 (chưa kèm pin)',1),
		(4, 32, 18, 8, 'TCL Remote', 99000, 20, N'Remote điều khiển điều hòa dành cho máy lạnh TCL, Điện Lạnh Thuận Dung

Lưu ý:

Quý Khách lựa chọn đúng mẫu remote như hình.

Nhắn tin zalo hoặc điện thoại cho shop để tư vấn nếu không giống mẫu như hình.

Thông tin sản phẩm:

Điều khiển máy lạnh TCL sử dụng cho các dòng máy lạnh TCL từ 1hp - 2.5hp

Sử dụng 2 pin AAA.

 MUA REMOTE MÁY LẠNH Ở ĐÂU ?

(Ship COD toàn quốc)',1),
		(4, 32, 18, 8, 'Gate Remote', 45000, 0, N'Remote M40M - sản phẩm chính hãng KDK
Điều khiển với các nút bấm linh hoạt
Sử dụng cho quạt treo tường KDK M40M',1),
		(4, 27, 30, 8, 'Xiaomi EA Pro Smart Tivi',10999999, 5, N'THÔNG SỐ KỸ THUẬT

📍Tên sản phẩm: Xiaomi Google Tivi 4K 43 inch 43A Pro 

📍Hãng: Xiaomi

📍Màu sắc: Đen

📍Màn hình: 4K UHD

📍Độ phân giải: 3840 × 2160

📍Độ sâu màu: 1.07 tỷ (8-bit+FRC)

📍Công nghệ hình ảnh: 

📍Dolby Vision®

📍HDR10 

📍HLG

📍MEMC

📍Công suất loa: 2 x 12W

📍Công nghệ âm thanh: Dolby Audio™

📍DTS-X 

📍DTS Virtual:X

📍Bộ xử lý	

📍CPU: Quad-core Cortex-A55

📍GPU: Mali G52 MP2

📍RAM: 2GB

📍Storage: 16GB

📍Tiện ích khác	

📍Google TV™

📍Trợ lý Google tích hợp

📍Truy cập Google Play

📍Trung tâm điều khiển nhà thông minh

📍Chromecast tích hợp™

📍Hỗ trợ Miracast

📍Netflix, Prime Video và YouTube được cài đặt sẵn

📍Kết nối: Wi-Fi 2.4GHz/5GHz

📍Kết nối không dây: Bluetooth 5.0

📍Hệ thống phát sóng: DVB-T2/C, DVB-S2

📍Cổng kết nối	

📍HDMI x 3 (1 cổng với eARC)

📍USB 2.0 x 2

📍Ethernet (LAN) x 1

📍Khe CI x 1

📍Giắc cắm tai nghe 3.5 mm x 1

',1),
		(4, 27, 31, 8, 'Google Tivi QLED TOSHIBA',24999999, 5, N'- Lưu ý: COOCAA nhận thông tin xuất hóa đơn VAT theo yêu cầu trong 3 ngày đầu đặt hàng qua kênh chat, nếu qua 3 ngày đặt hàng COOCAA sẽ xuất hóa đơn theo thông tin cá nhân trên đơn hàng.

* Tivi Thông Minh Coocaa Hệ Điều Hành Mới Nhất Google Tivi 70" 70C9

- Gói quà tặng bao gồm: cliptv 1 năm,  k+ 1 năm, FPT gói gia đình 3 tháng, VTVcap ON 1 năm

1.  Chính Sách Bảo Hành

- Bảo hành chính hãng 24 tháng trên toàn quốc.

         Hotline: 1800.1180 (miễn phí cuộc gọi)

         Thời gian: 8h-17h, từ Thứ 2- Thứ 7

- CÁCH ĐĂNG KÍ/ KIỂM TRA BẢO HÀNH ĐIỆN TỬ: 

         Vui lòng liên hệ CSKH coocaa qua mục chat (trò chuyện) để chúng tôi có thể hướng dẫn bạn tốt nhất.



2. Tính Năng

- Hình Ảnh

    + Chameleon Extreme 2.0: Bộ xử lý chất lượng hình ảnh Chameleon cực 2.0 có thể tối ưu hóa

chất lượng hình ảnh TV đa chiều để đảm bảo cảnh phim thực tế hơn

    + Eye care TV: Sử dụng công nghệ Filmmaker Mode giúp hạn chế sáng xanh và sự nhấp nháy của màng hình bảo vệ đôi mắt khi xem tivi.

    + Màn hình LED chất lượng cao 8,29 megapixel, được trang bị công nghệ cải tiến chất lượng hình ảnh mở rộng HDR10 & HLG, mang đến tầm nhìn rực rỡ tươi mới.

- Âm Thanh

    + Dolby Digital Plus là công nghệ âm thanh dựa trên Dolby Digital 5.1, đây là công nghệ

âm thanh âm thanh vòm tiên tiến cho phép trải nghiệm tivi như trong rạp chiếu phim hiện đại.

    +Với hai loa monomer 10W, Dolby Audio Sound tối ưu hóa hiệu suất âm thanh, tạo ra âm

thanh phong phú, rõ ràng và hấp dẫn để bạn thưởng thức.

    +Bidirectional Bluetooth 5.1: Bluetooth hai chiều, Kết nối điện thoại di động của bạn với Bluetooth của TV để phát nhạc hay làm bất cứ điều gì bạn muốn.

- Cấu Hình

    + Màn hình không giới hạn 4.0, tỷ lệ màn hình cao  

    + Lưng kim loại trải ra: bền và tản nhiệt tốt hơn.

    + Thiết kế liền mạch: Khung kim loại liền mạch, đơn giản, tinh tế

Điều khiển bằng giọng nói từ xa: Thông qua tương tác bằng giọng nói, TV cho bạn biết những thông tin mới nhất như thời tiết, phát nhạc, phim nổi tiếng, để cuộc sống của bạn không còn nhàm chán, bạn có thể trò chuyện bất cứ lúc nào

- Hệ Điều Hành Google Tivi

    + Hệ thống mới nhất của Google được cập nhật dựa trên Android 11. So với Android, hệ thống mới này được Google thiết kế dành riêng cho người dùng TV.

    + Tài nguyên khổng lồ: Google là nền tảng mạng lớn nhất thế giới, với hơn 8.000

    + ứng dụng phục vụ hơn 190 quốc gia và hỗ trợ hơn 1 tỷ thiết bị sinh thái. Trò chơi đám mây, Hình nền Google, gọi điện video, nhiều tài khoản đăng nhập, hệ sinh thái dành cho trẻ em và nhiều ứng dụng phổ biến, chỉ cần bạn tải xuống là có thể tận hưởng.

    + Chrome Cast: truyền chia sẻ màn hình từ điện thoại của bạn sang tivi một cách dễ dàng.



3. Thông Số Kỹ Thuật

- Chameleon Extreme 2,0

- Filmmaker mode

- DTS Studio Sound

- Bidirectional Bluetooth 5.1

- Google Assistant

- HDMI2.0*3；USB2.0*2

- Memory 2+16GB 

',1),
		(4, 27, 11, 8, 'Google Tivi',14999999, 20, N'"Thương hiệu: TCL

Độ Phân Giải Màn Hình: 4k UHD

Tính Năng Tivi: Netflix, HDR, Cinema 3D, Web Browser, Mobile Screen Mirroring

Kích Thước Màn Hình: 55

Cổng Vào: USB,H

DM

I

Ngày sản xuất: 2022

Dòng sản phẩm        : 55T66

Loại Bảo Hành: Bảo hành điện tử

Thời gian bảo hành: 2 năm',1),
		(4, 27, 18, 8, 'Tivi full',8600000, 15, N'Độ phân giải: Full HD

Công nghệ tràn viền vô cực

Âm thanh Dolby với DTS TruSurround

HDMI1.4 * 2 USB2.0 

Digital TV DVB T/T2, Wifi & Lan

Youtube app/ Open Browsers/ Live TV
Smart TV, Netflix built-in luôn hợp xu hướng

_ Nội dung Netflix cao cấp theo yêu cầu, với Youtube - thế giới gần bạn hơn.

_ Duyệt những gì bạn muốn

Với một cú click, bạn có thể truy cập các trang yêu thích bao gồm Facebook, Wikipedia, Instagram và nhiều hơn thế nữa.

_ Phát theo cách bạn muốn

Chỉ cần click vào biểu tượng phát trên điện thoại của bạn để truyền video và hình ảnh lên TV và có được trải nghiệm xem tốt hơn.

* Hãy chắc chắc rằng TV và điện thoại của bạn kết nối dưới cùng thiết bị wifi.

* Hỗ trợ chia sẻ màn hình.

_ Xem rõ hơn, chất lượng tuyệt vời

_ Thiết kế thời thượng

_ Khung hình tràn viền cho cái nhìn vô cực

Tỉ lệ màn hình so với thân máy là 97%

* Frameless Open-cell Lock-in Technology

_ Mở rộng thế giới quan của bạn 

Full HD (1080p) mang mọi chi tiết đến màn hình của bạn, thay đổi trải nghiệm xem chưa từng có Full HD TV gấp hai lần so với TV HD thông thường.

_ Điều chỉnh để hoàn thiện

Lắng nghe - Cảm nhận - Thấu hiểu - Kết nối

* Powerful Stereo Speaker

_ Đa kết nối - Đa phương tiện 

Sử dụng USB để phát phim hoặc nhạc ở nhiều định dạng, kết nối HDMI để mở rộng màn hình máy tính, kết nối loa ngoài để thưởng thức âm thanh vòm.

Các cổng: HDMI x 2; S/PDIF out; USB x 2; LAN. x 1',1),
		(4, 27, 30, 8, 'Xiaomi 65inch Smart Tivi',9999999, 5, N'THÔNG SỐ KỸ THUẬT

📍Tên sản phẩm: Xiaomi Google Tivi 4K 43 inch 43A Pro 

📍Hãng: Xiaomi

📍Màu sắc: Đen

📍Màn hình: 4K UHD

📍Độ phân giải: 3840 × 2160

📍Độ sâu màu: 1.07 tỷ (8-bit+FRC)

📍Công nghệ hình ảnh: 

📍Dolby Vision®

📍HDR10 

📍HLG

📍MEMC

📍Công suất loa: 2 x 12W

📍Công nghệ âm thanh: Dolby Audio™

📍DTS-X 

📍DTS Virtual:X

📍Bộ xử lý	

📍CPU: Quad-core Cortex-A55

📍GPU: Mali G52 MP2

📍RAM: 2GB

📍Storage: 16GB

📍Tiện ích khác	

📍Google TV™

📍Trợ lý Google tích hợp

📍Truy cập Google Play

📍Trung tâm điều khiển nhà thông minh

📍Chromecast tích hợp™

📍Hỗ trợ Miracast

📍Netflix, Prime Video và YouTube được cài đặt sẵn

📍Kết nối: Wi-Fi 2.4GHz/5GHz

📍Kết nối không dây: Bluetooth 5.0

📍Hệ thống phát sóng: DVB-T2/C, DVB-S2

📍Cổng kết nối	

📍HDMI x 3 (1 cổng với eARC)

📍USB 2.0 x 2

📍Ethernet (LAN) x 1

📍Khe CI x 1

📍Giắc cắm tai nghe 3.5 mm x 1',1),
		(4, 27, 18, 8, 'Television Full option',7900000, 7, N'- Độ phân giải 4K với mật độ điểm ảnh cao giúp tái hiện các thước phim chi tiết, sống động. 

- Bộ xử lý X1 4K HDR xử lý hình ảnh tinh vi, giảm nhiễu, giảm mờ, tăng độ chi tiết cho bạn được thưởng thức khung hình chất lượng cao, hình ảnh rõ đẹp, cuốn hút. 

- Công nghệ Triluminos Pro tái tạo các dải màu rộng hơn nên màu sắc hình ảnh hiển thị rực rỡ, chân thật tự nhiên. 

- Motionflow XR 200 tạo và bổ sung thêm khung hình vào nội dung ban đầu để những cảnh quay chuyển động trông mượt mà, sắc nét hơn.
- Dolby Atmos công nghệ có khả năng tạo nên âm thanh vòm 3 chiều sống động, cho bạn có cảm giác như âm thanh đang trôi xung quanh mình. 

- S-Force Front Surround mang đến trải nghiệm như ở rạp hát đích thực với chất âm đa chiều bao trùm không gian. 

- Công nghệ DTS Digital Surround giải mã âm thanh vòm với chất lượng vượt xa chất lượng âm thanh của đĩa CD thông thường, cho bạn nghe nhạc hoặc xem phim lôi cuốn, ấn tượng hơn. 

- S-Master Digital Amplifier khuếch đại âm thanh đồng thời loại bỏ tiếng ồn, độ nhiễu để bạn được trải nghiệm âm thanh mạnh mẽ, trong trẻo.

- Loa X-Balanced có kiểu dáng độc đáo nhằm hoàn thiện độ mỏng tivi và chất lượng âm thanh để truyền tải chất âm rõ rệt hơn.',1),
		(15, 111,9,6,'Apple Watch', 7000000, null, N'Nhắc đến smartwatch nổi bật nhất năm 2023 chắc chắn không thể thiếu cái tên Apple Watch Series 9, trong đó mẫu Apple Watch Series 9 GPS Sport Band S/M với vẻ ngoài tinh tế, bộ vi xử lý trung tâm đầy nội lực, màn hình sáng vượt trội cùng tính năng chạm hai lần độc đáo hứa hẹn sẽ chinh phục người dùng khó tính nhất. 
Phong cách trẻ trung, thiết kế hiện đại

Apple Watch S9 có thiết kế tối giản, các chi tiết chế tác chỉn chu, đẹp mắt kể cả khi bạn hạ cổ tay xuống. Trang bị mặt đồng hồ kích cỡ 41 mm / 45 mm, chất liệu kính cường lực Ion-X bền bỉ được thiết kế tràn viền cho không gian trải nghiệm rộng mở, giúp bạn thực hiện các thao tác trượt, vuốt ngón tay trên mặt kính nhẹ nhàng, thoải mái.

Chất liệu khung viền hợp kim nhôm cứng cáp, hạn chế rỉ sét, móp méo, sử dụng bền bỉ trong thời gian dài. Dây đeo được làm từ silicone không thấm nước, kiểu dây ngắn đục lỗ cho bạn tùy chỉnh độ rộng dễ dàng để đeo vừa khít với cổ tay, không bị rơi rớt, lỏng lẻo khi cử động. 

Đảm bảo trải nghiệm xem của bạn luôn chân thực với các nội dung hiển thị rõ ràng, màu sắc phong phú, sinh động nhờ có tấm nền OLED. Đặc biệt, độ sáng tối đa 2000 nits và tối thiểu 1 nit cho người dùng đọc thông tin trên màn hình dễ dàng, dù trong điều kiện ánh nắng chói chang hay ánh sáng kém trong góc hành lang. 

Tác vụ xử lý mượt mà với cấu hình mạnh mẽ

Dòng đồng hồ này được nâng cấp với CPU Apple S9 SiP lõi kép giúp xử lý các tác vụ quen thuộc trên đồng hồ với hiệu suất cao.

Thao tác mới Chạm hai lần được hỗ trợ bởi Neural Engine 4 lõi đi cùng các thuật toán thông minh, có khả năng nhận biết chuyển động cực nhỏ của cổ tay cũng như thông qua sự thay đổi của lưu lượng máu khi bạn chạm ngón tay trỏ và ngón tay cái với nhau 2 lần, giúp bạn tương tác với đồng hồ dễ dàng mà không cần tiếp xúc với màn hình đồng hồ. 

Hệ điều hành WatchOS 10 (tại thời điểm ra mắt) có thiết kế giao diện gọn gàng, cho phép truy cập vào các ứng dụng, tính năng thuận tiện, người dùng không mất nhiều thời gian để làm quen và trải nghiệm. Bên cạnh đó, Apple cũng bổ sung chế độ Ngăn xếp thông minh giúp xem các tiện ích nhanh bằng nút Digital Crown.

Lưu ý: Apple Watch S9 tương thích với dòng iPhone Xs trở lên và sử dụng hệ điều hành iOS 17 trở lên.
Cảm biến tiên tiến cung cấp các chỉ số sức khỏe chuẩn xác 

Bạn có thể kịp thời phát hiện nhịp tim bất thường của mình qua cảnh báo nhắc nhở nhịp tim cao/thấp, không đều sau khi cảm biến nhịp tim quang học thế hệ 3 đo chỉ số nhịp tim.

Ngoài ra, cảm biến điện học (ECG) trên đồng hồ cũng sẽ cung cấp cho người dùng kết quả điện tâm đồ, hay cảm biến nhiệt độ có khả năng đo nhiệt độ cơ thể nhằm theo dõi chu kỳ, dự đoán thời gian rụng trứng giúp người dùng nữ chủ động hơn trong việc chăm sóc sức khỏe vào những ngày "nhạy cảm".

Bên cạnh đó, đồng hồ còn có khả năng đo SpO2, theo dõi giấc ngủ, tích hợp ứng dụng Chú tâm mới thu thập và ghi lại thông tin về trạng thái tinh thần. Các dữ liệu sức khỏe này sẽ luôn được giữ riêng tư và an toàn, không được chia sẻ nếu bạn không cho phép. 

Tính năng Phát hiện va chạm và Phát hiện té ngã hoạt động thông minh khi có khả năng tự động kết nối người dùng với dịch vụ khẩn cấp, gọi điện hoặc gửi thông báo bằng văn bản cho số liên hệ khẩn cấp, khi phát hiện người đeo bị lực tác động mạnh trong lúc chơi thể thao, xảy ra va chạm giao thông mạnh,... nếu người dùng không phản hồi trong thời gian nhất định.
Luyện tập theo cách bạn muốn với các bài tập phong phú

Mẫu đồng hồ thông minh này sẽ mang đến những buổi tập thú vị, khi bạn có thể chọn các môn thể thao mà mình hứng thú để rèn luyện với bộ sưu tập đa dạng như: Chạy bộ, đạp xe, bài tập HIIT, Pilates, Squat, Yoga,... Chế độ xem trong ứng dụng Bài tập cũng có thể đưa ra nhiều thông tin hữu ích để bạn theo dõi, xây dựng kế hoạch rèn luyện bài bản, nâng cao thể chất. 
Bảo vệ đồng hồ với chuẩn chống nước 5 ATM, viên pin đủ dùng

Với tiêu chuẩn chống nước đạt mức 5 ATM - ISO 22810:2010, đồng hồ sẽ được bảo vệ khi bạn đeo lúc rửa tay, tắm, bơi ở vùng nước nông,... Tuy nhiên, bạn không nên mang đồng hồ tham gia các hoạt động có áp suất nước cao, phòng tắm hơi, tắm nước nóng,...

Với một lần nạp đầy pin, đồng hồ hoạt động liền mạch trong khoảng 18 giờ ở chế độ thông thường, bạn cũng có thể khởi động chế độ Năng lượng thấp để kéo dài thời gian dùng lên đến 36 giờ sử dụng. Apple cũng trang bị cho người dùng cáp sạc nhanh từ tính USB-C để nạp lại năng lượng nhanh chóng, rút ngắn thời gian chờ đợi.



Thêm nhiều tiện ích hơn nữa

Chiếc Apple Watch này sẽ làm bạn bất ngờ với những tính năng mà thiết bị đang sở hữu như: Dùng giọng nói để điều khiển đồng hồ cùng trợ lý giọng nói Siri, nâng cổ tay sáng màn hình, gọi khẩn cấp SOS khi cần hỗ trợ, Apple Pay giúp việc thanh toán các hóa đơn hằng ngày nhanh chóng hơn, tính năng tìm điện thoại sử dụng khi bạn quên chỗ đặt iPhone với hướng dẫn được cung cấp chi tiết,...',1),
		(15, 111,18,6,'HUAWEI Band 9', 1090000, 12, N'Đồng Hồ Thông Minh HUAWEI WATCH FIT 3 Xám (Dây Nylon) | Thiết Kế Mỏng Nhẹ | Màn Hình AMOLED 1.82" | Quản Lý Tập Luyện Toàn Diện | Thời Lượng Sử Dụng Lên Đến 10 Ngày',1),
		(15, 111,18,6,'AI Watch', 30, 10, N'Đồng hồ thông minh JUNIOR09 WATCH 9, Smartwatch Nghe gọi, Zl - Mess, Chơi game, GPT AI, Nhịp tim, Chống nước cho Nam nữ',1),
		(15, 111,9,6,'Apple Watch Pro', 9000000, 15, N' *Thông Tin Kĩ Thuật:

- Bluetooth: BLE 5.0

- Cấp độ chống thấm nước: Chống thấm nước( hạn chế tiếp xúc trực tiếp)

- Chip điều khiển chính: MT2502

- Chip đo nhịp tim: HRS3300

- Bộ nhớ RAM: 128kb,

- ROM: 512kb

- Chế độ hoạt động: Nút chức năng cảm ứng đầy đủ

- Loại hiển thị: 1.54 inch G F vừa vặn, cảm ứng đầy đủ

- Độ phân giải: 240 * 240 pixel (chế độ sáng vĩnh viễn)

- Loại pin: Tích hợp pin lithium coban nguyên chất

- Dung lượng pin: 200 mAh

- Thời gian sạc khoảng 3 giờ

- Thời gian chờ: 3 ngày tùy nhu cầu
',1),
		(5, 34, 18, 8, 'Keyboard good',220000, 9, N'Thông số kỹ thuật:

Thương hiệu: Royal Kunk

Mô hình sản phẩm: RKR65

Số phím: 66

Công tắc: Chartreuse / Brown / Blue Switch

Chế độ kết nối: có dây

Đèn nền: RGB

Hệ thống: Windows / Android / Mac / IOS

Kích thước: 322,3 * 116,3 * 40,53mm

Trọng lượng: 0,64kg



Tính năng:

1.Cấu trúc miếng đệm- Cấu trúc bàn phím cấp cao hơn, âm thanh tinh khiết, cảm giác mềm mại, cảm giác tuyệt vời này có thể làm cho quá trình đánh máy rất dễ chịu và đầy thú vị.

2.Với điều chỉnh núm vặn, hỗ trợ hệ thống kép; Hỗ trợ cập nhật trực tuyến USB chương trình cơ sở; Hỗ trợ tổ hợp phím FN để đạt được chức năng chuyển đổi; Hỗ trợ đầy đủ xung đột phím không có; Hỗ trợ nhiều điều chỉnh chế độ đèn nền.

3.Bàn phím này sử dụng góc nghiêng được thiết kế công thái học và các phím bấm có bậc để giảm thiểu sự mệt mỏi trong quá trình sử dụng.

4.Có thể thay thế nóng- PCB trao đổi nóng cho phép',1),
		(5, 34, 18, 8, 'Keyboard beauty',230000, 20, N'Sảm phẩm có hai phiên bản K3 và K3 MAX: K3 MAX được update thêm hai màu mới và nâng cấp thêm hai lớp đệm  tiêu âm và đã được căn chỉnh nút cho tiếng ngõ êm hơn',1),
		(5, 34, 18, 8, 'Keyboard LED RGB',320000, 15, N'Tất cả các mặt hàng phải trải qua quy trình kiểm tra trước khi vận chuyển

✅ Usb qua

✅ Chuyển đổi bổ sung

✅ Keycap và công tắc vắt

✅ Mã 2.4GHz

✅ Loại cáp C

✅ Hướng dẫn sử dụng

✅ Bàn phím (RK96)

Rk96 Ba chế độ bàn phím cơ trao đổi nóng

• • Full Key hỗ trợ cắm nóng, tương thích với hầu hết các công tắc 3ft / 5ft trên thị trường

• • Chuyển chế độ 2.4G / Bluetooth 5.0 / Có dây 3

• • Đèn nền trắng / RGB tinh khiết, có thể chuyển đổi các hiệu ứng ánh sáng động

• • Pin liti 3750 mah',1),
		(5, 34, 18, 8, 'Keyboard office',140000, 15, N'𝟏.𝐓𝐇𝐎̂𝐍𝐆 𝐓𝐈𝐍 𝐒𝐀̉𝐍 𝐏𝐇𝐀̂̉𝐌: 

- Khung nhôm cao cấp 

- Thiết kế mỏng nhẹ, nhỏ gọn, dễ dàng mang theo

- Phím dùng cơ chế cắt kéo "X-Scissors" mang lại cảm giác gõ êm ái, giảm tiếng ồn đến 80%

- Sở hữu 2 chế độ kết nối | Tự động nhận diện hệ điều hành

- Thời lượng sử dụng pin tới 5 tháng

- Keycap thiết kế vừa vặn các ngón tay, gõ phím dễ dàng, trơn tru

𝟐.𝐓𝐑𝐎𝐍𝐆 𝐇𝐎̣̂𝐏 𝐂𝐎́ 𝐆𝐈̀:

 - 1 Keyboard

 - Đầu thu USB A

 - Cáp sạc Type A to C 

 - Hướng dẫn sử dụng

𝟑. 𝐓𝐇𝐎̂𝐍𝐆 𝐓𝐈𝐍 𝐂𝐇𝐈 𝐓𝐈𝐄̂́𝐓 𝐒𝐀̉𝐍 𝐏𝐇𝐀̂̉𝐌:

- Kích thước: 0.60 -1.2 x 28 x 12 cm | 295 gram

- Kết nối: Bluetooth 5.1 | Wireless 2.4Ghz

- Dung lượng pin: 350 mAh

- Thời gian sử dụng: 5 tháng với kết nối Bluetooth

- Cổng sạc: Type C

- Bảo hành: 12 Tháng

𝟒. 𝐌𝐎̂ 𝐓𝐀̉ 𝐒𝐀̉𝐍 𝐏𝐇𝐀̂̉𝐌:

𝐊𝐡𝐮𝐧𝐠 𝐡𝐨̛̣𝐩 𝐤𝐢𝐦 𝐧𝐡𝐨̂𝐦 𝐜𝐚𝐨 𝐜𝐚̂́𝐩

HyperOne Gen 2 sở hữu khung hợp kim nhôm cắt vát CNC tỉ mỉ, cạnh được phủ mờ, độ hoàn thiện cao mang đến tổng thể tinh tế và thời thượng.',1),
		(5, 35, 13, 8, 'Laptop Asus',21000000, 15, N'Thông số kỹ thuật:

CPU: Intel® Core™ i3-1115G4 (upto 4.10GHz, 6MB)

RAM: 4GB DDR4 + 1slot

Ổ cứng: 256GB M.2 NVMe™ PCIe® 3.0 SSD

VGA: Intel® UHD Graphics

Màn hình: 14.0-inch FHD (1920 x 1080) 16:9, LED Backlit, 220nits, NTSC: 45%

Pin: 2-cell , 37WHrs

Cân nặng: 1.55 kg

Màu sắc: Bạc

Tính năng: Bảo mật vân tay

OS: Windows 10



Mô tả sản phẩm:

Bộ vi xử lý Intel Core I3-1115G4 xử lý các tác vụ cơ bản nhanh chóng

RAM 4GB DDR4 on board giúp laptop đa nhiệm ổn định, hạn chế giật lag

Ổ cứng SSD 256GB SSD cho tốc độ phản hồi, mở máy nhanh chóng

Màn hình 14 inch FHD hiển thị hình ảnh sắc nét, màu sắc sống động

Công nghệ màn hình Anti Glare chống chói khi làm việc ở nơi ánh sáng cao

Công nghệ SonicMaster mang đến âm thanh trở nên to, rõ ràng, sống động

Laptop Asus X415E có trọng lượng nhẹ 1.55kg dễ dàng mang theo sử dụng',1),
		(5, 35, 27, 8, 'Laptop Hp old',6000000, 10, N'THÔNG SỐ KỸ THUẬT

•	CPU	Intel Core i3-1215U 1.2GHz up to 4.4GHz 10MB

•	RAM	8GB (8x1) DDR4 3200MHz (2x SO-DIMM socket, up to 16GB SDRAM)

•	Ổ cứng	256 GB PCIe® NVMe™ M.2 SSD

•	Card đồ họa	Intel® UHD Graphics

•	Màn hình	14" FHD (1920 x 1080), micro-edge, anti-glare, 250 nits, 45% NTSC

•	Cổng giao tiếp	1x SuperSpeed USB Type-C® 5Gbps signaling rate

•	2x SuperSpeed USB Type-A 5Gbps signaling rate

•	1x HDMI 1.4b

•	1x AC smart pin

•	1x headphone/microphone combo

•	Led-Keyboard	None

•	Audio	Dual speakers

•	Đọc thẻ nhớ	

•	1 multi-format SD media card reader

•	Chuẩn LAN	None

•	Chuẩn WIFI	Realtek RTL8822CE 802.11a/b/g/n/ac (2x2)

•	Bluetooth	v5.0

•	Webcam	HP True Vision 720p HD camera with temporal noise reduction and integrated dual array digital microphones

•	Hệ điều hành	Windows 11 Home

•	Pin	3 Cell 41WHr

•	Trọng lượng	1.46 kg

•	Màu sắc	Natural silver

•	Kích thước	32.4 x 22.5 x 1.79 cm

•	Xuất xứ: Trung Quốc

•	Bảo hành chính hãng 12 tháng tại TTBH của HP

•	Sản phẩm full box đầy đủ phụ kiện từ nhà sản xuất



• Đối với sản phẩm dưới 20 triệu quý khách hàng cung cấp thông tin VAT công ty hoặc cá nhân để xuất hóa đơn bảo hành sản phẩm. Trường hợp không cung cấp shop mặc định xuất theo thông tin tài khoản mua hàng.



• Đối với sản phẩm trên 20 triệu ( Bao gồm các khoản trợ giá nếu có) . Shop xin miễn trừ trách nhiệm không xuất VAT công ty. Chỉ mặc định xuất hóa đơn cá nhân để bảo hành sản phẩm.

',1),
		(5, 35, 13, 8, 'Laptop Asus Gaming',23000000, 10, N'CPU	Intel® Core™ i5-12500H Processor 2.5 GHz (18M Cache, up to 4.5 GHz, 12 cores: 4 P-cores and 8 E-cores)

RAM	8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB RAM)

Ổ cứng	512GB SSD M.2 PCIE G3X2 (Còn trống 1 khe SSD M.2 PCIE)

Card đồ họa	NVIDIA GeForce RTX 3050 4GB GDDR6, Up to 1790MHz* at 95W (1740MHz Boost Clock+50MHz OC, 80W+15W Dynamic Boost) + MUX Switch + Optimus

Màn hình	15.6" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 45% NTSC, 62.5% sRGB

Cổng giao tiếp	

1x Thunderbolt 4 support DisplayPort

1x USB 3.2 Gen 2 Type-C support DisplayPort™ / G-SYNC

2x USB 3.2 Gen 1 Type-A

1x RJ-45 LAN

1x HDMI 2.1 TMDS

1x COMBO audio jack

Audio	Dolby Atmos

Bàn phím	Backlit Chiclet Keyboard 1-Zone RGB

Chuẩn LAN	10/100/1000 Mbps

Chuẩn WIFI	Wi-Fi 6(802.11ax) (Dual band) 2*2

Bluetooth	v5.2

Webcam	HD 720p

Hệ điều hành	Windows 11 Home

Pin	4 Cell 56WHr

Trọng lượng	2.2 kg

Màu sắc	Jaeger Gray

Kích thước	35.4 x 25.1 x 2.24 ~ 2.49 cm',1),
		(5, 35, 9, 8, 'Macbook M1',17000000, 5, N'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 7 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, giảm thiểu tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ (1) MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.
 
Tính năng nổi bật 
•       Chip M1 do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU 
•       Tăng thời gian sử dụng với thời lượng pin lên đến 18 giờ (1) 
•       CPU 8 lõi cho tốc độ nhanh hơn đến 3.5x, xử lý công việc nhanh chóng hơn bao giờ hết (2)  
•       GPU lên đến 7 lõi với tốc độ xử lý đồ họa nhanh hơn đến 5x cho các ứng dụng và game đồ họa khủng (2)  
•       Neural Engine 16 lõi cho công nghệ máy học hiện đại 
•       Bộ nhớ thống nhất 8GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy  
•       Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc 
•       Thiết kế không quạt giảm tối đa tiếng ồn khi sử dụng  
•       Màn hình Retina 13.3 inch với dải màu rộng P3 cho hình ảnh sống động và chi tiết ấn tượng (3)
•       Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video đẹp hình, rõ tiếng hơn 
•       Bộ ba micro phối hợp tập trung thu giọng nói của bạn, không thu tạp âm môi trường 
•       Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn 
•       Hai cổng Thunderbolt / USB 4 để sạc và kết nối phụ kiện 
•       Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn 
•       macOS Big Sur với thiết kế mới đầy táo bạo cùng nhiều cập nhật quan trọng cho các ứng dụng Safari, Messages và Maps 
•       Hiện có màu vàng kim, xám bạc và bạc 
',1),
		(5, 35, 32, 8, 'Laptop Microsoft',12000000, 10, N'✅ CẤU HÌNH CHI TIẾT: Dell & Hp 12.5 inch ; 14 inch và 15.6 inch

- Hệ điều hành: cài sẵn Window 10 và (office)

- Bộ vi xử lý: Intel Core i5 

- Ram: 8G ( có thể nâng cấp lên 16G  nt shop để đc hỗ trợ ạ)

- Ổ đĩa cứng: SSD 256G (=> Sử dụng SSD giúp máy tính chạy nhah hơn gấp 10 lần HDD ace nhé)

- Card màn hinh: Intel HD Graphics 

- Màn hình: Độ phân giải HD (1.280 × 720 pixels)

- Webcam: Có

- Kết nối: 2 x USB 3.0, LAN, Headphone/microphone combo jack, HDMI

- Thời lượng pin: tầm 2~2.5 giờ

- Trọng lượng: 1.6 kg

- Kích thước: 333.4.00 x 228.9 mm x 20.3 mm',1),
		(5, 34, 18, 8, 'Mouse VXE',140000, 15, N'Có thể tương thích mọi hệ điều hành (window , mac os, androi, lOS) kết nối máy tính, laptop , macbok , máy tính bảng, điện thoại. Linh hoạt chuyển giữa 2 chế đố wireless và bluetooth

Nâng cấp khả năng kết nối so với các phiên bản đi trước, kết nối qua wireless và bluetooth nhưng tốc độ phản hồi vẫn rất cao ≈ 1ms tương đương với 1 con chuột gamingThiết kế chông ồn silent giúp không gây ảnh hưởng đến mọi người xung quanh, tắt âm hoàn toàn giúp bạn dù có làm việc về đêm hay làm trong môi trường công sở đều rất thoải mái',1),
		(5, 34, 18, 8, 'Tech-zone Mouse',240000, 10, N'🔰 THÔNG SỐ KỸ THUẬT CHUỘT KHÔNG DÂY BASEUS F01A

🔸 Thương hiệu: Baseus

🔸 Tên sản phẩm: Baseus F01A Wireless Mouse

🔸 Model No. F01A

🔸 Chất liệu: ABS

🔸 Màu sắc: Frosted Gray

🔸 Trọng lượng: Khoảng 90g

🔸 Phạm vi kết nối ổn định: 10m

🔸 Kiểu kết nối: 2.4G mode

🔸 DPI: 800/1200/1600

🔸 Tần số: 250Hz

🔸 Tương thích với: Windows, Apple OS, Linux, Vista, HarmonyOS, etc...',1),
		(5, 34, 18, 8, 'inphic Mouse',310000, 25, N'• Kết nối được qua 3 chế độ: Bluetooth 4.0/ Bluetooth 5.0/ USB WIRELESS

• Thiết kế tắt tiếng click, chống ồn trong môi trường văn phòng, công cộng

• Thiết kế kiểu dáng công thái học rất là ưa chuộng cho anh em game thủ

• Sở hữu pin sạc udng lượng cao 500mAh có thể sử dụng được vài tháng sau 1 lần sạc

• Trang bị cổng sạc nhanh Type C

• Có đèn LED hiển thị mức pin',1),
		(5, 34, 18, 8, 'Dragonfly Mouse',190000, 30, N'Sử dụng mắt đọc quang học mới nhất hiện nay lên đến 1000 HZ, 7000 FPS , 60 IPS giúp cải thiện độ trễ xuống chỉ còn 1ms. Sánh ngang chuột cao cấp trên thị trườngMọi thông số của chuột đều có thể điều chỉnh qua app giúp phục vụ tốt mọi tác vụ từ làm việc đến giải tríHiệu ứng ánh sáng đèn led 16 triệu màu với tuỳ chỉnh theo ý muốn vô cùng đẹp',1),
		(5, 34, 18, 8, 'Rack F80 & G45',420000, 15, N'- Thích hợp với màn hình: 22 - 40 inch.

- Tải trọng: 2 - 15 kg.

- Chuẩn VESA: 75x75mm, 100x100 mm.

- Xoay: 360 độ.

- Góc nghiêng: +85 độ đến -30 độ.

- Khoảng cách nâng thẳng đứng: 320mm.

- Góc xoay: +-90 độ.

- Mở rộng theo chiều dọc tối đa: 630mm.',1),
		(5, 34, 18, 8, 'Rack Macbook',240000, 25, N'Giá Đỡ Ipad N4 Tản Nhiệt Cho Máy Tính Xách Tay Laptop Làm Bằng Chất Liệu Nhôm Có Thể Gấp Gọn Cho Nhân Viên Văn Phòng

-Có thể điều chỉnh góc nghiêng và gấp gọn, tiện lợi

-Đảm bảo chắc chắn, không rung lắc khi gõ phím laptop

-Đệm silicone chống trơn trượt và trầy xước laptop

-Chất liệu: Nhôm nguyên khối với đế cao su chống trượt

-Điều chỉnh độ cao với 10 nấc điều chỉnh khác nhau, mở rộng chiều ngang của đế phù hợp với kích cỡ laptop khác nhau. -Thấp nhất 85mm, cao nhất 235mm

-Kết cấu tam giác cân chắc chắn, chịu được tải trọng lên đến 80kg

-Làm giá đỡ laptop, máy tính bảng, đọc sách

-Gập gọn thông minh, dễ dàng mang đi theo mình. 
',1),
		(5, 34, 18, 8, 'Rack Macbook',210000, 15, N'Giá Đỡ Ipad N4 Tản Nhiệt Cho Máy Tính Xách Tay Laptop Làm Bằng Chất Liệu Nhôm Có Thể Gấp Gọn Cho Nhân Viên Văn Phòng

-Có thể điều chỉnh góc nghiêng và gấp gọn, tiện lợi

-Đảm bảo chắc chắn, không rung lắc khi gõ phím laptop

-Đệm silicone chống trơn trượt và trầy xước laptop

-Chất liệu: Nhôm nguyên khối với đế cao su chống trượt

-Điều chỉnh độ cao với 10 nấc điều chỉnh khác nhau, mở rộng chiều ngang của đế phù hợp với kích cỡ laptop khác nhau. -Thấp nhất 85mm, cao nhất 235mm

-Kết cấu tam giác cân chắc chắn, chịu được tải trọng lên đến 80kg

-Làm giá đỡ laptop, máy tính bảng, đọc sách

-Gập gọn thông minh, dễ dàng mang đi theo mình. 
',1),
		(5, 39, 18, 8, 'Screen PC',350000, 0, N'Thương hiệu
Xiaomi
Kích thước màn hình
23 -25 inch
Game chuyên dụng
Không
Loại bảng
IPS
Loại giao diện màn hình
HDMI
Bộ xử lý TV
Full HD
Tình trạng
Mới
Trọng lượng
5kg
Loại bảo hành
Bảo hành nhà sản xuất
Hạn bảo hành
12 tháng
Tên tổ chức chịu trách nhiệm sản xuất
Đang cập nhật
Địa chỉ tổ chức chịu trách nhiệm sản xuất
Đang cập nhật
Model màn hình và LCD
LCD',1),
(5, 39, 10, 8, 'Samsung Screen PC',750000, 25, N'+ màn hình hiển thị - Màn phẳng Xstar 27in - Mới 100% FULL BOX

 + linh phụ kiện tất nhiên :HDMI Hoặc VGA + NGUỒN
THÔNG SỐ kỹ năng :

- Model : GL27 và GL27 FULL VIỀN

- kích tấc : 27 inch

-Cổng : HDMI + VGA

- độ sắc nét : Full HD 1920 x 1080

- vận tốc làm mới: 75Hz

- Điểm ảnh : 233.1um*223.1um

- Màu hiện ra : 16,7 triệu màu

- khả năng chiếu sáng : 220cd/m2

- giai đoạn comment : 6ms

- Độ sự trái ngược : 5000:1

- skin tham gia : VGA + HDMI

- ngữ điệu :  12 Ngôn ngữ

- sức điện : 12V 5A ; <30W ; Stand-by : 0.5W

- Màu sắc: Đen

- tải trọng : 4 kg',1),
		(5, 39, 29, 8, 'LG Screen PC',1050000, 15, N'Màn hình IPS Full HD Màu sắc chân thực ở góc rộng. Màn hình Tomko với công nghệ IPS làm nổi bật hiệu suất của màn hình tinh thể lỏng. Rút ngắn thời gian phản hồi, cải thiện khả năng tái tạo màu sắc và người dùng có thể xem ở các góc rộng. 



Màn hình Tomko hầu như không có đường viền 3 cạnh Thiết kế viền 3 cạnh siêu mỏng. Hòa mình cùng nội dung. Sở hữu thiết kế viền mỏng ở ba cạnh cùng hình ảnh chính xác đến kinh ngạc, màn hình giúp người xem tập trung vào nội dung. Ngoài ra, màn hình còn có khả năng điều chỉnh độ nghiêng thuận tiện cho phép bạn bố trí một môi trường làm việc tối ưu. 



Eye care Flicker Safe - Reader Mode. Chế độ xem chăm sóc đôi mắt. Giúp đôi mắt thoải mái hơn khi làm việc cường độ cao và đọc các văn bản dài trên màn hình vi tính. Chế độ đọc sách (Reader Mode) điều chỉnh nhiệt độ màu và độ sáng tương tự như khi đọc trên giấy tạo cảm giác thoải mái khi nhìn lâu. Chế độ chống nháy (Flicker Safe) giảm thiểu hiện tượng nhấp nháy không nhìn thấy trên màn hình, mang lại môi trường làm việc thoải mái, giảm mỏi mắt. 



* Thông số kỹ thuật:

Loại màn hình: màn hình phẳng

Màu sắc: Đen - phun màn hình 3 viền

Kích thước: 27inch  

Tấm nền: fast- IPS

Độ phân giải: 1920*1080 (FHD) 

Tần số quét: 75Hz

Thời gian phản hồi: 5ms GTG / 1ms MPRT 

Góc nhìn: 178°(H)/178°(V)

Màu sắc hiển thị: 10 bit (8 bit +Hi- FRC) 

Độ sáng: 250 cd / m2 

Độ tương phản: 1000:1 

Tỉ lệ màn hình: 16:9 (H:V)

Bề mặt hiển thị: Anti-Reflection

HDR: Hỗ trợ VESA HDR400



 Cổng kết nối:

– HDMI 2.1 x2 

– Giắc cắm tai nghe

– Lỗ cắm Microphone 

– DC',1),
		(5, 39, 10, 8, 'Samsung Screen Monitor PC',1250000, 15, N'Quan sát cả trận đấu với màn hình đạt độ cong hoàn hảo 1000R

Màn Hình Gaming Samsung Odyssey G5 Ultra WQHD G55T đem đến khả năng quan sát cả trận đấu mà người dùng tham gia, màn hình với độ cong lý tưởn 1000R tối ưu cho trải nghiệm thị giác của người dùng.Sắc nét hơn với độ phân giải Ultra WQHD, tần số quét siêu tốc 165Hz

Không bó buộc bạn trong khuôn khổ, Samsung Gaming Odyssey G5 LC34G55TWWEXXV đem đến chất lượng hiển thị sắc nét và rộng lớn với độ phân giải Ultra WQHD. Tần số quét 165Hz bức phá mọi giới hạn trong việc trải nghiệm của game thủ, từ đó mọi hành động của bạn hầu như là tức thì. Hạn chế tình trạng giựt, chống rung mờ trong chuyển động.',1),
		(2, 12, 17, 3, 'Short Pants DirtyCoins', 390000, 10, N'Chi tiết sản phẩm:

• Màu sắc: Đen

• Size: M - L - XL

• Chất liệu: Cotton Denim.

• Relaxed Fit.

• Bề mặt vải được xử lý wash nhẹ.

• Pattern monogram được dệt full trên bề mặt vải.

• Có túi hai bên và một túi sau lưng quần.',1),
		(2, 14, 18, 3, 'Skiny Jean', 430000, 15, N'- Stretch denim - Jean thun co giãn: 98% cotton 2% spandex.

- Độ bền màu cao, vải dày 11 oz, wash màu chuyên nghiệp.

- Form dáng Skinny fit.

',1),
		(2, 12, 1, 3, 'Short Pants Nike', 590000, 19, N'Quần short nam BamBoostreetwear cotton dày dặn không xù 256

✔ Chất cotton 100% dày dặn, thoáng mát

✔ Mặc thoải mái nhất và đảm bảo độ bền đẹp, chống giãn tốt nhất.

✔ Dễ dàng phối với tất cả các loại trang phục. 

  Hình ảnh có thể giống nhau nhưng chất vải và đường may làm nên chất lượng. 

Màu sắc & kích cỡ: form áo Âu thoải mái không gò bó khi vận động tạo nên sự nặng động, trẻ trung,...' ,1),
		(1, 4, 18, 3, 'Snap Pants Jogger', 290000, 5, N'Mô tả sản phẩm : Quần ống suông nam PEALO vải kaki nhung casual pants trơn basic chất liệu mới Loose Pants phong cách Minimalism

_ Trắng - Đen- Be- Xanh Than...v..v



Chất liệu:

_ 95% vài kaki, 5% SPANDEX ( CAO CẤP )



Xuất sứ: 

_ Việt Nam



Ưu điểm quần kaki dài :

- Vải Kaki nhung mềm mịn, co giãn tốt giúp bạn thoải mái vận động, di chuyển.

- Màu sắc trắng dễ mặc dễ phối đồ, quần dài kaki trắng phù hợp với tất cả các áo sáng màu lẫn tối màu, có thể phối cùng polo, áo thun, sơ mi, áo vest,...

- Form slim fit.

- Phần eo có đai chỉnh kích thước, giúp eo vừa vặn khi sử dụng

- Nút quần và dây kéo chắc chắn,  đường may kĩ càng.

- Hai túi phía trước được may vát chéo, thêm 2 túi sau sâu rộng để được nhiều đồ, tiện lợi.

',1),
		(1, 4, 24, 3, 'Denim Work Pants Jogger', 390000, 10, N'+ Chất Liệu : Dù
+ Form : Cơ Bản
+ Màu sắc : Trắng / Đen
Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 5-10%
',1),
		(2, 12, 2, 3, 'Short Pants Adidas', 790000, 19, N'Từ các vận động viên chuyên nghiệp, gymer cho đến các chiến binh tập luyện tại nhà, quần short luôn là lựa chọn đúng đắn. Như chiếc Quần Short Vải Dệt 3 Sọc TRAINICONS này.
Dáng regular fit được thiết kế cho phép bạn tự do vận động trong mọi bài tập. Thêm vào đó, sử dụng chất vải đánh bay mồ hôi hoặc thấm hút ẩm, các sản phẩm adidas AEROREADY giúp bạn luôn cảm thấy khô ráo, sảng khoái và thoải mái khi tập luyện.
Chất vải nhẹ sang chảnh dễ dàng phối đồ và cho cảm giác thoải mái. Bạn cũng sẽ luôn sẵn sàng tập luyện, với cạp cao vừa giúp quần ôm chắc chắn. 3 Sọc kinh điển hoàn thiện vẻ ngoài hiện đại, với thiết kế nâng cấp ôm quanh ống quần, tạo ấn tượng khó quên. Và điểm đặc biệt là? Squat thoải mái — vì bạn được che chắn tuyệt đối.

- Ôm vừa, cạp cao

- Cạp chun có dây rút

- Vải dệt trơn làm từ 87% polyester tái chế, 13% elastane

- Công nghệ AEROREADY thấm hút ẩm',1),
		(1, 4, 24, 3, 'Jean Wash Roman ', 360000, 15, N'📍 Quần jeans retro nam SIMPLE BLUE ống rộng mầu đen xám wash smoke v1 Không Bai Xù, Bền Màu Hàng Cao Cấp JS05

📍 Chất liệu: Jeans dày dặn, siêu bền, không phai màu 📍Màu sắc: #Xámwash, #Xanhwash, #jeanĐen, #Jeanxanh, #jeansmoke

📍Phom dáng: basic wash ống rộng

📍Size:26-27-28-29-30-31-32-34-36

📍Xuất xứ: Việt Nam

📍Tính năng nổi bật:

 + Thấm hút tốt

+ Co giãn, mềm mại, đàn hồi tốt

+ Bền màu, không bai xù sau nhiều lần giặt

+ Phom dáng trẻ trung, năng động

+ Túi trước sâu rộng, thêm hai túi hậu thời trang, tiện lợi để được nhiều đồ như ví, điện thoại,...

+ Đường may nổi chắc chắn, tinh tế

📍 Hướng dẫn bảo quản quần jean:

+ Sau khi mua về bạn nên ngâm chiếc quần jean của mình với nước lạnh pha muối đậm, giấm ăn hoặc phèn chua ít nhất 12 tiếng đồng hồ. Sau đó, đem xả lại bằng nước sạch. Bạn chú ý là không sử dụng xà phòng để giặt quần trong lần đầu tiên.

+ Nên phơi quần jean trong bóng râm

+ Giặt bằng nước lạnh

+ Không ngâm quần jean quá lâu, chỉ ngâm 3-5 phút

+ Nên giặt tay để quần bền màu lâu hơn.

📍Hướng dẫn sử dụng:

+ Giặt máy với chu kỳ trung bình và vòng quay ngắn

+ Giặt với nhiệt độ tối đa 30 độ C

+ Sấy nhẹ ở nhiệt độ thường

+ Là ủi không quá 110 độ C

+ Phơi bằng móc dưới bóng râm

+ Không sử dụng chất tẩy

📍 Lưu ý nhỏ:

+ Không giặt chung với đồ dễ xước

+ Cẩn thận vướng mắc khi phơi',1),
		(2, 12, 18, 3, 'Short Pants Lining', 460000, 10, N'Quần short nam URBAN thể thao vải gió thoáng mát, thoải mái, chuẩn phom, không bết dính, không khăn, siêu nhẹ NO 2035



- CHẤT LIỆU: 80% Polyester + 20% Spandex (độ co giãn) với ưu điểm:

+ Siêu nhẹ trọng lượng chỉ 105 gsm, mang lại cảm giác mặc như không.

+ Thấm hút tốt

+ Co giãn 2 chiều

+ Nhanh khô',1),
		(7, 51, 18, 4, 'Shoes Balenciaga', 890000, 10, N'Chất liệu trên: PU

Chiều cao gót: Gót thấp 2-3CM 

Chất liệu đế: cao su 

Kiểu dáng: Phiên bản Hàn Quốc

Quy trình sản xuất: ép phun 

Chất liệu nội thất giày: polyester

Chất liệu đế: da sợi nhỏ

Màu sắc: Đen Trắng Xanh

Kích thước: 36,37,38,39,40,41,42,43

Nơi sản xuất: Quảng Châu.

Bảo hành: Đổi trả trong vòng 7 ngày',1),
		(7, 51, 8, 4, 'Shoes Gucci', 6090000, 10, N'Giày_AF1 Gucci,Giày Thể Thao_AF1 Gucci Nam Nữ Cá Tính Thời Trang Phù Hợp Đi Chơi Đi Học Full Box Bill



📌 Thông Tin Sản Phẩm : Giày_AF1 Gucci

📌 Thương Hiệu : No Brand

📌 Thông Số Kích Thước : 36 -> 43

📌 Chất Liệu : Da, Cao Su, Canvas ...',1),
		(7, 51, 18, 4, 'Shoes Givenchy', 390000, 7, N'Thông tin sản phẩm: Sneaker nam G2 Gera kiểu giày trắng nam dáng thể thao, Giày da nam trắng thời trang dễ phối đồ đi làm đi học

- Sản phẩm: Sneaker Gera

Chất liệu: 

+ Da Microfiber, chống nhăn, không lo bong tróc

+ Đế giầy: TPR siêu nhẹ, ma sát chống trơn trượt

- Size giày 38 - 43

- Nơi sản xuất: Việt Nam',1),
		(7, 51, 1, 4, 'Shoes Nike Jordan', 720000, 10, N'Giày_Jordan 1 Low Panda Cổ Thấp Nam Nữ,Giày_Jordan 1 Cổ Thấp Đủ Màu Trẻ Trung Năng Động Cá Tính Dành Cho Nam Và Nữ



📌 Thông Tin Sản Phẩm : Giày_Jordan 1 Low

📌 Thương Hiệu : No Brand

📌 Thông Số Kích Thước : 36-37-38-39-40-41-42-43

📌 Chất Liệu : Da, Cao Su, Canvas ...',1);


Insert into [ImageProducts](product_id, imageProduct_url)
values (1,'image\image_product\image_balos\1_SchoolBag_01.jpg'),
		(1,'image\image_product\image_balos\1_SchoolBag_02.jpg'),
		(1,'image\image_product\image_balos\1_SchoolBag_03.jpg'),
		(1,'image\image_product\image_balos\1_SchoolBag_04.jpg'),
		(2,'image\image_product\image_balos\2_BaloDior_01.jpg'),
		(2,'image\image_product\image_balos\2_BaloDior_02.jpg'),
		(2,'image\image_product\image_balos\2_BaloDior_03.jpg'),
		(2,'image\image_product\image_balos\2_BaloDior_04.jpg'),
		(3,'image\image_product\image_balos\3_BaloLaptop_01.jpg'),
		(3,'image\image_product\image_balos\3_BaloLaptop_02.jpg'),
		(3,'image\image_product\image_balos\3_BaloLaptop_03.jpg'),
		(3,'image\image_product\image_balos\3_BaloLaptop_04.jpg'),
		(4,'image\image_product\image_balos\4_BaloHaras_01.jpg'),
		(4,'image\image_product\image_balos\4_BaloHaras_02.jpg'),
		(4,'image\image_product\image_balos\4_BaloHaras_03.jpg'),
		(4,'image\image_product\image_balos\4_BaloHaras_04.jpg'),
		(5,'image\image_product\image_coat\image_Jacket\1_Jacket_DirtyCoins_01.jpg'),
		(5,'image\image_product\image_coat\image_Jacket\1_Jacket_DirtyCoins_02.jpg'),
		(5,'image\image_product\image_coat\image_Jacket\1_Jacket_DirtyCoins_03.jpg'),
		(5,'image\image_product\image_coat\image_Jacket\1_Jacket_DirtyCoins_04.jpg'),
		(6,'image\image_product\image_coat\image_Jacket\2_Jacket_Nike_01.jpg'),
		(6,'image\image_product\image_coat\image_Jacket\2_Jacket_Nike_02.jpg'),
		(6,'image\image_product\image_coat\image_Jacket\2_Jacket_Nike_03.jpg'),
		(6,'image\image_product\image_coat\image_Jacket\2_Jacket_Nike_04.jpg'),
		(7,'image\image_product\image_coat\image_Jacket\3_Jacket_Adidas_01.jpg'),
		(7,'image\image_product\image_coat\image_Jacket\3_Jacket_Adidas_02.jpg'),
		(7,'image\image_product\image_coat\image_Jacket\3_Jacket_Adidas_03.jpg'),
		(7,'image\image_product\image_coat\image_Jacket\3_Jacket_Adidas_04.jpg'),
		(8,'image\image_product\image_coat\image_Jacket\4_Jacket_Paradox_01.jpg'),
		(8,'image\image_product\image_coat\image_Jacket\4_Jacket_Paradox_02.jpg'),
		(8,'image\image_product\image_coat\image_Jacket\4_Jacket_Paradox_03.jpg'),
		(8,'image\image_product\image_coat\image_Jacket\4_Jacket_Paradox_04.jpg'),
		(9,'image\image_product\image_coat\image_Sweater\1_Sweater_DirtyCoins_01.jpg'),
		(9,'image\image_product\image_coat\image_Sweater\1_Sweater_DirtyCoins_02.jpg'),
		(9,'image\image_product\image_coat\image_Sweater\1_Sweater_DirtyCoins_03.jpg'),
		(9,'image\image_product\image_coat\image_Sweater\1_Sweater_DirtyCoins_04.jpg'),
		(10,'image\image_product\image_coat\image_Sweater\2_Sweater_NotBad_01.jpg'),
		(10,'image\image_product\image_coat\image_Sweater\2_Sweater_NotBad_02.jpg'),
		(10,'image\image_product\image_coat\image_Sweater\2_Sweater_NotBad_03.jpg'),
		(10,'image\image_product\image_coat\image_Sweater\2_Sweater_NotBad_04.jpg'),
		(11,'image\image_product\image_coat\image_Sweater\3_Sweater_Nike_01.jpg'),
		(11,'image\image_product\image_coat\image_Sweater\3_Sweater_Nike_02.jpg'),
		(11,'image\image_product\image_coat\image_Sweater\3_Sweater_Nike_03.jpg'),
		(11,'image\image_product\image_coat\image_Sweater\3_Sweater_Nike_04.jpg'),
		(12,'image\image_product\image_coat\image_Sweater\4_Sweater_Adidas_01.jpg'),
		(12,'image\image_product\image_coat\image_Sweater\4_Sweater_Adidas_02.jpg'),
		(12,'image\image_product\image_coat\image_Sweater\4_Sweater_Adidas_03.jpg'),
		(12,'image\image_product\image_coat\image_Sweater\4_Sweater_Adidas_04.jpg'),
		(13,'image\image_product\image_coat\image_Tshirt\1_Shirt_DirtyCoins_01.jpg'),
		(13,'image\image_product\image_coat\image_Tshirt\1_Shirt_DirtyCoins_02.jpg'),
		(13,'image\image_product\image_coat\image_Tshirt\1_Shirt_DirtyCoins_03.jpg'),
		(14,'image\image_product\image_coat\image_Tshirt\2_Shirt_BadHabits_01.jpg'),
		(14,'image\image_product\image_coat\image_Tshirt\2_Shirt_BadHabits_02.jpg'),
		(14,'image\image_product\image_coat\image_Tshirt\2_Shirt_BadHabits_03.jpg'),
		(14,'image\image_product\image_coat\image_Tshirt\2_Shirt_BadHabits_04.jpg'),
		(15,'image\image_product\image_coat\image_Tshirt\3_Shirt_Nike_01.jpg'),
		(15,'image\image_product\image_coat\image_Tshirt\3_Shirt_Nike_02.jpg'),
		(15,'image\image_product\image_coat\image_Tshirt\3_Shirt_Nike_03.jpg'),
		(15,'image\image_product\image_coat\image_Tshirt\3_Shirt_Nike_04.jpg'),
		(16,'image\image_product\image_coat\image_Tshirt\4_Shirt_Adidas_01.jpg'),
		(16,'image\image_product\image_coat\image_Tshirt\4_Shirt_Adidas_02.jpg'),
		(16,'image\image_product\image_coat\image_Tshirt\4_Shirt_Adidas_03.jpg'),
		(16,'image\image_product\image_coat\image_Tshirt\4_Shirt_Adidas_04.jpg'),
		(17,'image\image_product\image_cosmetics\image_men\1_Cosmictics_1.jpg'),
		(17,'image\image_product\image_cosmetics\image_men\1_Cosmictics_2.jpg'),
		(17,'image\image_product\image_cosmetics\image_men\1_Cosmictics_3.jpg'),
		(17,'image\image_product\image_cosmetics\image_men\1_Cosmictics_4.jpg'),
		(18,'image\image_product\image_cosmetics\image_men\2_Cosmictics_1.jpg'),
		(18,'image\image_product\image_cosmetics\image_men\2_Cosmictics_2.jpg'),
		(18,'image\image_product\image_cosmetics\image_men\2_Cosmictics_3.jpg'),
		(18,'image\image_product\image_cosmetics\image_men\2_Cosmictics_4.jpg'),
		(19,'image\image_product\image_cosmetics\image_men\3_Cosmictics_1.jpg'),
		(19,'image\image_product\image_cosmetics\image_men\3_Cosmictics_2.jpg'),
		(19,'image\image_product\image_cosmetics\image_men\3_Cosmictics_3.jpg'),
		(19,'image\image_product\image_cosmetics\image_men\3_Cosmictics_4.jpg'),
		(20,'image\image_product\image_cosmetics\image_men\4_Cosmictics_1.jpg'),
		(20,'image\image_product\image_cosmetics\image_men\4_Cosmictics_2.jpg'),
		(20,'image\image_product\image_cosmetics\image_men\4_Cosmictics_3.jpg'),
		(20,'image\image_product\image_cosmetics\image_men\4_Cosmictics_4.jpg'),
		(21,'image\image_product\image_cosmetics\image_men\5_Cosmictics_1.jpg'),
		(21,'image\image_product\image_cosmetics\image_men\5_Cosmictics_2.jpg'),
		(21,'image\image_product\image_cosmetics\image_men\5_Cosmictics_3.jpg'),
		(21,'image\image_product\image_cosmetics\image_men\5_Cosmictics_4.jpg'),
		(22,'image\image_product\image_cosmetics\image_men\6_Cosmictics_1.jpg'),
		(22,'image\image_product\image_cosmetics\image_men\6_Cosmictics_2.jpg'),
		(22,'image\image_product\image_cosmetics\image_men\6_Cosmictics_3.jpg'),
		(22,'image\image_product\image_cosmetics\image_men\6_Cosmictics_4.jpg'),
		(23,'image\image_product\image_cosmetics\image_men\7_Cosmictics_1.jpg'),
		(23,'image\image_product\image_cosmetics\image_men\7_Cosmictics_2.jpg'),
		(23,'image\image_product\image_cosmetics\image_men\7_Cosmictics_3.jpg'),
		(23,'image\image_product\image_cosmetics\image_men\7_Cosmictics_4.jpg'),
		(24, 'image\image_product\image_cosmetics\image_women\1_Cosmictics_1.jpg'),
		(24, 'image\image_product\image_cosmetics\image_women\1_Cosmictics_2.jpg'),
		(24, 'image\image_product\image_cosmetics\image_women\1_Cosmictics_3.jpg'),
		(24, 'image\image_product\image_cosmetics\image_women\1_Cosmictics_4.jpg'),
		(25, 'image\image_product\image_cosmetics\image_women\2_Cosmictics_1.jpg'),
		(25, 'image\image_product\image_cosmetics\image_women\2_Cosmictics_2.jpg'),
		(25, 'image\image_product\image_cosmetics\image_women\2_Cosmictics_3.jpg'),
		(25, 'image\image_product\image_cosmetics\image_women\2_Cosmictics_4.jpg'),
		(26, 'image\image_product\image_cosmetics\image_women\3_Cosmictics_1.jpg'),
		(26, 'image\image_product\image_cosmetics\image_women\3_Cosmictics_2.jpg'),
		(26, 'image\image_product\image_cosmetics\image_women\3_Cosmictics_3.jpg'),
		(26, 'image\image_product\image_cosmetics\image_women\3_Cosmictics_4.jpg'),
		(27, 'image\image_product\image_cosmetics\image_women\4_Cosmictics_1.jpg'),
		(27, 'image\image_product\image_cosmetics\image_women\4_Cosmictics_2.jpg'),
		(27, 'image\image_product\image_cosmetics\image_women\4_Cosmictics_3.jpg'),
		(27, 'image\image_product\image_cosmetics\image_women\4_Cosmictics_4.jpg'),
		(28, 'image\image_product\image_cosmetics\image_women\5_Cosmictics_1.jpg'),
		(28, 'image\image_product\image_cosmetics\image_women\5_Cosmictics_2.jpg'),
		(28, 'image\image_product\image_cosmetics\image_women\5_Cosmictics_3.jpg'),
		(28, 'image\image_product\image_cosmetics\image_women\5_Cosmictics_4.jpg'),
		(29, 'image\image_product\image_cosmetics\image_women\6_Cosmictics_1.jpg'),
		(29, 'image\image_product\image_cosmetics\image_women\6_Cosmictics_2.jpg'),
		(29, 'image\image_product\image_cosmetics\image_women\6_Cosmictics_3.jpg'),
		(29, 'image\image_product\image_cosmetics\image_women\6_Cosmictics_4.jpg'),
		(30, 'image\image_product\image_cosmetics\image_women\7_Cosmictics_1.jpg'),
		(30, 'image\image_product\image_cosmetics\image_women\7_Cosmictics_2.jpg'),
		(30, 'image\image_product\image_cosmetics\image_women\7_Cosmictics_3.jpg'),
		(30, 'image\image_product\image_cosmetics\image_women\7_Cosmictics_4.jpg'),
		(31, 'image\image_product\image_electronic_device\image_earphone\1_Wireless_headphones_01.jpg'),
		(31, 'image\image_product\image_electronic_device\image_earphone\1_Wireless_headphones_02.jpg'),
		(31, 'image\image_product\image_electronic_device\image_earphone\1_Wireless_headphones_03.jpg'),
		(31, 'image\image_product\image_electronic_device\image_earphone\1_Wireless_headphones_04.jpg'),
		(31, 'image\image_product\image_electronic_device\image_earphone\1_Wireless_headphones_05.jpg'),
		(32, 'image\image_product\image_electronic_device\image_earphone\2_Wireless_headphones_01.jpg'),
		(32, 'image\image_product\image_electronic_device\image_earphone\2_Wireless_headphones_02.jpg'),
		(32, 'image\image_product\image_electronic_device\image_earphone\2_Wireless_headphones_03.jpg'),
		(32, 'image\image_product\image_electronic_device\image_earphone\2_Wireless_headphones_04.jpg'),
		(32, 'image\image_product\image_electronic_device\image_earphone\2_Wireless_headphones_05.jpg'),
		(32, 'image\image_product\image_electronic_device\image_earphone\2_Wireless_headphones_06.jpg'),
		(33, 'image\image_product\image_electronic_device\image_earphone\3_Wireless_headphones_01.jpg'),
		(33, 'image\image_product\image_electronic_device\image_earphone\3_Wireless_headphones_02.jpg'),
		(33, 'image\image_product\image_electronic_device\image_earphone\3_Wireless_headphones_03.jpg'),
		(33, 'image\image_product\image_electronic_device\image_earphone\3_Wireless_headphones_04.jpg'),
		(33, 'image\image_product\image_electronic_device\image_earphone\3_Wireless_headphones_05.jpg'),
		(34, 'image\image_product\image_electronic_device\image_earphone\4_Wireless_headphones_01.jpg'),
		(34, 'image\image_product\image_electronic_device\image_earphone\4_Wireless_headphones_02.jpg'),
		(34, 'image\image_product\image_electronic_device\image_earphone\4_Wireless_headphones_03.jpg'),
		(34, 'image\image_product\image_electronic_device\image_earphone\4_Wireless_headphones_04.jpg'),
		(34, 'image\image_product\image_electronic_device\image_earphone\4_Wireless_headphones_05.jpg'),
		(35, 'image\image_product\image_electronic_device\image_earphone\5_Wireless_headphones_01.jpg'),
		(35, 'image\image_product\image_electronic_device\image_earphone\5_Wireless_headphones_02.jpg'),
		(35, 'image\image_product\image_electronic_device\image_earphone\5_Wireless_headphones_03.jpg'),
		(35, 'image\image_product\image_electronic_device\image_earphone\5_Wireless_headphones_04.jpg'),
		(36, 'image\image_product\image_electronic_device\image_earphone\6_Wireless_headphones_01.jpg'),
		(36, 'image\image_product\image_electronic_device\image_earphone\6_Wireless_headphones_02.jpg'),
		(36, 'image\image_product\image_electronic_device\image_earphone\6_Wireless_headphones_03.jpg'),
		(36, 'image\image_product\image_electronic_device\image_earphone\6_Wireless_headphones_04.jpg'),
		(37, 'image\image_product\image_electronic_device\image_earphone\7_Wireless_headphones_01.jpg'),
		(37, 'image\image_product\image_electronic_device\image_earphone\7_Wireless_headphones_02.jpg'),
		(37, 'image\image_product\image_electronic_device\image_earphone\7_Wireless_headphones_03.jpg'),
		(37, 'image\image_product\image_electronic_device\image_earphone\7_Wireless_headphones_04.jpg'),
		(38,'image\image_product\image_electronic_device\image_phone\1_Phone_1.jpg'),
		(38,'image\image_product\image_electronic_device\image_phone\1_Phone_2.jpg'),
		(38,'image\image_product\image_electronic_device\image_phone\1_Phone_3.jpg'),
		(38,'image\image_product\image_electronic_device\image_phone\1_Phone_4.jpg'),
		(39,'image\image_product\image_electronic_device\image_phone\2_Phone_1.jpg'),
		(39,'image\image_product\image_electronic_device\image_phone\2_Phone_2.jpg'),
		(39,'image\image_product\image_electronic_device\image_phone\2_Phone_3.jpg'),
		(39,'image\image_product\image_electronic_device\image_phone\2_Phone_4.jpg'),
		(40,'image\image_product\image_electronic_device\image_phone\3_Phone_1.jpg'),
		(40,'image\image_product\image_electronic_device\image_phone\3_Phone_2.jpg'),
		(40,'image\image_product\image_electronic_device\image_phone\3_Phone_3.jpg'),
		(40,'image\image_product\image_electronic_device\image_phone\3_Phone_4.jpg'),
		(41,'image\image_product\image_electronic_device\image_phone\4_Phone_1.jpg'),
		(41,'image\image_product\image_electronic_device\image_phone\4_Phone_2.jpg'),
		(41,'image\image_product\image_electronic_device\image_phone\4_Phone_3.jpg'),
		(41,'image\image_product\image_electronic_device\image_phone\4_Phone_4.jpg'),
		(42,'image\image_product\image_electronic_device\image_phone\5_Phone_1.jpg'),
		(42,'image\image_product\image_electronic_device\image_phone\5_Phone_2.jpg'),
		(42,'image\image_product\image_electronic_device\image_phone\5_Phone_3.jpg'),
		(42,'image\image_product\image_electronic_device\image_phone\5_Phone_4.jpg'),
		(43,'image\image_product\image_electronic_device\image_phone\6_Phone_1.jpg'),
		(43,'image\image_product\image_electronic_device\image_phone\6_Phone_2.jpg'),
		(43,'image\image_product\image_electronic_device\image_phone\6_Phone_3.jpg'),
		(43,'image\image_product\image_electronic_device\image_phone\6_Phone_4.jpg'),
		(44, 'image\image_product\image_electronic_device\image_gaming_handle\1_gaming_handle_01.jpg' ),
		(44, 'image\image_product\image_electronic_device\image_gaming_handle\1_gaming_handle_02.jpg' ),
		(44, 'image\image_product\image_electronic_device\image_gaming_handle\1_gaming_handle_03.jpg' ),
		(44, 'image\image_product\image_electronic_device\image_gaming_handle\1_gaming_handle_04.jpg' ),
		(45, 'image\image_product\image_electronic_device\image_gaming_handle\2_gaming_handle_01.jpg' ),
		(45, 'image\image_product\image_electronic_device\image_gaming_handle\2_gaming_handle_02.jpg' ),
		(45, 'image\image_product\image_electronic_device\image_gaming_handle\2_gaming_handle_03.jpg' ),
		(45, 'image\image_product\image_electronic_device\image_gaming_handle\2_gaming_handle_04.jpg' ),
		(46, 'image\image_product\image_electronic_device\image_gaming_handle\3_gaming_handle_01.jpg' ),
		(46, 'image\image_product\image_electronic_device\image_gaming_handle\3_gaming_handle_02.jpg' ),
		(46, 'image\image_product\image_electronic_device\image_gaming_handle\3_gaming_handle_03.jpg' ),
		(46, 'image\image_product\image_electronic_device\image_gaming_handle\3_gaming_handle_04.jpg' ),
		(47, 'image\image_product\image_electronic_device\image_gaming_handle\4_gaming_handle_01.jpg' ),
		(47, 'image\image_product\image_electronic_device\image_gaming_handle\4_gaming_handle_02.jpg' ),
		(47, 'image\image_product\image_electronic_device\image_gaming_handle\4_gaming_handle_03.jpg' ),
		(47, 'image\image_product\image_electronic_device\image_gaming_handle\4_gaming_handle_04.jpg' ),
		(47, 'image\image_product\image_electronic_device\image_gaming_handle\4_gaming_handle_05.jpg' ),
		(48, 'image\image_product\image_electronic_device\image_loudspeaker\1_loudspeaker_01.jpg'),
		(48, 'image\image_product\image_electronic_device\image_loudspeaker\1_loudspeaker_02.jpg'),
		(48, 'image\image_product\image_electronic_device\image_loudspeaker\1_loudspeaker_03.jpg'),
		(48, 'image\image_product\image_electronic_device\image_loudspeaker\1_loudspeaker_04.jpg'),
		(49, 'image\image_product\image_electronic_device\image_loudspeaker\2_loudspeaker_01.jpg'),
		(49, 'image\image_product\image_electronic_device\image_loudspeaker\2_loudspeaker_02.jpg'),
		(49, 'image\image_product\image_electronic_device\image_loudspeaker\2_loudspeaker_03.jpg'),
		(49, 'image\image_product\image_electronic_device\image_loudspeaker\2_loudspeaker_04.jpg'),
		(50, 'image\image_product\image_electronic_device\image_loudspeaker\3_loudspeaker_01.jpg'),
		(50, 'image\image_product\image_electronic_device\image_loudspeaker\3_loudspeaker_02.jpg'),
		(50, 'image\image_product\image_electronic_device\image_loudspeaker\3_loudspeaker_03.jpg'),
		(50, 'image\image_product\image_electronic_device\image_loudspeaker\3_loudspeaker_04.jpg'),
		(51, 'image\image_product\image_electronic_device\image_loudspeaker\4_loudspeaker_01.jpg'),
		(51, 'image\image_product\image_electronic_device\image_loudspeaker\4_loudspeaker_02.jpg'),
		(51, 'image\image_product\image_electronic_device\image_loudspeaker\4_loudspeaker_03.jpg'),
		(51, 'image\image_product\image_electronic_device\image_loudspeaker\4_loudspeaker_04.jpg'),
		(52, 'image\image_product\image_electronic_device\image_loudspeaker\5_loudspeaker_01.jpg'),
		(52, 'image\image_product\image_electronic_device\image_loudspeaker\5_loudspeaker_02.jpg'),
		(52, 'image\image_product\image_electronic_device\image_loudspeaker\5_loudspeaker_03.jpg'),
		(52, 'image\image_product\image_electronic_device\image_loudspeaker\5_loudspeaker_04.jpg'),
		(53, 'image\image_product\image_electronic_device\image_loudspeaker\6_loudspeaker_01.jpg'),
		(53, 'image\image_product\image_electronic_device\image_loudspeaker\6_loudspeaker_02.jpg'),
		(53, 'image\image_product\image_electronic_device\image_loudspeaker\6_loudspeaker_03.jpg'),
		(53, 'image\image_product\image_electronic_device\image_loudspeaker\6_loudspeaker_04.jpg'),
		(54, 'image\image_product\image_electronic_device\image_printer\1_printer_01.jpg'),
		(54, 'image\image_product\image_electronic_device\image_printer\1_printer_02.jpg'),
		(54, 'image\image_product\image_electronic_device\image_printer\1_printer_03.jpg'),
		(54, 'image\image_product\image_electronic_device\image_printer\1_printer_04.jpg'),
		(55, 'image\image_product\image_electronic_device\image_printer\2_printer_01.jpg'),
		(55, 'image\image_product\image_electronic_device\image_printer\2_printer_02.jpg'),
		(55, 'image\image_product\image_electronic_device\image_printer\2_printer_03.jpg'),
		(55, 'image\image_product\image_electronic_device\image_printer\2_printer_04.jpg'),
		(55, 'image\image_product\image_electronic_device\image_printer\2_printer_05.jpg'),
		(56, 'image\image_product\image_electronic_device\image_printer\3_printer_01.jpg'),
		(56, 'image\image_product\image_electronic_device\image_printer\3_printer_02.jpg'),
		(56, 'image\image_product\image_electronic_device\image_printer\3_printer_03.jpg'),
		(56, 'image\image_product\image_electronic_device\image_printer\3_printer_04.jpg'),
		(56, 'image\image_product\image_electronic_device\image_printer\3_printer_05.jpg'),
		(57, 'image\image_product\image_electronic_device\image_printer\4_printer_01.jpg'),
		(57, 'image\image_product\image_electronic_device\image_printer\4_printer_02.jpg'),
		(57, 'image\image_product\image_electronic_device\image_printer\4_printer_03.jpg'),
		(57, 'image\image_product\image_electronic_device\image_printer\4_printer_04.jpg'),
		(57, 'image\image_product\image_electronic_device\image_printer\4_printer_05.jpg'),
		(58, 'image\image_product\image_electronic_device\image_printer\5_printer_01.jpg'),
		(58, 'image\image_product\image_electronic_device\image_printer\5_printer_02.jpg'),
		(58, 'image\image_product\image_electronic_device\image_printer\5_printer_03.jpg'),
		(58, 'image\image_product\image_electronic_device\image_printer\5_printer_04.jpg'),
		(59, 'image\image_product\image_electronic_device\image_printer\6_printer_01.jpg'),
		(59, 'image\image_product\image_electronic_device\image_printer\6_printer_02.jpg'),
		(59, 'image\image_product\image_electronic_device\image_printer\6_printer_03.jpg'),
		(59, 'image\image_product\image_electronic_device\image_printer\6_printer_04.jpg'),
		(59, 'image\image_product\image_electronic_device\image_printer\6_printer_05.jpg'),
		(60, 'image\image_product\image_electronic_device\image_projector\1_projector_01.jpg'),
		(60, 'image\image_product\image_electronic_device\image_projector\1_projector_02.jpg'),
		(60, 'image\image_product\image_electronic_device\image_projector\1_projector_03.jpg'),
		(60, 'image\image_product\image_electronic_device\image_projector\1_projector_04.jpg'),
		(61, 'image\image_product\image_electronic_device\image_projector\2_projector_01.jpg'),
		(61, 'image\image_product\image_electronic_device\image_projector\2_projector_02.jpg'),
		(61, 'image\image_product\image_electronic_device\image_projector\2_projector_03.jpg'),
		(61, 'image\image_product\image_electronic_device\image_projector\2_projector_04.jpg'),
		(62, 'image\image_product\image_electronic_device\image_projector\3_projector_01.jpg'),
		(62, 'image\image_product\image_electronic_device\image_projector\3_projector_02.jpg'),
		(62, 'image\image_product\image_electronic_device\image_projector\3_projector_03.jpg'),
		(62, 'image\image_product\image_electronic_device\image_projector\3_projector_04.jpg'),
		(63, 'image\image_product\image_electronic_device\image_projector\4_projector_01.jpg'),
		(63, 'image\image_product\image_electronic_device\image_projector\4_projector_02.jpg'),
		(63, 'image\image_product\image_electronic_device\image_projector\4_projector_03.jpg'),
		(63, 'image\image_product\image_electronic_device\image_projector\4_projector_04.jpg'),
		(64, 'image\image_product\image_electronic_device\image_remote\1_remote_01.jpg'),
		(64, 'image\image_product\image_electronic_device\image_remote\1_remote_02.jpg'),
		(64, 'image\image_product\image_electronic_device\image_remote\1_remote_03.jpg'),
		(64, 'image\image_product\image_electronic_device\image_remote\1_remote_04.jpg'),
		(65, 'image\image_product\image_electronic_device\image_remote\2_remote_01.jpg'),
		(65, 'image\image_product\image_electronic_device\image_remote\2_remote_02.jpg'),
		(65, 'image\image_product\image_electronic_device\image_remote\2_remote_03.jpg'),
		(65, 'image\image_product\image_electronic_device\image_remote\2_remote_04.jpg'),
		(66, 'image\image_product\image_electronic_device\image_remote\3_remote_01.jpg'),
		(66, 'image\image_product\image_electronic_device\image_remote\3_remote_02.jpg'),
		(66, 'image\image_product\image_electronic_device\image_remote\3_remote_03.jpg'),
		(66, 'image\image_product\image_electronic_device\image_remote\3_remote_04.jpg'),
		(67, 'image\image_product\image_electronic_device\image_remote\4_remote_01.jpg'),
		(67, 'image\image_product\image_electronic_device\image_remote\4_remote_02.jpg'),
		(67, 'image\image_product\image_electronic_device\image_remote\4_remote_03.jpg'),
		(67, 'image\image_product\image_electronic_device\image_remote\4_remote_04.jpg'),
		(68, 'image\image_product\image_electronic_device\image_tivi\1_Tivi__01.jpg'),
		(68, 'image\image_product\image_electronic_device\image_tivi\1_Tivi__02.jpg'),
		(68, 'image\image_product\image_electronic_device\image_tivi\1_Tivi__03.jpg'),
		(68, 'image\image_product\image_electronic_device\image_tivi\1_Tivi__04.jpg'),
		(68, 'image\image_product\image_electronic_device\image_tivi\1_Tivi__05.jpg'),
		(69, 'image\image_product\image_electronic_device\image_tivi\2_Tivi__01.jpg'),
		(69, 'image\image_product\image_electronic_device\image_tivi\2_Tivi__02.jpg'),
		(69, 'image\image_product\image_electronic_device\image_tivi\2_Tivi__03.jpg'),
		(69, 'image\image_product\image_electronic_device\image_tivi\2_Tivi__04.jpg'),
		(69, 'image\image_product\image_electronic_device\image_tivi\2_Tivi__05.jpg'),
		(70, 'image\image_product\image_electronic_device\image_tivi\3_Tivi__01.jpg'),
		(70, 'image\image_product\image_electronic_device\image_tivi\3_Tivi__02.jpg'),
		(70, 'image\image_product\image_electronic_device\image_tivi\3_Tivi__03.jpg'),
		(70, 'image\image_product\image_electronic_device\image_tivi\3_Tivi__04.jpg'),
		(70, 'image\image_product\image_electronic_device\image_tivi\3_Tivi__05.jpg'),
		(71, 'image\image_product\image_electronic_device\image_tivi\4_Tivi__01.jpg'),
		(71, 'image\image_product\image_electronic_device\image_tivi\4_Tivi__02.jpg'),
		(71, 'image\image_product\image_electronic_device\image_tivi\4_Tivi__03.jpg'),
		(71, 'image\image_product\image_electronic_device\image_tivi\4_Tivi__04.jpg'),
		(72, 'image\image_product\image_electronic_device\image_tivi\5_Tivi__01.jpg'),
		(72, 'image\image_product\image_electronic_device\image_tivi\5_Tivi__02.jpg'),
		(72, 'image\image_product\image_electronic_device\image_tivi\5_Tivi__03.jpg'),
		(72, 'image\image_product\image_electronic_device\image_tivi\5_Tivi__04.jpg'),
		(73, 'image\image_product\image_electronic_device\image_tivi\6_Tivi__01.jpg'),
		(73, 'image\image_product\image_electronic_device\image_tivi\6_Tivi__02.jpg'),
		(73, 'image\image_product\image_electronic_device\image_tivi\6_Tivi__03.jpg'),
		(73, 'image\image_product\image_electronic_device\image_tivi\6_Tivi__04.jpg'),
		(74, 'image\image_product\image_electronic_device\image_watch\1_watch_01.jpg'),
		(74, 'image\image_product\image_electronic_device\image_watch\1_watch_02.jpg'),
		(74, 'image\image_product\image_electronic_device\image_watch\1_watch_03.jpg'),
		(74, 'image\image_product\image_electronic_device\image_watch\1_watch_04.jpg'),
		(74, 'image\image_product\image_electronic_device\image_watch\1_watch_05.jpg'),
		(75, 'image\image_product\image_electronic_device\image_watch\2_watch_01.jpg'),
		(75, 'image\image_product\image_electronic_device\image_watch\2_watch_02.jpg'),
		(75, 'image\image_product\image_electronic_device\image_watch\2_watch_03.jpg'),
		(75, 'image\image_product\image_electronic_device\image_watch\2_watch_04.jpg'),
		(76, 'image\image_product\image_electronic_device\image_watch\3_watch_01.jpg'),
		(76, 'image\image_product\image_electronic_device\image_watch\3_watch_02.jpg'),
		(76, 'image\image_product\image_electronic_device\image_watch\3_watch_03.jpg'),
		(76, 'image\image_product\image_electronic_device\image_watch\3_watch_04.jpg'),
		(77, 'image\image_product\image_electronic_device\image_watch\4_watch_01.jpg'),
		(77, 'image\image_product\image_electronic_device\image_watch\4_watch_02.jpg'),
		(77, 'image\image_product\image_electronic_device\image_watch\4_watch_03.jpg'),
		(77, 'image\image_product\image_electronic_device\image_watch\4_watch_04.jpg'),
		(78, 'image\image_product\image_laptopPC\image_keyboard\1_keyboard_01.jpg'),
		(78, 'image\image_product\image_laptopPC\image_keyboard\1_keyboard_02.jpg'),
		(78, 'image\image_product\image_laptopPC\image_keyboard\1_keyboard_03.jpg'),
		(78, 'image\image_product\image_laptopPC\image_keyboard\1_keyboard_04.jpg'),
		(79, 'image\image_product\image_laptopPC\image_keyboard\2_keyboard_01.jpg'),
		(79, 'image\image_product\image_laptopPC\image_keyboard\2_keyboard_02.jpg'),
		(79, 'image\image_product\image_laptopPC\image_keyboard\2_keyboard_03.jpg'),
		(79, 'image\image_product\image_laptopPC\image_keyboard\2_keyboard_04.jpg'),
		(80, 'image\image_product\image_laptopPC\image_keyboard\3_keyboard_01.jpg'),
		(80, 'image\image_product\image_laptopPC\image_keyboard\3_keyboard_02.jpg'),
		(80, 'image\image_product\image_laptopPC\image_keyboard\3_keyboard_03.jpg'),
		(80, 'image\image_product\image_laptopPC\image_keyboard\3_keyboard_04.jpg'),
		(81, 'image\image_product\image_laptopPC\image_keyboard\4_keyboard_01.jpg'),
		(81, 'image\image_product\image_laptopPC\image_keyboard\4_keyboard_02.jpg'),
		(81, 'image\image_product\image_laptopPC\image_keyboard\4_keyboard_03.jpg'),
		(81, 'image\image_product\image_laptopPC\image_keyboard\4_keyboard_04.jpg'),
		(82, 'image\image_product\image_laptopPC\image_laptop\1_laptop_01.jpg'),
		(82, 'image\image_product\image_laptopPC\image_laptop\1_laptop_02.jpg'),
		(82, 'image\image_product\image_laptopPC\image_laptop\1_laptop_03.jpg'),
		(82, 'image\image_product\image_laptopPC\image_laptop\1_laptop_04.jpg'),
		(83, 'image\image_product\image_laptopPC\image_laptop\2_laptop_01.jpg'),
		(83, 'image\image_product\image_laptopPC\image_laptop\2_laptop_02.jpg'),
		(83, 'image\image_product\image_laptopPC\image_laptop\2_laptop_03.jpg'),
		(83, 'image\image_product\image_laptopPC\image_laptop\2_laptop_04.jpg'),
		(84, 'image\image_product\image_laptopPC\image_laptop\3_laptop_01.jpg'),
		(84, 'image\image_product\image_laptopPC\image_laptop\3_laptop_02.jpg'),
		(84, 'image\image_product\image_laptopPC\image_laptop\3_laptop_03.jpg'),
		(84, 'image\image_product\image_laptopPC\image_laptop\3_laptop_04.jpg'),
		(84, 'image\image_product\image_laptopPC\image_laptop\3_laptop_05.jpg'),
		(85, 'image\image_product\image_laptopPC\image_laptop\4_laptop_01.jpg'),
		(85, 'image\image_product\image_laptopPC\image_laptop\4_laptop_02.jpg'),
		(85, 'image\image_product\image_laptopPC\image_laptop\4_laptop_03.jpg'),
		(85, 'image\image_product\image_laptopPC\image_laptop\4_laptop_04.jpg'),
		(85, 'image\image_product\image_laptopPC\image_laptop\4_laptop_05.jpg'),
		(86, 'image\image_product\image_laptopPC\image_laptop\5_laptop_01.jpg'),
		(86, 'image\image_product\image_laptopPC\image_laptop\5_laptop_02.jpg'),
		(86, 'image\image_product\image_laptopPC\image_laptop\5_laptop_03.jpg'),
		(86, 'image\image_product\image_laptopPC\image_laptop\5_laptop_04.jpg'),
		(87, 'image\image_product\image_laptopPC\image_mouse\1_mouse_01.jpg'),
		(87, 'image\image_product\image_laptopPC\image_mouse\1_mouse_02.jpg'),
		(87, 'image\image_product\image_laptopPC\image_mouse\1_mouse_03.jpg'),
		(87, 'image\image_product\image_laptopPC\image_mouse\1_mouse_04.jpg'),
		(87, 'image\image_product\image_laptopPC\image_mouse\1_mouse_05.jpg'),
		(88, 'image\image_product\image_laptopPC\image_mouse\2_mouse_01.jpg'),
		(88, 'image\image_product\image_laptopPC\image_mouse\2_mouse_02.jpg'),
		(88, 'image\image_product\image_laptopPC\image_mouse\2_mouse_03.jpg'),
		(88, 'image\image_product\image_laptopPC\image_mouse\2_mouse_04.jpg'),
		(89, 'image\image_product\image_laptopPC\image_mouse\3_mouse_01.jpg'),
		(89, 'image\image_product\image_laptopPC\image_mouse\3_mouse_02.jpg'),
		(89, 'image\image_product\image_laptopPC\image_mouse\3_mouse_03.jpg'),
		(89, 'image\image_product\image_laptopPC\image_mouse\3_mouse_04.jpg'),
		(89, 'image\image_product\image_laptopPC\image_mouse\3_mouse_05.jpg'),
		(90, 'image\image_product\image_laptopPC\image_mouse\4_mouse_01.jpg'),
		(90, 'image\image_product\image_laptopPC\image_mouse\4_mouse_02.jpg'),
		(90, 'image\image_product\image_laptopPC\image_mouse\4_mouse_03.jpg'),
		(90, 'image\image_product\image_laptopPC\image_mouse\4_mouse_04.jpg'),
		(91, 'image\image_product\image_laptopPC\image_rack\1_rack_01.jpg'),
		(91, 'image\image_product\image_laptopPC\image_rack\1_rack_02.jpg'),
		(91, 'image\image_product\image_laptopPC\image_rack\1_rack_03.jpg'),
		(91, 'image\image_product\image_laptopPC\image_rack\1_rack_04.jpg'),
		(92, 'image\image_product\image_laptopPC\image_rack\2_rack_01.jpg'),
		(92, 'image\image_product\image_laptopPC\image_rack\2_rack_02.jpg'),
		(92, 'image\image_product\image_laptopPC\image_rack\2_rack_03.jpg'),
		(92, 'image\image_product\image_laptopPC\image_rack\2_rack_04.jpg'),
		(93, 'image\image_product\image_laptopPC\image_rack\3_rack_01.jpg'),
		(93, 'image\image_product\image_laptopPC\image_rack\3_rack_02.jpg'),
		(93, 'image\image_product\image_laptopPC\image_rack\3_rack_03.jpg'),
		(93, 'image\image_product\image_laptopPC\image_rack\3_rack_04.jpg'),
		(94, 'image\image_product\image_laptopPC\image_screen\1_screen_01.jpg'),
		(94, 'image\image_product\image_laptopPC\image_screen\1_screen_02.jpg'),
		(94, 'image\image_product\image_laptopPC\image_screen\1_screen_03.jpg'),
		(94, 'image\image_product\image_laptopPC\image_screen\1_screen_04.jpg'),
		(95, 'image\image_product\image_laptopPC\image_screen\2_screen_01.jpg'),
		(95, 'image\image_product\image_laptopPC\image_screen\2_screen_02.jpg'),
		(95, 'image\image_product\image_laptopPC\image_screen\2_screen_03.jpg'),
		(95, 'image\image_product\image_laptopPC\image_screen\2_screen_04.jpg'),
		(96, 'image\image_product\image_laptopPC\image_screen\3_screen_01.jpg'),
		(96, 'image\image_product\image_laptopPC\image_screen\3_screen_02.jpg'),
		(96, 'image\image_product\image_laptopPC\image_screen\3_screen_03.jpg'),
		(97, 'image\image_product\image_laptopPC\image_screen\4_screen_01.jpg'),
		(97, 'image\image_product\image_laptopPC\image_screen\4_screen_02.jpg'),
		(97, 'image\image_product\image_laptopPC\image_screen\4_screen_03.jpg'),
		(97, 'image\image_product\image_laptopPC\image_screen\4_screen_04.jpg'),
		(98, 'image\image_product\image_pants\1_ShortPants_DirtyCoins_01.jpg'),
		(98, 'image\image_product\image_pants\1_ShortPants_DirtyCoins_02.jpg'),
		(98, 'image\image_product\image_pants\1_ShortPants_DirtyCoins_03.jpg'),
		(98, 'image\image_product\image_pants\1_ShortPants_DirtyCoins_04.jpg'),
		(99, 'image\image_product\image_pants\1_skiny_jean_01.jpg'),
		(99, 'image\image_product\image_pants\1_skiny_jean_02.jpg'),
		(99, 'image\image_product\image_pants\1_skiny_jean_03.jpg'),
		(99, 'image\image_product\image_pants\1_skiny_jean_04.jpg'),
		(100, 'image\image_product\image_pants\2_ShortPants_Nike_01.jpg'),
		(100, 'image\image_product\image_pants\2_ShortPants_Nike_02.jpg'),
		(100, 'image\image_product\image_pants\2_ShortPants_Nike_03.jpg'),
		(100, 'image\image_product\image_pants\2_ShortPants_Nike_04.jpg'),
		(101, 'image\image_product\image_pants\2_Snap_Pants_Jogger_01.jpg'),
		(101, 'image\image_product\image_pants\2_Snap_Pants_Jogger_02.jpg'),
		(101, 'image\image_product\image_pants\2_Snap_Pants_Jogger_03.jpg'),
		(101, 'image\image_product\image_pants\2_Snap_Pants_Jogger_04.jpg'),
		(102, 'image\image_product\image_pants\3_Denim_Work_Pants_Jogger_01.jpg'),
		(102, 'image\image_product\image_pants\3_Denim_Work_Pants_Jogger_02.jpg'),
		(102, 'image\image_product\image_pants\3_Denim_Work_Pants_Jogger_03.jpg'),
		(102, 'image\image_product\image_pants\3_Denim_Work_Pants_Jogger_04.jpg'),
		(103, 'image\image_product\image_pants\3_ShortPants_Nike_01.jpg'),
		(103, 'image\image_product\image_pants\3_ShortPants_Nike_02.jpg'),
		(103, 'image\image_product\image_pants\3_ShortPants_Nike_03.jpg'),
		(104, 'image\image_product\image_pants\4_Jean_Wash_Roman_01.jpg'),
		(104, 'image\image_product\image_pants\4_Jean_Wash_Roman_02.jpg'),
		(104, 'image\image_product\image_pants\4_Jean_Wash_Roman_03.jpg'),
		(104, 'image\image_product\image_pants\4_Jean_Wash_Roman_04.jpg'),
		(105, 'image\image_product\image_pants\4_ShortPants_Lining_01.jpg'),
		(106, 'image\image_product\image_shoes\1_ShoesBalenciaga_01.jpg'),
		(106, 'image\image_product\image_shoes\1_ShoesBalenciaga_02.jpg'),
		(106, 'image\image_product\image_shoes\1_ShoesBalenciaga_03.jpg'),
		(106, 'image\image_product\image_shoes\1_ShoesBalenciaga_04.jpg'),
		(107, 'image\image_product\image_shoes\2_ShoesGucii_01.jpg'),
		(107, 'image\image_product\image_shoes\2_ShoesGucii_02.jpg'),
		(107, 'image\image_product\image_shoes\2_ShoesGucii_03.jpg'),
		(107, 'image\image_product\image_shoes\2_ShoesGucii_04.jpg'),
		(108, 'image\image_product\image_shoes\3_ShoesGivenchy_01.jpg'),
		(108, 'image\image_product\image_shoes\3_ShoesGivenchy_02.jpg'),
		(108, 'image\image_product\image_shoes\3_ShoesGivenchy_03.jpg'),
		(108, 'image\image_product\image_shoes\3_ShoesGivenchy_04.jpg'),
		(109, 'image\image_product\image_shoes\4_Shoes_NikeJordan_01.jpg'),
		(109, 'image\image_product\image_shoes\4_Shoes_NikeJordan_02.jpg'),
		(109, 'image\image_product\image_shoes\4_Shoes_NikeJordan_03.jpg'),
		(109, 'image\image_product\image_shoes\4_Shoes_NikeJordan_04.jpg')
Insert into ImageSliders( category_id, nameURL)
values (1, 'image\image_sliders\2_banner_aonam_01.jpg'),
		(1, 'image\image_sliders\2_banner_aonam_02.jpg'),
		(1, 'image\image_sliders\2_banner_aonam_03.jpg'),
		(2, 'image\image_sliders\8_banner_thoitrangnu_01.jpg'),
		(2, 'image\image_sliders\8_banner_thoitrangnu_02.jpg'),
		(2, 'image\image_sliders\8_banner_thoitrangnu_03.jpg'),
		(7, 'image\image_sliders\1_banner_giaythethaonam_01.jpg'),
		(7, 'image\image_sliders\1_banner_giaythethaonam_02.jpg'),
		(7, 'image\image_sliders\1_banner_giaythethaonam_03.jpg'),
		(7, 'image\image_sliders\1_banner_giaythethaonam_04.jpg'),
		(6, 'image\image_sliders\3_banner_mypham_01.jpg'),
		(6, 'image\image_sliders\3_banner_mypham_02.jpg'),
		(6, 'image\image_sliders\3_banner_mypham_03.jpg'),
		(9, 'image\image_sliders\6_banner_dogiadung_01.jpg'),
		(9, 'image\image_sliders\6_banner_dogiadung_02.jpg'),
		(9, 'image\image_sliders\6_banner_dogiadung_03.jpg'),
		(15, 'image\image_sliders\7_banner_dienthoai_01.jpg'),
		(15, 'image\image_sliders\7_banner_dienthoai_02.jpg'),
		(15, 'image\image_sliders\7_banner_dienthoai_03.jpg');



INSERT INTO [dbo].[Feedbacks]
           ([customer_id]
           ,[product_id]
           ,[feedback_rateStars]
           ,[feedback_comment])

VALUES(2, 5, 5, 'So Good'),
		(2,5,4,'Nice'),
		(2,5,3,'Nomarly'),
		(2,5,1,'So Bad'),
		(2,5,4,'its beauty jacket, i like it.'),
		(2,5,5,'OMG!!! i finding like that'),
		(7, 98, 5, N'Tôi đã mua nó lần này lần thứ tư thật vui vì nó vẫn còn :))'),
		(7, 98, 5, N'Tôi đã mua nó lần này lần thứ ba thật vui vì nó vẫn còn :))'),
		(7, 98, 4, N'Tôi đã mua nó lần này lần thứ hai thật vui vì nó vẫn còn :))'),
		(2,98,4,'its beauty shoes, i like it.'),
		(2,98,1,N'Tôi thấy hối hận khi mua chúng '),
		(9,1, 4,N'Tôi đã tìm được món đồ ưa thích của mình.'),
		(7, 1, 5, N'Tôi đã mua nó lần này lần thứ hai thật vui vì nó vẫn còn :))'),
		(7, 1, 2, N'Chất lượng của lần này khiến tôi thất vọng'),
		(2,1,3,'Nomarly'),
		(2,44,5,'I like play games, i feel very good with the console !!'),
		(7, 44,4, N'Tôi đã mua nó tôi cảm thấy bình thường'),
		(9,44, 3,N'Tôi không thích chơi game nhưng tôi phải mua nó cho em trai tôi.');

INSERT INTO [Types](type_describes)
VALUES	('S'),
		('M'),
		('L'),
		('XL'),
		('XXL'),
		('64GB'),
		('128GB'),
		('256GB'),
		('512GB'),
		('1T'),
		('Ren'),
		('Default'),
		('100ml'),
		('65ml'),
		('200ml'),
		('300ml'),
		('500ml'),
		('36'), ('37'), ('38'), ('39'), ('40'), ('41'), ('42'), ('43'), ('44'), ('45')

INSERT INTO Color (color_name)
VALUES ('Black'), ('Yellow'), ('Red'), ('Gold'), ('Purpel'),
		('Grey'), ('White'), ('Brown'), ('Blue'), ('Green'),
		('Pink'), ('Default')
INSERT INTO [dbo].[ProductTypeColor]([product_id],[type_id],[color_id],[quantity])
VALUES 
--   1 to 21
(5,1,1,10),(5,1,2,10),(5,1,3,10),(5,1,4,10),
		   (5,2,1,10),(5,2,2,10),(5,2,3,10),(5,2,4,10),
		   (5,3,1,10),(5,3,2,10),(5,3,3,10),(5,3,4,10),
		   (5,4,1,10),(5,4,2,10),(5,4,3,10),(5,4,4,10),
		   (2,12,1,10),
		   (3,12,1,10),
		   (4,12,1,10),
		   (1,12,1,10),
		   (6,1,1,10),(6,1,2,10),(6,1,3,10),(6,1,4,10),
		   (6,2,1,10),(6,2,2,10),(6,2,3,10),(6,2,4,10),
		   (6,3,1,10),(6,3,2,10),(6,3,3,10),(6,3,4,10),
		   (6,4,1,10),(6,4,2,10),(6,4,3,10),(6,4,4,10),
		   (7,1,1,10),(7,1,2,10),(7,1,3,10),(7,1,4,10),
		   (7,2,1,10),(7,2,2,10),(7,2,3,10),(7,2,4,10),
		   (7,3,1,10),(7,3,2,10),(7,3,3,10),(7,3,4,10),
		   (7,4,1,10),(7,4,2,10),(7,4,3,10),(7,4,4,10),
		   (8,1,1,10),(8,1,2,10),(8,1,3,10),(8,1,4,10),
		   (8,2,1,10),(8,2,2,10),(8,2,3,10),(8,2,4,10),
		   (8,3,1,10),(8,3,2,10),(8,3,3,10),(8,3,4,10),
		   (8,4,1,10),(8,4,2,10),(8,4,3,10),(8,4,4,10),
		   (9,1,1,10),(9,1,2,10),(9,1,3,10),(9,1,4,10),
		   (9,2,1,10),(9,2,2,10),(9,2,3,10),(9,2,4,10),
		   (9,3,1,10),(9,3,2,10),(9,3,3,10),(9,3,4,10),
		   (9,4,1,10),(9,4,2,10),(9,4,3,10),(9,4,4,10),
		   (10,1,1,10),(10,1,2,10),(10,1,3,10),(10,1,4,10),
		   (10,2,1,10),(10,2,2,10),(10,2,3,10),(10,2,4,10),
		   (10,3,1,10),(10,3,2,10),(10,3,3,10),(10,3,4,10),
		   (10,4,1,10),(10,4,2,10),(10,4,3,10),(10,4,4,10),
		   (11,1,1,10),(11,1,2,10),(11,1,3,10),(11,1,4,10),
		   (11,2,1,10),(11,2,2,10),(11,2,3,10),(11,2,4,10),
		   (11,3,1,10),(11,3,2,10),(11,3,3,10),(11,3,4,10),
		   (11,4,1,10),(11,4,2,10),(11,4,3,10),(11,4,4,10),
		   (12,1,1,10),(12,1,2,10),(12,1,3,10),(12,1,4,10),
		   (12,2,1,10),(12,2,2,10),(12,2,3,10),(12,2,4,10),
		   (12,3,1,10),(12,3,2,10),(12,3,3,10),(12,3,4,10),
		   (12,4,1,10),(12,4,2,10),(12,4,3,10),(12,4,4,10),
		   (13,1,1,10),(13,1,2,10),(13,1,3,10),(13,1,4,10),
		   (13,2,1,10),(13,2,2,10),(13,2,3,10),(13,2,4,10),
		   (13,3,1,10),(13,3,2,10),(13,3,3,10),(13,3,4,10),
		   (13,4,1,10),(13,4,2,10),(13,4,3,10),(13,4,4,10),
		   (14,1,1,10),(14,1,2,10),(14,1,3,10),(14,1,4,10),
		   (14,2,1,10),(14,2,2,10),(14,2,3,10),(14,2,4,10),
		   (14,3,1,10),(14,3,2,10),(14,3,3,10),(14,3,4,10),
		   (14,4,1,10),(14,4,2,10),(14,4,3,10),(14,4,4,10),
		   (15,1,1,10),(15,1,2,10),(15,1,3,10),(15,1,4,10),
		   (15,2,1,10),(15,2,2,10),(15,2,3,10),(15,2,4,10),
		   (15,3,1,10),(15,3,2,10),(15,3,3,10),(15,3,4,10),
		   (15,4,1,10),(15,4,2,10),(15,4,3,10),(15,4,4,10),
		   (16,1,1,10),(16,1,2,10),(16,1,3,10),(16,1,4,10),
		   (16,2,1,10),(16,2,2,10),(16,2,3,10),(16,2,4,10),
		   (16,3,1,10),(16,3,2,10),(16,3,3,10),(16,3,4,10),
		   (16,4,1,10),(16,4,2,10),(16,4,3,10),(16,4,4,10),
		   (17,12,12,10),
		   (18,12,12,10),
		   (19,12,12,10),
		   (20,12,12,10),
		   (21,12,12,10),


--  (22 to 43 Tung)
(22,13,12,20), (22,14,12,20), (22,15,12,20), (22,17,12,20),
	(23,12,12,20), 
	(24,12,12,20), 
	(25,13,12,20),(25,14,12,20),
	(26,12,12,20),
	(27,13,12,20),(27,14,12,0),(27,15,12,20),(27,16,12,20),(27,17,12,20),
	(28,13,12,0),(28,14,12,3),(28,15,12,3),(28,16,12,1),(28,17,12,9),
	(29,13,12,10),(29,14,12,0),(29,15,12,3),(29,16,12,1),(29,17,12,9),
	(30,13,12,10),(30,14,12,3),(30,15,12,3),(30,16,12,1),(30,17,12,9),
	(31,12,1,0),(31,12,4,3),(31,12,7,3),(31,12,11,1),
	(32,12,1,10),(32,12,4,3),(32,12,7,0),(32,12,11,1),
	(33,12,1,10),(33,12,4,3),(33,12,7,3),(33,12,11,12),
	(34,12,1,10),(34,12,4,3),(34,12,7,0),(34,12,11,13),
	(35,12,10,10),(35,12,5,0),(35,12,7,3),(35,12,11,1),
	(36,12,10,10),(36,12,5,0),(36,12,7,3),(36,12,11,19),
	(37,12,1,10),(37,12,4,3),(37,12,7,13),(37,12,11,0),
	(38,6,1,10),(38,6,7,3),(38,6,5,13),(38,6,4,12),
	(38,7,1,10),(38,7,7,3),(38,7,5,13),(38,7,4,12),
	(38,8,1,10),(38,8,7,3),(38,8,5,13),(38,8,4,12),
	(38,9,1,10),(38,9,7,3),(38,9,5,13),(38,9,4,12),
	(39,8,1,10),(39,8,7,3),(39,8,5,13),(39,8,4,12),
	(40,7,1,10),(40,7,7,3),(40,7,5,13),(40,7,4,12),
	(41,7,1,10),(41,7,7,3),(41,7,5,13),(41,7,4,12),
	(42,7,1,10),(42,7,7,3),(42,7,5,13),(42,7,4,12),
	(43,7,1,10),(43,7,7,3),(43,7,5,13),(43,7,4,12),

--44 to 65 Thinh 
(44,12,1,10),(44,12,7,10),(44,12,11,10),(44,12,8,10),
(45,12,1,10),(45,12,7,10),(45,12,11,10),(45,12,8,10),
(46,12,1,10),(46,12,7,10),
(47,12,1,10),(47,12,7,10),
(48,12,1,5),
(49,12,1,9),
(50,12,1,10),
(51,12,1,10),(51,12,6,10),
(52,12,1,10),
(53,12,1,10),(53,12,7,10),(53,12,6,10),(53,12,9,10),
(54,12,1,10),(54,12,7,10),
(55,12,1,5),(55,12,7,5),
(56,12,1,10),(56,12,7,10),
(57,12,1,10),(57,12,7,10),
(58,12,1,9),(58,12,7,9),
(59,12,1,9),(59,12,7,9),(59,12,3,9),
(60,12,1,9),(60,12,7,9),
(61,12,1,13),(61,12,7,13),
(62,12,1,9),(62,12,7,9),
(63,12,1,15),(63,12,7,15),
(64,12,1,10),(64,12,7,10),
(65,12,1,20),(65,12,7,20),


--66 to 87
(66,12,7,20),
(67,12,1,20),(67,12,6,20),(67,12,9,20),(67,12,7,20),
(68,12,1,10),
(69,12,1,10),
(70,12,1,10),
(71,12,1,10),
(72,12,1,10),
(73,12,1,10),
(74,6,1,20),(74,6,4,20),(74,6,6,20),(74,6,7,20),(74,6,11,20),
(75,12,1,25),(75,12,2,25),(75,12,7,25),(75,12,11,25),
(76,12,1,15),(76,12,2,15),(76,12,7,15),(76,12,11,15),
(77,6,1,20),(77,6,4,20),(77,6,6,20),(77,6,7,20),(77,6,11,20),
(78,12,1,30),(78,12,2,30),(78,12,6,30),(78,12,7,30),
(79,12,1,35),(79,12,2,35),(79,12,6,35),(79,12,7,35),
(80,12,1,35),(80,12,2,35),(80,12,6,35),(80,12,7,35),
(81,12,1,40),
(82,7,1,15),(82,7,6,15),(82,8,1,15),(82,8,6,15),
(83,7,1,15),(83,7,6,15),(83,8,1,15),(83,8,6,15),
(84,8,1,15),(84,8,6,15),(84,9,1,15),(84,9,6,15),
(85,8,1,15),(85,8,6,15),(85,8,11,15),(85,8,4,15),
(85,9,1,15),(85,9,6,15),(85,9,11,15),(85,9,4,15),
(86,7,1,15),(86,7,6,15),(86,8,1,15),(86,8,6,15),
(87,12,1,40),(87,12,4,40),(87,12,2,40),(87,12,11,40),(87,12,5,40),
--88 to 109(Hoang Anh y thuc kem)
(88,12,12,50),
		(89,12,12,50),
		(90,12,12,50),
		(91,12,12,50),
		(92,12,12,50),
		(93,12,12,50),
		(94,12,12,50),
		(95,12,1,30), (95,12,7,20),
		(96,12,1,30), (96,12,7,20),
		(97,12,1,30), (97,12,7,20),
		(98, 3,1,100), (98, 3,7,40), (98, 3,8,100),
		(98, 4,1,100), (98, 4,7,40), (98, 4,8,100),
		(98, 5,1,100), (98, 5,7,40), (98, 5,8,100),
		(99, 1, 12, 30), (99, 2, 12, 30), (99, 3, 12, 30), (99, 4, 12, 30), (99, 5, 12, 30),
		(100, 3, 1,30), (100, 3, 7,30), (100, 3, 8,30),  
		(100, 4, 1,30), (100, 4, 7,30), (100, 4, 8,30),
		(100, 5, 1,30), (100, 5, 7,30), (100, 5, 8,30),
		(101, 3, 12,30), (101, 4, 12,30), (101, 5, 12,30),
		(102, 1, 12, 30), (102, 2, 12, 30), (102, 3, 12, 30), (102, 4, 12, 30), (102, 5, 12, 30),
		(103, 3, 1,30), (103, 3, 7,30), (103, 3, 8,30),  
		(103, 4, 1,30), (103, 4, 7,30), (103, 4, 8,30),
		(103, 5, 1,30), (103, 5, 7,30), (103, 5, 8,30),
		(104, 1, 12, 30), (104, 2, 12, 30), (104, 3, 12, 30), (104, 4, 12, 30), (104, 5, 12, 30),
		(105, 3, 1,30), (105, 3, 7,30), (105, 3, 8,30),  
		(105, 4, 1,30), (105, 4, 7,30), (105, 4, 8,30),
		(105, 5, 1,30), (105, 5, 7,30), (105, 5, 8,30),
		(106, 18,12,30), (106, 19,12,30), (106, 20,12,30), (106, 21,12,30), (106, 22,12,30), (106, 23,12,30), (106, 24,12,30), (106, 25, 12, 30), (106, 26,12,30), (106, 27,12,30), 
		(107, 18,12,30), (107, 19,12,30), (107, 20,12,30), (107, 21,12,30), (107, 22,12,30), (107, 23,12,30), (107, 24,12,30), (107, 25, 12, 30), (107, 26,12,30), (107, 27,12,30),
		(108, 18,12,30), (108, 19,12,30), (108, 20,12,30), (108, 21,12,30), (108, 22,12,30), (108, 23,12,30), (108, 24,12,30), (108, 25, 12, 30), (108, 26,12,30), (108, 27,12,30),
		(109, 18,12,30), (109, 19,12,30), (109, 20,12,30), (109, 21,12,30), (109, 22,12,30), (109, 23,12,30), (109, 24,12,30), (109, 25, 12, 30), (109, 26,12,30), (109, 27,12,30)

INSERT INTO [dbo].[Blog]
           ([user_id]
           ,[category_id]
           ,[blog_title]
           ,[blog_content]
           ,[blog_image]
           ,[blog_create_day])
 VALUES
           (3,2,N' Xu Hướng Thời Trang Nữ Nổi Bật Năm 2024',N'Xu Hướng Thời Trang Nữ Nổi Bật Năm 2024
Năm 2024, thời trang nữ tiếp tục phát triển với sự pha trộn độc đáo giữa phong cách cổ điển và hiện đại. Các nhà thiết kế hàng đầu đã mang đến nhiều xu hướng mới, từ những bộ sưu tập cá tính đến trang phục thanh lịch và tinh tế. Hãy cùng khám phá những xu hướng thời trang nữ nổi bật nhất năm nay.

1. Sự Trở Lại Của Phong Cách Y2K
Phong cách Y2K, biểu tượng của những năm 2000, đã quay trở lại mạnh mẽ trong năm 2024. Những chiếc áo crop top, quần jeans cạp trễ, và phụ kiện neon đầy màu sắc đang trở thành xu hướng thời trang chủ đạo. Phong cách này không chỉ mang lại sự trẻ trung, năng động mà còn giúp các cô gái tự tin thể hiện cá tính riêng.

2. Thời Trang Bền Vững
Trong bối cảnh biến đổi khí hậu và nhận thức về bảo vệ môi trường ngày càng cao, thời trang bền vững trở thành một xu hướng không thể thiếu. Các nhà thiết kế và thương hiệu thời trang đang tập trung vào việc sử dụng các vật liệu tái chế, hữu cơ và quy trình sản xuất thân thiện với môi trường. Những bộ trang phục không chỉ đẹp mà còn mang thông điệp bảo vệ hành tinh.

3. Màu Sắc Tự Nhiên
Màu sắc tự nhiên như xanh lá, nâu đất, và beige đang chiếm lĩnh các bộ sưu tập thời trang năm 2024. Những gam màu này mang lại cảm giác gần gũi với thiên nhiên, đồng thời dễ dàng kết hợp với nhiều phong cách khác nhau. Từ trang phục dạo phố đến các sự kiện sang trọng, màu sắc tự nhiên luôn là lựa chọn hoàn hảo.

4. Trang Phục Thể Thao Phong Cách
Athleisure, phong cách thời trang kết hợp giữa trang phục thể thao và thời trang đường phố, tiếp tục làm mưa làm gió trong năm 2024. Những bộ đồ thể thao với thiết kế tinh tế, chất liệu co giãn, thoáng mát, không chỉ giúp bạn thoải mái khi vận động mà còn rất phong cách khi ra đường. Áo khoác bomber, quần legging, và giày sneaker là những item không thể thiếu.

5. Váy Maxi Thướt Tha
Váy maxi, với độ dài chạm gót, là một trong những xu hướng không bao giờ lỗi mốt. Năm 2024, váy maxi với họa tiết hoa lá, chất liệu nhẹ nhàng như chiffon, lụa tiếp tục được ưa chuộng. Loại váy này mang đến vẻ ngoài nữ tính, thanh lịch và vô cùng thoải mái, phù hợp cho các buổi dạo phố, đi biển hay những bữa tiệc ngoài trời.

6. Phụ Kiện Độc Đáo
Phụ kiện luôn là điểm nhấn hoàn hảo cho mọi bộ trang phục. Năm 2024, các phụ kiện độc đáo như kính mắt lớn, túi xách mini, và trang sức statement (những món trang sức lớn, nổi bật) sẽ giúp bạn thêm phần nổi bật. Đừng ngại thử nghiệm với những mẫu phụ kiện khác biệt để tạo nên phong cách riêng.

7. Trang Phục Layering
Layering, nghệ thuật kết hợp nhiều lớp trang phục, đang trở nên phổ biến hơn bao giờ hết. Xu hướng này không chỉ giúp giữ ấm trong mùa đông mà còn tạo nên vẻ ngoài thời thượng, phong cách. Bạn có thể kết hợp áo len mỏng với áo khoác blazer, hoặc mix áo sơ mi với áo len cổ lọ để tạo nên những bộ trang phục ấn tượng.

Kết Luận
Năm 2024, thời trang nữ không chỉ là sự pha trộn giữa các xu hướng cũ và mới mà còn thể hiện rõ nét cá tính của từng người. Hãy mạnh dạn thử nghiệm và khám phá những phong cách mới để luôn tự tin và tỏa sáng. Thời trang là ngôn ngữ không lời, hãy để phong cách của bạn kể câu chuyện riêng.','image/image_blog/blog_id4.jpg',
'03/06/2024'),
(3,1,N'Xu Hướng Thời Trang Nam Đáng Chú Ý Năm 2024',N'Năm 2024 đánh dấu sự chuyển mình mạnh mẽ của thời trang nam giới. Không chỉ dừng lại ở những bộ vest cổ điển hay những chiếc áo sơ mi cơ bản, thời trang nam năm nay là sự pha trộn tinh tế giữa phong cách hiện đại, thời thượng và nét đẹp cổ điển. Hãy cùng khám phá những xu hướng thời trang nam nổi bật nhất trong năm nay.

1. Phong Cách Thời Trang Retro
Phong cách retro, với những trang phục lấy cảm hứng từ thập niên 70 và 80, đang trở lại mạnh mẽ. Những chiếc áo khoác bomber, quần ống rộng, và áo sơ mi hoa văn đều trở thành những item không thể thiếu trong tủ đồ của các chàng trai yêu thích sự cổ điển nhưng vẫn thời thượng. Màu sắc tươi sáng và họa tiết độc đáo của phong cách retro sẽ giúp các quý ông nổi bật trong mọi hoàn cảnh.

2. Áo Vest Thể Thao
Áo vest thể thao là sự kết hợp hoàn hảo giữa phong cách thanh lịch và sự thoải mái. Năm 2024, các nhà thiết kế đã đưa áo vest thể thao lên một tầm cao mới với các chi tiết cắt may tinh xảo, chất liệu co giãn và thoáng khí. Bạn có thể dễ dàng kết hợp áo vest thể thao với quần jeans hoặc quần chinos để tạo nên vẻ ngoài lịch lãm nhưng không kém phần năng động.

3. Quần Cargo
Quần cargo, với thiết kế nhiều túi và kiểu dáng rộng rãi, đang trở thành xu hướng thời trang nam nổi bật năm 2024. Quần cargo không chỉ mang lại sự tiện lợi mà còn tạo nên phong cách mạnh mẽ, nam tính. Bạn có thể phối quần cargo với áo thun đơn giản hoặc áo khoác bomber để có một bộ trang phục hoàn hảo cho những buổi dạo phố hoặc dã ngoại.

4. Màu Sắc Trung Tính
Màu sắc trung tính như xám, nâu, và xanh navy luôn là lựa chọn an toàn và thanh lịch cho phái mạnh. Năm 2024, các gam màu này vẫn tiếp tục chiếm ưu thế trong các bộ sưu tập thời trang nam. Sự kết hợp giữa các màu sắc trung tính sẽ tạo nên vẻ ngoài trang nhã, lịch sự nhưng không kém phần hiện đại và phong cách.

5. Trang Phục Dệt Kim
Trang phục dệt kim, từ áo len mỏng đến áo khoác cardigan, là xu hướng không thể bỏ qua trong năm 2024. Với sự ấm áp và mềm mại, trang phục dệt kim không chỉ mang lại sự thoải mái mà còn giúp các quý ông thêm phần phong cách. Bạn có thể kết hợp áo len dệt kim với quần jeans hoặc quần tây để tạo nên những bộ trang phục đa dạng, phù hợp cho cả công sở lẫn những buổi hẹn hò.

6. Phụ Kiện Đa Dụng
Phụ kiện là yếu tố quan trọng để hoàn thiện bộ trang phục của phái mạnh. Năm 2024, các phụ kiện đa dụng như đồng hồ thông minh, túi đeo chéo, và mũ len trở nên phổ biến hơn bao giờ hết. Những món phụ kiện này không chỉ mang lại tiện ích mà còn là điểm nhấn hoàn hảo, giúp các chàng trai thêm phần lịch lãm và thời trang.

7. Giày Sneaker Cao Cấp
Giày sneaker cao cấp tiếp tục là xu hướng hot trong năm 2024. Với thiết kế hiện đại, chất liệu cao cấp và màu sắc đa dạng, giày sneaker không chỉ dành riêng cho các hoạt động thể thao mà còn phù hợp với nhiều phong cách khác nhau. Bạn có thể diện giày sneaker với quần jeans, quần short hoặc thậm chí là quần tây để tạo nên vẻ ngoài trẻ trung, năng động và đầy phong cách.

Kết Luận
Thời trang nam năm 2024 là sự kết hợp hoàn hảo giữa truyền thống và hiện đại, giữa sự thanh lịch và năng động. Hãy tự tin khám phá và thử nghiệm các xu hướng mới để luôn nổi bật và phong cách trong mọi hoàn cảnh. Thời trang không chỉ là cách ăn mặc mà còn là cách bạn thể hiện cá tính và gu thẩm mỹ của mình. Hãy để phong cách của bạn kể câu chuyện riêng trong năm 2024 này!','image/image_blog/blog_id5.jpg',
'06/07/2024'),
(4,3,N'Balo - Người Bạn Đồng Hành Không Thể Thiếu Trong Cuộc Sống Hiện Đại',N'Trong cuộc sống hiện đại, balo đã trở thành một phụ kiện không thể thiếu đối với mọi người. Từ học sinh, sinh viên, đến những người đi làm và du lịch, balo là người bạn đồng hành tiện lợi và thời trang. Hãy cùng khám phá vì sao balo lại quan trọng và những xu hướng balo nổi bật trong năm 2024.

1. Sự Tiện Lợi Của Balo
Balo mang đến sự tiện lợi vượt trội khi so sánh với các loại túi xách khác. Với thiết kế có hai quai đeo, balo giúp phân bố đều trọng lượng trên hai vai, giảm thiểu áp lực và đau lưng khi mang. Ngoài ra, balo còn có nhiều ngăn lớn nhỏ, giúp bạn dễ dàng sắp xếp và tìm kiếm đồ dùng cá nhân một cách nhanh chóng và gọn gàng.

2. Balo Trong Môi Trường Học Đường
Đối với học sinh, sinh viên, balo là vật dụng không thể thiếu. Với khả năng chứa được nhiều sách vở, laptop và các dụng cụ học tập, balo giúp các bạn trẻ dễ dàng di chuyển từ nhà đến trường. Những mẫu balo hiện đại còn được thiết kế với ngăn đựng laptop riêng biệt, chống sốc và chống thấm nước, bảo vệ tốt nhất cho các thiết bị điện tử.

3. Balo Thời Trang Công Sở
Không chỉ dành cho học sinh, balo cũng là phụ kiện được nhiều người đi làm ưa chuộng. Các mẫu balo công sở thường có thiết kế đơn giản, thanh lịch và nhiều ngăn tiện lợi để đựng laptop, tài liệu và các vật dụng cá nhân. Chất liệu da cao cấp hoặc vải canvas bền bỉ là lựa chọn phổ biến cho những chiếc balo công sở, giúp tạo nên vẻ ngoài chuyên nghiệp và phong cách.

4. Balo Du Lịch
Khi đi du lịch, balo là sự lựa chọn lý tưởng nhờ tính tiện lợi và đa năng. Các mẫu balo du lịch hiện nay được thiết kế với nhiều tính năng ưu việt như khả năng chống nước, chống sốc, nhiều ngăn chứa rộng rãi và quai đeo êm ái. Một chiếc balo du lịch chất lượng giúp bạn dễ dàng mang theo quần áo, vật dụng cá nhân và các thiết bị điện tử mà không lo bị hư hỏng hay mất mát.

5. Xu Hướng Balo Năm 2024
Balo Thông Minh
Năm 2024, balo thông minh với tích hợp cổng sạc USB, đèn LED và khóa số an toàn đang trở thành xu hướng. Những chiếc balo này không chỉ tiện lợi mà còn giúp người dùng an tâm hơn khi di chuyển, đặc biệt là trong những chuyến đi xa hay khi di chuyển trong thành phố.

Balo Thời Trang
Các mẫu balo thời trang với thiết kế hiện đại, màu sắc tươi sáng và họa tiết độc đáo cũng rất được ưa chuộng. Balo không chỉ đơn thuần là phụ kiện chứa đồ mà còn là điểm nhấn thể hiện phong cách cá nhân. Bạn có thể dễ dàng phối hợp balo thời trang với các trang phục hàng ngày để tạo nên vẻ ngoài ấn tượng và cuốn hút.

Balo Thân Thiện Với Môi Trường
Trong bối cảnh nhận thức về bảo vệ môi trường ngày càng cao, balo thân thiện với môi trường được làm từ các chất liệu tái chế và hữu cơ đang trở thành xu hướng. Những chiếc balo này không chỉ bền bỉ, đẹp mắt mà còn giúp giảm thiểu tác động tiêu cực đến môi trường.

Kết Luận
Balo đã và đang trở thành một phần không thể thiếu trong cuộc sống hiện đại. Với sự tiện lợi, đa năng và thời trang, balo không chỉ giúp bạn dễ dàng mang theo các vật dụng cần thiết mà còn là phụ kiện thể hiện phong cách cá nhân. Hãy chọn cho mình một chiếc balo phù hợp để đồng hành cùng bạn trong mọi hành trình và công việc hàng ngày.','image/image_blog/blog_id6.jpg',
'07/06/2024'),
(3,4,N'Tay Cầm Chơi Game - Bí Quyết Để Trải Nghiệm Game Tuyệt Vời Hơn',N'Trong thế giới game, trải nghiệm chơi không chỉ phụ thuộc vào đồ họa, âm thanh, hay cốt truyện mà còn rất quan trọng bởi các thiết bị hỗ trợ. Một trong những phụ kiện không thể thiếu đối với các game thủ chính là tay cầm chơi game. Hãy cùng tìm hiểu tại sao tay cầm chơi game lại quan trọng và những xu hướng nổi bật của tay cầm trong năm 2024.

1. Tầm Quan Trọng Của Tay Cầm Chơi Game
Tay cầm chơi game, hay còn gọi là gamepad, đóng vai trò then chốt trong việc nâng cao trải nghiệm chơi game. Với thiết kế tiện dụng, các nút bấm bố trí hợp lý và cảm giác cầm nắm thoải mái, tay cầm giúp game thủ dễ dàng điều khiển và thao tác nhân vật trong game một cách chính xác và nhanh chóng. Điều này đặc biệt quan trọng đối với các tựa game hành động, đối kháng, và thể thao, nơi mà mỗi pha di chuyển và phản xạ đều cần phải hoàn hảo.

2. Các Loại Tay Cầm Chơi Game Phổ Biến
Tay Cầm Console
Tay cầm dành cho các hệ máy console như PlayStation, Xbox và Nintendo Switch thường được thiết kế đặc biệt để tối ưu hóa cho từng hệ máy. Những tay cầm này không chỉ tích hợp đầy đủ các tính năng cơ bản mà còn có những công nghệ tiên tiến như cảm biến chuyển động, rung phản hồi và các nút bấm có thể tùy chỉnh, giúp mang đến trải nghiệm chơi game sống động và chân thực nhất.

Tay Cầm Chơi Game Cho PC
Tay cầm chơi game dành cho PC cũng rất đa dạng và phong phú. Các mẫu tay cầm như Xbox Controller hoặc DualShock của PlayStation thường được game thủ PC ưa chuộng nhờ tính tương thích cao và chất lượng vượt trội. Ngoài ra, còn có nhiều loại tay cầm chuyên dụng khác dành cho các thể loại game cụ thể như tay cầm lái xe (steering wheel) cho game đua xe hoặc joystick cho game mô phỏng bay.

Tay Cầm Không Dây
Sự tiện lợi của tay cầm không dây là không thể phủ nhận. Với kết nối Bluetooth hoặc sóng RF, tay cầm không dây giúp game thủ có thể thoải mái chơi game mà không bị vướng víu bởi dây cáp. Nhiều mẫu tay cầm không dây hiện đại còn tích hợp pin sạc với thời lượng sử dụng lâu dài, giúp bạn chơi game thoải mái mà không lo hết pin giữa chừng.

3. Xu Hướng Tay Cầm Chơi Game Năm 2024
Tay Cầm Tùy Chỉnh Cao
Xu hướng nổi bật năm 2024 là những mẫu tay cầm cho phép người dùng tùy chỉnh cao độ. Từ việc thay đổi vị trí các nút bấm, độ nhạy của cần analog, đến việc thay đổi trọng lượng của tay cầm, tất cả đều giúp game thủ có thể cá nhân hóa thiết bị của mình để phù hợp nhất với phong cách chơi riêng.

Tay Cầm Tích Hợp Công Nghệ Mới
Công nghệ tiên tiến như cảm biến lực, phản hồi rung đa chiều, và tích hợp màn hình OLED đang được các nhà sản xuất tay cầm chơi game tích hợp vào sản phẩm của mình. Những công nghệ này không chỉ mang lại trải nghiệm chơi game chân thực mà còn giúp game thủ tương tác với game một cách trực quan và sống động hơn.

Tay Cầm Thân Thiện Với Môi Trường
Trong xu hướng bảo vệ môi trường, nhiều hãng sản xuất đã chú trọng phát triển các mẫu tay cầm thân thiện với môi trường. Sử dụng các vật liệu tái chế và quy trình sản xuất bền vững, những tay cầm này không chỉ đạt chuẩn về chất lượng mà còn góp phần bảo vệ hành tinh xanh.

Kết Luận
Tay cầm chơi game là một phụ kiện quan trọng giúp nâng cao trải nghiệm chơi game của bạn. Với sự đa dạng về loại hình, tính năng và xu hướng phát triển liên tục, việc lựa chọn một chiếc tay cầm phù hợp sẽ giúp bạn có những giây phút giải trí tuyệt vời và thú vị hơn. Hãy đầu tư vào một chiếc tay cầm chất lượng để trải nghiệm thế giới game một cách trọn vẹn nhất.','image/image_blog/blog_id7.jpg',
'11/06/2024'),
(3,5,N'Laptop - Người Bạn Đồng Hành Không Thể Thiếu Trong Thời Đại Số',N'Trong thời đại số hiện nay, laptop đã trở thành một phần không thể thiếu trong cuộc sống hàng ngày của chúng ta. Từ học tập, làm việc đến giải trí, laptop đóng vai trò quan trọng và mang lại nhiều tiện ích. Hãy cùng tìm hiểu vì sao laptop lại quan trọng và những xu hướng laptop nổi bật trong năm 2024.

1. Tầm Quan Trọng Của Laptop
Laptop là một thiết bị điện tử đa năng, cho phép chúng ta thực hiện nhiều công việc khác nhau. Với kích thước nhỏ gọn, tính di động cao và khả năng kết nối internet, laptop mang lại sự tiện lợi vượt trội so với các thiết bị cố định như máy tính bàn. Dù bạn đang ở nhà, văn phòng, quán cà phê hay trên chuyến bay, laptop vẫn luôn sẵn sàng phục vụ bạn.

2. Laptop Trong Học Tập
Đối với học sinh, sinh viên, laptop là công cụ hỗ trợ đắc lực trong việc học tập. Với khả năng truy cập tài liệu học tập trực tuyến, tham gia các khóa học online và làm bài tập, laptop giúp việc học trở nên dễ dàng và hiệu quả hơn. Nhiều trường học và đại học hiện nay cũng đã tích hợp công nghệ vào giảng dạy, khiến laptop trở thành vật dụng không thể thiếu đối với mỗi học sinh, sinh viên.

3. Laptop Trong Công Việc
Laptop không chỉ là công cụ hỗ trợ học tập mà còn là người bạn đồng hành quan trọng trong công việc. Với các phần mềm văn phòng như Microsoft Office, Google Workspace và khả năng kết nối với các công cụ làm việc trực tuyến, laptop giúp tăng năng suất làm việc và hỗ trợ quản lý công việc hiệu quả. Đặc biệt, trong bối cảnh làm việc từ xa ngày càng phổ biến, laptop trở thành thiết bị quan trọng giúp duy trì sự liên lạc và cộng tác giữa các thành viên trong nhóm.

4. Laptop Trong Giải Trí
Không chỉ hỗ trợ học tập và công việc, laptop còn là thiết bị giải trí tuyệt vời. Với khả năng phát video chất lượng cao, chơi game, nghe nhạc và lướt web, laptop mang lại những giây phút thư giãn thoải mái. Các dòng laptop gaming với cấu hình mạnh mẽ, màn hình sắc nét và hệ thống âm thanh chất lượng cao đang trở thành lựa chọn yêu thích của nhiều game thủ.

5. Xu Hướng Laptop Năm 2024
Laptop Mỏng Nhẹ
Xu hướng laptop mỏng nhẹ tiếp tục chiếm ưu thế trong năm 2024. Các nhà sản xuất không ngừng cải tiến thiết kế để tạo ra những chiếc laptop nhẹ hơn, mỏng hơn nhưng vẫn mạnh mẽ và bền bỉ. Với tính di động cao, những chiếc laptop mỏng nhẹ giúp người dùng dễ dàng mang theo mọi lúc, mọi nơi.

Laptop Có Màn Hình Cảm Ứng
Laptop có màn hình cảm ứng đang ngày càng trở nên phổ biến. Những chiếc laptop này không chỉ mang lại trải nghiệm sử dụng mượt mà, linh hoạt mà còn giúp người dùng tương tác với nội dung một cách trực quan hơn. Đặc biệt, các dòng laptop 2 trong 1 có thể chuyển đổi giữa chế độ laptop và máy tính bảng đang rất được ưa chuộng.

Laptop Gaming
Laptop gaming với cấu hình mạnh mẽ, thiết kế hầm hố và các tính năng tối ưu cho việc chơi game tiếp tục là xu hướng hot. Những chiếc laptop này không chỉ đáp ứng nhu cầu chơi game mà còn phù hợp cho các tác vụ đòi hỏi hiệu năng cao như thiết kế đồ họa, dựng phim và lập trình.

Laptop Thân Thiện Với Môi Trường
Trong xu hướng bảo vệ môi trường, nhiều hãng sản xuất laptop đã chú trọng phát triển các dòng sản phẩm thân thiện với môi trường. Sử dụng các vật liệu tái chế, quy trình sản xuất bền vững và thiết kế tiết kiệm năng lượng, những chiếc laptop này không chỉ đáp ứng nhu cầu sử dụng mà còn góp phần bảo vệ hành tinh xanh.

Kết Luận
Laptop đã và đang trở thành một phần không thể thiếu trong cuộc sống hiện đại. Với sự đa dạng về loại hình, tính năng và xu hướng phát triển liên tục, việc lựa chọn một chiếc laptop phù hợp sẽ giúp bạn nâng cao hiệu quả học tập, công việc và giải trí. Hãy đầu tư vào một chiếc laptop chất lượng để tận hưởng những tiện ích và trải nghiệm tuyệt vời mà công nghệ mang lại.','image/image_blog/blog_id8.jpg',
'11/06/2024'),
(5,6,N'Sáp Vuốt Tóc - Bí Quyết Tạo Kiểu Hoàn Hảo Cho Mái Tóc Của Bạn',N'Trong thời trang và làm đẹp, mái tóc luôn đóng vai trò quan trọng trong việc thể hiện phong cách và cá tính của mỗi người. Để có được mái tóc hoàn hảo, không chỉ cần chăm sóc tóc mà còn phải biết cách tạo kiểu. Sáp vuốt tóc là một trong những sản phẩm tạo kiểu tóc được ưa chuộng nhất hiện nay. Hãy cùng tìm hiểu vì sao sáp vuốt tóc lại được yêu thích và những xu hướng sáp vuốt tóc nổi bật trong năm 2024.

1. Tại Sao Nên Sử Dụng Sáp Vuốt Tóc?
Sáp vuốt tóc mang lại nhiều ưu điểm vượt trội so với các sản phẩm tạo kiểu khác. Với khả năng giữ nếp mạnh mẽ, sáp vuốt tóc giúp bạn duy trì kiểu tóc suốt cả ngày dài mà không lo bị xẹp hay mất form. Bên cạnh đó, sáp vuốt tóc còn giúp tạo độ phồng tự nhiên, mang lại vẻ ngoài bồng bềnh và đầy sức sống cho mái tóc.

Sáp vuốt tóc thường có kết cấu dạng kem hoặc sáp mềm, dễ dàng thoa đều lên tóc mà không gây bết dính hay nhờn rít. Điều này giúp bạn dễ dàng tạo kiểu tóc theo ý muốn mà không lo làm hỏng cấu trúc tóc. Đặc biệt, sáp vuốt tóc thích hợp cho mọi loại tóc, từ tóc dày đến tóc mỏng, từ tóc ngắn đến tóc dài.

2. Các Loại Sáp Vuốt Tóc Phổ Biến
Sáp Vuốt Tóc Mờ (Matte Wax)
Sáp vuốt tóc mờ là lựa chọn hoàn hảo cho những ai muốn có kiểu tóc tự nhiên mà không bóng. Sản phẩm này giúp tạo kiểu tóc mềm mại, dễ dàng điều chỉnh và giữ nếp lâu. Sáp vuốt tóc mờ thích hợp cho các kiểu tóc hiện đại như undercut, pompadour, hay tóc xù.

Sáp Vuốt Tóc Bóng (Shine Wax)
Sáp vuốt tóc bóng mang lại độ bóng và sáng cho mái tóc, giúp bạn có vẻ ngoài sang trọng và lịch lãm. Sản phẩm này thích hợp cho các kiểu tóc cổ điển như slick back, side part, hoặc các kiểu tóc cần sự chỉnh chu và gọn gàng.

Sáp Vuốt Tóc Giữ Nếp Cực Mạnh (Strong Hold Wax)
Sáp vuốt tóc giữ nếp cực mạnh là lựa chọn lý tưởng cho những ai muốn kiểu tóc giữ nếp suốt cả ngày dài, ngay cả trong điều kiện thời tiết khắc nghiệt. Sản phẩm này thích hợp cho các kiểu tóc đòi hỏi độ chính xác cao như mohawk, quiff, hay các kiểu tóc tạo hình nghệ thuật.

3. Xu Hướng Sáp Vuốt Tóc Năm 2024
Sáp Vuốt Tóc Hữu Cơ
Xu hướng sử dụng sản phẩm hữu cơ và thân thiện với môi trường đang ngày càng phổ biến. Các loại sáp vuốt tóc hữu cơ được làm từ các thành phần tự nhiên, không chứa hóa chất độc hại, giúp bảo vệ sức khỏe của người dùng và môi trường. Sáp vuốt tóc hữu cơ không chỉ an toàn mà còn mang lại hiệu quả tuyệt vời trong việc tạo kiểu và chăm sóc tóc.

Sáp Vuốt Tóc Đa Năng
Sáp vuốt tóc đa năng với khả năng vừa tạo kiểu, vừa dưỡng tóc đang trở thành xu hướng nổi bật. Những sản phẩm này không chỉ giúp bạn có kiểu tóc hoàn hảo mà còn cung cấp dưỡng chất, giúp tóc chắc khỏe và bóng mượt hơn. Sáp vuốt tóc đa năng là lựa chọn hoàn hảo cho những ai muốn tiết kiệm thời gian và công sức trong việc chăm sóc tóc.

Sáp Vuốt Tóc Dành Riêng Cho Nam Giới
Sáp vuốt tóc dành riêng cho nam giới được thiết kế đặc biệt để phù hợp với cấu trúc tóc và nhu cầu tạo kiểu của phái mạnh. Các sản phẩm này thường có mùi hương nam tính, dễ sử dụng và mang lại hiệu quả giữ nếp mạnh mẽ. Sáp vuốt tóc dành riêng cho nam giới giúp các quý ông tự tin và lịch lãm hơn trong mọi hoàn cảnh.

4. Cách Sử Dụng Sáp Vuốt Tóc Hiệu Quả
Bước 1: Lấy một lượng sáp vừa đủ và xoa đều lên lòng bàn tay để làm mềm sáp.
Bước 2: Thoa đều sáp lên tóc, tập trung vào phần ngọn tóc và vùng cần tạo kiểu.
Bước 3: Dùng tay hoặc lược để tạo kiểu tóc theo ý muốn. Bạn có thể dùng máy sấy để tăng độ phồng và giữ nếp cho tóc.
Bước 4: Kiểm tra và chỉnh sửa lại kiểu tóc nếu cần thiết. Bạn có thể thêm một chút sáp để đảm bảo kiểu tóc giữ nếp suốt cả ngày.
Kết Luận
Sáp vuốt tóc là sản phẩm không thể thiếu trong bộ sưu tập làm đẹp của mỗi người. Với khả năng tạo kiểu và giữ nếp hiệu quả, sáp vuốt tóc giúp bạn có được mái tóc hoàn hảo và tự tin trong mọi hoàn cảnh. Hãy lựa chọn cho mình loại sáp vuốt tóc phù hợp và áp dụng các xu hướng mới nhất để luôn nổi bật và phong cách.','image/image_blog/blog_id9.jpg',
'07/05/2024'),
(3,7,N'Giày - Bí Quyết Chọn Lựa và Xu Hướng Thời Trang 2024',N'Giày không chỉ là một phụ kiện thời trang mà còn là biểu tượng của phong cách và cá tính. Từ giày thể thao, giày công sở đến giày dạo phố, mỗi đôi giày đều kể một câu chuyện riêng về người mang nó. Hãy cùng khám phá cách chọn giày phù hợp và những xu hướng giày nổi bật trong năm 2024.

1. Tầm Quan Trọng Của Giày
Giày đóng vai trò quan trọng trong việc bảo vệ và hỗ trợ đôi chân. Một đôi giày phù hợp không chỉ mang lại sự thoải mái mà còn giúp bạn tự tin hơn trong từng bước đi. Đặc biệt, giày còn là điểm nhấn quan trọng trong trang phục, giúp bạn hoàn thiện phong cách và thể hiện cá tính.

2. Cách Chọn Giày Phù Hợp
Hiểu Rõ Kích Cỡ Chân
Mỗi người có hình dạng và kích thước chân khác nhau. Việc chọn giày đúng kích cỡ là yếu tố quan trọng nhất để đảm bảo sự thoải mái. Hãy đo chân vào buổi chiều, khi chân bạn nở ra sau một ngày dài hoạt động, để có số đo chính xác nhất.

Chọn Giày Theo Mục Đích Sử Dụng
Mỗi loại giày được thiết kế để phù hợp với các hoạt động và hoàn cảnh khác nhau. Giày thể thao cần có độ đàn hồi và hỗ trợ tốt cho chân khi vận động. Giày công sở cần mang lại vẻ lịch sự và chuyên nghiệp, trong khi giày dạo phố cần sự thoải mái và phong cách.

Kiểm Tra Chất Liệu
Chất liệu giày ảnh hưởng đến độ bền, sự thoải mái và cả vẻ ngoài của đôi giày. Chọn giày làm từ chất liệu da thật, vải canvas hoặc các loại chất liệu tổng hợp cao cấp để đảm bảo độ bền và sự thoải mái khi mang.

3. Các Loại Giày Phổ Biến
Giày Thể Thao (Sneakers)
Giày thể thao luôn là lựa chọn yêu thích của nhiều người nhờ tính tiện dụng và phong cách năng động. Từ các thương hiệu nổi tiếng như Nike, Adidas đến các dòng giày local brand, giày thể thao không chỉ dành cho việc luyện tập thể thao mà còn là phụ kiện thời trang phổ biến.

Giày Công Sở (Dress Shoes)
Giày công sở bao gồm các loại giày như Oxford, Derby và Loafers. Đây là những đôi giày không thể thiếu trong tủ giày của các quý ông và quý bà. Giày công sở giúp tạo nên vẻ ngoài lịch lãm và chuyên nghiệp, phù hợp với môi trường làm việc và các sự kiện quan trọng.

Giày Dạo Phố (Casual Shoes)
Giày dạo phố mang lại sự thoải mái và phong cách cho những buổi đi chơi, gặp gỡ bạn bè hay dạo phố. Các loại giày như loafers, boat shoes, espadrilles và giày lười là những lựa chọn phổ biến cho phong cách dạo phố.

4. Xu Hướng Giày Năm 2024
Giày Thể Thao Thông Minh
Năm 2024, giày thể thao thông minh với các công nghệ tiên tiến như theo dõi bước đi, đo nhịp tim và tích hợp GPS đang trở thành xu hướng. Những đôi giày này không chỉ giúp bạn luyện tập hiệu quả hơn mà còn mang lại sự tiện lợi và hiện đại trong cuộc sống hàng ngày.

Giày Thân Thiện Với Môi Trường
Xu hướng bảo vệ môi trường đang lan tỏa mạnh mẽ trong ngành thời trang. Các thương hiệu giày lớn nhỏ đều chú trọng phát triển những đôi giày làm từ vật liệu tái chế, hữu cơ và quy trình sản xuất bền vững. Giày thân thiện với môi trường không chỉ đẹp mà còn giúp bảo vệ hành tinh xanh.

Giày Chunky
Giày chunky với thiết kế đế dày, to bản và phong cách nổi bật tiếp tục làm mưa làm gió trong năm 2024. Những đôi giày này không chỉ mang lại sự thoải mái mà còn giúp bạn nổi bật và cá tính hơn trong mọi trang phục.

Giày Vintage
Phong cách vintage luôn có sức hút đặc biệt và năm 2024 không phải là ngoại lệ. Giày vintage với thiết kế cổ điển, chất liệu da thật và chi tiết tinh xảo mang lại vẻ ngoài sang trọng và quý phái. Đây là lựa chọn hoàn hảo cho những ai yêu thích sự hoài cổ và độc đáo.

Kết Luận
Giày là phụ kiện không thể thiếu trong cuộc sống hiện đại. Việc chọn giày phù hợp không chỉ giúp bảo vệ đôi chân mà còn thể hiện phong cách và cá tính của bạn. Hãy cập nhật những xu hướng giày mới nhất và chọn cho mình những đôi giày ưng ý để luôn tự tin và phong cách trong mọi hoàn cảnh.','image/image_blog/blog_id10.jpg',
'05/02/2024'),
(4,8,N'Tai Nghe - Chìa Khóa Đến Thế Giới Âm Thanh Tuyệt Vời',N'Trong thế giới công nghệ hiện đại, tai nghe đã trở thành một phần không thể thiếu trong cuộc sống hàng ngày của chúng ta. Từ việc nghe nhạc, xem phim, tham gia các cuộc họp trực tuyến đến chơi game, tai nghe mang lại trải nghiệm âm thanh chất lượng và sự tiện lợi vượt trội. Hãy cùng khám phá vì sao tai nghe lại quan trọng và những xu hướng tai nghe nổi bật trong năm 2024.

1. Tầm Quan Trọng Của Tai Nghe
Tai nghe không chỉ giúp bạn thưởng thức âm nhạc và giải trí mà còn mang lại sự riêng tư và tập trung. Trong môi trường làm việc mở, tai nghe giúp bạn tách biệt khỏi tiếng ồn xung quanh và tập trung vào công việc. Khi di chuyển, tai nghe giúp bạn thư giãn và tận hưởng những bản nhạc yêu thích mà không làm phiền người khác. Đặc biệt, với sự phát triển của công nghệ âm thanh, tai nghe ngày càng mang lại chất lượng âm thanh cao cấp, giúp bạn trải nghiệm âm nhạc và âm thanh một cách chân thực và sống động.

2. Các Loại Tai Nghe Phổ Biến
Tai Nghe In-Ear
Tai nghe in-ear hay còn gọi là tai nghe nhét tai, là loại tai nghe nhỏ gọn và tiện lợi. Với thiết kế đặt vào trong ống tai, tai nghe in-ear mang lại chất lượng âm thanh tốt và khả năng cách âm cao. Đây là lựa chọn lý tưởng cho những ai yêu thích sự nhỏ gọn và tiện dụng, dễ dàng mang theo khi di chuyển.

Tai Nghe On-Ear
Tai nghe on-ear là loại tai nghe có đệm tai nằm trên vành tai. Với thiết kế nhỏ gọn nhưng vẫn đảm bảo chất lượng âm thanh tốt, tai nghe on-ear mang lại sự thoải mái khi sử dụng lâu dài. Đây là lựa chọn phổ biến cho những ai yêu thích phong cách năng động và tiện lợi.

Tai Nghe Over-Ear
Tai nghe over-ear, hay còn gọi là tai nghe chụp tai, có đệm tai bao phủ toàn bộ tai. Với thiết kế lớn và đệm tai êm ái, tai nghe over-ear mang lại chất lượng âm thanh vượt trội và khả năng cách âm tốt. Đây là lựa chọn hoàn hảo cho những ai yêu thích chất lượng âm thanh cao cấp và sự thoải mái tối đa.

3. Xu Hướng Tai Nghe Năm 2024
Tai Nghe Không Dây (Wireless Headphones)
Tai nghe không dây tiếp tục là xu hướng hot trong năm 2024. Với kết nối Bluetooth ổn định và pin dung lượng lớn, tai nghe không dây mang lại sự tiện lợi tối đa, giúp bạn dễ dàng di chuyển mà không lo bị vướng víu bởi dây cáp. Các dòng tai nghe không dây cao cấp còn tích hợp các công nghệ hiện đại như chống ồn chủ động, điều khiển cảm ứng và hỗ trợ trợ lý ảo.

Tai Nghe Chống Ồn Chủ Động (Noise-Canceling Headphones)
Tai nghe chống ồn chủ động là giải pháp hoàn hảo cho những ai muốn tách biệt hoàn toàn khỏi tiếng ồn xung quanh. Với công nghệ chống ồn tiên tiến, những chiếc tai nghe này có khả năng phát hiện và loại bỏ tiếng ồn, mang lại không gian âm nhạc riêng tư và yên tĩnh. Đây là lựa chọn lý tưởng cho những chuyến bay dài, làm việc trong môi trường ồn ào hoặc đơn giản là khi bạn muốn tập trung vào âm nhạc.

Tai Nghe Gaming
Tai nghe gaming được thiết kế đặc biệt để tối ưu hóa trải nghiệm chơi game. Với chất lượng âm thanh sống động, âm thanh vòm 7.1 và micro chống ồn, tai nghe gaming giúp bạn hòa mình vào thế giới game và tương tác tốt hơn với đồng đội. Các mẫu tai nghe gaming hiện đại còn tích hợp đèn LED RGB, thiết kế bắt mắt và khả năng tùy chỉnh âm thanh.

Tai Nghe Thông Minh
Tai nghe thông minh với các tính năng như theo dõi sức khỏe, tích hợp trợ lý ảo và khả năng điều chỉnh âm thanh tự động đang trở thành xu hướng nổi bật. Những chiếc tai nghe này không chỉ mang lại trải nghiệm âm nhạc tuyệt vời mà còn hỗ trợ các hoạt động hàng ngày, giúp cuộc sống của bạn tiện lợi và hiện đại hơn.

4. Cách Chọn Tai Nghe Phù Hợp
Xác Định Nhu Cầu Sử Dụng
Trước khi chọn mua tai nghe, bạn cần xác định rõ nhu cầu sử dụng của mình. Nếu bạn thường xuyên di chuyển, tai nghe in-ear hoặc on-ear không dây sẽ là lựa chọn phù hợp. Nếu bạn cần tập trung làm việc trong môi trường ồn ào, tai nghe over-ear chống ồn chủ động sẽ là lựa chọn lý tưởng.

Kiểm Tra Chất Lượng Âm Thanh
Chất lượng âm thanh là yếu tố quan trọng nhất khi chọn tai nghe. Hãy thử nghe thử và kiểm tra các yếu tố như âm bass, âm treble và âm mid để đảm bảo tai nghe mang lại trải nghiệm âm thanh tốt nhất.

Chọn Thương Hiệu Uy Tín
Chọn mua tai nghe từ các thương hiệu uy tín sẽ đảm bảo chất lượng sản phẩm và dịch vụ hậu mãi tốt. Các thương hiệu như Sony, Bose, Sennheiser, Apple, và JBL đều có các dòng tai nghe chất lượng và đa dạng, phù hợp với nhiều nhu cầu sử dụng.

Kết Luận
Tai nghe là thiết bị quan trọng giúp bạn tận hưởng âm nhạc và âm thanh một cách trọn vẹn. Với sự phát triển không ngừng của công nghệ, tai nghe ngày càng trở nên đa dạng và hiện đại hơn, mang lại nhiều lựa chọn phong phú cho người dùng. Hãy chọn cho mình một chiếc tai nghe phù hợp để trải nghiệm thế giới âm thanh tuyệt vời và tận hưởng những giây phút thư giãn, giải trí thật trọn vẹn.

','image/image_blog/blog_id11.jpg',
'03/07/2024')
INSERT INTO [dbo].[Interaction_Blog]
           ([user_id]
           ,[blog_id]
           ,[blog_isReaction])
     VALUES
           	
	(4,	2,	1),
	(3,	2,	1),
	(5,	2,	1),
	(6,	2,	1),
	(4,	3,	1),
	(3,	3,	1),
	(5,	3,	1),
	(6,	3,	1),
	(7,	3,	1),
	(4,	4,	1),
	(3,	4,	1),
	(5,	4,	1),
	(6,	4,	1),
	(4,	5,	1),
	(3,	5,	1),
	(5,	5,	1),
	(6,	5,	1),
	(7,	5,	1),
	(4,	6,	1),
	(3,	6,	1),
	(5,	6,	1),
	(6,	6,	1),
	(4,	7,	1),
	(3,	7,	1),
	(5,	7,	1),
	(6,7,	1),
	(7,	7,	1),
	(4,	8,	1),
	(3,	8,	1),
	(5,8,	1),
	(6,	8,	1)
INSERT INTO [dbo].[Interaction_Blog_Comment]
           ([blog_id]
           ,[interaction_blog_id]
           ,[comment_create_day]
           ,[comment])
     VALUES
           (2
           ,2
           ,'10/07/2024'
           ,N'Bài viết thật bổ ích tôi đã học được vài thứ từ nó . Cảm ơn vì đã đăng bài viết có ích này lên .'),
		   (2
           ,3
           ,'09/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề'),
		   (2
           ,4
           ,'08/07/2024'
           ,N'Bài viết rất chi tiết và dễ hiểu. Cách bạn trình bày rất hấp dẫn và logic'),
		   (2
           ,5
           ,'07/07/2024'
           ,N'Tôi rất mong đợi các bài viết tiếp theo của bạn về chủ đề này. Bạn có thể nghiên cứu sâu hơn về một số khía cạnh khác?'),
		    (3
           ,6
           ,'07/07/2024'
           ,N'Xin cảm ơn bạn đã dành thời gian và công sức để viết bài viết này. Đây là một nguồn thông tin quý giá.'),
		    (3
           ,7
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (3
           ,8
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.'),
		    (3
           ,9
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (3
           ,10
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (4
           ,11
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (4
           ,12
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.'),
		    (4
           ,13
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (4
           ,14
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (5
           ,15
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (5
           ,16
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.'),
		    (5
           ,17
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (5
           ,18
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),(4
           ,11
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (5
           ,19
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.'),
		    (6
           ,20
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (6
           ,21
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (6
           ,22
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (6
           ,23
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.'),
		    (7
           ,24
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (7
           ,25
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (7
           ,26
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (7
           ,27
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.'),
		    (7
           ,28
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (8
           ,29
           ,'07/07/2024'
           ,N'Tôi có một câu hỏi liên quan đến nội dung này. Bạn có thể giải thích thêm về điều này không?'),
		   (8
           ,30
           ,'07/07/2024'
           ,N'Tôi rất ấn tượng với cách bạn phân tích và giải thích vấn đề. Điều này giúp tôi hiểu sâu hơn về chủ đề.'),
		    (8
           ,31
           ,'07/07/2024'
           ,N'Cảm ơn bạn đã chia sẻ thông tin hữu ích này. Tôi đã học được rất nhiều điều mới từ bài viết của bạn.')
UPDATE Account
SET auth =1
GO
INSERT INTO ShoppingCart VALUES	(2),(3),(4),(5),(6),(7),(8),(9)
