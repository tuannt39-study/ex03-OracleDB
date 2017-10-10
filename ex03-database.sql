
CREATE TABLE KHACHHANG(
    MAKHACHHANG NVARCHAR2(50),
    TENCONGTY NVARCHAR2(50),
    TENGIAODICH NVARCHAR2(50),
    DIACHI NVARCHAR2(50),
    EMAIL NVARCHAR2(50),
    DIENTHOAI NVARCHAR2(50),
    FAX NVARCHAR2(50),
    PRIMARY KEY (MAKHACHHANG)
);

CREATE TABLE NHACUNGCAP(
    MACONGTY NVARCHAR2(50),
    TENCONGTY NVARCHAR2(50),
    TENGIAODICH NVARCHAR2(50),
    DIACHI NVARCHAR2(50),
    DIENTHOAI NVARCHAR2(50),
    FAX NVARCHAR2(50),
    EMAIL NVARCHAR2(50),
    PRIMARY KEY (MACONGTY)
);

CREATE TABLE LOAIHANG(
    MALOAIHANG NVARCHAR2(50),
    TENLOAIHANG NVARCHAR2(50),
    PRIMARY KEY (MALOAIHANG)
);

CREATE TABLE NHANVIEN(
    MANHANVIEN NVARCHAR2(50),
    HO NVARCHAR2(50),
    TEN NVARCHAR2(50),
    NGAYSINH DATE,
    NGAYLAMVIEC DATE,
    DIACHI NVARCHAR2(50),
    DIENTHOAI NVARCHAR2(50),
    LUONGCOBAN INTEGER,
    PHUCAP INTEGER,
    PRIMARY KEY (MANHANVIEN)
);

CREATE TABLE MATHANG(
    MAHANG NVARCHAR2(50),
    TENHANG NVARCHAR2(50),
    MACONGTY NVARCHAR2(50),
    MALOAIHANG NVARCHAR2(50),
    SOLUONG INTEGER,
    DONVITINH NVARCHAR2(50),
    GIAHANG INTEGER,
    PRIMARY KEY (MAHANG),
    CONSTRAINT FK_MAT_NHA_MACONGTY
    FOREIGN KEY (MACONGTY) REFERENCES NHACUNGCAP (MACONGTY),
    CONSTRAINT FK_MAT_LOAI_MALOAIHANG
    FOREIGN KEY (MALOAIHANG) REFERENCES LOAIHANG (MALOAIHANG)
); 

CREATE TABLE DONDATHANG(
    SOHOADON NVARCHAR2(50),
    MAKHACHHANG NVARCHAR2(50),
    MANHANVIEN NVARCHAR2(50),
    NGAYDATHANG TIMESTAMP,
    NGAYGIAOHANG TIMESTAMP,
    NGAYCHUYENHANG TIMESTAMP,
    NOIGIAOHANG NVARCHAR2(50),
    PRIMARY KEY (SOHOADON),
    CONSTRAINT FK_DON_KHACH_MAKHACHHANG
    FOREIGN KEY (MAKHACHHANG) REFERENCES KHACHHANG (MAKHACHHANG),
    CONSTRAINT FK_DON_NHAN_NHANVIEN
    FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN (MANHANVIEN)
);

CREATE TABLE CHITIETDATHANG(
    SOHOADON NVARCHAR2(50),
    MAHANG NVARCHAR2(50),
    GIABAN INTEGER,
    SOLUONG INTEGER,
    MUCGIAMGIA INTEGER,
    PRIMARY KEY (SOHOADON, MAHANG),
    CONSTRAINT FK_CHI_DON_SOHOADON
    FOREIGN KEY (SOHOADON) REFERENCES DONDATHANG (SOHOADON),
    CONSTRAINT FK_CHI_MAT_MAHANG
    FOREIGN KEY (MAHANG) REFERENCES MATHANG (MAHANG)
);

--KHACHHANG
INSERT ALL
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH01', 'ITSOL1', 'ITSOL1', '81 Duy Tân', 'kh01@gmail.com', '0987654321', '0987654321')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH02', 'ITSOL2', 'ITSOL2', '82 Duy Tân', 'kh02@gmail.com', '0987654322', '0987654322')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH03', 'ITSOL3', 'ITSOL3', '83 Duy Tân', 'kh03@gmail.com', '0987654323', '0987654323')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH04', 'ITSOL4', 'ITSOL4', '84 Duy Tân', 'kh04@gmail.com', '0987654324', '0987654324')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH05', 'ITSOL5', 'ITSOL5', '85 Duy Tân', 'kh05@gmail.com', '0987654325', '0987654325')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH06', 'ITSOL6', 'ITSOL6', '86 Duy Tân', 'kh06@gmail.com', '0987654326', '0987654326')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH07', 'ITSOL7', 'ITSOL7', '87 Duy Tân', 'kh07@gmail.com', '0987654327', '0987654327')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH08', 'ITSOL8', 'ITSOL8', '88 Duy Tân', 'kh08@gmail.com', '0987654328', '0987654328')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH09', 'ITSOL9', 'ITSOL9', '89 Duy Tân', 'kh09@gmail.com', '0987654329', '0987654329')
INTO KHACHHANG (MAKHACHHANG, TENCONGTY, TENGIAODICH, DIACHI, EMAIL, DIENTHOAI, FAX) 
VALUES ('KH10', 'ITSOL10', 'ITSOL10', '810 Duy Tân', 'kh10@gmail.com', '09876543210', '09876543210')
SELECT * FROM DUAL;

--NHACUNGCAP
INSERT ALL
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT01', 'CT01', 'CT01', '21 Cầu Giấy', '0987654331', '0987654331', 'ct01@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT02', 'CT02', 'CT02', '22 Cầu Giấy', '0987654332', '0987654332', 'ct02@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT03', 'ITSOL3', 'ITSOL3', '23 Cầu Giấy', '0987654333', '0987654333', 'ct03@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT04', 'CT04', 'CT04', '24 Cầu Giấy', '0987654334', '0987654334', 'ct04@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT05', 'ITSOL5', 'ITSOL5', '25 Cầu Giấy', '0987654335', '0987654335', 'ct05@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT06', 'CT06', 'CT06', '26 Cầu Giấy', '0987654336', '0987654336', 'ct06@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT07', 'CT07', 'CT07', '27 Cầu Giấy', '0987654337', '0987654337', 'ct07@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT08', 'CT08', 'CT08', '28 Cầu Giấy', '0987654338', '0987654338', 'ct08@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT09', 'ITSOL9', 'ITSOL9', '29 Cầu Giấy', '0987654339', '0987654339', 'ct09@gmail.com')
INTO NHACUNGCAP (MACONGTY, TENCONGTY, TENGIAODICH, DIACHI, DIENTHOAI, FAX, EMAIL) 
VALUES ('CT10', 'CT10', 'ITSOL10', '210 Cầu Giấy', '09876543310', '09876543310', 'ct10@gmail.com')
SELECT * FROM DUAL;

--LOAIHANG
INSERT ALL
INTO LOAIHANG (MALOAIHANG, TENLOAIHANG) 
VALUES ('LH01', 'Laptop')
INTO LOAIHANG (MALOAIHANG, TENLOAIHANG) 
VALUES ('LH02', 'Mobile')
INTO LOAIHANG (MALOAIHANG, TENLOAIHANG) 
VALUES ('LH03', 'Windows')
SELECT * FROM DUAL;

--NHANVIEN
INSERT ALL
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV01', 'Nguyễn', 'Tuân', TO_DATE('21-01-1991', 'DD-MM-YYYY'), TO_DATE('21-01-2017', 'DD-MM-YYYY'), '11 Xuân Thủy', '0987654441', 5000000, 2000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV02', 'Nguyễn', 'Tuan', TO_DATE('22-01-1992', 'DD-MM-YYYY'), TO_DATE('22-01-2017', 'DD-MM-YYYY'), '12 Xuân Thủy', '0987654442', 5000000, 2000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV03', 'Nguyễn', 'Tu', TO_DATE('23-01-1993', 'DD-MM-YYYY'), TO_DATE('23-01-2017', 'DD-MM-YYYY'), '13 Xuân Thủy', '0987654443', 6000000, 1000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV04', 'Nguyễn', 'Long', TO_DATE('24-01-1993', 'DD-MM-YYYY'), TO_DATE('24-01-2017', 'DD-MM-YYYY'), '14 Xuân Thủy', '0987654444', 5000000, 2000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV05', 'Nguyễn', 'Bách', TO_DATE('25-01-1994', 'DD-MM-YYYY'), TO_DATE('25-01-2017', 'DD-MM-YYYY'), '15 Xuân Thủy', '0987654445', 8000000, 3000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV06', 'Nguyễn', 'Hạ', TO_DATE('26-01-1995', 'DD-MM-YYYY'), TO_DATE('26-01-2017', 'DD-MM-YYYY'), '16 Xuân Thủy', '0987654446', 5000000, 2000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV07', 'Nguyễn', 'Xuân', TO_DATE('27-01-1996', 'DD-MM-YYYY'), TO_DATE('27-01-2017', 'DD-MM-YYYY'), '17 Xuân Thủy', '0987654447', 5000000, 2000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV08', 'Nguyễn', 'Sơn', TO_DATE('28-01-1997', 'DD-MM-YYYY'), TO_DATE('28-01-2017', 'DD-MM-YYYY'), '18 Xuân Thủy', '0987654448', 4000000, 3000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV09', 'Nguyễn', 'Tùng', TO_DATE('29-01-1995', 'DD-MM-YYYY'), TO_DATE('29-01-2017', 'DD-MM-YYYY'), '19 Xuân Thủy', '0987654449', 9000000, 1000000)
INTO NHANVIEN (MANHANVIEN, HO, TEN, NGAYSINH, NGAYLAMVIEC, DIACHI, DIENTHOAI, LUONGCOBAN, PHUCAP) 
VALUES ('NV10', 'Nguyễn', 'Đức', TO_DATE('30-01-1994', 'DD-MM-YYYY'), TO_DATE('30-01-2017', 'DD-MM-YYYY'), '110 Xuân Thủy', '09876544410', 5000000, 2000000)
SELECT * FROM DUAL;

--MATHANG
INSERT ALL
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH01', 'Acer 1', 'CT01', 'LH01', '200', 'cái', '600000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH02', 'Iphone 2', 'CT01', 'LH02', '200', 'cái', '800000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH03', 'Asus 3', 'CT02', 'LH01', '200', 'cái', '300000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH04', 'Acer 4', 'CT02', 'LH01', '200', 'cái', '900000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH05', 'Apple 5', 'CT03', 'LH01', '200', 'cái', '400000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH06', 'Windows 10', 'CT04', 'LH03', '200', 'DVD', '700000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH07', 'Windows 8', 'CT04', 'LH03', '200', 'DVD', '900000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH08', 'Dell 8', 'CT05', 'LH01', '200', 'cái', '300000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH09', 'Lenovo 9', 'CT05', 'LH01', '200', 'cái', '800000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH10', 'Galaxy 10', 'CT06', 'LH02', '200', 'cái', '600000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG)
VALUES ('MH11', 'Mac 11', 'CT06', 'LH01', '200', 'cái', '200000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH12', 'Windows 12', 'CT07', 'LH03', '200', 'DVD', '100000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH13', 'HP 13', 'CT07', 'LH01', '200', 'cái', '500000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH14', 'HP14', 'CT08', 'LH01', '200', 'cái', '300000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH15', 'Windows 7', 'CT08', 'LH03', '200', 'DVD', '200000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH16', 'Asus 16', 'CT09', 'LH01', '200', 'cái', '500000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH17', 'Nokia 17', 'CT09', 'LH02', '200', 'cái', '500000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH18', 'Lenovo 18', 'CT10', 'LH01', '200', 'cái', '800000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH19', 'Galaxy 19', 'CT10', 'LH02', '200', 'cái', '300000')
INTO MATHANG (MAHANG, TENHANG, MACONGTY, MALOAIHANG, SOLUONG, DONVITINH, GIAHANG) 
VALUES ('MH20', 'Windows 20', 'CT10', 'LH03', '200', 'DVD', '1100000')
SELECT * FROM DUAL;

--DONDATHANG
INSERT ALL
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD01', 'KH01', 'NV01', TO_DATE('01-02-2017 08:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD02', 'KH02', 'NV01', TO_DATE('01-02-2017 08:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('01-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD03', 'KH03', 'NV02', TO_DATE('01-02-2017 09:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), '', '')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD04', 'KH04', 'NV03', TO_DATE('01-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD05', 'KH05', 'NV04', TO_DATE('01-03-2017 11:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('01-03-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), '', 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD06', 'KH06', 'NV05', TO_DATE('01-02-2017 12:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG)
VALUES ('HD07', 'KH07', 'NV06', TO_DATE('01-02-2017 13:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD08', 'KH08', 'NV08', TO_DATE('01-02-2017 14:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), '')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD09', 'KH08', 'NV07', TO_DATE('01-02-2018 15:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2018 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2018 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
INTO DONDATHANG (SOHOADON, MAKHACHHANG, MANHANVIEN, NGAYDATHANG, NGAYGIAOHANG, NGAYCHUYENHANG, NOIGIAOHANG) 
VALUES ('HD10', 'KH10', 'NV09', TO_DATE('01-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('01-02-2017 16:02:44', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2017 10:02:44', 'DD-MM-YYYY HH24:MI:SS'), 'Hà Nội')
SELECT * FROM DUAL;

--CHITIETDATHANG
INSERT ALL
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD01', 'MH01', '600000', '5', '10') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD01', 'MH03', '800000', '4', '5') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD03', 'MH03', '300000', '2', '0') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD04', 'MH05', '400000', '5', '10') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD05', 'MH08', '300000', '101', '10') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD06', 'MH01', '200000', '15', '0') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD07', 'MH14', '300000', '10', '20') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD08', 'MH15', '200000', '3', '0') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD09', 'MH18', '800000', '5', '10') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA) 
VALUES ('HD10', 'MH14', '300000', '102', '0') 
INTO CHITIETDATHANG (SOHOADON, MAHANG, GIABAN, SOLUONG, MUCGIAMGIA)
VALUES ('HD02', 'MH01', '400000', '7', '0')
SELECT * FROM DUAL;
