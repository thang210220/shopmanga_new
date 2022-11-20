-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 02, 2022 lúc 09:34 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Truyện Hot'),
(2, 'Truyện Full'),
(13, 'Truyện Mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `subject_name`, `note`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Kazuto', 'Akatsuki', 'bougyakumaou@gmail.com', '0265268495', 'Lỗi', 'Lỗi không mua được hàng', '2022-03-02 09:30:31', '2022-03-02 09:30:31', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'Shingeki No Kyojin', 650000, 600000, 'assets/photos/cp1.jpg', '<p><span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Hơn 100 năm trước, giống người khổng lồ Titan đã tấn công và đẩy loài người tới bờ vực tuyệt chủng. Những con người sống sót tụ tập lại, xây bao quanh mình 1 tòa thành 3 lớp kiên cố và tự nhốt mình bên trong để trốn tránh những cuộc tấn công của người khổng lồ. Họ tìm mọi cách để tiêu diệt người khổng lồ nhưng không thành công. Và sau 1 thế kỉ hòa bình, giống khổng lồ đã xuất hiện trở lại, một lần nữa đe dọa sự tồn vong của con người.... Elen và Mikasa phải chứng kiến một cảnh tượng cực kinh khủng - mẹ của mình bị ăn thịt ngay trước mắt. Elen thề rằng cậu sẽ giết tất cả những tên khổng lồ mà cậu gặp.....</span><br></p><p> </p>', '2021-10-22 14:03:21', '2022-03-02 09:20:13', 0),
(2, 1, 'yeah', 650000, 550000, 'assets/photos/cp1.jpg', 'dấdasdsadsad', '2021-10-22 09:53:21', '2021-11-24 14:17:43', 1),
(3, 1, 'Boku no Hero Academia', 55000, 50000, 'assets/photos/cp2.jpg', '<p style=\"text-align: justify; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; font-size: 1.08rem; margin: auto; outline: 0px; padding: 5px 0px; vertical-align: baseline; line-height: 1.9rem; text-rendering: geometricprecision; color: rgb(32, 32, 32); max-width: 760px; font-family: sans-serif, Arial;\"><span style=\"color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; text-align: start;\">Vào tương lai, lúc mà con người với những sức mạnh siêu nhiên là điều thường thấy quanh thế giới. Đây là câu chuyện về Izuku Midoriya, từ một kẻ bất tài trở thành một siêu anh hùng. Tất cả ta cần là mơ ước.</span><br></p>', '2021-10-22 09:14:29', '2022-03-02 09:16:14', 0),
(4, 1, 'One Punch Man', 250000, 200000, 'assets/photos/cp3.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Onepunch-Man là một Manga thể loại siêu anh hùng với đặc trưng phồng tôm đấm phát chết luôn… Lol!!! Nhân vật chính trong Onepunch-man là Saitama, một con người mà nhìn đâu cũng thấy “tầm thường”, từ khuôn mặt vô hồn, cái đầu trọc lóc, cho tới thể hình long tong. Tuy nhiên, con người nhìn thì tầm thường này lại chuyên giải quyết những vấn đề hết sức bất thường. Anh thực chất chính là một siêu anh hùng luôn tìm kiếm cho mình một đối thủ mạnh. Vấn đề là, cứ mỗi lần bắt gặp một đối thủ tiềm năng, thì đối thủ nào cũng như đối thủ nào, chỉ ăn một đấm của anh là… chết luôn. Liệu rằng Onepunch-Man Saitaman có thể tìm được cho mình một kẻ ác dữ dằn đủ sức đấu với anh? Hãy theo bước Saitama trên con đường một đấm tìm đối cực kỳ hài hước của anh!!</span>', '2021-10-22 09:19:49', '2022-03-02 09:42:14', 0),
(5, 2, 'Shuumatsu No Valkyrie', 650000, 600000, 'assets/photos/img2843.img28.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Các vị thần mở hội nghị để bàn về sự sống còn của nhân loại. Tất cả đều quyết định \"kết liễu\" con người, chỉ duy một valkyrie đứng lên phản đối bằng cách đề nghị 1 cuộc chiến giữa thần và người. Cuộc chiến quyết định số phận của nhân loại này sẽ ra sao? Xin mời đón đọc.</span>', '2021-10-22 14:03:21', '2022-03-02 09:42:16', 0),
(6, 1, 'Fairy Tail 100 Year Quest', 650000, 550000, 'assets/photos/img10.img1.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Truyện tiếp nối chap 545 của Fairy Tail, khi nhóm Natsu đi làm nhiệm vụ trăm năm.</span>', '2021-10-22 09:53:21', '2022-03-02 09:43:17', 0),
(7, 1, 'Deatte 5 Byou De Battle', 55000, 50000, 'assets/photos/img1847.img18.jpg', '<p style=\"text-align: justify; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; font-size: 1.08rem; margin: auto; outline: 0px; padding: 5px 0px; vertical-align: baseline; line-height: 1.9rem; text-rendering: geometricprecision; color: rgb(32, 32, 32); max-width: 760px; font-family: sans-serif, Arial;\"><span style=\"color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; text-align: start;\">Một ngày nọ, cậu học sinh cao trung mê game, cuồng kẹo Shiroyanagi Akira bị kéo vào một trận chiến bởi một cô gái bí ẩn tự xưng là Mion. Những người tham gia được thông báo rằng họ đã \"bị xóa tên khỏi hộ khẩu gia đình, tham gia vào một thí nghiệm và được ban sức mạnh đặc biệt.\"Akira quyết tâm chiến thắng trò chơi bằng sức mạnh mới và trí tuệ của mình để hủy diệt tổ chức đứng đằng sau nó.</span><br></p>', '2021-10-22 09:14:29', '2022-03-02 09:11:18', 0),
(8, 1, 'Thám tử lừng danh Conan', 250000, 200000, 'assets/photos/img45.img4.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Mở đầu câu truyện, cậu học sinh trung học 16 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa. Shinichi trong phần đầu của Thám tử lừng danh Conan được miêu tả là một thám tử học đường. Trong một lần đi chơi công viên \"Miền Nhiệt đới\" với cô bạn từ thuở nhỏ (cũng là bạn gái) Ran Mori , cậu bị dính vào vụ án một hành khách trên Chuyến tàu tốc hành trong công viên, Kishida , bị giết trong một vụ án cắt đầu rùng rợn. Cậu đã làm sáng tỏ vụ án và trên đường về nhà, chứng kiến một vụ làm ăn mờ ám của những người đàn ông mặc toàn đồ đen. Kudo bị phát hiện, bị đánh ngất sau đó những người đàn ông áo đen đã cho cậu uống một thứ thuốc độc chưa qua thử nghiệm là Apotoxin-4869 (APTX4869) với mục đích thủ tiêu cậu. Tuy nhiên chất độc đã không giết chết Kudo. Khi tỉnh lại, cậu bàng hoàng nhận thấy thân thể mình đã bị teo nhỏ trong hình dạng của một cậu học sinh tiểu học....</span>', '2021-10-22 09:19:49', '2022-03-02 09:39:18', 0),
(9, 2, 'Kumo desu ga nanika', 650000, 600000, 'assets/photos/img3049.img30.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Một thế giới mà anh hùng và ma vương liên tục đối đầu nhau, sức mạnh ma thuật của họ sinh ra trong trận chiến đã xuyên qua một thế giới khác và làm nổ chết một lớp học sinh trung học, những học sinh đó được hồi sinh lại ở thế giới khác. Nhân vật chính của chúng ta là một nữ sinh tự kỉ trong lớp học, đã tái sinh thành nhện, cô nhanh chóng thích ứng với hoàn cảnh bằng một ý chí mạnh mẽ để có thể sống sót được ở thế giới khác.</span>', '2021-10-22 14:03:21', '2022-03-02 09:06:19', 0),
(10, 1, 'Sword Art Online: Progressive', 650000, 550000, 'assets/photos/img269.img2.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Không thể thoát khỏi nơi này cho tới khi phá đảo game; game over đồng nghĩa với \"cái chết\" theo đúng nghĩa của nó. Không hề biết đến điều này, 10000 người đăng nhập vào \"Sword Art Online\", game thế hệ mới của loại game MMO, vén tấm màn của cuộc tử chiến. Đây là bản Reboot của arc SAO, bắt đầu từ 1, 2 ngày trước khi hạ được Boss tầng 1</span>', '2021-10-22 09:53:21', '2022-03-02 09:31:19', 0),
(11, 1, 'Dr.Stone', 55000, 50000, 'assets/photos/img595.img5.jpg', '<p style=\"text-align: justify; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; font-size: 1.08rem; margin: auto; outline: 0px; padding: 5px 0px; vertical-align: baseline; line-height: 1.9rem; text-rendering: geometricprecision; color: rgb(32, 32, 32); max-width: 760px; font-family: sans-serif, Arial;\"><span style=\"color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; text-align: start;\">Sau 1 trận đại dịch không rõ nguồn gốc khiến loài người trên toàn thể địa cầu biến thành đá trải qua mấy ngàn năm sau 2 thanh niên chính của chúng ta là Senkuu và Taiju phá đá thoát ra và bắt đầu lập kế hoạch để cùng nhau tái thiết lập lại thế giới theo cách của họ</span><br></p>', '2021-10-22 09:14:29', '2022-03-02 09:02:20', 0),
(12, 1, 'Kanojo Okarishimasu', 250000, 200000, 'assets/photos/img1423.img14.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Quéo quèo, biết mô tả thế nào đây? Một thằng Zin tên là Kazuya 19 năm mới có bồ không bao lâu thì bị đá, thế là cậu ta phải sử dụng dịch vụ Hẹn hò Thuê, cứ trả xiền là ngày đó bạn sẽ có bạn gái ngay! Cậu ta đã thuê Mizuhara làm bạn gái mình, cô nàng thì cứ công việc (méo có yêu thương gì đâu) mà thả thính, còn chàng ta thì đớp thính vô tội vạ, cho đến khi… Đến khi Kazuya bớt sống ảo, cậu ta ngưng đớp thính và tự sẽ kiếm bạn gái thật cho mình thì mới hớ ra Mizuhara học cùng trường với mình, câu chuyện tình dở khóc dở cười này sẽ ra sao đây? Các bạn đón xem nhé!</span>', '2021-10-22 09:19:49', '2022-03-02 09:32:20', 0),
(13, 2, 'Enen No Shouboutai', 650000, 600000, 'assets/photos/img2949.img29.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Năm 198 của kỷ nguyên Thái Dương ở Tokyo, các đội cứu hỏa đặc thù chiến đấu chống lại “Hiện tượng nhân thể bộc hỏa”, khi cơ thể con người đột nhiên biến thành quái vật lửa được gọi “Viêm Nhân”. Shinra Kusakabe là một chàng trai trẻ bị gắn biệt danh là “Dấu chân ác quỷ”, vì chân của cậu ấy có thể bốc cháy theo ý muốn. Sau khi cậu gia nhập Đội lính cứu hỏa đặc thù số 8, cậu đã cùng những đồng đội trong đội ngũ chiến đấu chống lại các “Viêm Nhân” với sức mạnh lính cứu hỏa thế hệ thứ 3 của mình. Khi tiếp xúc với kẻ tạo ra “Viêm Nhân”, Shinra bắt đầu biết được bí mật của cuộc hỏa hoạn đã gây ra cái chết thương vong cho cả gia đình cậu 12 năm trước…</span>', '2021-10-22 14:03:21', '2022-03-02 09:56:20', 0),
(14, 1, 'Tensei Shitara Slime Datta Ken', 650000, 550000, 'assets/photos/img4034.img40.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Một manga khác chuyển thể từ light novel đang hot ở nhật. Một anh chàng bị tên cướp đâm chết khi đang gặp vợ chưa cưới của đồng nghiệp. Khi đang thoi thóp trước khi chết, người đầy máu, anh ta nghe được một tiếng nói kỳ lạ. Giọng nói ấy chuyển thể sự tiếc nuối của anh chàng vì vẫn còn tân trước khi đi và ban cho anh ta chiêu thức đặc biệt [tiên nhân vĩ đại]. Liệu đây có phải là trò đùa?</span>', '2021-10-22 09:53:21', '2022-03-02 09:24:21', 0),
(15, 1, 'Domestic na Kanojo', 55000, 50000, 'assets/photos/img2376.img23.jpg', '<p style=\"text-align: justify; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; font-size: 1.08rem; margin: auto; outline: 0px; padding: 5px 0px; vertical-align: baseline; line-height: 1.9rem; text-rendering: geometricprecision; color: rgb(32, 32, 32); max-width: 760px; font-family: sans-serif, Arial;\"><span style=\"color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; text-align: start;\">Fujji Natsuo là một cậu học sinh cấp 3 có tình yêu đơn phương với chính cô giáo của mình Hina. Tưởng chừng tới lúc cậu ấy muốn bỏ cuộc thì một cô gái lạ hoắc khác lại yêu cầu cậu ấy \"ấy ấy\" với mình với lí do rất củ chuối \"tớ muốn làm người lớn\". Tưởng chừng mọi chuyện chỉ có vậy, nhưng về tới nhà cậu ấy lại biết được tin Hina và cô gái ấy là chị kế và em kế của mình !? Mọi chuyện sẽ tiếp diễn ra sao mời các bạn vào xem tiếp :D. Một bộ truyện gây cực nhiều ức chế cho đọc giả đến từ Sasuga Kei - Tác giả của GE - \"Good Ending\".</span><br></p>', '2021-10-22 09:14:29', '2022-03-02 09:47:21', 0),
(16, 1, 'Grand Blue', 250000, 200000, 'assets/photos/img1380.img13.jpg', '<span style=\"font-family: Nunito, sans-serif; font-size: 14.4px;\">Câu chuyện kể về những con người trẻ tuổi có niềm đam mê khám phá lòng đại dương xanh thẳm. Câu chuyện xoay quanh Kitahara Iori – một người không thích nước và không thể bơi được nhưng với sự hướng dẫn của người bạn – một người giàu kinh nghiệm trong lĩnh vực bơi lặn, cậu đã có thể tiếp cận với những vẻ đẹp tiềm ẩn sâu trong lòng đại dương mênh mông.</span>', '2021-10-22 09:19:49', '2022-03-02 09:10:22', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '7b887b1e751b6839105033c9f7bdf48c', '2021-10-19 17:03:55'),
(5, '0b1cdd8a83f32e44ba829e997f42d725', '2022-03-02 09:05:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Anos Voldigoad', 'bougyakumaou@gmail.com', '999999999', 'Makai', '57f91cd37f8ab81283e89b30c4bc5177', 1, '2021-10-19 10:39:39', '2022-03-02 09:10:06', 0),
(2, 'Diep Tran Van', 'ziczacgroup@gmail.com', '+84943552213', 'YEN TRI, Nam Định', '2343b6a811d442d9b97f6fcd6bcbcc15', 2, '2021-10-19 10:42:39', '2022-03-02 09:09:35', 1),
(3, 'ABC', 'gokisoft.com@gmail.com', '8153565814', '810 University Drive', 'b4cbd48886a5331c5eb2fedadabe311c', 2, '2021-10-20 17:16:11', '2021-10-20 17:53:15', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
