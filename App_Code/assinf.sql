create database CSDL_QLBS

create table Nguoidung
(
	id_ND int identity(1,1),
	TenND nvarchar(255) not null,
	email varchar(255) not null,
    Tentaikhoan varchar(50) not null,
	Matkhau varchar(50) not null,
	kieutaikhoan varchar(10),
	constraint pk_ND primary key (id_ND)
)

create table Danhmuc
(
	id_Danhmuc int,
	Tendanhmuc nvarchar(255) not null,
	id_Danhmuccha int ,
	constraint pk_Danhmuc primary key (id_Danhmuc),
	constraint fk_Danhmuc_Danhmuc foreign key (id_Danhmuccha) references Danhmuc (id_Danhmuc)
)


create table Sanpham
(
	id_Sanpham int identity(1,1),
	id_Danhmuc int,
	tensanpham nvarchar(255) not null,
	Gia decimal (12,2) not null ,
	Motasanpham nvarchar(1000) not null,
	img varchar(max),
	constraint pk_Sanpham primary key (id_Sanpham),
	constraint fk_Danhmucsanpham foreign key (id_danhmuc) references danhmuc (id_danhmuc)
)

create table Hoadon
(
	id_Hoadon int identity(1,1),
	id_nd int not null,
	constraint pk_Hoadon primary key (id_Hoadon),
	constraint fk_Nguoidung_Hoadon foreign key (id_nd) references Nguoidung (id_nd)
)

create table Chitiethoadon
(
	id_Chitiethoadon int identity(1,1),
	id_hoadon int not null,
	id_Sanpham int not null,
	Soluong int not null,
	constraint pk_Chitiethoadon primary key (id_Chitiethoadon),
	constraint fk_hoadon_Chitiethoadon foreign key (id_hoadon) references hoadon (id_hoadon),
	constraint fk_sanpham_Chitiethoadon foreign key (id_sanpham) references sanpham (id_sanpham)
)



----Insert


select * from hoadon
select * from Danhmuc
insert into Danhmuc values('100',N'Sach Giao Khoa',null)
insert into Danhmuc values('200',N'Truyen Ngon Tinh',null)
insert into Danhmuc values('300',N'Sach Khoa Hoc',null)
insert into Danhmuc values('1',N'Sach giao khoa cap 1','100')
insert into Danhmuc values('2',N'Sach giao khoa cap 2','100')
insert into Danhmuc values('3',N'Truyen Ngon Tinh HE','200')
insert into Danhmuc values('4',N'Truyen Ngon Tinh SE','200')
insert into Danhmuc values('5',N'Sach khoa hoc vien tuong','300')


select * from sanpham
insert into sanpham values('1',N'Sach giao khoa lop 1','2500000',N'Lop 1','~\Images\SGK-lop1-1.jpg')
insert into sanpham values('2',N'Sach giao khoa lop 2','2000000',N'Lop 12','~\Images\d7602f3828d2471588e991d0d44ae083_master.jpg')
insert into sanpham values('3',N'Truyen ngon tinh HE','100000',N'Ngon Tinh','~\Images\Sach-moi-cua-Harper-Lee-ban-chay-nhu-Harry-Potter-1.jpg')
insert into sanpham values('4',N'Ngon Tinh SE ','2500000',N'Ngon Tinh Nguoc','~\Images\10032012thuy0717204491.jpg')
insert into sanpham values('5',N'Khoa hoc','50000',N'Khoa hoc','~\Images\ksbdfkbsdmfbjhdsgfjh.jpg')
