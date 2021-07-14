-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 14, 2021 lúc 01:53 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahangbanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

CREATE TABLE `chitietsp` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sdt` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_sanpham`
--

CREATE TABLE `loai_sanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhloai` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_sanpham`
--

INSERT INTO `loai_sanpham` (`id`, `tenloaisanpham`, `hinhloai`) VALUES
(1, 'Bánh Ngọt', 'https://png.pngtree.com/png-clipart/20190924/original/pngtree-cake-icon-for-your-project-png-image_4815809.jpg'),
(2, 'Đồ Uống', 'https://png.pngtree.com/png-clipart/20190904/original/pngtree-milk-tea-icon-png-image_4490888.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhsanpham` varchar(200) NOT NULL,
  `motasp` varchar(2000) NOT NULL,
  `idloai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhsanpham`, `motasp`, `idloai`) VALUES
(1, 'bánh kem trứng', 70000, 'https://github.com/minhhieu392/cuahangbanh/blob/main/pexels-vojtech-okenka-1055271.jpg', 'null', 1),
(2, 'trà cam sả', 50000, 'https://github.com/minhhieu392/cuahangbanh/blob/main/pexels-thiszun-(follow-me-on-ig-fb)-1194030.jpg', 'null', 2),
(3, 'banh ca', 1000, 'https://i.pinimg.com/originals/8f/d5/86/8fd58683502e1d974b202ae3fa894e94.jpg', 'null\r\n', 1),
(4, 'banh tom', 778373, 'https://cdn.w600.comps.canstockphoto.com/cute-cupcakes-set-on-a-white-background-vector-clipart_csp80145305.jpg', 'null\r\n', 1),
(5, 'nuoc cam', 200000000, 'https://baobihuynhat.com/wp-content/uploads/2020/05/nguyen-lieu-tra-sua-mua-o-dau.jpg', 'null', 2),
(6, 'nuoc vai', 33333, 'https://cacloaibanh.com/wp-content/uploads/2019/08/lam-banh-cupcake-bang-noi-com-dien.jpg', 'null', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai_sanpham`
--
ALTER TABLE `loai_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
