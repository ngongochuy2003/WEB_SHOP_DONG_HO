﻿/*create database QL_BanDongHo
use QL_BanDongHo*/

create table LoaiSanPham
(
	MaLoaiSP int primary key identity,
	TenLoaiSP nvarchar(50)
)
create table SanPham
(
	MaSP int primary key identity,
	TenSP nvarchar(MAX),
	MoTa nvarchar(MAX),
	GioiTinh nvarchar(5),
	GiaBan float,
	GiaNhap float,
	Anh nvarchar(50),
	MaLoaiSP int,
	SoLuongTon int,
	foreign key (MaLoaiSP) references LoaiSanPham(MaLoaiSP),
)
create table KhachHang
(
	MaKH int primary key identity,
	TaiKhoan varchar(50),
	MatKhau varchar(50) not null,
	TenKH nvarchar(50),
	DiaChi nvarchar(50),
	Email varchar(50),
	SDT char(11)
)
create table HoaDon
(
	MaHD int primary key identity,
	NgayDat datetime,
	TinhTrang nvarchar(50),
	MaSP int,
	TenSP nvarchar(MAX),
	SoLuong int,
	ThanhTien float,
	MaKH int,
	foreign key (MaKH) references KhachHang(MaKH),
	foreign key(MaSP) references SanPham(MaSP)
)
create table LienHe
(
	MaLH int identity(1,1),
	MaKH int,
	TenKhachHang nvarchar(MAX),
	TieuDe nvarchar(MAX),
	NoiDung nvarchar(MAX),
	thoiGianPhanHoi datetime,
	primary key(MaLH),
	foreign key(MaKH) references KhachHang(MaKH)
)

insert into LoaiSanPham values(N'CASIO')
insert into LoaiSanPham values(N'G-SHOCK & BABY-G')
insert into LoaiSanPham values(N'CITIZEN')
insert into LoaiSanPham values(N'ADRIATICA')
insert into LoaiSanPham values(N'DOXA')
insert into LoaiSanPham values(N'OP')
insert into LoaiSanPham values(N'ORIENT')
insert into LoaiSanPham values(N'SEIKO')
insert into LoaiSanPham values(N'SKAGEN')

insert into SanPham values(N'Casio MTP-1384BUL-1AVDF – Nam – Quartz (Pin) – Dây Da',N'Mẫu Casio MTP-1384BUL-1AVDF phiên bản trẻ trung với nền cọc số la mã tạo hình mỏng cách tân trên nền mặt số đen size 40mm. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 41 mm.<br>Dây Đeo: Dây Da Chính Hãng. <br>Màu Mặt Số: Đen. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',2303000,2000000,N'96_MTP-1384BUL-1AVDF-399x399.jpg',1,100)
insert into SanPham values(N'Casio AQ-S810W-1A4VDF – Nam – Kính Nhựa – Tough Solar (Năng Lượng Ánh Sáng) – Dây Cao Su',N'Mẫu đồng hồ Casio AQ-S810W-1A4VDF ấn tượng với công nghệ Tough Solar (Năng Lượng Ánh Sáng), vỏ máy được thiết kế tạo hình các góc cạnh phủ tông màu xám phối cùng bộ dây đeo bằng cao su đen tạo nên vẻ cá tính năng động. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Resin Glass (Kính Nhựa). <br>Máy: Tough Solar (Năng Lượng Ánh Sáng). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 46.6 mm.<br>Dây Đeo: Dây Cao Su. <br>Màu Mặt Số: Đen. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',1998000,2000000,N'AQ-S810W-1A4VDF-399x399.jpg',1,100)
insert into SanPham values(N'Casio EFV-570D-1AVUDF – Nam – Quartz (Pin) – Dây Kim Loại',N'Mẫu Casio EFV-570D-1AVUDF nổi bật với kiểu dáng 6 kim kèm tính năng Chronograph đo thời gian vượt trội đặc trưng thuộc dòng Edifice dành cho các tín đồ yêu thích phong cách thể thao nhưng lại khoác trên mình vẻ ngoài lịch lãm. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Tough Solar (Năng Lượng Ánh Sáng). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 43.8 mm. <br>Dây Đeo: <br>Màu Mặt Số: Đen. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',3361000,2000000,N'42_EFV-570D-1AVUDF-399x399.jpg',1,100)
insert into SanPham values(N'Casio EFR-526L-2AVUDF – Nam – Quartz (Pin) – Dây Da',N'Đồng hồ Casio EFR-526L-2AVUDF với thiết kế dành cho nam theo phong cách thời trang, kim chỉ và vạch số to rõ nổi bật trên nền số xanh thể thao, ô lịch ngày vị trí 3 giờ, dây đeo bằng da màu xanh tạo vẻ thời trang sành điệu trẻ trung. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Tough Solar (Năng Lượng Ánh Sáng). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 48.5 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Xanh. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',3196000,2000000,N'23_EFR-526L-2AVUDF-399x399.jpg',1,100)
insert into SanPham values(N'Casio MTP-1141A-7ARDF – Nam – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Casio MTP-1141A-7ARDF với hình dáng truyền thống khi mặt đồng hồ tròn, vỏ và dây đeo bằng kim loại mạ bạc tinh tế, nền số trắng cùng kim chỉ và vạch chỉ giờ được làm mỏng. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 37 mm.<br>Dây Đeo: <br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',987000,300000,N'MTP-1141A-7ARDF-1-399x399.jpg',1,100)
insert into SanPham values(N'Casio EFV-570D-7AVUDF – Nam – Quartz (Pin) – Dây Kim Loại',N'Mẫu Casio EFV-570D-7AVUDF nổi bật với kiểu dáng 6 kim kèm tính năng Chronograph đo thời gian vượt trội đặc trưng thuộc dòng Edifice dành cho các tín đồ yêu thích phong cách thể thao nhưng lại khoác trên mình vẻ ngoài lịch lãm. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 43.8 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',3361000,2000000,N'40_EFV-570D-7AVUDF-399x399.jpg',1,100)
insert into SanPham values(N'Casio LTP-1215A-2ADF – Nữ – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Casio LTP-1215A-2ADF có vỏ và dây đeo kim loại màu bạc sáng bóng, kim chỉ và vạch số mỏng nổi bật trên nền số màu xanh thời trang, ô lịch ngày vị trí 3h. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 25.5mm.<br>Dây Đeo: <br>Màu Mặt Số: Xanh. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',987000,300000,N'27_LTP-1215A-2ADF-399x399.jpg',1,100)
insert into SanPham values(N'Casio LTP-1183A-2ADF – Nữ – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Casio LTP-1183A-2ADF với mặt số nữ tính, mặt số nền xanh quyến rũ nổi bật với kim chỉ và vạch số làm mỏng tinh tế, vỏ và dây đeo kim loại mạ bạc sang trọng. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 23 mm.<br>Dây Đeo: <br>Màu Mặt Số: Xanh. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',1034000,300000,N'32_-LTP-1183A-2ADF-2-399x399.jpg',1,100)
insert into SanPham values(N'Casio LRW-200H-4E3VDF – Nữ – Kính Nhựa – Quartz (Pin) – Dây Cao Su',N'Mẫu Casio LRW-200H-4E3VDF thiết kế dây vỏ nhựa tone màu trắng năng động, mặt số đơn giản size 34mm kiểu dáng 3 kim 1 lịch. <br>Thương hiệu: CASIO. <br>Xuất xứ: Nhật Bản. <br>Kính: Resin Glass (Kính Nhựa). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 34.2 mm.<br>Dây Đeo: Dây Cao Su.<br>Màu Mặt Số: Hồng. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',776000,300000,N'10_LRW-200H-4E3VDF-399x399.jpg',1,100)
insert into SanPham values(N'G-Shock GBX-100-2DR – Nam – Quartz (Pin) – Dây Cao Su',N'Mẫu G-Shock GBX-100-2DR mức chống nước nổi bật 20ATM, phiên bản dây vỏ nhựa tone màu xanh thời trang, mặt số kiểu dáng vuông điện tử hiện thị đa chức năng. <br>Thương hiệu: G-SHOCK & BABY-G. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 50.9 mm × 46 mm.<br>Dây Đeo: 	
Dây Cao Su.<br>Màu Mặt Số: Đen. <br>Chống nước: 20 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',4935000,300000,N'GBX-100-2-399x399.jpg',2,100)
insert into SanPham values(N'G-Shock DW-5600BB-1DR – Nam – Quartz (Pin) – Dây Cao Su',N'Trẻ trung nam tính với thiết kế vỏ máy khung nhựa dập nổi với mẫu G-Shock DW-5600BB-1DR cùng khả năng chịu nước lên đến 20 ATM thích hợp cho bạn trẻ năng động với nền mặt số điện tử hiện thị đa chức năng. <br>Thương hiệu: G-SHOCK & BABY-G. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 5 Năm.<br>Đường Kính Mặt Số: 48.9 mm x 42.8 mm.<br>Dây Đeo: Dây Cao Su.<br>Màu Mặt Số: Đen. <br>Chống nước: 20 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',3196000,2000000,N'18_DW-5600BB-1DR-399x399.jpg',2,100)
insert into SanPham values(N'G-Shock GST-S120L-1BDR – Nam – Tough Solar (Năng Lượng Ánh Sáng) – Dây Da',N'Mẫu G-Shock GST-S120L-1BDR nổi bật với vỏ máy tông màu đen đầy mạnh mẽ, ấn tượng với Pin sử dụng công nghệ hiện đại Tough Solar (Năng Lượng Ánh Sáng), cùng với bộ dây da nâu tăng thêm sự lịch lãm. <br>Thương hiệu: G-SHOCK & BABY-G. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Tough Solar (Năng Lượng Ánh Sáng). <br>Bảo Hành Quốc Tế: 5 Năm.<br>Đường Kính Mặt Số: 59.1 mm x 52.4 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Đen. <br>Chống nước: 20 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',8648000,2000000,N'GST-S120L-1BDR-399x399.jpg',2,100)
insert into SanPham values(N'Baby-G BGD-560SK-7DR – Nữ – Quartz (Pin) – Dây Cao Su',N'Mẫu Baby-G BGD-560SK-7DR thiết kế phong cách thể thao cho các ban nữ cá tính với nền mặt số điện tử cùng khả năng chịu nước 20 ATM, điểm nhấn nổi bật cùng các họa tiết được in trên mặt đồng hồ. <br>Thương hiệu: G-SHOCK & BABY-G. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 5 Năm.<br>Đường Kính Mặt Số: 44.7 mm x 40 mm.<br>Dây Đeo: Dây Cao Su.<br>Màu Mặt Số: Trắng. <br>Chống nước: 20 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',2773000,300000,N'1_BGD-560SK-7DR-699x699.jpg',2,100)
insert into SanPham values(N'Baby-G BGD-560DE-2DR – Nữ – Quartz (Pin) – Dây Cao Su',N'Mẫu Baby-G BGD-560DE-2DR với thiết kế vỏ máy khung nhựa dập nổi tạo nên vẻ ngoài cá tính dành cho các bạn nữ với nền mặt số vuông điện tử hiện thị đa chức năng. <br>Thương hiệu: G-SHOCK & BABY-G. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 5 Năm.<br>Đường Kính Mặt Số: 44.7 mm x 40 mm.<br>Dây Đeo: Dây Cao Su.<br>Màu Mặt Số: Đen. <br>Chống nước: 20 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',3361000,100000,N'62_BGD-560DE-2DR-1-699x699.jpg',2,100)
insert into SanPham values(N'Baby-G MSG-S200G-5ADR – Nữ – Solar (Năng Lượng Ánh Sáng) – Dây Cao Su',N'Mẫu Baby-G MSG-S200G-5ADR phiên bản máy pin sử dụng công nghệ Solar (Năng lượng ánh sáng), chi tiết kim chỉ cùng cọc vạch số được phối tone vàng hồng thời trang. <br>Thương hiệu: G-SHOCK & BABY-G. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Solar (Năng lượng ánh sáng). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 38.4 mm.<br>Dây Đeo: Dây Cao Su.<br>Màu Mặt Số: Đen. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',5358000,2000000,N'54_MSG-S200G-5ADR-699x699.jpg',2,100)
insert into SanPham values(N'Citizen BH5000-08A – Nam – Quartz (Pin) – Dây Da',N'Mẫu Citizen BH5000-08A phiên bản kim chỉ xanh tone màu thời trang nổi bật trên mặt số trắng size 42mm, trẻ trung lịch lãm khi phối cùng bộ dây da có vân. <br>Thương hiệu: CITIZEN. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',2900000,2000000,N'86_BH5000-08A-699x699.jpg',3,100)
insert into SanPham values(N'Citizen BE9183-03L – Nam – Quartz (Pin) – Dây Da',N'Mẫu Citizen BE9183-03L kiểu dáng đơn giản trẻ trung 3 kim trên mặt số tone nền xanh size 42mm, phiên bản kim giây mạ vàng sang trọng với thiết kế không đồng trục độc đáo. <br>Thương hiệu: CITIZEN. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Xanh. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',3700000,2000000,N'BE9183-03L-699x699.jpg',3,100)
insert into SanPham values(N'Citizen NY0088-11E – Nam – Automatic (Tự Động) – Dây Cao Su',N'Mẫu Citizen NY0088-11E thiết kế dày dặn nam tính vỏ máy kim loại mạ bạc chứa đựng bên trong trải nghiệm đến từ bộ máy cơ với bề dày 12mm, khả năng chịu nước 20ATM là tính năng vượt trội. <br>Thương hiệu: CITIZEN. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Dây Cao Su.<br>Màu Mặt Số: Đen. <br>Chống nước: 20 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',8050000,2000000,N'59_NY0088-11E-699x699.jpg',3,100)
insert into SanPham values(N'Citizen EU6022-54E – Nữ – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Citizen EU6022-54E có vỏ và dây đeo kim loại mạ vàng sang trọng, kim chỉ và vạch số được làm thanh mãnh nổi bật trên nền số màu đen có vân độc đáo. <br>Thương hiệu: CITIZEN. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 26 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Đen. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',3550000,2000000,N'EU6022-54E.jpg',3,100)
insert into SanPham values(N' Citizen Nữ – Quartz (Pin) – Dây Kim Loại (EZ6312-52A)',N'Đồng hồ Citizen EZ6312-52A thời trang sang trọng, với chất liệu thép không gỉ và 2 kim chỉ được mạ vàng, cùng mặt số đồng hồ hình chữ nhật đính hạt pha lê 2 bên tạo nên nét sang trọng cho chiếc đồng hồ. <br>Thương hiệu: CITIZEN. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 23mm x 15mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Đen. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',3530000,2000000,N'EZ6312-52A-699x699.jpg',3,100)
insert into SanPham values(N'Citizen EZ6370-56X – Nữ – Quartz (Pin) – Dây Kim Loại',N'<br>Thương hiệu: CITIZEN. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 26 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Đồng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',4000000,2000000,N'60_EZ6370-56X-699x699.jpg',3,100)
insert into SanPham values(N'Adriatica Nam – Quartz (Pin) – Dây Da (A1115.5233Q)',N'Đồng hồ nam dây da Adriatica A1115.5233Q, mặt số nền trắng có chữ số La Mã màu đen, vỏ được làm từ chất liệu thép không gỉ, dây da đen có vân cao cấp, 3 kim chỉ,1 lịch ngày và 1 lịch thứ. <br>Thương hiệu: ADRIATICA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',4270000,2000000,N'3341-A1115-5233Q.jpg',4,100)
insert into SanPham values(N'Adriatica Nam – Quartz (Pin) – Dây Da (A1233.52B3Q)',N'Đồng hồ nam Adriatica A1233.52B3Q với chất lượng cao cấp được làm bằng thép không gỉ và dây đeo dây da màu đen có vân, mặt số nền trắng cùng chi tiết màu xanh kết hợp tinh tế và 3 kim chỉ. <br>Thương hiệu: ADRIATICA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 47.6mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',4120000,2000000,N'3340-A1233-52B3Q.jpg',4,100)
insert into SanPham values(N'Adriatica A3143.2111Q – Nữ – Kính Sapphire – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Adriatica A3143.2111Q có mặt số tròn nhỏ với viền kim loại mạ vàng độc đáo, kim chỉ và vạch số thanh mãnh nổi bật trên nền số màu vàng, dây đeo kim loại màu đờ mi thời trang thanh lịch quyến rũ. <br>Thương hiệu: ADRIATICA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 47.6mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Trắng. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',5610000,2000000,N'8_A3143.2111Q-699x699.jpg',4,100)
insert into SanPham values(N'Adriatica Nữ – Quartz (Pin) – Dây Kim Loại (A3119.1163Q)',N'Đồng hồ nữ cao cấp Adriatica A3119.1163Q, sang trọng với chất liệu cao cấp thép không gỉ mạ vàng, mặt số vuông nền trắng, chữ số và 3 kim chỉ giờ cũng được mạ vàng tinh tế. <br>Thương hiệu: ADRIATICA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 21mm x 27mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',5050000,2000000,N'3337-A3119-1163Q-699x699.jpg',4,100)
insert into SanPham values(N'Doxa D156RBY – Nữ – Kính Sapphire – Quartz (Pin) – Dây Kim Loại',N'Doxa D156RBY thời trang sang trọng với chi tiết kim chỉ lẫn vạch số tạo hình mỏng mạ vàng hồng kiểu dáng trẻ trung trên mặt số tone nền đỏ size 29mm. <br>Thương hiệu: DOXA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 29 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Đỏ. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',18870000,2000000,N'7_D156RBY-699x699.jpg',5,100)
insert into SanPham values(N'Doxa D203SBU – Nam – Kính Sapphire – Quartz (Pin) – Dây Da',N'Mẫu Doxa D203SBU kiểu dáng mỏng mang lại vẻ ngoài trẻ trung tinh tế với nền mặt số được tạo hình hoa văn nổi phối cùng tông màu xanh nổi bật thời trang trước nền mặt kính Sapphire. <br>Thương hiệu: DOXA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 39 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Xanh. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',14400000,2000000,N'22_D203SBU-699x699.jpg',5,100)
insert into SanPham values(N'Doxa D128RWH – Nam – Kính Sapphire – Automatic (Tự Động) – Dây Kim Loại – Limited Edition',N'Phiên bản đặc biệt mẫu đồng hồ Doxa D128RWH 7 kim với số lượng giới hạn 1000 chiếc trên toàn thế giới cùng kích thước dày dặn chứa đựng cả trải nghiệm của bộ máy cơ đầy nam tính, dưới mặt kính Sapphire nền mặt số được tạo hình 3 ô số nhỏ nổi bật tính năng lịch trăng. <br>Thương hiệu: DOXA. <br>Xuất xứ: Thụy Sĩ. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Trắng. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',141570000,100000000,N'12_D128RWH-699x699.jpg',5,100)
insert into SanPham values(N' OP 89322DMK-T-HD – Nam – Kính Sapphire – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Olym Pianus (Olympia Star) 89322DMK-T-HD có vỏ và dây đeo kim loại được mạ vàng sang trọng, kim chỉ thanh mãnh có phản quang và vạch số pha lê đỏ độc đáo nổi bật trên nền số màu trắng trang nhã. <br>Thương hiệu: Olym Pianus (Olympia Star). <br>Xuất xứ: Nhật Bản. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 36.5 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',4170000,2000000,N'125_89322DMK-T-HD-699x699.jpg',6,100)
insert into SanPham values(N'OP 9908AGSK-GL-N-88 – Nam – Kính Sapphire – Automatic (Tự Động) – Dây Da',N'Vẻ ngoài lịch lãm đầy quyền lực cùng mẫu Olym Pianus (Olympia Star) 9908AGSK-GL-N-88 điểm nhấn được ẩn dưới mặt kính Sapphire với nền mặt số được phối tông màu nâu mang lại vẻ thời trang cho phái mạnh. <br>Thương hiệu: Olym Pianus (Olympia Star). <br>Xuất xứ: Nhật Bản. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 40 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Nâu. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',6950000,2000000,N'108_9908AGSK-GL-N-88-699x699.jpg',6,100)
insert into SanPham values(N'OP 58074LK-V – Nữ – Kính Sapphire – Quartz (Pin) – Dây Kim Loại',N'Mẫu đồng hồ Olym Pianus (Olympia Star) 58074LK-V kích thước mặt số tròn nhỏ kiểu dáng thanh mảnh nữ tính và đầy cuốn hút đến từ thiết kế tổng thể của chiếc đồng hồ được bao phủ tone vàng sang trọng cho phái đẹp. <br>Thương hiệu: Olym Pianus (Olympia Star). <br>Xuất xứ: Nhật Bản. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 26 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Vàng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',3840000,2000000,N'382_58074LK-V-699x699.jpg',6,100)
insert into SanPham values(N'Orient FAC00007W0 – Nam – Automatic (Tự Động) – Dây Da',N'Đồng hồ nam Orient FAC00007W0 với thiết kế vỏ máy kim loại màu vàng sáng bóng, kim chỉ và vạch chữ số la mã to rõ nổi bật trên nền trắng trang trọng, kết hợp với dây đeo bằng chất liệu da nâu đem lại phong cách lịch lãm nam tính. <br>Thương hiệu: Orient. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 40 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',6170000,2000000,N'FAC00007W0-699x699.jpg',7,100)
insert into SanPham values(N'Orient RE-AV0001S00B – Nam – Automatic (Tự Động) – Dây Da',N'Mẫu Orient RE-AV0001S00B nổi bật với ô chân kính lộ tim phô diễn ra 1 phần hoạt động bộ máy cơ bên trong tạo nên vẻ độc đáo sang trọng với phần vỏ máy kim loại mạ vàng hồng. <br>Thương hiệu: Orient. <br>Xuất xứ: Nhật Bản. <br>Kính: Sapphire (Kính Chống Trầy). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 41 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',18600000,7000000,N'69_RE-AV0001S00B-699x699.jpg',7,100)
insert into SanPham values(N'Orient RA-AG0726S00B – Nữ – Automatic (Tự Động) – Dây Da',N'Mẫu Orient RA-AG0726S00B phiên bản kỷ niệm 1010 năm Thăng Long – Hà Nội nổi bật với thiết kế độc đáo máy cơ lộ tim trên nền mặt số trắng size 35mm. <br>Thương hiệu: Orient. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 35.9 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',10800000,1000000,N'RA-AG0726S00B-699x699.jpg',7,100)
insert into SanPham values(N'Orient SSZ3W002W0 – Nữ – Quartz (Pin) – Dây Kim Loại',N'Mẫu đồng hồ nữ Orient SSZ3W002W0 thiết kế mặt đồng hồ tròn nhỏ nữ tính, cùng với kim chỉ vạch số với kiểu thanh mảnh nhẹ nhàng, phối cùng dây đeo demi kim loại sọc vàng tạo nên phụ kiện thời trang. <br>Thương hiệu: Orient. <br>Xuất xứ: Nhật Bản. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Automatic (Tự Động). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 36 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Trắng. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',2810000,1000000,N'423_SSZ3W002W0.jpg',7,100)
insert into SanPham values(N'Seiko SSB333P1 – Nam – Quartz (Pin) – Dây Da',N'Mẫu Seiko SSB333P1 phiên bản mặt xanh 6 kim với 3 núm vặn điều chỉnh chức năng đo thời gian Chronograph mang lại vẻ ngoài thể thao đầy nam tính. <br>Thương hiệu: Seiko. <br>Xuất xứ: Nhật Bản. <br>Kính: Hardlex Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 42.7 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Xanh. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',5920000,2000000,N'69_SSB333P1-699x699.jpg',8,100)
insert into SanPham values(N'Seiko SRPD69K1 – Nam – Automatic (Tự Động) – Dây Kim Loại',N'Mẫu Seiko SRPD69K1 phiên bản dây lưới mạ bạc thời trang đi kèm với nền mặt số tone đỏ size 42mm, nổi bật với chi tiết cọc chấm tròn dạ quang. <br>Thương hiệu: Seiko. <br>Xuất xứ: Nhật Bản. <br>Kính: Hardlex Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 42.5 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Đỏ. <br>Chống nước: 10 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',8810000,2100000,N'14_SRPD69K1-699x699.jpg',8,100)
insert into SanPham values(N'Seiko SUR699P1 – Nữ – Quartz (Pin) – Dây Da',N'Mẫu đồng hồ Seiko SUR699P1 trẻ trung nổi bật với nền mặt số được gia công đính kèm các viên kim cương tương ứng với các múi giờ tạo nên vẻ tinh tế độc đáo cho phái đẹp. <br>Thương hiệu: Seiko. <br>Xuất xứ: Nhật Bản. <br>Kính: Hardlex Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 1 Năm.<br>Đường Kính Mặt Số: 42.5 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Đen. <br>Chống nước: 5 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',4870000,1000000,N'16_SUR699P1-699x699.jpg',8,100)
insert into SanPham values(N'Skagen SKW6614 – Nam – Quartz (Pin) – Dây Kim Loại – Mặt Số 42mm',N'Mẫu Skagen SKW6614 thiết kế Skeleton (cơ lộ máy) độc đáo trên mặt số tone nền xám size 42mm, phối cùng mẫu dây đeo kim loại mạ bạc phiên bản dây lưới thời trang. <br>Thương hiệu: Skagen. <br>Xuất xứ: Đan Mạch. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Xám. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',6710000,1000000,N'SKW6614-699x699.jpg',9,100)
insert into SanPham values(N'Skagen SKW6652 – Nam – Quartz (Pin) – Dây Kim Loại – Mặt Số 42mm',N'Mẫu Skagen SKW6652 mặt số xanh kiểu dáng 6 kim size 42mm tone màu thời trang phối cùng bộ dây đeo mạ bạc phiên bản dây lưới. <br>Thương hiệu: Skagen. <br>Xuất xứ: Đan Mạch. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 2 Năm.<br>Đường Kính Mặt Số: 42 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Xám. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc','Nam',4520000,1000000,N'SKW6652-699x699.jpg',9,100)
insert into SanPham values(N'Skagen SKW2372 – Nữ – Quartz (Pin) – Dây Da',N'Đồng hồ Skagen SKW2372 có phong cách cổ điển khi mặt số tròn kết hợp với dây đeo da màu đen quyến rũ, nền số màu đen sang trọng, nổi bật là 2 kim chỉ được dát mỏng tinh tế, trung tâm mặt số có lịch thể hiện chu kỳ hoạt động của mặt trăng. <br>Thương hiệu: Skagen. <br>Xuất xứ: Đan Mạch. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 3 Năm.<br>Đường Kính Mặt Số: 38 mm.<br>Dây Đeo: Dây Da Chính Hãng.<br>Màu Mặt Số: Đen. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',6650000,1000000,N'SKW2372-699x699.jpg',9,100)
insert into SanPham values(N'Skagen SKW2340 – Nữ – Quartz (Pin) – Dây Kim Loại',N'Đồng hồ Skagen SKW2340 có vỏ kim loại bằng chất liệu thép không gỉ mạ vàng tinh xảo, nền số màu trắng sang trọng cùng kim chỉ được làm mỏng chi tiết và vạch số được đính pha lê sang trọng nổi bật. <br>Thương hiệu: Skagen. <br>Xuất xứ: Đan Mạch. <br>Kính: Mineral Crystal (Kính Cứng). <br>Máy: Quartz (Pin). <br>Bảo Hành Quốc Tế: 3 Năm.<br>Đường Kính Mặt Số: 30 mm.<br>Dây Đeo: Thép Không Gỉ.<br>Màu Mặt Số: Trắng. <br>Chống nước: 3 ATM. <br>Nơi sản xuất: Trung Quốc',N'Nữ',4650000,1000000,N'SKW2340-699x699.jpg',9,100)