CREATE DATABASE RestaurantBooking;
USE RestaurantBooking;

CREATE TABLE tblKhachHang (
    sMaKH VARCHAR(20) PRIMARY KEY,
    sTenKH NVARCHAR(50),
    sSDT VARCHAR(15) UNIQUE,
    sEmail VARCHAR(50)
);

CREATE TABLE tblBanAn (
    sMaBan VARCHAR(20) PRIMARY KEY,
    iSucChua INT,
    sTrangThai VARCHAR(20)
);

CREATE TABLE tblDatCho (
    sMaDatCho VARCHAR(20) PRIMARY KEY,
    sMaKH VARCHAR(20),
    sMaBan VARCHAR(20),
    dNgayGio DATETIME,
    sTrangThai VARCHAR(20),
    FOREIGN KEY (sMaKH) REFERENCES tblKhachHang(sMaKH),
    FOREIGN KEY (sMaBan) REFERENCES tblBanAn(sMaBan)
);

CREATE TABLE tblNhanVien (
    sMaNV VARCHAR(20) PRIMARY KEY,
    sTenNV NVARCHAR(50),
    sChucVu VARCHAR(30),
    sSDT VARCHAR(15) UNIQUE
);

CREATE TABLE tblHoaDon (
    sMaHD VARCHAR(20) PRIMARY KEY,
    sMaDatCho VARCHAR(20),
    fTongTien FLOAT,
    dNgayThanhToan DATE,
    FOREIGN KEY (sMaDatCho) REFERENCES tblDatCho(sMaDatCho)
);

-- Chèn dữ liệu vào bảng tblKhachHang
INSERT INTO tblKhachHang (sMaKH, sTenKH, sSDT, sEmail) VALUES
('KH01', N'Nguyễn Văn A', '0987654321', 'nguyena@gmail.com'),
('KH02', N'Trần Thị B', '0971234567', 'tranb@gmail.com'),
('KH03', N'Lê Văn C', '0962345678', 'leec@gmail.com'),
('KH04', N'Phạm Thị D', '0913456789', 'phamtd@gmail.com'),
('KH05', N'Hồ Văn E', '0904567890', 'hovane@gmail.com'),
('KH06', N'Bùi Thị F', '0985678901', 'buithif@gmail.com'),
('KH07', N'Ngô Văn G', '0976789012', 'ngovang@gmail.com'),
('KH08', N'Đặng Thị H', '0967890123', 'dangthh@gmail.com'),
('KH09', N'Vũ Văn I', '0958901234', 'vuvani@gmail.com'),
('KH10', N'Doãn Thị K', '0949012345', 'doanthk@gmail.com'),
('KH11', N'Tạ Văn L', '0930123456', 'tavl@gmail.com'),
('KH12', N'Lý Thị M', '0921234567', 'lythim@gmail.com'),
('KH13', N'Hoàng Văn N', '0912345678', 'hoangvn@gmail.com'),
('KH14', N'Cao Thị O', '0903456789', 'caotho@gmail.com'),
('KH15', N'Nguyễn Văn P', '0984567890', 'nguyenp@gmail.com');

-- Chèn dữ liệu vào bảng tblBanAn
INSERT INTO tblBanAn (sMaBan, iSucChua, sTrangThai) VALUES
('B01', 4, 'Trống'),
('B02', 6, 'Có khách'),
('B03', 2, 'Trống'),
('B04', 8, 'Có khách'),
('B05', 4, 'Trống'),
('B06', 6, 'Trống'),
('B07', 2, 'Có khách'),
('B08', 10, 'Trống'),
('B09', 4, 'Có khách'),
('B10', 6, 'Trống'),
('B11', 2, 'Có khách'),
('B12', 8, 'Trống'),
('B13', 4, 'Có khách'),
('B14', 6, 'Trống'),
('B15', 10, 'Có khách');

-- Chèn dữ liệu vào bảng tblDatCho
INSERT INTO tblDatCho (sMaDatCho, sMaKH, sMaBan, dNgayGio, sTrangThai) VALUES
('DC01', 'KH01', 'B02', '2025-03-05 18:30:00', 'Đã xác nhận'),
('DC02', 'KH02', 'B04', '2025-03-05 19:00:00', 'Chưa xác nhận'),
('DC03', 'KH03', 'B07', '2025-03-06 12:00:00', 'Đã xác nhận'),
('DC04', 'KH04', 'B09', '2025-03-06 18:45:00', 'Hủy'),
('DC05', 'KH05', 'B11', '2025-03-07 20:00:00', 'Đã xác nhận'),
('DC06', 'KH06', 'B13', '2025-03-07 18:15:00', 'Chưa xác nhận'),
('DC07', 'KH07', 'B15', '2025-03-08 19:30:00', 'Đã xác nhận'),
('DC08', 'KH08', 'B02', '2025-03-08 12:30:00', 'Chưa xác nhận'),
('DC09', 'KH09', 'B04', '2025-03-09 18:00:00', 'Hủy'),
('DC10', 'KH10', 'B07', '2025-03-09 19:45:00', 'Đã xác nhận'),
('DC11', 'KH11', 'B09', '2025-03-10 12:00:00', 'Chưa xác nhận'),
('DC12', 'KH12', 'B11', '2025-03-10 18:30:00', 'Đã xác nhận'),
('DC13', 'KH13', 'B13', '2025-03-11 20:00:00', 'Hủy'),
('DC14', 'KH14', 'B15', '2025-03-11 19:00:00', 'Đã xác nhận'),
('DC15', 'KH15', 'B02', '2025-03-12 12:45:00', 'Chưa xác nhận');

-- Chèn dữ liệu vào bảng tblNhanVien
INSERT INTO tblNhanVien (sMaNV, sTenNV, sChucVu, sSDT) VALUES
('NV01', N'Nguyễn Văn A', 'Quản lý', '0987654321'),
('NV02', N'Trần Thị B', 'Nhân viên phục vụ', '0971234567'),
('NV03', N'Lê Văn C', 'Nhân viên phục vụ', '0962345678'),
('NV04', N'Phạm Thị D', 'Bếp trưởng', '0913456789'),
('NV05', N'Hồ Văn E', 'Phụ bếp', '0904567890'),
('NV06', N'Bùi Thị F', 'Nhân viên phục vụ', '0985678901'),
('NV07', N'Ngô Văn G', 'Nhân viên thu ngân', '0976789012'),
('NV08', N'Đặng Thị H', 'Quản lý', '0967890123'),
('NV09', N'Vũ Văn I', 'Nhân viên phục vụ', '0958901234'),
('NV10', N'Doãn Thị K', 'Nhân viên phục vụ', '0949012345'),
('NV11', N'Tạ Văn L', 'Nhân viên bảo vệ', '0930123456'),
('NV12', N'Lý Thị M', 'Nhân viên thu ngân', '0921234567'),
('NV13', N'Hoàng Văn N', 'Phụ bếp', '0912345678'),
('NV14', N'Cao Thị O', 'Nhân viên phục vụ', '0903456789'),
('NV15', N'Nguyễn Văn P', 'Bếp trưởng', '0984567890');

-- Chèn dữ liệu vào bảng tblHoaDon
INSERT INTO tblHoaDon (sMaHD, sMaDatCho, fTongTien, dNgayThanhToan) VALUES
('HD01', 'DC01', 500000, '2025-03-05'),
('HD02', 'DC03', 750000, '2025-03-06'),
('HD03', 'DC05', 600000, '2025-03-07'),
('HD04', 'DC07', 800000, '2025-03-08'),
('HD05', 'DC10', 450000, '2025-03-09'),
('HD06', 'DC12', 900000, '2025-03-10'),
('HD07', 'DC14', 550000, '2025-03-11'),
('HD08', 'DC02', 620000, '2025-03-05'),
('HD09', 'DC06', 700000, '2025-03-07'),
('HD10', 'DC08', 820000, '2025-03-08'),
('HD11', 'DC11', 480000, '2025-03-10'),
('HD12', 'DC13', 560000, '2025-03-11'),
('HD13', 'DC15', 590000, '2025-03-12'),
('HD14', 'DC04', 740000, '2025-03-06'),
('HD15', 'DC09', 850000, '2025-03-09');


SELECT * FROM tblKhachHang;
SELECT * FROM tblBanAn;
SELECT * FROM tblDatCho;
SELECT * FROM tblNhanVien;
SELECT * FROM tblHoaDon;

--Chương 4: Xây dựng 10 view
--1. Lấy danh sách khách hàng và đếm số lần họ đã đặt bàn.
CREATE VIEW v_DanhSachKhachHang AS
SELECT KH.sMaKH, KH.sTenKH, KH.sSDT, KH.sEmail, COUNT(DC.sMaDatCho) AS SoLanDat
FROM tblKhachHang KH
LEFT JOIN tblDatCho DC ON KH.sMaKH = DC.sMaKH
GROUP BY KH.sMaKH, KH.sTenKH, KH.sSDT, KH.sEmail;

--2. Hiển thị danh sách bàn ăn chưa có khách đặt.
CREATE VIEW v_BanTrong AS
SELECT * FROM tblBanAn
WHERE sTrangThai = 'Trống';

--3. Hiển thị số hóa đơn mỗi nhân viên đã xử lý.
CREATE VIEW v_NhanVien_HoaDon AS
SELECT NV.sMaNV, NV.sTenNV, NV.sChucVu, COUNT(HD.sMaHD) AS SoHoaDon
FROM tblNhanVien NV
LEFT JOIN tblHoaDon HD ON NV.sMaNV = HD.sMaHD
GROUP BY NV.sMaNV, NV.sTenNV, NV.sChucVu;

--4. Lấy danh sách các đặt chỗ diễn ra trong ngày hiện tại.
CREATE VIEW v_DatCho_HomNay AS
SELECT * FROM tblDatCho
WHERE CAST(dNgayGio AS DATE) = CAST(GETDATE() AS DATE);

--5. Hiển thị các hóa đơn được thanh toán trong tháng hiện tại.
CREATE VIEW v_HoaDon_ThangNay AS
SELECT * FROM tblHoaDon
WHERE MONTH(dNgayThanhToan) = MONTH(GETDATE()) AND YEAR(dNgayThanhToan) = YEAR(GETDATE());

--6.Hiển thị thông tin chi tiết về đặt chỗ gồm khách hàng, bàn, ngày giờ.
CREATE VIEW v_ChiTietDatCho AS
SELECT DC.sMaDatCho, KH.sTenKH, BA.sMaBan, BA.iSucChua, DC.dNgayGio, DC.sTrangThai
FROM tblDatCho DC
JOIN tblKhachHang KH ON DC.sMaKH = KH.sMaKH
JOIN tblBanAn BA ON DC.sMaBan = BA.sMaBan;
SELECT * FROM v_ChiTietDatCho

--7. Tổng hợp doanh thu theo từng ngày.
CREATE VIEW v_DoanhThuTheoNgay AS
SELECT dNgayThanhToan, SUM(fTongTien) AS TongDoanhThu
FROM tblHoaDon
GROUP BY dNgayThanhToan;

--8. Hiển thị tổng số bàn đã được đặt trong tháng hiện tại.
CREATE VIEW v_TongBanDat_ThangNay AS
SELECT COUNT(*) AS TongBanDat
FROM tblDatCho
WHERE MONTH(dNgayGio) = MONTH(GETDATE()) AND YEAR(dNgayGio) = YEAR(GETDATE());
--9. Thống kê số lượng bàn theo trạng thái (Trống, Đã đặt, Đang sử dụng).
CREATE VIEW v_ThongKeTrangThaiBan AS
SELECT sTrangThai, COUNT(*) AS SoLuongBan
FROM tblBanAn
GROUP BY sTrangThai;
--10.View thống kê tổng tiền hóa đơn theo khách hàng
CREATE VIEW v_TongChiTieu_KhachHang AS
SELECT KH.sMaKH, KH.sTenKH, SUM(HD.fTongTien) AS TongChiTieu
FROM tblKhachHang KH
JOIN tblDatCho DC ON KH.sMaKH = DC.sMaKH
JOIN tblHoaDon HD ON DC.sMaDatCho = HD.sMaDatCho
GROUP BY KH.sMaKH, KH.sTenKH;
SELECT * FROM v_TongChiTieu_KhachHang


--CHƯƠNG 5: XÂY DỰNG CÁC PROCEDURE
--5.1. Thêm khách hàng mới
CREATE PROCEDURE proc_ThemKhachHangMoi
    @sMaKH VARCHAR(20),
    @sTenKH NVARCHAR(50),
    @sSDT VARCHAR(15),
    @sEmail VARCHAR(50)
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM tblKhachHang WHERE sSDT = @sSDT)
        BEGIN
            PRINT N'Số điện thoại đã tồn tại!';
            RETURN;
        END

        INSERT INTO tblKhachHang (sMaKH, sTenKH, sSDT, sEmail)
        VALUES (@sMaKH, @sTenKH, @sSDT, @sEmail);

        PRINT N'Đã thêm khách hàng ' + @sTenKH + N' thành công!';
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_ThemKhachHangMoi 'KH17', N'Nguyễn Văn D', '0987654321', 'd@email.com';

--5.2. Xóa khách hàng theo mã
CREATE PROCEDURE proc_XoaKhachHangTheoMa
    @sMaKH VARCHAR(20)
AS
BEGIN
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM tblKhachHang WHERE sMaKH = @sMaKH)
        BEGIN
            PRINT N'Khách hàng không tồn tại!';
            RETURN;
        END

        DELETE FROM tblKhachHang WHERE sMaKH = @sMaKH;
        PRINT N'Đã xóa khách hàng ' + @sMaKH + N' thành công!';
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_XoaKhachHangTheoMa 'KH17';

--5.3. Thêm đặt chỗ mới
ALTER PROCEDURE proc_ThemDatChoMoi
    @sMaDatCho VARCHAR(20),
    @sMaKH VARCHAR(20),
    @sMaBan VARCHAR(20),
    @dNgayGio DATETIME
AS
BEGIN
    BEGIN TRY
        -- Kiểm tra mã đặt chỗ có trùng không
        IF EXISTS (SELECT 1 FROM tblDatCho WHERE sMaDatCho = @sMaDatCho)
        BEGIN
            PRINT N'Mã đặt chỗ đã tồn tại!';
            RETURN;
        END

        -- Kiểm tra khách hàng có tồn tại không
        IF NOT EXISTS (SELECT 1 FROM tblKhachHang WHERE sMaKH = @sMaKH)
        BEGIN
            PRINT N'Khách hàng không tồn tại!';
            RETURN;
        END

        -- Kiểm tra bàn có bị trùng thời gian đặt không
        IF EXISTS (SELECT 1 FROM tblDatCho WHERE sMaBan = @sMaBan AND dNgayGio = @dNgayGio)
        BEGIN
            PRINT N'Bàn đã được đặt vào thời gian này!';
            RETURN;
        END

        -- Kiểm tra sức chứa của bàn
        IF EXISTS (SELECT 1 FROM tblBanAn WHERE sMaBan = @sMaBan AND iSucChua < 1)
        BEGIN
            PRINT N'Sức chứa của bàn không đủ!';
            RETURN;
        END

        -- Thêm đặt chỗ mới (không chèn giá trị vào cột sTrangThai)
        INSERT INTO tblDatCho (sMaDatCho, sMaKH, sMaBan, dNgayGio)
        VALUES (@sMaDatCho, @sMaKH, @sMaBan, @dNgayGio);

        PRINT N'Đã thêm đặt chỗ ' + @sMaDatCho + N' thành công!';

        -- Hiển thị kết quả
        SELECT sMaDatCho, sMaKH, sMaBan, dNgayGio, sTrangThai
        FROM tblDatCho
        WHERE sMaDatCho = @sMaDatCho;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_ThemDatChoMoi 'DC28', 'KH01', 'B01', '2025-03-22 18:00:00';
--5.4. Hủy đặt chỗ
CREATE PROCEDURE proc_HuyDatChoTheoMa
    @sMaDatCho VARCHAR(20)
AS
BEGIN
    BEGIN TRY
        IF NOT EXISTS (SELECT 1 FROM tblDatCho WHERE sMaDatCho = @sMaDatCho)
        BEGIN
            PRINT N'Đặt chỗ không tồn tại!';
            RETURN;
        END

        UPDATE tblDatCho
        SET sTrangThai = 'Hủy'
        WHERE sMaDatCho = @sMaDatCho;

        PRINT N'Đã hủy đặt chỗ ' + @sMaDatCho + N' thành công!';
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
--EXEC proc_HuyDatChoTheoMa 'DC27';
SELECT * FROM tblDatCho WHERE sMaDatCho = 'DC27';

--5.5. Thêm hóa đơn mới
ALTER PROCEDURE proc_ThemHoaDonMoi
    @sMaHD VARCHAR(20),
    @sMaDatCho VARCHAR(20),
    @fTongTien FLOAT,
    @dNgayThanhToan DATE
AS
BEGIN
    BEGIN TRY
        -- Kiểm tra mã hóa đơn đã tồn tại chưa
        IF EXISTS (SELECT 1 FROM tblHoaDon WHERE sMaHD = @sMaHD)
        BEGIN
            PRINT N'Mã hóa đơn đã tồn tại!';
            RETURN;
        END

        -- Kiểm tra mã đặt chỗ có tồn tại và trạng thái không phải "Hủy"
        IF NOT EXISTS (SELECT 1 FROM tblDatCho WHERE sMaDatCho = @sMaDatCho)
        BEGIN
            PRINT N'Mã đặt chỗ không tồn tại!';
            RETURN;
        END
        ELSE IF EXISTS (SELECT 1 FROM tblDatCho WHERE sMaDatCho = @sMaDatCho AND sTrangThai = 'Hủy')
        BEGIN
            PRINT N'Không thể thêm hóa đơn cho đặt chỗ đã bị hủy!';
            RETURN;
        END

        -- Thêm hóa đơn mới (không bao gồm sTrangThai và sMaNV)
        INSERT INTO tblHoaDon (sMaHD, sMaDatCho, fTongTien, dNgayThanhToan)
        VALUES (@sMaHD, @sMaDatCho, @fTongTien, @dNgayThanhToan);

        PRINT N'Đã thêm hóa đơn ' + @sMaHD + N' thành công!';

        -- Hiển thị kết quả, chỉ lấy các cột cần thiết
        SELECT sMaHD, sMaDatCho, fTongTien, dNgayThanhToan
        FROM tblHoaDon
        WHERE sMaHD = @sMaHD;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_ThemHoaDonMoi 'HD20', 'DC15', 650000, '2025-03-12';
--5.6. Lấy danh sách bàn trống.
ALTER PROCEDURE proc_LayDanhSachBanTrong
AS
BEGIN
    BEGIN TRY
        SELECT sMaBan, sTrangThai, iSucChua
        FROM tblBanAn
        WHERE sTrangThai = 'Trống';
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_LayDanhSachBanTrong;
--5.7. Tìm đặt chỗ theo ngày giờ.
ALTER PROCEDURE proc_TimDatChoTheoNgayGio
    @dNgay DATE
AS
BEGIN
    BEGIN TRY
        SELECT dc.sMaDatCho, dc.sMaKH, dc.sMaBan, dc.dNgayGio, dc.sTrangThai
        FROM tblDatCho dc
        WHERE CAST(dc.dNgayGio AS DATE) = @dNgay;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_TimDatChoTheoNgayGio '2025-03-22';
--5.8. Thống kê tổng doanh thu theo tháng
ALTER PROCEDURE proc_ThongKeDoanhThuTheoThang
    @iThang INT,
    @iNam INT
AS
BEGIN
    BEGIN TRY
        -- Kiểm tra tháng và năm hợp lệ
        IF @iThang < 1 OR @iThang > 12
        BEGIN
            PRINT N'Tháng không hợp lệ! Vui lòng nhập từ 1 đến 12.';
            RETURN;
        END
        IF @iNam < 1900 OR @iNam > 9999
        BEGIN
            PRINT N'Năm không hợp lệ! Vui lòng nhập từ 1900 đến 9999.';
            RETURN;
        END

        -- Thống kê doanh thu
        SELECT 
            MONTH(dNgayThanhToan) AS Thang,
            YEAR(dNgayThanhToan) AS Nam,
            SUM(fTongTien) AS TongDoanhThu
        FROM tblHoaDon
        WHERE MONTH(dNgayThanhToan) = @iThang AND YEAR(dNgayThanhToan) = @iNam
        GROUP BY MONTH(dNgayThanhToan), YEAR(dNgayThanhToan);

        IF @@ROWCOUNT = 0
        BEGIN
            PRINT N'Không có dữ liệu doanh thu cho tháng ' + CAST(@iThang AS NVARCHAR) + N' năm ' + CAST(@iNam AS NVARCHAR) + N'!';
        END
        ELSE
        BEGIN
            PRINT N'Đã thống kê doanh thu tháng ' + CAST(@iThang AS NVARCHAR) + N' năm ' + CAST(@iNam AS NVARCHAR) + N' thành công!';
        END
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;

-- Ví dụ chạy thử
EXEC proc_ThongKeDoanhThuTheoThang 3, 2025;
--5.9. Sửa trạng thái đặt chỗ
CREATE PROCEDURE proc_SuaTrangThaiDatCho
    @sMaDatCho VARCHAR(20),
    @sTrangThaiMoi NVARCHAR(50)
AS
BEGIN
    BEGIN TRY
        -- Kiểm tra đặt chỗ có tồn tại không
        IF NOT EXISTS (SELECT 1 FROM tblDatCho WHERE sMaDatCho = @sMaDatCho)
        BEGIN
            PRINT N'Đặt chỗ không tồn tại!';
            RETURN;
        END

        -- Kiểm tra trạng thái mới hợp lệ
        IF @sTrangThaiMoi NOT IN ('Chưa xác nhận', 'Đã xác nhận', 'Hủy', 'Hoàn thành')
        BEGIN
            PRINT N'Trạng thái không hợp lệ! Chỉ chấp nhận "Chưa xác nhận", "Đã xác nhận", "Hủy", hoặc "Hoàn thành".';
            RETURN;
        END

        -- Cập nhật trạng thái
        UPDATE tblDatCho
        SET sTrangThai = @sTrangThaiMoi
        WHERE sMaDatCho = @sMaDatCho;

        PRINT N'Đã cập nhật trạng thái đặt chỗ ' + @sMaDatCho + N' thành ' + @sTrangThaiMoi + N'!';

        -- Hiển thị kết quả
        SELECT sMaDatCho, sMaKH, sMaBan, dNgayGio, sTrangThai
        FROM tblDatCho
        WHERE sMaDatCho = @sMaDatCho;
    END TRY
    BEGIN CATCH
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        PRINT N'Lỗi: ' + @ErrorMessage;
    END CATCH
END;
EXEC proc_SuaTrangThaiDatCho 'DC01', 'Hoàn thành';
--5.10. Tìm kiếm khách hàng theo tên hoặc số điện thoại
ALTER PROCEDURE sp_TimKiemKhachHang
    @TuKhoa NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SET @TuKhoa = LTRIM(RTRIM(@TuKhoa));  -- Xóa khoảng trắng

    SELECT * 
    FROM tblKhachHang
    WHERE sTenKH COLLATE SQL_Latin1_General_CP1_CI_AI LIKE N'%' + @TuKhoa + '%'
       OR sSDT LIKE '%' + @TuKhoa + '%';
END;
EXEC sp_TimKiemKhachHang '098';


--Chương 6. Trigger

-- 1. Trigger kiểm tra số điện thoại không trùng khi thêm khách hàng
ALTER TRIGGER trg_KiemTraTrungSDT
ON tblKhachHang
FOR INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM tblKhachHang kh 
        JOIN inserted i ON kh.sSDT = i.sSDT
    )
    BEGIN
        RAISERROR('Số điện thoại đã tồn tại!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- Thêm khách hàng nếu chưa tồn tại
IF NOT EXISTS (SELECT 1 FROM tblKhachHang WHERE sSDT = '0901234567')
BEGIN
    INSERT INTO tblKhachHang (sMaKH, sTenKH, sSDT, sEmail) 
    VALUES ('KH002', N'Trần Thị B', '0901234567', 'b@email.com');
END
ELSE
    PRINT N'Số điện thoại đã tồn tại!';

-- 2. Trigger tự động cập nhật trạng thái đặt chỗ.
ALTER TRIGGER trg_CapNhatTrangThaiDatChoKhiQuaThoiGian
ON tblDatCho
AFTER UPDATE, INSERT
AS
BEGIN
    -- Cập nhật trạng thái đặt chỗ nếu thời gian đã qua và trạng thái không phải "Hủy"
    UPDATE tblDatCho
    SET sTrangThai = N'Hoàn thành'
    WHERE dNgayGio < SYSDATETIME()
    AND sTrangThai NOT IN (N'Hủy', N'Hoàn thành');
END;

-- 3. Xóa hóa đơn nếu đặt chỗ bị hủy
ALTER TRIGGER trg_XoaHoaDonKhiHuyDatCho
ON tblDatCho
AFTER UPDATE
AS
BEGIN
    DELETE FROM tblHoaDon
    WHERE sMaDatCho IN (SELECT sMaDatCho FROM inserted WHERE sTrangThai = 'Hủy');
    PRINT N'Hóa đơn của đặt chỗ bị hủy đã được xóa.';
END;

-- Hủy đặt chỗ nếu chưa bị hủy
IF EXISTS (SELECT 1 FROM tblDatCho WHERE sMaDatCho = 'DC002' AND sTrangThai <> 'Hủy')
BEGIN
    UPDATE tblDatCho 
    SET sTrangThai = 'Hủy' 
    WHERE sMaDatCho = 'DC002';
END
ELSE
    PRINT N'Không thể hủy đặt chỗ! Đặt chỗ đã bị hủy hoặc không tồn tại.';

-- 4. Ghi thông báo khi có đặt chỗ mới
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'tblThongBao')
BEGIN
    CREATE TABLE tblThongBao (
        sMaTB NVARCHAR(50) PRIMARY KEY DEFAULT NEWID(),
        sNoiDung NVARCHAR(255),
        dThoiGian DATETIME DEFAULT SYSDATETIME(),
        sTrangThai NVARCHAR(50) DEFAULT N'Chưa đọc'
    );
END
--Tạo bảng thông báo

-- Trigger tự động ghi thông báo khi có đặt chỗ mới
ALTER TRIGGER trg_ThongBaoDatChoMoi
ON tblDatCho
AFTER INSERT
AS
BEGIN
    INSERT INTO tblThongBao (sNoiDung)
    SELECT 
        N'Khách hàng ' + i.sMaKH + N' vừa đặt chỗ vào lúc ' + CONVERT(NVARCHAR, i.dNgayGio, 120)
    FROM inserted i;
END;

-- 5. Trigger cập nhật trạng thái bàn thành "Trống" khi đặt chỗ bị hủy
ALTER TRIGGER trg_CapNhatTrangThaiBanKhiHuyDatCho
ON tblDatCho
AFTER UPDATE
AS
BEGIN
    PRINT N'🔍 Kiểm tra trạng thái đặt chỗ...';

    -- Cập nhật trạng thái bàn thành "Trống" nếu tất cả đặt chỗ của bàn này đều bị hủy
    UPDATE tblBanAn
    SET sTrangThai = N'Trống'
    WHERE sMaBan IN (
        SELECT DISTINCT i.sMaBan 
        FROM inserted i
        WHERE i.sTrangThai = N'Hủy'
        AND NOT EXISTS (
            SELECT 1 FROM tblDatCho 
            WHERE sMaBan = i.sMaBan 
            AND sTrangThai NOT IN (N'Hủy', N'Hoàn thành')
        )
    );

    PRINT N'✅ Trạng thái bàn ăn đã được cập nhật thành "Trống".';
END;
UPDATE tblDatCho 
SET sTrangThai = 'Hủy' 
WHERE sMaDatCho = 'DC02';
SELECT * FROM tblBanAn WHERE sMaBan = 'B04';

--6.Cập nhật trạng thái hóa đơn
ALTER TABLE tblHoaDon
ADD sTrangThai NVARCHAR(50) DEFAULT N'Chưa thanh toán';

ALTER TRIGGER trg_CapNhatTrangThaiHoaDon
ON tblHoaDon
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE tblHoaDon
    SET sTrangThai = 
        CASE 
            WHEN fTongTien > 0 THEN N'Đã thanh toán'
            ELSE N'Chưa thanh toán'
        END
    WHERE sMaHD IN (SELECT sMaHD FROM inserted);
END;
INSERT INTO tblHoaDon (sMaHD, sMaDatCho, fTongTien, dNgayThanhToan)
VALUES ('HD10', 'DC05', 500000, GETDATE());
UPDATE tblHoaDon
SET sTrangThai = N'Đã thanh toán'
WHERE sMaHD = 'HD01';
SELECT * FROM tblHoaDon WHERE sMaHD = 'HD01';

--7.Kiểm tra sức chứa bàn khi thêm đặt chỗ mới
ALTER TRIGGER trg_KiemTraSucChua
ON tblDatCho
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @SucChua INT, @MaBan VARCHAR(20), @MaDatCho VARCHAR(20), @MaKH VARCHAR(20), @NgayGio DATETIME, @TrangThai VARCHAR(20);
    
    SELECT @MaDatCho = sMaDatCho, @MaKH = sMaKH, @MaBan = sMaBan, @NgayGio = dNgayGio, @TrangThai = sTrangThai
    FROM inserted;
    
    SELECT @SucChua = iSucChua FROM tblBanAn WHERE sMaBan = @MaBan;

    IF @SucChua < 1
    BEGIN
        PRINT 'Kiểm tra: Sức chứa của bàn ' + @MaBan + ' không đủ (' + CAST(@SucChua AS VARCHAR) + ' chỗ).';
        RAISERROR ('Sức chứa của bàn không đủ!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        INSERT INTO tblDatCho (sMaDatCho, sMaKH, sMaBan, dNgayGio, sTrangThai)
        VALUES (@MaDatCho, @MaKH, @MaBan, @NgayGio, @TrangThai);
        PRINT 'Kiểm tra: Đặt chỗ ' + @MaDatCho + ' đã được thêm thành công cho bàn ' + @MaBan + ' (Sức chứa: ' + CAST(@SucChua AS VARCHAR) + ').';
    END
END;

-- Vô hiệu hóa trigger trg_KhongChoDatTrungBan
DISABLE TRIGGER trg_KhongChoDatTrungBan ON tblDatCho;

INSERT INTO tblDatCho (sMaDatCho, sMaKH, sMaBan, dNgayGio, sTrangThai)
VALUES ('DC20', 'KH01', 'B01', '2025-03-17 18:00:00', 'Chưa xác nhận');
-- B01 có sức chứa 4, đủ cho 1 người -> Mong đợi: Thành công

-- Kiểm tra dữ liệu sau khi chèn
SELECT * FROM tblDatCho WHERE sMaDatCho = 'DC20';

--8. Tự động tăng sức chứa bàn nếu liên tục đặt liên tục bị từ chối
ALTER TRIGGER trg_TangSucChuaBan
ON tblDatCho
AFTER UPDATE
AS
BEGIN
    DECLARE @MaBan VARCHAR(20), @SoLanHuy INT;

    -- Lấy bàn vừa bị hủy
    SELECT @MaBan = sMaBan
    FROM inserted
    WHERE sTrangThai = N'Hủy';

    -- Đếm số lần hủy của bàn này
    SELECT @SoLanHuy = COUNT(*)
    FROM tblDatCho
    WHERE sMaBan = @MaBan AND sTrangThai = N'Hủy';

    IF @SoLanHuy >= 3
    BEGIN
        UPDATE tblBanAn
        SET iSucChua = iSucChua + 2
        WHERE sMaBan = @MaBan;
        PRINT N'Bàn ' + @MaBan + N' đã được tăng sức chứa thêm 2 do có nhiều đặt chỗ bị hủy.';
    END
END;

-- Kiểm tra trigger
UPDATE tblDatCho 
SET sTrangThai = N'Hủy' 
WHERE sMaDatCho = 'DC06';

SELECT * FROM tblBanAn WHERE sMaBan = 'B13';

--Trigger 9: Cập nhật số lượng bàn trống

ALTER TRIGGER trg_CapNhatSoLuongBanTrong
ON tblDatCho
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    -- Tính số lượng bàn trống hiện tại
    DECLARE @SoLuongBanTrong INT;
    SELECT @SoLuongBanTrong = COUNT(*)
    FROM tblBanAn
    WHERE sTrangThai = 'Trống';

    -- In thông báo số lượng bàn trống
    PRINT N'Số lượng bàn trống hiện tại: ' + CAST(@SoLuongBanTrong AS NVARCHAR) + N' bàn.';

    -- Cập nhật trạng thái bàn nếu cần (khi đặt chỗ được xác nhận hoặc hủy)
    IF EXISTS (SELECT 1 FROM inserted WHERE sTrangThai = 'Đã xác nhận')
    BEGIN
        UPDATE ba
        SET sTrangThai = 'Có khách'
        FROM tblBanAn ba
        JOIN inserted i ON ba.sMaBan = i.sMaBan
        WHERE ba.sTrangThai = 'Trống';
    END
    ELSE IF EXISTS (SELECT 1 FROM deleted WHERE sTrangThai = 'Đã xác nhận')
    BEGIN
        UPDATE ba
        SET sTrangThai = 'Trống'
        FROM tblBanAn ba
        JOIN deleted d ON ba.sMaBan = d.sMaBan
        WHERE NOT EXISTS (
            SELECT 1 FROM tblDatCho dc
            WHERE dc.sMaBan = ba.sMaBan
            AND dc.sTrangThai = 'Đã xác nhận'
        );
    END
END;
-- Thêm một đặt chỗ mới để kích hoạt trigger
INSERT INTO tblDatCho (sMaDatCho, sMaKH, sMaBan, dNgayGio, sTrangThai)
VALUES ('DC25', 'KH03', 'B05', '2025-03-20 18:00:00', 'Đã xác nhận');

-- Kiểm tra số lượng bàn trống và trạng thái
SELECT sMaBan, sTrangThai, iSucChua FROM tblBanAn WHERE sMaBan = 'B05';
-- Kết quả mong đợi: sTrangThai = 'Có khách', và PRINT sẽ hiển thị số bàn trống còn lại.
--Trigger 10: Mong muốn cập nhật số điện thoại di động của khách hàng nếu đã có hóa đơn
ALTER TRIGGER trg_NganCapNhatSDTKhachHangCoHoaDon
ON tblKhachHang
INSTEAD OF UPDATE
AS
BEGIN
    DECLARE @MaKH VARCHAR(20), @SDTMoi VARCHAR(15);

    SELECT @MaKH = sMaKH, @SDTMoi = sSDT
    FROM inserted;

    IF EXISTS (
        SELECT 1
        FROM tblDatCho dc
        JOIN tblHoaDon hd ON dc.sMaDatCho = hd.sMaDatCho
        WHERE dc.sMaKH = @MaKH
    )
    BEGIN
        PRINT N'Khách hàng ' + @MaKH + N' đã có hóa đơn, không thể cập nhật số điện thoại!';
        RAISERROR (N'Không thể cập nhật số điện thoại của khách hàng đã có hóa đơn!', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        UPDATE tblKhachHang
        SET sTenKH = i.sTenKH,
            sSDT = i.sSDT,
            sEmail = i.sEmail
        FROM inserted i
        WHERE tblKhachHang.sMaKH = i.sMaKH;
        PRINT N'Số điện thoại của khách hàng ' + @MaKH + N' đã được cập nhật thành công.';
    END
END;

-- Kiểm tra trigger
UPDATE tblKhachHang
SET sSDT = '0999999999'
WHERE sMaKH = 'KH01';
-- KH01 có hóa đơn HD01 qua DC01 -> Mong đợi: Thất bạI

--CHƯƠNG 7. PHÂN QUYỀN VÀ BẢO VỆ CSDL
-- Đảm bảo sử dụng database đúng
USE RestaurantBooking;
GO

-- Tạo Login trên SQL Server (cấp server)
ALTER LOGIN ql_nhahang WITH PASSWORD = 'QuanLy@2025!', DEFAULT_DATABASE = RestaurantBooking;
ALTER LOGIN nv_phucvu WITH PASSWORD = 'NhanVien#2025!', DEFAULT_DATABASE = RestaurantBooking;
ALTER LOGIN khachhang WITH PASSWORD = 'KhachHang$2025!', DEFAULT_DATABASE = RestaurantBooking;
GO

-- Tạo User trong database (cấp database)
CREATE USER ql_nhahang FOR LOGIN ql_nhahang;
CREATE USER nv_phucvu FOR LOGIN nv_phucvu;
CREATE USER khachhang FOR LOGIN khachhang;
GO

-- Tạo Role cho từng nhóm tài khoản
CREATE ROLE Role_QuanLy;
CREATE ROLE Role_NhanVienPhucVu;
CREATE ROLE Role_KhachHang;
GO

-- Gán người dùng vào Role
ALTER ROLE Role_QuanLy ADD MEMBER ql_nhahang;
ALTER ROLE Role_NhanVienPhucVu ADD MEMBER nv_phucvu;
ALTER ROLE Role_KhachHang ADD MEMBER khachhang;
GO

-- Cấp quyền cho quản lý (Role_QuanLy)
GRANT SELECT, INSERT, UPDATE, DELETE ON tblKhachHang TO Role_QuanLy;
GRANT SELECT, INSERT, UPDATE, DELETE ON tblBanAn TO Role_QuanLy;
GRANT SELECT, INSERT, UPDATE, DELETE ON tblDatCho TO Role_QuanLy;
GRANT SELECT, INSERT, UPDATE, DELETE ON tblNhanVien TO Role_QuanLy;
GRANT SELECT, INSERT, UPDATE, DELETE ON tblHoaDon TO Role_QuanLy;
GO

-- Cấp quyền cho nhân viên phục vụ (Role_NhanVienPhucVu)
GRANT SELECT ON tblKhachHang TO Role_NhanVienPhucVu;
GRANT SELECT ON tblBanAn TO Role_NhanVienPhucVu;
GRANT SELECT, UPDATE ON tblDatCho TO Role_NhanVienPhucVu;
GO

-- Cấp quyền cho khách hàng (Role_KhachHang)
GRANT SELECT, INSERT ON tblDatCho TO Role_KhachHang;
GRANT SELECT ON tblBanAn TO Role_KhachHang;
GO

-- Kiểm tra quyền của từng user/role
-- Kiểm tra quyền trực tiếp của user ql_nhahang
EXEC sp_helprotect @username = 'ql_nhahang';
GO

-- Kiểm tra quyền của role Role_QuanLy
EXEC sp_helprotect NULL, 'Role_QuanLy';
GO

-- Kiểm tra quyền của user nv_phucvu
EXEC sp_helprotect @username = 'nv_phucvu';
-- Kiểm tra quyền của role Role_NhanVienPhucVu
EXEC sp_helprotect NULL, 'Role_NhanVienPhucVu';
GO

-- Kiểm tra quyền của user khachhang
EXEC sp_helprotect @username = 'khachhang';
-- Kiểm tra quyền của role Role_KhachHang
EXEC sp_helprotect NULL, 'Role_KhachHang';
GO
