-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 07:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbh1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `msg` longtext NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `msg`, `time`) VALUES
(39, 9, 47, 'adfkjnfknsjkfnkdnfjk', '2024-05-01 22:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'anh1234@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(20, 'LỊCH HOẠT ĐỘNG TẾT GIÁP THÌN 2024', '<p>Lịch hoạt động tết giáp thìn</p>', '<p>Hệ thống Texas Chicken mến gửi đến TexFans lịch hoạt động Tết Giáp Thìn 2024, các bạn vui lòng xem thông tin cụ thể ở các hình bên dưới nhé.</p>\r\n<p>Trân trọng cảm ơn!</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_2.jpg\">', 5, 1, 'a_1.jpg'),
(21, 'KHAI TRƯƠNG TEXAS CHICKEN SORA GARDEN - TP. THỦ DẦU MỘT', '<p>KHAI TRƯƠNG TEXAS CHICKEN SORA GARDEN - TP. THỦ DẦU MỘT</p>', '<p>TEXAS CHICKEN Sora Garden - TP THỦ DẦU MỘT</p>\r\n<p>Tưng bừng khai trương Texas Chicken Nguyễn Ảnh Thủ</p>\r\n<p>Duy nhất khung giờ 10h00 ngày 28/07/2023 cho 100 khách hàng đầu tiên</p>\r\n<p>Hàng ngàn quà tặng đã đến tay khách hàng, Texas Chicken xin chân thành cảm ơn sự yêu quý & ủng hộ nhiệt tình của Texfans tại thành phố mới Bình Dương. </p>\r\n<p> còn rất nhiều chương trình ưu đãi “tới công chiện” dành tặng các tình iu Các bạn nhớ theo dõi Fanpage thường xuyên để cập nhật nhé.</p><img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_4.jpg\">', 5, 1, 'a_4.jpg'),
(22, 'CHƯƠNG TRÌNH CRUNCHY NIGHT', '<p>CHƯƠNG TRÌNH CRUNCHY NIGHT</p>', '<p>Sự kiện với sự đồng hành của Coca Cola sẽ diễn ra lúc 18h00, ngày mai 2/12/2022 tại sân vận động Phú Nhuận, số 3 Hoàng Minh</p>\r\n<p> Giám, Phường 9, Quận Phú Nhuận, Tp.HCM.</p>\r\n<p>TEXFAN sẽ được quẩy tưng bừng với loạt ca khúc hit đình đám từ dàn line-up siêu đỉnh: HIEUTHUHAI, Orange, Blacka, Tăng Duy </p>\r\n<p>Tân,.... bên cạnh những set nhạc EDM khuấy động cuộc vui từ 02 DJ hàng đầu là DJ King Lady và DJ Hòa Prox. Đây sẽ là một bữa</p>\r\n<p>tiệc âm thanh hoành tráng, cho bạn bật tung cảm xúc trong những màn biểu diễn đậm chất Rap/Hiphop/EDM rung động hàng triệu </p>\r\n<p>con tim</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_6.jpg\" width=\"100%\" height=\"700px\">', 5, 1, 'a_5.jpg'),
(23, 'KHAI TRƯƠNG TEXAS CHICKEN CAO THẮNG', '<p>KHAI TRƯƠNG TEXAS CHICKEN CAO THẮNG</p>', '<p>KHAI TRƯƠNG TEXAS CHICKEN CAO THẮNG</p>\r\n<p>10h00 sáng, thứ bảy ngày 16/04/2022 đã diễn ra sự kiện khai trương nhà hàng Texas Chicken Cao Thắng - Số 64 Cao Thắng, Phường 4, Quận 3, TP.HCM</p>\r\n<p>Đông đảo khách hàng đã đến từ rất sớm, xếp hàng để nhận 100 miếng gà giòn tươi & 100 lon nước ngọt Coca Cola Zero Sugar tại nhà hàng Texas Chicken Cao Thắng.</p>\r\n<p>Nào cùng Ad note “cơn lốc” DEAL, mà xem thôi là thấy tới công chiện luôn nè fans ơi. Chương trình vẫn đang diễn ra đến hết ngày 15/05/2022 nha các tình yêu.</p>\r\n<p>Tặng 01 vé xem film CGV & 01 giá đỡ điện thoại sành điệu khi mua 01 Star Combo B</p><p>Tặng 01 túi tote phiên bản giới hạn khi mua 01 Star Combo A</p><p>Tặng 01 móc khoá cực kool cho mọi đơn hàng.</p><p>Chill tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà hấp dẫn. Không chần chờ gì nữa, chốt đơn ngay.</p><p>--------</p><p>Texas Chicken Cao Thắng</p><p>64 Cao Thắng, Phường 4, Quận 3, Thành phố Hồ Chí Minh.</p><p>028 6685 0150</p><img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_7.jpg\" width=\"100%\" height=\"700px\">', 5, 1, 'a_7.jpg'),
(24, 'SỰ TRỞ LẠI CỦA TEXAS CHICKEN AEON MALL BÌNH TÂN', '<p>SỰ TRỞ LẠI CỦA TEXAS CHICKEN AEON MALL BÌNH TÂN</p>', '<p>10h00 sáng, thứ bảy ngày 18/06/2022 đã diễn ra sự kiện tái khai trương, mừng diện mạo mới nhà hàng Texas Chicken AEON Mall Bình Tân tại tầng 3.</p>\r\n<p>️Không khí của nhà hàng mới khai trương tưng bừng với nhiều ưu đãi cực kì hấp dẫn dành cho TEXFAN:</p><p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B</p>\r\n<p>- Tặng 01 giá đỡ điện thoại sành điệu khi mua 01 Mega Combo A</p><p>- Tặng 01 móc khoá cực yêu cho mọi đơn hàng.</p><p>Chill tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà hấp dẫn. Không chần chờ gì nữa, chốt đơn ngay nha.</p><p>Chương trình vẫn đang diễn ra đến hết ngày 17/07/2022 hoặc cho đến khi hết quà tặng nha các tình yêu.</p><p>---------------</p><p>Texas Chicken AEON Mall Bình Tân</p><p>Tầng 3, Lô T21 AEON Mall Bình Tân - 01 Đường số 17A, quận Bình Tân, TP.HCM</p><p>SĐT: (028) 6275 8087</p><img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_8.jpg\">', 5, 1, 'a_8.jpg'),
(27, 'SỰ TRỞ LẠI CỦA TEXAS CHICKEN SƯ VẠN HẠNH', '', '<h3>SỰ TRỞ LẠI CỦA TEXAS CHICKEN SƯ VẠN HẠNH</h3>\r\n<p>10h00 sáng, thứ bảy ngày 30/07/2022 đã diễn ra sự kiện tái khai trương, mừng diện mạo mới nhà hàng Texas Chicken Sư Vạn Hạnh tại 463 Sư Vạn Hạnh, Quận 10, Tp.HCM.</p>\r\n<p>Không khí của nhà hàng mới khai trương tưng bừng với nhiều ưu đãi cực kì hấp dẫn dành cho TEXFAN:</p>\r\n<p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B</p>\r\n\r\n<p>-  Tặng 01 giá đỡ điện thoại sành điệu khi mua 01 Mega Combo A+</p>\r\n\r\n<p>- Tặng 01 móc khoá cực kool cho mọi đơn hàng.</p>\r\n<p>Nhập tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà hấp dẫn. Chần chờ gì nữa, chốt đơn ngay & luôn nào!</p>\r\n<p>Chương trình vẫn đang diễn ra đến hết ngày 31/08/2022 hoặc cho đến khi hết quà tặng nha các tình yêu.</p>\r\n<p>---------------</p>\r\n\r\n<p>Texas Chicken Sư Vạn Hạnh</p>\r\n\r\n<p>463 Sư Vạn Hạnh, Phường 12, Quận 10, TP.HCM</p>\r\n\r\n<p>SĐT: (028) 6275 8280</p>\r\n\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\b_1.jpg\" style=\"width:1000px;height:600px\">', 5, 1, 'b_1.jpg'),
(28, 'KHAI TRƯƠNG TEXAS CHICKEN LINH ĐÀM', '', '<h3>KHAI TRƯƠNG TEXAS CHICKEN LINH ĐÀM</h3>\r\n<p>10h00 sáng, thứ bảy ngày 25/06/2022 đã diễn ra sự kiện khai trương nhà hàng Texas Chicken Linh Đàm - nhà hàng thứ 4 tại thủ đô Hà Nội và là nhà hàng thứ 28 thuộc hệ thống Texas Chicken Vietnam.</p>\r\n\r\n<p>Không khí của nhà hàng mới khai trương vô cùng náo nhiệt và tưng bừng với nhiều ưu đãi cực kì hấp dẫn dành cho TEXFAN tại khu đô thị mới Linh Đàm:</p>\r\n<p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B</p>\r\n\r\n<p>- Tặng 01 túi tote phiên bản giới hạn khi mua 01 Mega Combo A</p>\r\n\r\n<p>Cùng nhiều quà tặng, voucher v.v....thú vị khác.</p>\r\n\r\n<p>Chương trình ưu đãi mừng khai trương vẫn áp dụng đến hết ngày 10/07/2022 hoặc cho đến khi hết quà tặng nha các tình iu. Nhanh chân lên đồ ghé Texas Chicken Linh Đàm ngay hôm nay.</p>\r\n<p>-----------</p>\r\n\r\n<p>Texas Chicken Linh Đàm</p>\r\n\r\n<p>Số 2 - Dãy A - Lô TT3, Khu đô thị mới Tây Nam hồ Linh Đàm, Q. Hoàng Mai, Tp. Hà Nội</p>\r\n\r\n<p>(024) 6675 5505</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\b_2.jpg\" style=\"width:1000px;height:600px\">', 5, 1, 'b_2.jpg'),
(31, 'SET TẾT TÀI LỘC', '', '<p>Xuân xuân ơi xuân đã về. Vui Tết Quý Mão, đón lộc đầu xuân.</p>\r\n\r\n<p>Khoảnh khắc bạn cùng gia đình & người thân chill tiệc gà Texas Chicken, cùng chia sẻ những câu chuyện vui đầu năm thật tuyệt vời phải không nào TEXFAN?</p>\r\n\r\n<p>Thưởng thức ngay SET TẾT TÀI LỘC - 9 miếng gà giòn tan, giá chỉ 179k, tiết kiệm liền tay 58k</p>\r\n\r\n<p>Set Tết Tài Lộc - 179k (giá gốc 237k)</p>\r\n\r\n<p>- 3 Miếng gà giòn có xương (lựa chọn vị cay/ không cay)</p>\r\n\r\n<p>- 3 Miếng gà giòn không xương ( lựa chọn vị cay/ không cay)</p>\r\n\r\n<p>- 3 Khuỷu cánh gà cay</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_1.jpg\">\r\n<p>Chương trình áp dụng từ 01/01/2023 đến hết ngày 05/02/2023 (áp dụng tất cả các ngày trong tuần) tại các nhà hàng Texas Chicken đang hoạt động trên toàn quốc.</p>\r\n\r\n', 4, 1, 'c_1.jpg'),
(32, 'GIÒN TAN 5 MIẾNG', '', '<p>Combo Giòn Tan 5 Miếng chỉ 99K\r\n\r\n<p>Măm thả ga chỉ với 99K, TEXFAN sẽ được thưởng thức trọn vẹn vị gà giòn tan, ngon ngất ngây của Texas Chicken lại còn được tiết kiệm đến 39k. Một chiếc ưu đãi thật đi vào lòng người đúng không?</p>\r\n\r\n<p>SET GÀ GIÒN TAN 5 MIẾNG, chỉ 99K</p>\r\n\r\n<p>2 miếng gà giòn có xương (lựa chọn vị cay/không cay)</p>\r\n\r\n<p>2 miếng khuỷu cánh gà vị cay</p>\r\n\r\n<p>1 miếng gà giòn không xương (lựa chọn vị cay/không cay)</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_2.jpg\">\r\n\r\n<p>Chương trình ưu đãi kéo dài nay đến hết ngày 31/12/2022 (áp dụng tất cả ngày trong tuần) tại các nhà hàng Texas Chicken đang hoạt động trên toàn quốc. Áp dụng dùng tại chỗ, mua mang đi và trên các ứng dụng giao hàng </p>', 4, 1, 'c_2.jpg'),
(33, 'COMBO RÔM RẢ', '', '<p>Từ ngày 19/12/2022 với mỗi Combo Rôm Rả mua kèm 1 bánh cuộn Mexicana bạn sẽ được NHẬN LIỀN 1 VÉ XEM PHIM 2D CGV</p>\r\n\r\n<p>CHỌN RÔM RẢ TRÒN VỊ NGON - với đủ các món ưu tú của Texas Chicken: gà giòn tươi 100%, burger tôm thơm ngon, thức ăn kèm đa dạng thêm bánh cuộn độc quyền triển liền thôi, chần chờ gì nữa đúng hông TEXFAN ơi!</p>\r\n\r\n<p>COMBO RÔM RẢ 199K (giá gốc 263K)</p>\r\n\r\n<p>- 3 Miếng gà có xương (lựa chọn vị cay/ không cay)</p>\r\n\r\n<p>- 1 Burger tôm (lựa chọn vị cay/không cay)</p>\r\n\r\n<p>- 2 Thức ăn kèm tiêu chuẩn (lựa chọn khoai tây chiên/khoai tây nghiền/bắp cải trộn)</p>\r\n\r\n<p>- 1 Bánh quy bơ mật ong</p>\r\n\r\n<p>- 2 Nước ngọt</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_3.jpg\">\r\n<p>Chương trình bắt đầu từ ngày 19/12/2022 đến khi hết vé (Áp dụng dùng tại chỗ và mua mang về, không áp dụng qua các ứng dụng giao hàng)</p>', 4, 1, 'c_3.jpg'),
(34, 'CRUNCHY COMBO - MĂM TRỌN VỊ VUI TRỌN VẸN', '', '<p>TEXFAN ui, chọn ngay Crunchy Combo để săn vé quẩy bung nóc tại đại nhạc hội Crunchy Night nào!!!</p>\r\n\r\n<p>CRUNCHY COMBO gồm 10 món ngon với giá chỉ 199K</p>\r\n\r\n<p>-02 Miếng gà có xương (vị cay/không cay)</p>\r\n\r\n<p>-01 Bánh cuộn Zesty Crunch</p>\r\n\r\n<p>-01 Burger Zesty Crunch</p>\r\n\r\n<p>-02 Bánh quy bơ mật ong</p>\r\n\r\n<p>-01 Khoai tây nghiền cỡ tiêu chuẩn</p>\r\n\r\n<p>-01 Khoai tây chiên cỡ tiêu chuẩn</p>\r\n\r\n<p>-02 Nước ngọt Coca Cola refill thỏa thích</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_4.jpg\">\r\n<p>+Cách thức đổi vé :</p>\r\n\r\n<p>Mua 01 Crunchy Combo bạn sẽ nhận được 01 thẻ tích lũy.</p>\r\n\r\n<p>-Tích lũy đủ 2 thẻ nhận ngay 01 vé hạng GA</p>\r\n\r\n<p>-Tích lũy đủ 4 thẻ nhận luôn 01 vé hạng VIP</p>\r\n\r\n<p>+Crunchy Combo sẽ bán từ nay đến hết ngày 30/11/2022. Chương trình bán Combo chỉ áp dụng dùng tại chỗ, mua mang đi và không áp dụng trên ứng dụng giao hàng tận nơi.</p>\r\n\r\n<p>-Thời gian đổi vé từ 01/11/2022 đến hết ngày 30/11/2022 tại toàn bộ hệ thống nhà hàng Texas Chicken khu vực Tp.HCM.</p>\r\n\r\n<p>Đến nhà hàng Texas Chicken gần nhất tại Tp.HCM để măm ngay Crunchy Combo và săn vé cho đại nhạc hội Crunchy Night ngay bây giờ bạn nhé!!!</p>', 4, 1, 'c_4.jpg'),
(35, 'ĂN CHO ĐÃ THÈM CÙNG COMBO BUNG XÕA', '', '<p>ĂN CHO ĐÃ THÈM CÙNG COMBO BUNG XÕA<p>\r\n\r\n<p>Lấp đầy \"chiếc bụng đói\" cùng hội bạn với Combo Bung Xõa ngập gà giòn & nhiều món ngon hấp dẫn khác, giá chỉ 299K. Texas Chicken còn tặng 01 vé xem phim CGV \"siêu xịn xò\" khi TEXFAN mua 01 Combo Bung Xõa</p>\r\n\r\n<p>COMBO BUNG XÕA - Giá chỉ 299k</p>\r\n\r\n<p>- 05 miếng gà có xương (vị cay/không cay)</p>\r\n\r\n<p>- 01 burger Tôm</p>\r\n\r\n<p>- 01 khoai tây chiên vừa</p>\r\n\r\n<p>- 01 bắp cải trộn vừa</p>\r\n\r\n<p>- 03 nước ngọt Coca Cola refill thỏa thích</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_5.jpg\">\r\n<p>Ưu đãi từ 03/10/2022 đến 31/10/2022 hoặc đến khi hết số lượng vé xem phim (tùy điều kiện nào đến trước). Chương trình chỉ áp dụng ăn tại chỗ, mua mang đi tại hệ thống Texas Chicken toàn quốc và không áp dụng trên ứng dụng giao hàng tận nơi.</p>', 4, 1, 'c_5.jpg'),
(36, 'STAR BOX COMBO', '', '<p>STAR BOX COMBOS - VỊ NGON HẾT Ý, MĂM NGAY CHỜ CHI!\r\n\r\n<p>Star Box Combos dành cho \"tín đồ gà rán\" thỏa sức măm măm với giá chỉ từ 99K. Set lịch đến ngay Texas Chicken gần nhất thưởng thức ngay và luôn nào TEXFAN ơi!!\r\n\r\n<p>Star Box Combo A – Giá chỉ 99K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 bánh cuộn sốt chua ngọt\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n\r\n \r\n\r\n<p>Star Box Combo B – Giá chỉ 99K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 burger tôm\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n\r\n \r\n\r\n<p>Star Box Combo C – Giá chỉ 119K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 bánh cuộn Mexicana\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n\r\n \r\n\r\n<p>Star Box Combo D – Giá chỉ 119K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 burger Mexicana\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_6.jpg\">\r\n\r\n', 4, 1, 'c_6.jpg'),
(37, 'NGẮM TRĂNG TRÒN - RƯỚC DEAL NGON', '', '<p>TẶNG vé xem phim CGV khi mua x2 Combo Vui Trăng</p>\r\n\r\n<p>Mùa trăng tháng 8 năm nay, Texas Chicken không chỉ chill đãi cả nhà các món ngon mới, mà còn TẶNG vé xem phim CGV xịn khi mua 2 Combo Vui Trăng!</p>\r\n\r\n <p>1 x COMBO VUI TRĂNG, chỉ 189k (tiết kiệm 69k)</p>\r\n\r\n<p>3 miếng gà giòn có xương (lựa vị gà cay hoặc không cay</p>\r\n\r\n<p>1 bánh cuộn gà sốt chua ngọt</p>\r\n\r\n<p>1 bánh quy bơ mật ong sốt thơm</p>\r\n\r\n<p>1 bắp cải trộn cỡ vừa</p>\r\n\r\n<p>2 ly nước ngọt refill thỏa thích</p>\r\n\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_7.jpg\">\r\n\r\n<p>Chương trình được áp dụng từ ngày 10/9/2022 cho đến khi hết quà tặng vé xem phim.</p>\r\n\r\n<p>Áp dụng trên cùng 01 hoá đơn.</p>\r\n\r\n<p>Áp dụng cho dùng tại chỗ và mua mang đi (không áp dụng giao hàng tận nơi), tại các nhà hàng Texas Chicken toàn quốc</p>', 4, 1, 'c_7.jpg'),
(38, 'HÈ VUI RỘN RÃNG - DEAL XỊN XỐN XANG', '', '<p>Summer Combo với ngập gà giòn tươi ngon kèm giá \"siêu iu\", chỉ 169k tiết kiệm đến 66k, hết nước chấm luôn phải không nào TEXFAN?</p>\r\n\r\n<p>- 4 miếng gà giòn có xương (lựa chọn cay hoặc không cay)</p>\r\n\r\n<p>- 1 bắp cải trộn cỡ vừa<p>\r\n\r\n<p>- 2 ly nước ngọt Coca Cola tha hồ refill thoải mái</p>\r\n\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_8.jpg\">\r\n\r\n<p>Ngoài phục vụ ăn uống tại chỗ và mua mang về, các fans có thể order Summer Combo trên các ứng dụng ShopeeFood/GrabFood/Baemin/Gojek/beFood để được giao hàng tận nơi nhé.</p>\r\n\r\n<p>Chương trình ưu đãi áp dụng từ 09/05 đến hết ngày 31/07/2022 tại hệ thống Texas Chicken toàn quốc.</p>', 4, 1, 'c_8.jpg'),
(39, 'BỘ BA ĐỦ ĐẦY, TRỌN VỊ NGẤT NGÂY - 99K', '', '<p>DEAL ĐỈNH NGẤT NGÂY - SAY HI THÁNG 8</p>\r\n\r\n<p>Trọn vị - đủ đầy chỉ 99k với Trio Deal Bộ 3 siêu phẩm Bánh Cuộn/ Buger. Tiết kiệm ngay 33%</p>\r\n\r\n<p>Chỉ 99k, thưởng thức trọn vị Bộ 3 siêu phẩm</p>\r\n\r\n<p>- Bánh cuộn sốt chua ngọt</p>\r\n\r\n<p>- Bánh cuộn Zesty Crunch</p>\r\n\r\n<p>- Bánh cuộn gà không xương</p>\r\n\r\n<p>Chỉ 99k, thưởng thức đủ đầy Bộ 3 si mê </p>\r\n\r\n<p>- Burger Zesty Crunch</p>\r\n\r\n<p>- Burger tôm</p>\r\n\r\n<p>- Burger gà cổ điển</p>\r\n<img src =\"admincp\\modules\\quanlybaiviet\\uploads\\c_9.jpg\">', 4, 1, 'c_9.jpg'),
(40, 'THỨ 6 CÓ ƯU ĐÃI 60K', '', '<p>Đến hẹn lại lên, deal HOT xuất hiện. Thứ 6 măm gà Texas thả ga</p>\r\n\r\n<p>Ưu đãi 60k khi đặt hàng qua ShopeeFood</p>\r\n\r\n<p>Deal trong tay bắt ngay kẻo lỡ</p>\r\n\r\n<p>Nhập mã TEXAS60. Ưu đãi 60k cho đơn hàng từ 200k. Rất nhiều món ngon & các combo hấp dẫn đang chờ bạn </p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_10.jpg\">\r\n', 4, 1, 'c_10.jpg'),
(41, 'HAPPY COMBO - MĂM CÓ ĐÔI, VUI VÔ ĐỐI', '', '<p>Combo dành cho 2 người hội tụ đầy ắp món ngon đỉnh kout nóng hổi vừa thổi vừa măm, nước ngọt refill thoải mái lại được tiết kiệm liền tay 6/4k<p>\r\n\r\n<p>Happy Combo 199k</p>\r\n\r\n<p>- 3 Miếng gà có xương (cay/ không cay)</p>\r\n\r\n<p>- 1 Burger tôm</p>\r\n\r\n<p>- 1 Món ăn kèm cỡ vừa tự chọn (khoai tây chiên cỡ vừa/ khoai tây nghiền cỡ vừa/ bắp cải trộn cỡ vừa)</p>\r\n\r\n<p>- 2 Bánh quy bơ mật ong</p>\r\n\r\n<p>- 2 Nước ngọt</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_11.jpg\">\r\n', 4, 1, 'c_11.jpg'),
(42, 'TEXAS CHICKEN PHẠM VĂN THUẬN - BIÊN HÒA', '', '<p>KHAI TRƯƠNG TEXAS CHICKEN PHẠM VĂN THUẬN - BIÊN HÒA</p>\r\n\r\n<p>10h00 sáng nay 26/08/2023, Texas Chicken Phạm Văn Thuận đã chính thức khai trương hoành tráng tại số 1136 – 1138 Phạm Văn Thuận, P. Tân Tiến, Tp. Biên Hòa</p>\r\n\r\n<p>Đừng quên còn vô vàn chiếc deals và phần quà hấp dẫn nói thay lời iu gửi đến TEXFANS dịp khai trương này gồm:</p>\r\n\r\n<p>Tặng 01 vé xem film CGV xịn xò khi mua 01 Mega Combo B</p>\r\n\r\n<p>Tặng 01 túi Tote độc đáo khi mua 01 Mega Combo A</p>\r\n\r\n<p>Tặng 01 móc khoá cực kool cho mọi đơn hàng</p>\r\n\r\n<p>Cùng vô vàn coupon ưu đãi cực hấp dẫn.</p>\r\n\r\n<p>Được chill tiệc gà ngon, tha hồ refill Coca và nhận quà xinh iu thì còn gì bằng.</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_12.jpg\">\r\n', 5, 1, 'c_12.jpg'),
(43, 'KHAI TRƯƠNG TEXAS CHICKEN BẠCH MAI', '', '<p>KHAI TRƯƠNG TEXAS CHICKEN BẠCH MAI</p>\r\n<p>10h00 sáng, thứ bảy ngày 07/05/2022 đã diễn ra sự kiện khai trương nhà hàng Texas Chicken Bạch Mai - Số 331 phố Bạch Mai, phường Bạch Mai, quận Hai Bà Trưng, TP. Hà Nội.<p>\r\n\r\n<p>Đông đảo khách hàng đã đến từ rất sớm, xếp hàng để nhận 100 miếng gà giòn tươi & 100 lon nước ngọt Coca Cola Zero Sugar tại nhà hàng Texas Chicken Bạch Mai. </p>\r\n\r\n<p>Không khí của nhà hàng mới khai trương rất sôi động với thật nhiều ưu đãi nhân đôi cực hấp dẫn dành cho TEXFAN:</p>\r\n\r\n<p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B, giá bán chỉ 299k (giá gốc 385k)</p>\r\n\r\n<p>- Tặng 01 túi tote phiên bản giới hạn Texas Chicken Love Hanoi khi mua 01 Mega Combo A, giá chỉ 199k (giá gốc 264k)</p>\r\n\r\n<p>- Tặng 01 móc khoá cực yêu cho mọi đơn hàng.</p>\r\n\r\n<p>Nhập tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà tặng cực kỳ hấp dẫn. Không chần chờ gì nữa, lên đồ đến ngay Texas Chicken Bạch Mai.</p>\r\n<p>-----------</p>\r\n<p>Texas Chicken Bạch Mai<p>\r\n<p>331 phố Bạch Mai, phường Bạch Mai, Quận Hai Bà Trưng, Tp. Hà Nội</p>\r\n<p>(024) 667 555 25</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_13.jpg\">', 5, 1, 'c_13.jpg'),
(44, 'LỊCH HOẠT ĐỘNG TẾT GIÁP THÌN 2024', '<p>Lịch hoạt động tết giáp thìn</p>', '<p>Hệ thống Texas Chicken mến gửi đến TexFans lịch hoạt động Tết Giáp Thìn 2024, các bạn vui lòng xem thông tin cụ thể ở các hình bên dưới nhé.</p>\r\n<p>Trân trọng cảm ơn!</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_2.jpg\">', 5, 1, 'a_1.jpg'),
(45, 'KHAI TRƯƠNG TEXAS CHICKEN SORA GARDEN - TP. THỦ DẦU MỘT', '<p>KHAI TRƯƠNG TEXAS CHICKEN SORA GARDEN - TP. THỦ DẦU MỘT</p>', '<p>TEXAS CHICKEN Sora Garden - TP THỦ DẦU MỘT</p>\r\n<p>Tưng bừng khai trương Texas Chicken Nguyễn Ảnh Thủ</p>\r\n<p>Duy nhất khung giờ 10h00 ngày 28/07/2023 cho 100 khách hàng đầu tiên</p>\r\n<p>Hàng ngàn quà tặng đã đến tay khách hàng, Texas Chicken xin chân thành cảm ơn sự yêu quý & ủng hộ nhiệt tình của Texfans tại thành phố mới Bình Dương. </p>\r\n<p> còn rất nhiều chương trình ưu đãi “tới công chiện” dành tặng các tình iu Các bạn nhớ theo dõi Fanpage thường xuyên để cập nhật nhé.</p><img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_4.jpg\">', 5, 1, 'a_4.jpg'),
(46, 'CHƯƠNG TRÌNH CRUNCHY NIGHT', '<p>CHƯƠNG TRÌNH CRUNCHY NIGHT</p>', '<p>Sự kiện với sự đồng hành của Coca Cola sẽ diễn ra lúc 18h00, ngày mai 2/12/2022 tại sân vận động Phú Nhuận, số 3 Hoàng Minh</p>\r\n<p> Giám, Phường 9, Quận Phú Nhuận, Tp.HCM.</p>\r\n<p>TEXFAN sẽ được quẩy tưng bừng với loạt ca khúc hit đình đám từ dàn line-up siêu đỉnh: HIEUTHUHAI, Orange, Blacka, Tăng Duy </p>\r\n<p>Tân,.... bên cạnh những set nhạc EDM khuấy động cuộc vui từ 02 DJ hàng đầu là DJ King Lady và DJ Hòa Prox. Đây sẽ là một bữa</p>\r\n<p>tiệc âm thanh hoành tráng, cho bạn bật tung cảm xúc trong những màn biểu diễn đậm chất Rap/Hiphop/EDM rung động hàng triệu </p>\r\n<p>con tim</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_6.jpg\" width=\"100%\" height=\"700px\">', 5, 1, 'a_5.jpg'),
(47, 'KHAI TRƯƠNG TEXAS CHICKEN CAO THẮNG', '<p>KHAI TRƯƠNG TEXAS CHICKEN CAO THẮNG</p>', '<p>KHAI TRƯƠNG TEXAS CHICKEN CAO THẮNG</p>\r\n<p>10h00 sáng, thứ bảy ngày 16/04/2022 đã diễn ra sự kiện khai trương nhà hàng Texas Chicken Cao Thắng - Số 64 Cao Thắng, Phường 4, Quận 3, TP.HCM</p>\r\n<p>Đông đảo khách hàng đã đến từ rất sớm, xếp hàng để nhận 100 miếng gà giòn tươi & 100 lon nước ngọt Coca Cola Zero Sugar tại nhà hàng Texas Chicken Cao Thắng.</p>\r\n<p>Nào cùng Ad note “cơn lốc” DEAL, mà xem thôi là thấy tới công chiện luôn nè fans ơi. Chương trình vẫn đang diễn ra đến hết ngày 15/05/2022 nha các tình yêu.</p>\r\n<p>Tặng 01 vé xem film CGV & 01 giá đỡ điện thoại sành điệu khi mua 01 Star Combo B</p><p>Tặng 01 túi tote phiên bản giới hạn khi mua 01 Star Combo A</p><p>Tặng 01 móc khoá cực kool cho mọi đơn hàng.</p><p>Chill tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà hấp dẫn. Không chần chờ gì nữa, chốt đơn ngay.</p><p>--------</p><p>Texas Chicken Cao Thắng</p><p>64 Cao Thắng, Phường 4, Quận 3, Thành phố Hồ Chí Minh.</p><p>028 6685 0150</p><img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_7.jpg\" width=\"100%\" height=\"700px\">', 5, 1, 'a_7.jpg'),
(48, 'SỰ TRỞ LẠI CỦA TEXAS CHICKEN AEON MALL BÌNH TÂN', '<p>SỰ TRỞ LẠI CỦA TEXAS CHICKEN AEON MALL BÌNH TÂN</p>', '<p>10h00 sáng, thứ bảy ngày 18/06/2022 đã diễn ra sự kiện tái khai trương, mừng diện mạo mới nhà hàng Texas Chicken AEON Mall Bình Tân tại tầng 3.</p>\r\n<p>️Không khí của nhà hàng mới khai trương tưng bừng với nhiều ưu đãi cực kì hấp dẫn dành cho TEXFAN:</p><p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B</p>\r\n<p>- Tặng 01 giá đỡ điện thoại sành điệu khi mua 01 Mega Combo A</p><p>- Tặng 01 móc khoá cực yêu cho mọi đơn hàng.</p><p>Chill tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà hấp dẫn. Không chần chờ gì nữa, chốt đơn ngay nha.</p><p>Chương trình vẫn đang diễn ra đến hết ngày 17/07/2022 hoặc cho đến khi hết quà tặng nha các tình yêu.</p><p>---------------</p><p>Texas Chicken AEON Mall Bình Tân</p><p>Tầng 3, Lô T21 AEON Mall Bình Tân - 01 Đường số 17A, quận Bình Tân, TP.HCM</p><p>SĐT: (028) 6275 8087</p><img src=\"admincp\\modules\\quanlybaiviet\\uploads\\a_8.jpg\">', 5, 1, 'a_8.jpg'),
(49, 'SỰ TRỞ LẠI CỦA TEXAS CHICKEN SƯ VẠN HẠNH', '', '<h3>SỰ TRỞ LẠI CỦA TEXAS CHICKEN SƯ VẠN HẠNH</h3>\r\n<p>10h00 sáng, thứ bảy ngày 30/07/2022 đã diễn ra sự kiện tái khai trương, mừng diện mạo mới nhà hàng Texas Chicken Sư Vạn Hạnh tại 463 Sư Vạn Hạnh, Quận 10, Tp.HCM.</p>\r\n<p>Không khí của nhà hàng mới khai trương tưng bừng với nhiều ưu đãi cực kì hấp dẫn dành cho TEXFAN:</p>\r\n<p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B</p>\r\n\r\n<p>-  Tặng 01 giá đỡ điện thoại sành điệu khi mua 01 Mega Combo A+</p>\r\n\r\n<p>- Tặng 01 móc khoá cực kool cho mọi đơn hàng.</p>\r\n<p>Nhập tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà hấp dẫn. Chần chờ gì nữa, chốt đơn ngay & luôn nào!</p>\r\n<p>Chương trình vẫn đang diễn ra đến hết ngày 31/08/2022 hoặc cho đến khi hết quà tặng nha các tình yêu.</p>\r\n<p>---------------</p>\r\n\r\n<p>Texas Chicken Sư Vạn Hạnh</p>\r\n\r\n<p>463 Sư Vạn Hạnh, Phường 12, Quận 10, TP.HCM</p>\r\n\r\n<p>SĐT: (028) 6275 8280</p>\r\n\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\b_1.jpg\" style=\"width:1000px;height:600px\">', 5, 1, 'b_1.jpg'),
(50, 'KHAI TRƯƠNG TEXAS CHICKEN LINH ĐÀM', '', '<h3>KHAI TRƯƠNG TEXAS CHICKEN LINH ĐÀM</h3>\r\n<p>10h00 sáng, thứ bảy ngày 25/06/2022 đã diễn ra sự kiện khai trương nhà hàng Texas Chicken Linh Đàm - nhà hàng thứ 4 tại thủ đô Hà Nội và là nhà hàng thứ 28 thuộc hệ thống Texas Chicken Vietnam.</p>\r\n\r\n<p>Không khí của nhà hàng mới khai trương vô cùng náo nhiệt và tưng bừng với nhiều ưu đãi cực kì hấp dẫn dành cho TEXFAN tại khu đô thị mới Linh Đàm:</p>\r\n<p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B</p>\r\n\r\n<p>- Tặng 01 túi tote phiên bản giới hạn khi mua 01 Mega Combo A</p>\r\n\r\n<p>Cùng nhiều quà tặng, voucher v.v....thú vị khác.</p>\r\n\r\n<p>Chương trình ưu đãi mừng khai trương vẫn áp dụng đến hết ngày 10/07/2022 hoặc cho đến khi hết quà tặng nha các tình iu. Nhanh chân lên đồ ghé Texas Chicken Linh Đàm ngay hôm nay.</p>\r\n<p>-----------</p>\r\n\r\n<p>Texas Chicken Linh Đàm</p>\r\n\r\n<p>Số 2 - Dãy A - Lô TT3, Khu đô thị mới Tây Nam hồ Linh Đàm, Q. Hoàng Mai, Tp. Hà Nội</p>\r\n\r\n<p>(024) 6675 5505</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\b_2.jpg\" style=\"width:1000px;height:600px\">', 5, 1, 'b_2.jpg'),
(51, 'SET TẾT TÀI LỘC', '', '<p>Xuân xuân ơi xuân đã về. Vui Tết Quý Mão, đón lộc đầu xuân.</p>\r\n\r\n<p>Khoảnh khắc bạn cùng gia đình & người thân chill tiệc gà Texas Chicken, cùng chia sẻ những câu chuyện vui đầu năm thật tuyệt vời phải không nào TEXFAN?</p>\r\n\r\n<p>Thưởng thức ngay SET TẾT TÀI LỘC - 9 miếng gà giòn tan, giá chỉ 179k, tiết kiệm liền tay 58k</p>\r\n\r\n<p>Set Tết Tài Lộc - 179k (giá gốc 237k)</p>\r\n\r\n<p>- 3 Miếng gà giòn có xương (lựa chọn vị cay/ không cay)</p>\r\n\r\n<p>- 3 Miếng gà giòn không xương ( lựa chọn vị cay/ không cay)</p>\r\n\r\n<p>- 3 Khuỷu cánh gà cay</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_1.jpg\">\r\n<p>Chương trình áp dụng từ 01/01/2023 đến hết ngày 05/02/2023 (áp dụng tất cả các ngày trong tuần) tại các nhà hàng Texas Chicken đang hoạt động trên toàn quốc.</p>\r\n\r\n', 4, 1, 'c_1.jpg'),
(52, 'GIÒN TAN 5 MIẾNG', '', '<p>Combo Giòn Tan 5 Miếng chỉ 99K\r\n\r\n<p>Măm thả ga chỉ với 99K, TEXFAN sẽ được thưởng thức trọn vẹn vị gà giòn tan, ngon ngất ngây của Texas Chicken lại còn được tiết kiệm đến 39k. Một chiếc ưu đãi thật đi vào lòng người đúng không?</p>\r\n\r\n<p>SET GÀ GIÒN TAN 5 MIẾNG, chỉ 99K</p>\r\n\r\n<p>2 miếng gà giòn có xương (lựa chọn vị cay/không cay)</p>\r\n\r\n<p>2 miếng khuỷu cánh gà vị cay</p>\r\n\r\n<p>1 miếng gà giòn không xương (lựa chọn vị cay/không cay)</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_2.jpg\">\r\n\r\n<p>Chương trình ưu đãi kéo dài nay đến hết ngày 31/12/2022 (áp dụng tất cả ngày trong tuần) tại các nhà hàng Texas Chicken đang hoạt động trên toàn quốc. Áp dụng dùng tại chỗ, mua mang đi và trên các ứng dụng giao hàng </p>', 4, 1, 'c_2.jpg'),
(53, 'COMBO RÔM RẢ', '', '<p>Từ ngày 19/12/2022 với mỗi Combo Rôm Rả mua kèm 1 bánh cuộn Mexicana bạn sẽ được NHẬN LIỀN 1 VÉ XEM PHIM 2D CGV</p>\r\n\r\n<p>CHỌN RÔM RẢ TRÒN VỊ NGON - với đủ các món ưu tú của Texas Chicken: gà giòn tươi 100%, burger tôm thơm ngon, thức ăn kèm đa dạng thêm bánh cuộn độc quyền triển liền thôi, chần chờ gì nữa đúng hông TEXFAN ơi!</p>\r\n\r\n<p>COMBO RÔM RẢ 199K (giá gốc 263K)</p>\r\n\r\n<p>- 3 Miếng gà có xương (lựa chọn vị cay/ không cay)</p>\r\n\r\n<p>- 1 Burger tôm (lựa chọn vị cay/không cay)</p>\r\n\r\n<p>- 2 Thức ăn kèm tiêu chuẩn (lựa chọn khoai tây chiên/khoai tây nghiền/bắp cải trộn)</p>\r\n\r\n<p>- 1 Bánh quy bơ mật ong</p>\r\n\r\n<p>- 2 Nước ngọt</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_3.jpg\">\r\n<p>Chương trình bắt đầu từ ngày 19/12/2022 đến khi hết vé (Áp dụng dùng tại chỗ và mua mang về, không áp dụng qua các ứng dụng giao hàng)</p>', 4, 1, 'c_3.jpg'),
(54, 'CRUNCHY COMBO - MĂM TRỌN VỊ VUI TRỌN VẸN', '', '<p>TEXFAN ui, chọn ngay Crunchy Combo để săn vé quẩy bung nóc tại đại nhạc hội Crunchy Night nào!!!</p>\r\n\r\n<p>CRUNCHY COMBO gồm 10 món ngon với giá chỉ 199K</p>\r\n\r\n<p>-02 Miếng gà có xương (vị cay/không cay)</p>\r\n\r\n<p>-01 Bánh cuộn Zesty Crunch</p>\r\n\r\n<p>-01 Burger Zesty Crunch</p>\r\n\r\n<p>-02 Bánh quy bơ mật ong</p>\r\n\r\n<p>-01 Khoai tây nghiền cỡ tiêu chuẩn</p>\r\n\r\n<p>-01 Khoai tây chiên cỡ tiêu chuẩn</p>\r\n\r\n<p>-02 Nước ngọt Coca Cola refill thỏa thích</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_4.jpg\">\r\n<p>+Cách thức đổi vé :</p>\r\n\r\n<p>Mua 01 Crunchy Combo bạn sẽ nhận được 01 thẻ tích lũy.</p>\r\n\r\n<p>-Tích lũy đủ 2 thẻ nhận ngay 01 vé hạng GA</p>\r\n\r\n<p>-Tích lũy đủ 4 thẻ nhận luôn 01 vé hạng VIP</p>\r\n\r\n<p>+Crunchy Combo sẽ bán từ nay đến hết ngày 30/11/2022. Chương trình bán Combo chỉ áp dụng dùng tại chỗ, mua mang đi và không áp dụng trên ứng dụng giao hàng tận nơi.</p>\r\n\r\n<p>-Thời gian đổi vé từ 01/11/2022 đến hết ngày 30/11/2022 tại toàn bộ hệ thống nhà hàng Texas Chicken khu vực Tp.HCM.</p>\r\n\r\n<p>Đến nhà hàng Texas Chicken gần nhất tại Tp.HCM để măm ngay Crunchy Combo và săn vé cho đại nhạc hội Crunchy Night ngay bây giờ bạn nhé!!!</p>', 4, 1, 'c_4.jpg'),
(55, 'ĂN CHO ĐÃ THÈM CÙNG COMBO BUNG XÕA', '', '<p>ĂN CHO ĐÃ THÈM CÙNG COMBO BUNG XÕA<p>\r\n\r\n<p>Lấp đầy \"chiếc bụng đói\" cùng hội bạn với Combo Bung Xõa ngập gà giòn & nhiều món ngon hấp dẫn khác, giá chỉ 299K. Texas Chicken còn tặng 01 vé xem phim CGV \"siêu xịn xò\" khi TEXFAN mua 01 Combo Bung Xõa</p>\r\n\r\n<p>COMBO BUNG XÕA - Giá chỉ 299k</p>\r\n\r\n<p>- 05 miếng gà có xương (vị cay/không cay)</p>\r\n\r\n<p>- 01 burger Tôm</p>\r\n\r\n<p>- 01 khoai tây chiên vừa</p>\r\n\r\n<p>- 01 bắp cải trộn vừa</p>\r\n\r\n<p>- 03 nước ngọt Coca Cola refill thỏa thích</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_5.jpg\">\r\n<p>Ưu đãi từ 03/10/2022 đến 31/10/2022 hoặc đến khi hết số lượng vé xem phim (tùy điều kiện nào đến trước). Chương trình chỉ áp dụng ăn tại chỗ, mua mang đi tại hệ thống Texas Chicken toàn quốc và không áp dụng trên ứng dụng giao hàng tận nơi.</p>', 4, 1, 'c_5.jpg'),
(56, 'STAR BOX COMBO', '', '<p>STAR BOX COMBOS - VỊ NGON HẾT Ý, MĂM NGAY CHỜ CHI!\r\n\r\n<p>Star Box Combos dành cho \"tín đồ gà rán\" thỏa sức măm măm với giá chỉ từ 99K. Set lịch đến ngay Texas Chicken gần nhất thưởng thức ngay và luôn nào TEXFAN ơi!!\r\n\r\n<p>Star Box Combo A – Giá chỉ 99K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 bánh cuộn sốt chua ngọt\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n\r\n \r\n\r\n<p>Star Box Combo B – Giá chỉ 99K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 burger tôm\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n\r\n \r\n\r\n<p>Star Box Combo C – Giá chỉ 119K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 bánh cuộn Mexicana\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n\r\n \r\n\r\n<p>Star Box Combo D – Giá chỉ 119K\r\n\r\n<p>01 miếng gà có xương (cay/không cay)\r\n\r\n<p>01 burger Mexicana\r\n\r\n<p>01 khoai tây nghiền tiêu chuẩn\r\n\r\n<p>01 nước ngọt\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_6.jpg\">\r\n\r\n', 4, 1, 'c_6.jpg'),
(57, 'NGẮM TRĂNG TRÒN - RƯỚC DEAL NGON', '', '<p>TẶNG vé xem phim CGV khi mua x2 Combo Vui Trăng</p>\r\n\r\n<p>Mùa trăng tháng 8 năm nay, Texas Chicken không chỉ chill đãi cả nhà các món ngon mới, mà còn TẶNG vé xem phim CGV xịn khi mua 2 Combo Vui Trăng!</p>\r\n\r\n <p>1 x COMBO VUI TRĂNG, chỉ 189k (tiết kiệm 69k)</p>\r\n\r\n<p>3 miếng gà giòn có xương (lựa vị gà cay hoặc không cay</p>\r\n\r\n<p>1 bánh cuộn gà sốt chua ngọt</p>\r\n\r\n<p>1 bánh quy bơ mật ong sốt thơm</p>\r\n\r\n<p>1 bắp cải trộn cỡ vừa</p>\r\n\r\n<p>2 ly nước ngọt refill thỏa thích</p>\r\n\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_7.jpg\">\r\n\r\n<p>Chương trình được áp dụng từ ngày 10/9/2022 cho đến khi hết quà tặng vé xem phim.</p>\r\n\r\n<p>Áp dụng trên cùng 01 hoá đơn.</p>\r\n\r\n<p>Áp dụng cho dùng tại chỗ và mua mang đi (không áp dụng giao hàng tận nơi), tại các nhà hàng Texas Chicken toàn quốc</p>', 4, 1, 'c_7.jpg'),
(58, 'HÈ VUI RỘN RÃNG - DEAL XỊN XỐN XANG', '', '<p>Summer Combo với ngập gà giòn tươi ngon kèm giá \"siêu iu\", chỉ 169k tiết kiệm đến 66k, hết nước chấm luôn phải không nào TEXFAN?</p>\r\n\r\n<p>- 4 miếng gà giòn có xương (lựa chọn cay hoặc không cay)</p>\r\n\r\n<p>- 1 bắp cải trộn cỡ vừa<p>\r\n\r\n<p>- 2 ly nước ngọt Coca Cola tha hồ refill thoải mái</p>\r\n\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_8.jpg\">\r\n\r\n<p>Ngoài phục vụ ăn uống tại chỗ và mua mang về, các fans có thể order Summer Combo trên các ứng dụng ShopeeFood/GrabFood/Baemin/Gojek/beFood để được giao hàng tận nơi nhé.</p>\r\n\r\n<p>Chương trình ưu đãi áp dụng từ 09/05 đến hết ngày 31/07/2022 tại hệ thống Texas Chicken toàn quốc.</p>', 4, 1, 'c_8.jpg'),
(59, 'BỘ BA ĐỦ ĐẦY, TRỌN VỊ NGẤT NGÂY - 99K', '', '<p>DEAL ĐỈNH NGẤT NGÂY - SAY HI THÁNG 8</p>\r\n\r\n<p>Trọn vị - đủ đầy chỉ 99k với Trio Deal Bộ 3 siêu phẩm Bánh Cuộn/ Buger. Tiết kiệm ngay 33%</p>\r\n\r\n<p>Chỉ 99k, thưởng thức trọn vị Bộ 3 siêu phẩm</p>\r\n\r\n<p>- Bánh cuộn sốt chua ngọt</p>\r\n\r\n<p>- Bánh cuộn Zesty Crunch</p>\r\n\r\n<p>- Bánh cuộn gà không xương</p>\r\n\r\n<p>Chỉ 99k, thưởng thức đủ đầy Bộ 3 si mê </p>\r\n\r\n<p>- Burger Zesty Crunch</p>\r\n\r\n<p>- Burger tôm</p>\r\n\r\n<p>- Burger gà cổ điển</p>\r\n<img src =\"admincp\\modules\\quanlybaiviet\\uploads\\c_9.jpg\">', 4, 1, 'c_9.jpg'),
(60, 'THỨ 6 CÓ ƯU ĐÃI 60K', '', '<p>Đến hẹn lại lên, deal HOT xuất hiện. Thứ 6 măm gà Texas thả ga</p>\r\n\r\n<p>Ưu đãi 60k khi đặt hàng qua ShopeeFood</p>\r\n\r\n<p>Deal trong tay bắt ngay kẻo lỡ</p>\r\n\r\n<p>Nhập mã TEXAS60. Ưu đãi 60k cho đơn hàng từ 200k. Rất nhiều món ngon & các combo hấp dẫn đang chờ bạn </p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_10.jpg\">\r\n', 4, 1, 'c_10.jpg'),
(61, 'HAPPY COMBO - MĂM CÓ ĐÔI, VUI VÔ ĐỐI', '', '<p>Combo dành cho 2 người hội tụ đầy ắp món ngon đỉnh kout nóng hổi vừa thổi vừa măm, nước ngọt refill thoải mái lại được tiết kiệm liền tay 6/4k<p>\r\n\r\n<p>Happy Combo 199k</p>\r\n\r\n<p>- 3 Miếng gà có xương (cay/ không cay)</p>\r\n\r\n<p>- 1 Burger tôm</p>\r\n\r\n<p>- 1 Món ăn kèm cỡ vừa tự chọn (khoai tây chiên cỡ vừa/ khoai tây nghiền cỡ vừa/ bắp cải trộn cỡ vừa)</p>\r\n\r\n<p>- 2 Bánh quy bơ mật ong</p>\r\n\r\n<p>- 2 Nước ngọt</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_11.jpg\">\r\n', 4, 1, 'c_11.jpg'),
(62, 'TEXAS CHICKEN PHẠM VĂN THUẬN - BIÊN HÒA', '', '<p>KHAI TRƯƠNG TEXAS CHICKEN PHẠM VĂN THUẬN - BIÊN HÒA</p>\r\n\r\n<p>10h00 sáng nay 26/08/2023, Texas Chicken Phạm Văn Thuận đã chính thức khai trương hoành tráng tại số 1136 – 1138 Phạm Văn Thuận, P. Tân Tiến, Tp. Biên Hòa</p>\r\n\r\n<p>Đừng quên còn vô vàn chiếc deals và phần quà hấp dẫn nói thay lời iu gửi đến TEXFANS dịp khai trương này gồm:</p>\r\n\r\n<p>Tặng 01 vé xem film CGV xịn xò khi mua 01 Mega Combo B</p>\r\n\r\n<p>Tặng 01 túi Tote độc đáo khi mua 01 Mega Combo A</p>\r\n\r\n<p>Tặng 01 móc khoá cực kool cho mọi đơn hàng</p>\r\n\r\n<p>Cùng vô vàn coupon ưu đãi cực hấp dẫn.</p>\r\n\r\n<p>Được chill tiệc gà ngon, tha hồ refill Coca và nhận quà xinh iu thì còn gì bằng.</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_12.jpg\">\r\n', 5, 1, 'c_12.jpg'),
(63, 'KHAI TRƯƠNG TEXAS CHICKEN BẠCH MAI', '', '<p>KHAI TRƯƠNG TEXAS CHICKEN BẠCH MAI</p>\r\n<p>10h00 sáng, thứ bảy ngày 07/05/2022 đã diễn ra sự kiện khai trương nhà hàng Texas Chicken Bạch Mai - Số 331 phố Bạch Mai, phường Bạch Mai, quận Hai Bà Trưng, TP. Hà Nội.<p>\r\n\r\n<p>Đông đảo khách hàng đã đến từ rất sớm, xếp hàng để nhận 100 miếng gà giòn tươi & 100 lon nước ngọt Coca Cola Zero Sugar tại nhà hàng Texas Chicken Bạch Mai. </p>\r\n\r\n<p>Không khí của nhà hàng mới khai trương rất sôi động với thật nhiều ưu đãi nhân đôi cực hấp dẫn dành cho TEXFAN:</p>\r\n\r\n<p>- Tặng 01 vé xem film CGV khi mua 01 Mega Combo B, giá bán chỉ 299k (giá gốc 385k)</p>\r\n\r\n<p>- Tặng 01 túi tote phiên bản giới hạn Texas Chicken Love Hanoi khi mua 01 Mega Combo A, giá chỉ 199k (giá gốc 264k)</p>\r\n\r\n<p>- Tặng 01 móc khoá cực yêu cho mọi đơn hàng.</p>\r\n\r\n<p>Nhập tiệc gà giòn ngập tràn món ngon, uống nước ngọt Coca-Cola thả ga lại còn được tặng thêm quà tặng cực kỳ hấp dẫn. Không chần chờ gì nữa, lên đồ đến ngay Texas Chicken Bạch Mai.</p>\r\n<p>-----------</p>\r\n<p>Texas Chicken Bạch Mai<p>\r\n<p>331 phố Bạch Mai, phường Bạch Mai, Quận Hai Bà Trưng, Tp. Hà Nội</p>\r\n<p>(024) 667 555 25</p>\r\n<img src=\"admincp\\modules\\quanlybaiviet\\uploads\\c_13.jpg\">', 5, 1, 'c_13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `thoigian` datetime NOT NULL,
  `cart_payment` varchar(50) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `thoigian`, `cart_payment`, `cart_shipping`) VALUES
(22, 7, '2750', 1, '2024-04-30 20:34:11', 'tienmat', 3),
(23, 7, '6911', 0, '2024-04-30 20:54:22', 'vnpay', 3),
(24, 7, '977', 0, '2024-05-01 21:56:48', 'vnpay', 5),
(25, 7, '3286', 1, '2024-05-02 23:43:42', 'vnpay', 5),
(26, 7, '6501', 1, '2024-05-03 08:48:18', 'vnpay', 5),
(27, 7, '6350', 1, '2024-05-03 09:07:04', 'tienmat', 5),
(28, 7, '860', 1, '2024-05-03 09:07:38', 'vnpay', 5),
(29, 7, '6791', 1, '2024-05-03 09:07:40', 'vnpay', 5),
(30, 7, '5767', 1, '2024-05-03 09:08:50', 'vnpay', 5),
(31, 7, '3036', 1, '2024-05-03 09:21:39', 'vnpay', 5),
(32, 7, '3745', 1, '2024-05-03 09:28:04', 'vnpay', 5),
(33, 7, '4682', 1, '2024-05-03 09:51:40', 'vnpay', 5),
(34, 7, '6462', 0, '2024-05-03 10:04:34', 'vnpay', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `thoigian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`, `thoigian`) VALUES
(23, '2750', 69, 1, '2024-04-30 20:34:11'),
(24, '6911', 72, 1, '2024-04-30 20:54:22'),
(25, '977', 78, 1, '2024-05-01 21:56:48'),
(26, '3286', 44, 1, '2024-05-02 23:43:42'),
(27, '6501', 37, 1, '2024-05-03 08:48:18'),
(28, '6350', 72, 1, '2024-05-03 09:07:04'),
(29, '860', 69, 1, '2024-05-03 09:07:38'),
(30, '5767', 50, 1, '2024-05-03 09:08:50'),
(31, '3036', 65, 1, '2024-05-03 09:21:39'),
(32, '3745', 71, 1, '2024-05-03 09:28:04'),
(33, '4682', 43, 1, '2024-05-03 09:51:40'),
(34, '6462', 68, 1, '2024-05-03 10:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `thoigian` datetime NOT NULL,
  `sosao` int(11) NOT NULL,
  `noidung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(3, 'Nguyễn Minh Hiếu', 'minhhieu21033@gmail.com', 'Hà Nội', '827ccb0eea8a706c4c34a16891f84e7b', '0362101546'),
(4, 'Phương anh', 'anh111@gmail.com', 'hà nội', '827ccb0eea8a706c4c34a16891f84e7b', '0978167272'),
(7, 'huyền', 'huyen123@gmail.com', 'hà nội', '827ccb0eea8a706c4c34a16891f84e7b', '0987654321'),
(8, 'lan', '123@gmail.com', 'vinh', '827ccb0eea8a706c4c34a16891f84e7b', '0987654321'),
(9, 'lan', 'huyenabc@gmail.com', 'hà nội', '827ccb0eea8a706c4c34a16891f84e7b', '0987654321');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(19, 'Các món ăn kèm', 1),
(20, 'Bánh cuộn', 2),
(21, 'Burger', 3),
(22, 'Set gà rán có xương', 4),
(23, 'Combo cơm', 5),
(24, 'Combo tiết kiệm', 6),
(25, 'Combo gà rán', 7),
(26, 'Gà sốt bơ tỏi & thảo mộc', 8),
(27, 'Mỳ ý 4Z', 9),
(28, 'Gà sốt 8 vị cay', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_danhmucbaiviet` int(11) NOT NULL,
  `tendanhmucbaiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_danhmucbaiviet`, `tendanhmucbaiviet`, `thutu`) VALUES
(4, 'ƯU ĐÃI', 2),
(5, 'TIN TỨC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lh`
--

CREATE TABLE `tbl_lh` (
  `id_lh` int(11) NOT NULL,
  `duong` varchar(100) NOT NULL,
  `sdt` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lh`
--

INSERT INTO `tbl_lh` (`id_lh`, `duong`, `sdt`, `mail`) VALUES
(1, ' 92 Quang Trung, P. Thạch Thang, Q. Hải Châu, TP. Đà Nẵng', '1213213123', 'contact@security.vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `tenlienhe` varchar(255) NOT NULL,
  `chuyennganh` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `tenlienhe`, `chuyennganh`, `facebook`, `youtube`, `instagram`, `github`, `hinhanh`) VALUES
(10, 'jhhj\r\n      ', 'njnjknjk', 'jnjk', 'kjn', 'jnk', 'jknkn', '1714701201_Screenshot 2024-04-28 235033.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) NOT NULL,
  `masp` varchar(200) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(29, 'Bắp cải trộn cỡ vừa  ', '01WA115', '29000', 92, 'k_5.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhập</p>', 1, 19),
(30, 'Bắp cải trộn cỡ lớn', '01WA114', '45000', 100, 'k_4.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhập</p>', 1, 19),
(31, 'Khoai tây chiên cỡ vừa ', '01WA113', '29000', 95, 'k_3.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 19),
(35, 'Khoai tây chiên cỡ lớn ', '01WA112', '45000', 100, 'k_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n', '\r\n<p>Đang cập nhật</p>\r\n', 1, 19),
(36, 'Khoai tây chiên phô mai\r\n      ', '01WA111', '49000', 50, 'k_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n', '\r\n<p>Đang cập nhật</p>\r\n', 1, 19),
(37, 'Bánh cuộn Tex      ', '11EK112', '59000', 64, 'cuon_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> Bánh cuộn Tex ( lựa chọn vị cay/ không cay)</p><p> 1 Tương ớt + 1 Tương cà</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 20),
(38, 'Bánh cuộn Mexicana ', '11EK111', '69000', 9, 'cuon_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> Bánh cuộn Mexicana ( lựa chọn vị cay/ không cay)</p><p>1 Tương ớt + 1 Tương cà</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 20),
(39, 'Burger Tôm\r\n      ', '21KS113', '69000', 44, 'b_3.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Burger Tôm</p><p> 1 Tương ớt + 1 Tương cà</p>\r\n\r\n', '\r\n<p>Đang cập nhật</p>\r\n', 1, 21),
(40, 'Burger Tex Supreme\r\n      ', '21KS112', '69000', 26, 'b_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Burger Tex Supreme ( lựa chọn vị cay/ không cay)</p><p> 1 Tương ớt + 1 Tương cà</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 21),
(41, 'Burger Mexicana', '21KS111', '69000', 23, 'b_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Burger Mexicana ( lựa chọn vị cay/ không cay)</p><p>1 Tương ớt + 1 Tương cà</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 21),
(42, 'Chicken box - 12 Miếng gà rán', '31PO113', '419000', 10, 'sga_3.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>12 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>10 Tương ớt + 5 Tương cà</p>\r\n\r\n\r\n', '\r\n<p>Đang cập nhật</p>\r\n', 1, 22),
(43, 'Chicken box - 9 Miếng gà rán', '31PO112', '329000', 9, 'sga_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 9 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p> 9 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n', 1, 22),
(44, 'Chicken box - 5 Miếng gà rán', '31PO111', '189000', 14, 'sga_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>5 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p> 4 Tương ớt + 2 Tương cà</p>\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n\r\n', 1, 22),
(45, 'Combo cơm khuỷu cánh gà & gà giòn không xương', '41QL113', '59000', 20, 'com_3.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 1 Miếng gà giòn không xương</p><p>1 Khuỷu cánh gà sốt chua ngọt</p><p>1 Cơm trắng+ salad</p><p>1 Nước ngọt</p><p> 1 Tương ớt</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 23),
(46, 'Combo cơm gà giòn không xương', '41QL112', '59000', 14, 'com_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>2 Miếng gà giòn không xương sốt chua ngọt</p><p>1 Cơm trắng+ salad</p><p>1 Nước ngọt</p><p>1 Tương ớt</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n', 1, 23),
(47, 'Combo Cơm khuỷu cánh gà', '41QL111', '59000', 20, 'com_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>2 Khuỷu cánh gà sốt chua ngọt</p><p> 1 Cơm trắng+ bắp cải trộn</p><p> 1 Nước ngọt</p><p> 1 Tương ớt</p>\r\n', '\r\n<p>Đang cập nhật</p>', 1, 23),
(48, 'Combo Tiết kiệm D', '51TL114', '65000', 17, 'tk_4.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>2 Miếng gà giòn không xương ( lựa chọn vị cay/ không cay)</p><p>1 Khoai tây nghiền tiêu chuẩn</p><p>1 Nước ngọt</p><p>1 Tương ớt + 1 Tương cà</p>\r\n', '<p>Đang cập nhật</p>\r\n\r\n', 1, 24),
(49, 'Combo Tiết kiệm C', '51TL113', '65000', 16, 'tk_3.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>1 Burger gà cổ điển</p><p>1 Khoai tây nghiền tiêu chuẩn</p><p>1 Nước ngọt</p><p>1 Tương ớt + 1 Tương cà</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 24),
(50, 'Combo Tiết kiệm B', '51TL112', '65000', 14, 'tk_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 1 Bánh cuộn gà giòn không xương ( lựa chọn vị cay/ không cay)</p><p> 1 Khoai tây nghiền tiêu chuẩn</p><p>1 Nước ngọt</p><p>1 Tương ớt + 1 Tương cà</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 24),
(51, 'Combo Tiết kiệm A', '51TL111', '65000', 15, 'tk_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 1 Miếng gà rán có xương ( lựa chọn vị cay/ không cay)</p><p>1 Khoai tây nghiền tiêu chuẩn</p><p> 1 Nước ngọt</p><p>1 Tương ớt + 1 Tương cà</p>', '<p>Đang cập nhật</p>', 1, 24),
(52, 'Combo nhóm C', '61CH119', '499000', 10, 'ga_9.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>9 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>1 Burger tôm (lựa chọn vị cay/ không cay)</p><p>1 Bánh cuộn Zesty Crunch (lựa chọn vị cay/ không cay)</p><p>1 Bắp cải trộn vừa</p><p>5 Nước ngọt</p><p> 8 Tương ớt + 4 Tương cà</p>\r\n', '<p>Đang cập nhật</p>', 1, 25),
(53, 'Combo nhóm B', '61CH118', '389000', 10, 'ga_8.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>7 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>1 Burger gà cổ điển</p><p>1 Bánh cuộn gà giòn không xương (lựa chọn vị cay/ không cay)</p><p>1 Bắp cải trộn vừa</p><p>4 Nước ngọt</p><p>6 Tương ớt + 3 Tương cà</p>\r\n\r\n', '<p>Đang cập nhật</p>', 1, 25),
(54, 'Combo nhóm A', '61CH117', '279000', 10, 'ga_7.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>5 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>1 Bánh cuộn Zesty Crunch (lựa chọn vị cay/ không cay)</p><p>1 Bắp cải trộn vừa</p><p>3 Nước ngọt</p><p>4 Tương ớt + 2 Tương cà</p>', '<p>Đang cập nhật</p>', 1, 25),
(55, 'Combo vui vẻ D', '61CH116', '199000', 16, 'ga_6.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>3 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>1 Burger gà cổ điển</p><p>1 Khoai tây chiên vừa</p><p>2 Nước ngọt</p><p>3 Tương ớt + 2 Tương cà</p>\r\n\r\n', '<p>Đang cập nhật</p>', 1, 25),
(56, 'Combo vui vẻ C', '61CH115', '189000', 18, 'ga_5.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 3 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p> 1 Khoai tây chiên phô mai</p><p>2 Nước ngọt</p><p>3 Tương ớt + 2 Tương cà</p>', '<p>Đang cập nhật</p>', 1, 25),
(57, 'Combo vui vẻ B', '61CH114', '159000', 21, 'ga_4.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 2 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>2 Miếng gà giòn không xương (lựa chọn vị cay/ không cay)</p><p> 2 Bánh quy bơ mật ong</p><p>2 Nước ngọt</p><p>2 Tương ớt + 2 Tương cà</p>\r\n', '<p>Đang cập nhật</p>', 1, 25),
(58, 'Combo vui vẻ A', '61CH113', '159000', 18, 'ga_3.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>2 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>1 Burger tôm (lựa chọn vị cay/ không cay)</p><p>2 Nước ngọt</p><p>2 Tương ớt + 2 Tương cà</p>', '<p>Đang cập nhật</p>', 1, 25),
(59, 'Combo giòn tan B', '61CH112', '95000', 22, 'ga_2.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>1 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>2 Miếng gà giòn không xương (lựa chọn vị cay/ không cay)</p><p>1 Nước ngọt</p><p>2 Tương ớt + 1 Tương cà</p>\r\n', '<p>Đang cập nhật</p>', 1, 25),
(60, 'Combo giòn tan A', '61CH111', '95000', 20, 'ga_1.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p> 2 Miếng gà rán có xương (lựa chọn vị cay/ không cay)</p><p>1 Nước ngọt</p><p>2 Tương ớt + 1 Tương cà</p>\r\n', '<p>Đang cập nhật</p>', 1, 25),
(61, 'Combo B - Gà sốt bơ tỏi & thảo mộc', '71TB115', '199000', 15, 'botoi_5.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>2 Miếng gà sốt bơ tỏi và thảo mộc</p><p>2 Miếng gà có xương (lựa chọn vị cay/ không cay)</p><p> 1 Món ăn kèm cỡ vừa tùy chọn (Bắp cải trộn/ Khoai tây nghiền/ Khoai tây chiên)</p><p>2 Nước ngọt</p><p>3 Tương ớt + 1 tương cà3 Tương ớt + 1 tương cà</p>', '<p>Đang cập nhật</p>', 1, 26),
(62, 'Combo A - Gà sốt bơ tỏi & thảo mộc', '71TB114', '119000', 15, 'botoi_4.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>2 Miếng gà sốt bơ tỏi và thảo mộc</p><p>1 Bánh quy bơ mật ong</p><p> 1 Món ăn kèm tiêu chuẩn tùy chọn (Bắp cải trộn/ Khoai tây nghiền/ Khoai tây chiên)</p><p>1 Nước ngọt</p><p> 2 Tương ớt + 1 tương cà</p>', '<p>Đang cập nhật</p>', 1, 26),
(63, '07 Miếng gà sốt bơ tỏi & thảo mộc', '71TB113', '299000', 14, 'botoi_3.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>7 Miếng gà sốt bơ tỏi và thảo mộc</p><p>5 Tương ớt + 2 tương cà</p>', '<p>Đang cập nhật</p>', 1, 26),
(64, '04 Miếng gà sốt bơ tỏi & thảo mộc', '71TB112', '179000', 15, 'botoi_2.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>4 Miếng gà sốt bơ tỏi và thảo mộc</p><p>3 Tương ớt + 1 tương cà</p>', '<p>Đang cập nhật</p>', 1, 26),
(65, '01 Miếng gà sốt bơ tỏi & thảo mộc', '71TB111', '49000', 14, 'botoi_1.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>1 Miếng gà sốt bơ tỏi & thảo mộc</p>', '<p>Đang cập nhật</p>', 1, 26),
(66, 'Mỳ ý 4Z - Mix & Match Combo', '81AB114', '179000', 10, 'my_4.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Với sự hòa trộn tuyệt vời giữa sợi mì Ý mềm dai cùng nước sốt cà chua truyền thống đậm đà và trên cùng là các miếng gà rán giòn rụm trứ danh, tổng thể tạo nên hương vị Mỳ Ý 4Z ngon khó cưỡng. Đến Texas Chicken thưởng thức Mỳ Ý 4Z mấy ní ơi!!!</p>', '<p>Đang cập nhật</p>', 1, 27),
(67, 'Mỳ ý 4Z - Combo B', '81AB113', '159000', 10, 'my_3.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Với sự hòa trộn tuyệt vời giữa sợi mì Ý mềm dai cùng nước sốt cà chua truyền thống đậm đà và trên cùng là các miếng gà rán giòn rụm trứ danh, tổng thể tạo nên hương vị Mỳ Ý 4Z ngon khó cưỡng. Đến Texas Chicken thưởng thức Mỳ Ý 4Z mấy ní ơi!!!</p>', '<p>Đang cập nhật</p>', 1, 27),
(68, 'Mỳ ý 4Z -Combo A', '81AB112', '79000', 9, 'my_2.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Với sự hòa trộn tuyệt vời giữa sợi mì Ý mềm dai cùng nước sốt cà chua truyền thống đậm đà và trên cùng là các miếng gà rán giòn rụm trứ danh, tổng thể tạo nên hương vị Mỳ Ý 4Z ngon khó cưỡng. Đến Texas Chicken thưởng thức Mỳ Ý 4Z mấy ní ơi!!!</p>', '<p>Đang cập nhật</p>', 1, 27),
(69, 'Mỳ ý 4Z -Bán lẻ', '81AB111', '59000', 8, 'my_1.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Với sự hòa trộn tuyệt vời giữa sợi mì Ý mềm dai cùng nước sốt cà chua truyền thống đậm đà và trên cùng là các miếng gà rán giòn rụm trứ danh, tổng thể tạo nên hương vị Mỳ Ý 4Z ngon khó cưỡng. Đến Texas Chicken thưởng thức Mỳ Ý 4Z ngay mấy ní ơi!!!</p>', '<p>Đang cập nhật</p>', 1, 27),
(70, 'Combo B - Gà sốt 8 vị cay ', '91HK113', '199000', 12, 'cay_3.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Gà sốt 8 vị cay “đốn tym” bạn bởi hương vị cay có 1-0-2, đó chính là nước sốt đặc biệt với sự hoà quyện của 8 loại ớt, tiêu lừng danh trên thế giới sánh quyện trên từng miếng gà giòn tươi.</p><p>Bạn sẽ cảm nhận sự cay nồng trọn vẹn nơi đầu lưỡi khi thưởng thức miếng gà đầu tiên. Chưa hết, lớp da giòn bên ngoài còn được phủ thêm mè và hành lá làm tăng hương thơm hấp dẫn, vị ngon khó cưỡng đúng điệu vị cay chuẩn chỉnh.</p><p>Combo B Gà sốt 8 vị cay - 199K (dành cho 2 người)</p><p>2 miếng gà sốt 8 vị cay</p><p>2 miếng gà không xương (lựa chọn vị cay/không cay)</p><p>1 bánh cuộn Zesty Crunch</p><p>1 bắp cải trộn cỡ vừa hoặc 1 khoai tây nghiền cỡ vừa</p><p>2 nước ngọt uống thoải mái không giới hạn</p>', '<p>Đang cập nhật</p>', 1, 28),
(71, 'Combo A - Gà sốt 8 vị cay', '91HK112', '119000', 11, 'cay_2.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Gà sốt 8 vị cay “đốn tym” bạn bởi hương vị cay có 1-0-2, đó chính là nước sốt đặc biệt với sự hoà quyện của 8 loại ớt, tiêu lừng danh trên thế giới sánh quyện trên từng miếng gà giòn tươi.</p><p>Bạn sẽ cảm nhận sự cay nồng trọn vẹn nơi đầu lưỡi khi thưởng thức miếng gà đầu tiên. Chưa hết, lớp da giòn bên ngoài còn được phủ thêm mè và hành lá làm tăng hương thơm hấp dẫn, vị ngon khó cưỡng đúng điệu vị cay chuẩn chỉnh.</p><p>Combo A Gà sốt 8 vị cay - 119K (dành cho 1 người)</p><p>2 miếng gà sốt 8 vị cay</p><p>1 bắp cải trộn cỡ tiêu chuẩn hoặc khoai tây nghiền cỡ tiêu chuẩn</p><p>1 Nước ngọt</p>\r\n', '<p>Đang cập nhật</p>', 1, 28),
(72, 'Gà sốt 8 vị cay', '91HK111', '49000', 10, 'cay_1.jpg', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p>Gà sốt 8 vị cay “đốn tym” bạn bởi hương vị cay có 1-0-2, đó chính là nước sốt đặc biệt với sự hoà quyện của 8 loại ớt, tiêu lừng danh trên thế giới sánh quyện trên từng miếng gà giòn tươi. </p><p>Bạn sẽ cảm nhận sự cay nồng trọn vẹn nơi đầu lưỡi khi thưởng thức miếng gà đầu tiên. Chưa hết, lớp da giòn bên ngoài còn được phủ thêm mè và hành lá làm tăng hương thơm hấp dẫn, vị ngon khó cưỡng đúng điệu vị cay chuẩn chỉnh.</p>\r\n', '<p>Đang cập nhật</p>', 1, 28),
(73, 'Khoai tây nghiền cỡ lớn', '01WA116', '45000', 66, 'k_6.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n', '\r\n<p>Đang cập nhật</p>\r\n', 1, 19),
(74, 'Khoai tây nghiền cỡ vừa ', '01WA117', '29000', 88, 'k_7.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>', 1, 19),
(75, '01 Bánh quy bơ mật ong ', '01WA118', '12000', 90, 'k_8.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n', 1, 19),
(76, '03 Bánh quy bơ mật ong', '01WA119', '29000', 78, 'k_9.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p><p></p><p></p><p></p><p></p><p></p><p></p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n', 1, 19),
(77, '05 Bánh quy bơ mật ong', '01WA1110', '49000', 70, 'k_10.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n', 1, 19),
(78, 'Cơm trắng ', '01WA1111', '10000', 19, 'k_11.png', '<p>Miễn phí vận chuyển toàn quốc cho đơn hàng từ 300.000đ (Duy nhất ngày 30.04.2024)</p>\r\n\r\n\r\n', '<p>Đang cập nhật</p>\r\n', 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(2, 'Hiếu', '12345678', 'Hà Nội', '', 1),
(5, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(6, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(7, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(8, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(9, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(10, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(11, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(12, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7),
(13, 'Huyền', '0987654321', 'Định Công, Hoàng Mai, Hà Nội', 'Để trước cửa', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(50) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(150) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(3, '2023-11-29', 2, '301200', 2),
(4, '2024-05-02', 2, '59000', 2),
(5, '2024-05-03', 1, '79000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trangchu`
--

CREATE TABLE `tbl_trangchu` (
  `id` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `thoigian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_trangchu`
--

INSERT INTO `tbl_trangchu` (`id`, `hinhanh`, `link`, `thoigian`) VALUES
(13, '1714367153_intro1.jpg', 'http://localhost:8888/WEBBH1/index.php', '2024-04-29 12:05:53'),
(14, '1714367161_intro2.jpg', 'http://localhost:8888/WEBBH1/index.php', '2024-04-29 12:06:01'),
(15, '1714367169_intro3.jpg', 'http://localhost:8888/WEBBH1/index.php', '2024-04-29 12:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankcode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankcode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(3, '15060000', 'NCB', 'VNP14209347', 'ATM', 'Thanh toán đã đặt hàng tại web', '20231129182027', '4GH5S0RS', '14209347', '8090');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_danhmucbaiviet`);

--
-- Indexes for table `tbl_lh`
--
ALTER TABLE `tbl_lh`
  ADD PRIMARY KEY (`id_lh`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trangchu`
--
ALTER TABLE `tbl_trangchu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_danhmucbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_lh`
--
ALTER TABLE `tbl_lh`
  MODIFY `id_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_trangchu`
--
ALTER TABLE `tbl_trangchu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
