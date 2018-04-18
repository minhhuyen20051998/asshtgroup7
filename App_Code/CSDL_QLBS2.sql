create database CSDL_QLBS2

create table Nguoidung
(
	id_ND nvarchar(255) not null,
	TenND nvarchar(255) not null,
	email varchar(255) not null,
    Tentaikhoan varchar(50) not null,
	Matkhau varchar(50) not null,
	kieutaikhoan varchar(10),
	constraint pk_ND primary key (id_ND)
)

create table Danhmuc
(
	id_Danhmuc int ,
	Tendanhmuc nvarchar(255) not null,
	id_Danhmuccha int ,
	constraint pk_Danhmuc primary key (id_Danhmuc),
	constraint fk_Danhmuc_Danhmuc foreign key (id_Danhmuccha) references Danhmuc (id_Danhmuc)
)


create table Sanpham
(
	id_Sanpham nvarchar(255) not null,
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
	id_Hoadon nvarchar(255) not null,
	id_nd nvarchar(255) not null,
	TenND nvarchar(255) not null,
	id_Sanpham nvarchar(255) not null,
	Soluong int not null,
	thanhtien money,
	NgayTaoHD datetime,
	constraint pk_Hoadon primary key (id_Hoadon),
	constraint fk_Nguoidung_Hoadon foreign key (id_ND) references Nguoidung (id_ND)
)

create table Chitiethoadon
(
	id_Chitiethoadon nvarchar(255) not null,
	id_hoadon nvarchar(255) not null,
	id_Sanpham nvarchar(255) not null,
	Soluong int not null,
	constraint pk_Chitiethoadon primary key (id_Chitiethoadon),
	constraint fk_hoadon_Chitiethoadon foreign key (id_hoadon) references hoadon (id_hoadon),
	constraint fk_sanpham_Chitiethoadon foreign key (id_sanpham) references sanpham (id_sanpham)
)
----Insert
select * from Danhmuc
select * from sanpham
select * from Chitiethoadon
select * from hoadon
select * from Danhmuc

insert into Chitiethoadon values('CTHD1','HD1','SP1',20)
insert into Chitiethoadon values('CTHD2','HD2','SP2',30)
insert into Chitiethoadon values('CTHD3','HD3','SP3',10)
insert into Chitiethoadon values('CTHD4','HD4','SP4',10)
insert into Chitiethoadon values('CTHD5','HD4','SP3',10)


select * from sanpham
insert into sanpham values('SP1','01',N'Sach giao khoa lop 1','2500000',N'Lop 1','~\Images\SGK-lop1-1.jpg')
insert into sanpham values('SP2','02',N'Sach giao khoa lop 2','2000000',N'Lop 12','~\Images\d7602f3828d2471588e991d0d44ae083_master.jpg')
insert into sanpham values('SP3','03',N'Truyen ngon tinh HE','100000',N'Ngon Tinh','~\Images\Sach-moi-cua-Harper-Lee-ban-chay-nhu-Harry-Potter-1.jpg')
insert into sanpham values('SP4','04',N'Ngon Tinh SE ','2500000',N'Ngon Tinh Nguoc','~\Images\10032012thuy0717204491.jpg')


select * from hoadon
insert into hoadon values('HD1','ND1','Ta Thi Thanh Huyen','SP1',10,20000,'2018-4-20')
insert into hoadon values('HD2','ND2','Cat Quynh Phuong','SP2',20,20000,'2018-4-23')
insert into hoadon values('HD3','ND3','Ta Thi Thanh Huyen','SP3',30,20000,'2018-4-29')
insert into hoadon values('HD4','ND4','Ta Thi Thanh Huyen','SP4',50,20000,'2018-4-30')

select * from Danhmuc
insert into Danhmuc values('100',N'Sach Giao Khoa',null)
insert into Danhmuc values('200',N'Truyen Ngon Tinh',null)
insert into Danhmuc values('300',N'Sach Khoa Hoc',null)
insert into Danhmuc values('1',N'Sach giao khoa cap 1','100')
insert into Danhmuc values('2',N'Sach giao khoa cap 2','100')
insert into Danhmuc values('3',N'Truyen Ngon Tinh HE','200')
insert into Danhmuc values('4',N'Truyen Ngon Tinh SE','200')
insert into Danhmuc values('5',N'Sach khoa hoc vien tuong','300')




select * from nguoidung
insert into Nguoidung values('ND1',N'Ta Thi Thanh Huyen','huyen@gmail.com',N'huyen','',null)
insert into Nguoidung values('ND2',N'Do Thi Phuong','phuong@gmail.com',N'phuong','',null)
insert into Nguoidung values('ND3',N'Cat Quynh Phuong','phuong@gmail.com',N'phuong','',null)
insert into Nguoidung values('ND4',N'Nguyen Dang Mai Hoa','hoa@gmail.com',N'hoa','',null)
