-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-22 10:51:40.207


create database HangTTPH03834_QLBH 
go
-- tables
-- Table: chitiethoadon
CREATE TABLE chitiethoadon (
    mahd varchar(30)  NOT NULL,
    masp varchar(30)  NOT NULL,
    soluong int  NOT NULL
)
;





-- Table: hoadon
CREATE TABLE hoadon (
    mahd varchar(30)  NOT NULL,
    giasp decimal(12,2)  NOT NULL,
    makh varchar(15)  NOT NULL,
    CONSTRAINT hoadon_pk PRIMARY KEY  (mahd)
)
;





-- Table: khachhang
CREATE TABLE khachhang (
    makh varchar(15)  NOT NULL,
    tenkh nvarchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    diachi nvarchar(30)  NOT NULL,
    sdt int  NOT NULL,
    CONSTRAINT khachhang_pk PRIMARY KEY  (makh)
)
;





-- Table: loaisanpham
CREATE TABLE loaisanpham (
    maloaisp varchar(30)  NOT NULL,
    tenloaisp nvarchar(255)  NOT NULL,
    soluong int  NULL,
    CONSTRAINT loaisanpham_pk PRIMARY KEY  (maloaisp)
)
;





-- Table: sanpham
CREATE TABLE sanpham (
    masp varchar(30)  NOT NULL,
    maloaisp varchar(30)  NOT NULL,
    donvitinh char(10)  NOT NULL,
    tensp nvarchar(255)  NOT NULL,
    giasp decimal(12,2)  NOT NULL,
    mota varchar(1000)  NULL,
    img image  NULL,
    CONSTRAINT sanpham_pk PRIMARY KEY  (masp)
)
;









-- foreign keys
-- Reference:  client_purchase (table: hoadon)

ALTER TABLE hoadon ADD CONSTRAINT client_purchase 
    FOREIGN KEY (makh)
    REFERENCES khachhang (makh)
;

-- Reference:  product_category_product (table: sanpham)

ALTER TABLE sanpham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (maloaisp)
    REFERENCES loaisanpham (maloaisp)
;
-- Reference:  product_purchase_item (table: chitiethoadon)

ALTER TABLE chitiethoadon ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (masp)
    REFERENCES sanpham (masp)
;

-- Reference:  purchase_purchase_item (table: chitiethoadon)

ALTER TABLE chitiethoadon ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (mahd)
    REFERENCES hoadon (mahd)
;





-- End of file.

------nhập dữ liệu
   
    --bang khách hàng
 
 select *from Khachhang
 delete dbo.Khachhang
 insert into dbo.Khachhang values('MAKH0001',N'Trần Thị Hằng','hangttph03834@fpt.edu.vn',N'số 38 phường phúc diễn','0967899933')
 insert into dbo.khachhang values('MAKH0002',N'Trần Ngọc Dũng','Dungcdt@fpt.edu.vn',N'số 123 Nhân Mỹ ,Mỹ Đình','0967839933') 
 insert into dbo.khachhang values('MAKH0003',N'Cao Duy Tuấn','Tuancdt@fpt.edu.vn',N'số 323 Cầu Giấy Hà Nội ','0967399933')
 insert into dbo.khachhang values('MAKH0004',N'Hồ Văn Tú','tuhv@fpt.edu.vn',N'số 18 Xuân Thủy Hà Nội','0967821933')
 insert into dbo.khachhang values('MAKH0005',N'Trần Ngọc Huyền','huyenntt@fpt.edu.vn',N'số nhà 21 Thanh Trì Hà Nội','096789373')
  
  
   ----bảng hóa đơn 
   select *from Hoadon 
   delete dbo.Hoadon
 insert into dbo.Hoadon values ('MAHD0001','5000000','MAKH0001')
 insert into dbo.Hoadon values ('MAHD0002','6000000','MAKH0002')
 insert into dbo.Hoadon values ('MAHD0003','700000','MAKH0003')
 insert into dbo.Hoadon values ('MAHD0004','800000','MAKH0004')
 insert into dbo.Hoadon values ('MAHD0005','900000','MAKH0005')
 
 
 --  ----bang loại sản phẩm
   select *from dbo.Loaisanpham  
   delete dbo.Loaisanpham
   insert into dbo.Loaisanpham values ('MLSP0001',N'Điện thoại','20') 
   insert into dbo.Loaisanpham values ('MLSP0002',N'Laptop','30') 
   insert into dbo.Loaisanpham values ('MLSP0003',N'Máy giặt','40') 
   insert into dbo.Loaisanpham values ('MLSP0004',N'Tủ lạnh','20') 
   insert into dbo.Loaisanpham values ('MLSP0005',N'Điều hòa','10') 
   
   
 ----bang san pham---
 select *from Sanpham 
 delete dbo.Sanpham
 insert into dbo.Sanpham values ('MASP0001','MLSP0001',N'cái','Iphone 5s 32gb','20000000',N'Đẹp',null)
 insert into dbo.Sanpham values ('MASP0002','MLSP0002',N'cái','Vaio pro 13','20000000',N'Sành điệu',null)
 insert into dbo.Sanpham values ('MASP0003','MLSP0003',N'cái','Laptop lenovo z470','13000000',N'Tính năng cao',null)
 insert into dbo.Sanpham values ('MASP0004','MLSP0004',N'cái',N'Tủ lạnh aqua','3000000',N'đẹp',null)
 insert into dbo.Sanpham values ('MASP0005','MLSP0005',N'cái',N'Điều hòa panasonic 2 chiều ','20000000',N'Đep',null)
 
   ---bang chi tiết hóa đơn 
   
 select *from Chitiethoadon 
 delete dbo.Chitiethoadon  
insert into dbo.Chitiethoadon values ('MAHD0001','MASP0001','2')
insert into dbo.Chitiethoadon values ('MAHD0002','MASP0002','3')
insert into dbo.Chitiethoadon values ('MAHD0003','MASP0003','4')
insert into dbo.Chitiethoadon values ('MAHD0004','MASP0004','5')
insert into dbo.Chitiethoadon values ('MAHD0005','MASP0005','6')



  
   
 
 
 select *from Khachhang 
 select *from Hoadon 
 select *from Loaisanpham 
 select *from Sanpham 
 select *from Chitiethoadon 