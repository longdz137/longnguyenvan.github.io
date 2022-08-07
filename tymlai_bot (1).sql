-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2018 at 04:29 AM
-- Server version: 5.5.31
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tymlai_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `autorep`
--

CREATE TABLE `autorep` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `han` int(2) NOT NULL,
  `limit_cmt` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci NOT NULL,
  `id_ctv` int(11) NOT NULL,
  `access_token` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `commentc` text COLLATE utf8_unicode_ci NOT NULL,
  `commentt` text COLLATE utf8_unicode_ci NOT NULL,
  `cmtngay` int(2) NOT NULL,
  `tag` int(2) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `giochay` text COLLATE utf8_unicode_ci NOT NULL,
  `giodung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buzz_cmt`
--

CREATE TABLE `buzz_cmt` (
  `id` int(11) NOT NULL,
  `id_post` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `max_cmt` int(5) NOT NULL,
  `cmtd` int(5) NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `id_ctv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buzz_like`
--

CREATE TABLE `buzz_like` (
  `id` int(11) NOT NULL,
  `post_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `max_like` int(5) NOT NULL,
  `liked` int(5) NOT NULL,
  `likehoanthanh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_ctv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buzz_share`
--

CREATE TABLE `buzz_share` (
  `id` int(11) NOT NULL,
  `id_post` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `max_share` int(5) NOT NULL,
  `shared` int(5) NOT NULL,
  `id_ctv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buzz_sub`
--

CREATE TABLE `buzz_sub` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `max_sub` int(5) NOT NULL,
  `subd` int(5) NOT NULL,
  `id_ctv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(255) NOT NULL,
  `mathe` varchar(255) NOT NULL,
  `maseri` varchar(255) NOT NULL,
  `gia` varchar(7) NOT NULL,
  `type` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `time` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `loaithe`, `mathe`, `maseri`, `gia`, `type`, `user_id`, `name`, `time`) VALUES
(22, 'Viettel', '123123123123121', '12312321321231', '20000', 0, '17', '', '1545177804');

-- --------------------------------------------------------

--
-- Table structure for table `giftcode`
--

CREATE TABLE `giftcode` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `monney` varchar(255) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sodu` text COLLATE utf8_unicode_ci,
  `tien_truoc` text COLLATE utf8_unicode_ci,
  `tien_sau` text COLLATE utf8_unicode_ci,
  `id_ctv` int(11) NOT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `vip` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `content`, `sodu`, `tien_truoc`, `tien_sau`, `id_ctv`, `user`, `time`, `vip`) VALUES
(84, 'Mua Vip Bot', '60000', '500000', '440000', 2, 'admin2', '1544586545', '2'),
(88, 'Mua Vip Like', '30000', '4204949', '4174949', 1, 'admin', '1544705236', '2'),
(89, 'Mua Vip Like', '90000', '4174949', '4084949', 1, 'admin', '1544786079', '2'),
(90, 'Mua Vip Like', '30000', '4084949', '4054949', 1, 'admin', '1544840200', '2'),
(91, 'Mua Vip Like', '20000', '4054949', '4034949', 1, 'admin', '1544841755', '2'),
(92, 'Mua Vip Like', '30000', '4034949', '4004949', 1, 'admin', '1544852465', '2'),
(93, 'Mua Vip Like', '180000', '4004949', '3824949', 1, 'admin', '1544856516', '2'),
(94, 'Mua Vip Like', '30000', '3824949', '3794949', 1, 'admin', '1544858689', '2'),
(95, 'Mua Vip Like', '30000', '3794949', '3764949', 1, 'admin', '1544858881', '2'),
(96, 'Mua Vip Like', '60000', '3764949', '3704949', 1, 'admin', '1544862679', '2');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuxoavip`
--

CREATE TABLE `lichsuxoavip` (
  `id` int(11) NOT NULL,
  `user_id` text COLLATE utf8_unicode_ci NOT NULL,
  `id_ctv` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `vip` text COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuxoavip`
--

INSERT INTO `lichsuxoavip` (`id`, `user_id`, `id_ctv`, `name`, `vip`, `time`) VALUES
(303, '100018185739184', 1, 'Ngọc Lý', 'Vip Like', '1544858893'),
(304, '100006255330844', 1, 'Quang Ý', 'Vip Like', '1544858898');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_ctv` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(3) NOT NULL,
  `bill` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idfb` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `time` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `macode` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'COLLATE',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `num_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_ctv`, `username`, `password`, `level`, `bill`, `email`, `sdt`, `idfb`, `time`, `ip`, `diachi`, `macode`, `status`, `num_id`) VALUES
(1, 'admin', 'admin112', 3, '4204949', 'hainam10416@gmail.com', '0982890369', '100003018696352', '1544173626', '115.73.134.18', 'VietNam', '57933835349894425333', 1, 80),
(2, 'admin2', '222222', 3, '500000', 'luongvi@gmail.com', '0919540437', '100009674144919', '1544173626', '115.73.134.18', 'VietNam', '43637646233577734233', 1, 4),
(12, 'test123', 'test123', 0, '0', 'test123@gmail.com', '123123', '123123', '', '27.64.21.210', 'VietNam', '23335433495545334587', 1, 0),
(17, 'kevin109', '123123', 0, '0', 'khanh.tran109@gmail.com', '0935999034', '123213213', '1545177699', '14.185.77.171', 'VietNam', '000061', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name_likes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `max` int(11) NOT NULL,
  `price` int(11) NOT NULL COMMENT 'VNĐ',
  `id_ctv` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name_likes`, `max`, `price`, `id_ctv`, `type`) VALUES
(2, '1 Bài', 1, 50000, 1, 'REACTION'),
(4, 'Gói 50 like/bài', 50, 50000, 1, 'LIKE'),
(6, 'Gói 75 like/bài', 75, 75000, 1, 'LIKE'),
(7, 'Gói 100like/bài', 100, 100000, 1, 'LIKE'),
(8, 'Gói 150 like/bài', 150, 150000, 1, 'LIKE'),
(9, '1 bài - 50k 1 tháng', 1, 50000, 1, 'CMT'),
(10, '2 Bài', 2, 50000, 1, 'REACTION'),
(12, '3 Bài', 3, 50000, 1, 'REACTION'),
(13, 'Gói 200 like/bài', 200, 175000, 1, 'LIKE'),
(14, 'Gói 250 like/bài', 250, 200000, 1, 'LIKE'),
(15, 'Gói 300 like/bài', 300, 225000, 1, 'LIKE'),
(16, 'Gói 500 like/bài', 500, 320000, 1, 'LIKE');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `tile` varchar(255) NOT NULL,
  `script` text NOT NULL,
  `logo` varchar(255) NOT NULL,
  `keyword` text NOT NULL,
  `dangky` varchar(255) NOT NULL,
  `ratelike` varchar(225) NOT NULL,
  `ratecmt` varchar(255) NOT NULL,
  `rateshare` varchar(255) NOT NULL,
  `ratesub` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `tile`, `script`, `logo`, `keyword`, `dangky`, `ratelike`, `ratecmt`, `rateshare`, `ratesub`) VALUES
(1, 'Dịch Vụ FaceBook', 'kHÔNG CÓ GÌ ! ! !', 'http://tymlai.com/images/favicon.png', '', '1', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--

CREATE TABLE `shoutbox` (
  `id` int(11) NOT NULL,
  `user` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `message` varchar(1024) NOT NULL,
  `date_time` varchar(100) NOT NULL,
  `ip_address` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoutbox`
--

INSERT INTO `shoutbox` (`id`, `user`, `user_id`, `message`, `date_time`, `ip_address`) VALUES
(44, 'admin', '1', '#xoa', '15:07:08 06-12-2018', '27.75.226.146'),
(45, 'BOT', '1', '<font color=\"red\">admin <i class=\"fa fa-check-square\" aria-hidden=\"true\" tille=\"Đã Xác Minh\"></i></font> vừa xoá lịch sử trò chuyện', '15:07:08 06-12-2018', '27.75.226.146');

-- --------------------------------------------------------

--
-- Table structure for table `tokencmt`
--

CREATE TABLE `tokencmt` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT 'COLLATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokencmt`
--

INSERT INTO `tokencmt` (`id`, `user_id`, `name`, `access_token`, `gender`) VALUES
(5, '100004978237819', 'Tuyến Ngô', 'EAACW5Fg5N2IBAKozen4DyImNZAPIorvwZAzjz3ZB5FxsZBcKxQM3NEIgt0EpFDag1RyupNb4H3tUgxIqYkFNfxBMeZCsSB6gXyI8lhpjYT1taWUrKqToGa8Nx8ex2zxe0Hsn5o4XBYbcs5cxVSjeZBbMbJQDHboSZBENDObvjO5ZA1kRm6geZALNmBDUFZAqYYtHr9U1R100RfowZDZD', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `tokenlike`
--

CREATE TABLE `tokenlike` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokenlike`
--

INSERT INTO `tokenlike` (`id`, `user_id`, `name`, `access_token`, `gender`) VALUES
(280, '100008301022071', 'Trang Lương', 'EAAAAUaZA8jlABAO13NvZA0T3QEevIYxLZCNoU16F6nkuEXLDWtGi6fOzxXxBxN5w7cxGFvcCwo4YltTpn4BTq2GZCpsLKmYMsWY5FtXtfmpafh2co5HZA7lCU0B9GquzdHr8tmkZAJ8uuAFnBp8trrZCPggln0As3VfXTdvHKF9LEGNsQ9iADCM', 'female'),
(227, '100005274731707', 'Diệu Nghiem', 'EAAAAUaZA8jlABAGZBUJNT2JyRR4j4nwGfNCXbnjZBotYZCbo8ThS45qFbfJpulzHt5gqcyA6reMrPFwMt2Mt1g5FZCOiU6CHUBF4dqZAQC6z5FWUfpdwUuub9s0ibIRyVckXy91PuiclI5H1IdDTbjZAPvyqwEYJqqxfzlxZA40ayyprGi1NHUWj', 'female'),
(245, '100020002418579', 'Lê Kiều Trang', 'EAAAAUaZA8jlABACoEm2ThNjotQ2c9iAMo7ZB9JSZCbeazV1yWDz4juUwnaHMugeSl44712ZAWphyZAD2qAlRBy7EEZAzucc3RPUHRnGXZBTyLadCjzj8WSXNGDqxOin32RprWhXBuiQA2zjcqTLUmBVhxBUXvxArBSrTlLB9MhmcgZDZD', 'female'),
(330, '100026441060221', 'Minh Thư Mộc Sắc', 'EAAAAAYsX7TsBAHR0unFa6MKRey2ZAjW6kEWsB1pa9AMPByNaEwTTXN0xhu9bNEyEuYZAU5qSanLqinz5o2ZASN5bZAZAQKsoXZAPcmEzy0QcY6ARJhtIdFapODY0FfkPqfthUmGcoaN273pF5iccSRxBgOJzLTU0DJzZBNCsnCDjqwwZBgojDX72Brzk3d1LGiZB5DZAPKvISeTW7iDAtJ68mE', 'female'),
(437, '100022395313269', 'Trinh Phạm', 'EAACW5Fg5N2IBAJWuZAIMTzIkPjaY4WsOgG8nwKnJHChsaAKuR1tL6QZBEqP0SXOKAVAFJZCZA6ELKRZABPihiDN1GDI7bOrkWXzjL3cbbDi4G5ppKOok7qiDODieH8UZCNI6F1NrNVwuT0D6KHofV7hxCvL9GSDKNDbZAwXbUWXNuH86FSq3otCwvNiQ8PSdiYZD', 'female'),
(748, '100007696751950', 'Nguyễn Lành', 'EAAAAAYsX7TsBAKpKJqa1JBux6jvYN9ITLxoNQrhlskLGfibN83AXDh0a2sPUBUXdIMTZC1yHNbBYnuZB9jmBK5P2VWIZAKbpe3AWvH8xAbhNQraQSeBmXn78JxoBxIahWjl3ppjSZBNNZAZA8iTYhlUqEyVc3YfvBSfxjhZChSvY0ZCUNZC3SOjgjbaaTh9KS8ef9oQZCuEAF3ZAZCZApdDlfgqOq', 'female'),
(213, '100009417847391', 'Bảo Liên Đài', 'EAAAAUaZA8jlABAEsR2lzaaDS7Yqm3b4x3n1SRJSZBBXEkDwIQrhNRTRhTAVUJBlcIae6jqciGN8tSN3IRTDqq5NvYL3HUVzXofSqSfCJcIUU204me3dgymGHFON3ErU4DsQ1pAWzLdvZBLgggCLCtHZBfcrJf7ZBN9ZBfEwGMSYQZDZD', 'female'),
(367, '100014135289835', 'Vệ Ðác', 'EAAAACZAVC6ygBAEamkgbgTjZBOQEdC654p98VZB44iOOq2WlE6UphaYomw2UnrsaK7CC6Ocklm7TsuUTiGhXHhhYgZCpvZCRZBfoqRtbdRLkoUKWMZC0iuLsZABNZCSJ4DdZAHXWDGrIJg2ULfBzv3ADDZBEpb9KSccvoQ3qWZCiRZAhaRAlTWDP9mODZC', 'undefined'),
(323, '100011768557109', 'Bùi Thị Ngọc Hương', 'EAACW5Fg5N2IBAHLHwfRN2tVQNoZCfGrt0gW93OcbcJZBmBl0ofgI4nHIAYHrUSff9ZA6RSL5ayuECiMGIlLbLfqUBJfee0PH0T6C0Hw7hJFiUVplzube8BszCnOanqYWuotOCIiOH4ZAA4eER7UtUvb02fKAj0cOg4HoD5mwAtNY952TaQLsPaDC0odKNfcZD', 'female'),
(824, '100000921506322', 'Nguyễn Thanh Hường', 'EAAAAAYsX7TsBABZAdcS4fZCuIKxciFmHrsErwme4LuPdvO4bmOP3JFtbtOZCretTUzME6ZAnxZBZCa9NtKPo9kXHNoXH5SG8aO9RkPAn3hFPewAzNU5ZCFG86CAkEiERwGKRjPpa5dChXQKa1LDGJplZBcWVeW4xPpTbZBJrzlW9Ekb0AIWVx1lVo6r6Xu0GLzHgrLY3rK6nu4Od6SNx1atIv', 'female'),
(218, '100017545249262', 'Minh Hảo', 'EAACW5Fg5N2IBAK2flMzd3o52bGq9fSWYVZBluV5jhGMBZCT6Wk1lwkmKI1eNKsFY5I5UgzZAWlNYFFaSVvIOCkZASU0AMYcNISjGEG6SraMnma4QgxHpWKHMNUUFalaLN4dqvHiA5UBdNZCJwxN2T3Sv1MM3YJ8O2Ub1g6o58wrqc5gCLabJ84kFOIYdPKw0ZD', 'female'),
(802, '100022274012798', 'Tạ Thị Loan', 'EAACW5Fg5N2IBAJ3gdkpvNAUzdZArbeDBqMwxHvZAqFuTEpPNr5p4QnVJsTGqwuI5rRbrorgMa5BZA1yudPY9WswD8IZCgyjviasvqUcZCoFdrHiUUMYVZCD5m2aZCOklYhxufnnDx56QbJ4Vxgz06Ld7tsgq5rsRlUhnxXIuSKbmOZBSWKjNlyvFp60GZA0kKAuTZCieiJLI0IKAZDZD', 'female'),
(291, '100010091595013', 'Trinh Phúc Phúc', 'EAAAAAYsX7TsBAKltIWBG0FZBp5prJcDr8vO2jxx31LZA4zcf4mc718ZCPIWodCUfac62Gph2VVYrGpHCrXLQoB2RI2ZCXvi75mkXcS95ZC0f6ieBXBcdRyrbgxZBDtftAws9BPOEQRxJgm3lxRbhXzEDkkwnTPvzroOTPiD6bZCL44xLGY5KSIg8vpoJIJ8hWfa8rQ9TE72HePZBEdpqpV6b', 'male'),
(751, '100006255330844', 'Quang Ý Tran', 'EAAAAAYsX7TsBADCZBnX2iBu9POxxEFsrFPu4RCwqzsv5afSCBP6OhVZBRteZBY7lTc77jOvoMJPIN5SJ8Hogh7p1iINrE3isnZCkF5k7VZCBTqeH4sMZCWf0VqrPyvu3nHIL88v1ISoXuu0aN3fg8OaZC06gW4M5ZAKUK6ZAoVB9jxn9w9uDp8Ioa2GMjrR7KeNGRnG8I94DNdwX9rxsdSK2h7Wv5l0aZBOAgZD', 'female'),
(184, '100023111542945', 'Nguyen Thi Trang', 'EAAAAAYsX7TsBAJbxxvhSqZCP7AVBVqZBfwf8yulUQSwD4J37MV6MXffu7oLikAZBphP0c5SRuxWZBh0xu56izTZCirOb0pWXb8hGde5kAARw3JNAFcSJC7N9AmuYvGQDsNi1ix1Ey7hbiBSiV0zcfRfbtZCJcZAvyvU18UpGnEnOaNKcPEfozZCLbgihvbHJit9aMgErmSkD3swyRVhAyDmj', 'female'),
(798, '100006842869305', 'Nguyễn Thắm', 'EAACW5Fg5N2IBAAOZBGYYA0RuBRBCuZCbudOwgE4NFAWBxSUWWbziD8XOvRIj1HDlRgyKNOfWULs1ZAz3zThMO333FCnGPQuq2tMpV5SxOOQUs9CmIFzoWbVBbKmRKITfxOuHitPTN4FrllZCBpZCamBY2VAEwqmcdbRppl1wFO0ZA4k2cssJDOXiHspJgfrTZC6ZB9TmlAhT3gZDZD', 'female'),
(314, '100008090522487', 'Vân Đồng', 'EAAAAUaZA8jlABAJVOZBZABy5Fc25bAosOC2VEMGfR9TvGAsvexMwznjRQauKddzu2D5MXZBaulqOghRHJsaIkVPxFEziuqtgjnWFp9LLcJ28tSyO3x28op49BsbyDRB63xz81ZB3ISJID4foK5zCWwP7Qk9NBsdU1BAChyP4b1ptlWsO2fKDe', 'female'),
(779, '100016744204149', 'Cẩm Hường', 'EAAAAAYsX7TsBALFMQjfsdFZBSsshlQhCSEwiGXoC2Iw8RVAgfFEHZAg3jeQuynkVluuEbIhZCcBmuwgil0cZAB4VVoMehVRVra4shwZBJoGdZCTs6oZA2ez4C97TsKIk3ZCo2UrZCLSHCnOu9mFXb7jwREV2zVVGk2uVE62qs1rV6ZBBNNpdcH2uil7VmfgIj3xrAxmlQqZCUumgYJlxzpUZAi3B', 'female'),
(321, '100010363027056', 'Duong Nguyen', 'EAAAAAYsX7TsBAADq62YiJAPhdiMBZACjZAE1d7cGpXAZC4SZCUm9NJP8v8ailHFkdH6pdiohONxXyY0jEnXZCulWB0zcZBcLHwNhDaS4Ad29JuZBZBS6bW8R5m6ZA50L81SjVX8ImkLA007ZAG4E1PJ8XdTaQUcwcgoBJitgzQ9ZCIuPdCfpEWqIjX4H8BH9sPgAyJRLWi5KSvujNDg3n5ixguBukdU12p6YmwZD', 'female'),
(308, '100007685649794', 'Nguyễn Ngọc Trang', 'EAAAAUaZA8jlABAFzZAZBAre7nvtpSfa3O0t35AJozxqjyKwv9TofpYWLzrf6oZCtAQVoKIMTZB8Xn5lTfqeCXxZA7DFYByrPAtUVrBaWg2FxqCrRvo4eT5V01UBLAZCWuwpFlkLp5K21b2Nc8yWGRAS72OnPvy6mcu4KoZBZAtGTZCoPFbSRQbohZAE', 'female'),
(395, '100006925874034', 'Phước Tình Nguyễn', 'EAACW5Fg5N2IBAPWZCQDsWVnYwIrXzfd7HSTyeuB7o573ZAd9o LZAKdGOfTMZBHXEc2EcOgtLV8ktBgJmFJDhtt5nnJUFq1t4qTh vcR4uTrcKL9uwl6GFZAAu1ifxLiiCKLrx3A5xRL1aspwRJ16Kr qeilRoDXuxuAszYjyyxIef4nuUextUMX', 'male'),
(717, '100010470991461', 'Thucvan Huynh', 'EAAAAUaZA8jlABAEtgrNuRkdehEJsquuJ20ZAijlOb9WXt4HG5xCEKUj3sNNhTeo5gf4NeSIn4ZBMVQGHJlzumY6anHYGANfYnKgO64sLnUJgqeIbdTHZAgBTvqMpYtd2IixWArxxZB2xevLvtIPZC9eWKUlXVRgkGnNKO55Jz4eZAfkBGs2CwVB', 'female'),
(799, '100015011173157', 'Gia Minh', 'EAAAAAYsX7TsBAKVAXTIwGHEcHzC1GUcoXjCMUJT9cWIYT6L7LwFDdhNQtFRZAMqT4Os48ivy7qTHezZCt0ZCttl5UBmkIHCneqg1QY9TBm63h4cycmt0s2vFK5wQTmUBjZCiM4iyDLUp9nhyRSSQ82iTb2x1W5IFjLoz6943mFOnSTY8NlYsdu9kppU5ZCSBMN3EDVQQ0A97D5YyWXQ2J', 'male'),
(792, '100025292991801', 'Tấn Vĩ', 'EAAAAAYsX7TsBALpPGzMgBMCCcogIqoWomcOqMEydIPvrFhM2ofQyvs2xxuOJwhBZBs3ZBetfavejZBqWzGZCFXafaqqZCmjYZBnL8PVcb3w3eOOgsnAgnZCgnLsZCb296FQjMjZBO0Tzdqj5oKW7TeQeZAWPc0xr6DuIY97ZBOB5T0qNi8AZCUajAPNh4ucSYoZCQwbbO75pRqbIpr0saViZBsxJDm', 'male'),
(714, '100007043974119', 'Trang Ngô', 'EAAAAAYsX7TsBAOidhNJnqDSJuGpFb2NgwOjMNDt0CcAqnV9GUxcOhsWGIUeY9ne5wM5ZAWF3eqUnbAUZCrG6ysZANgbc3dcptoaHeLUoC3CdShS31b9K6frEz7rZCJUbg46yMU2M3U3gZCAEn8ZBqjB5KwVir5Mq0aauSzpVd5VGbg1jhY1vZCKJvCM6hC0fw1MNMdpmqWyZCIZC8ViZBp8COOgMRcgsQwZBUgZD', 'female'),
(360, '100005622930180', 'Quỳnh Như', 'EAAAAAYsX7TsBALHQb7aI18eyZBR0HUyzklO8uUeM4WktRmUBzc25TgFZCMWYyhl75aOsFeyl6gHTySHbmmAoHVOajFx6kuwElgKFew4crwloZCK7nLwRAS73sISMuKFCZC3RXITBbkvZAbvO993GnYNGcBxClNCJtrKHXZBbTh6JREF2sfHoFZCD5DScKzuJwEAZCGzXqOTGXCJxEwmhaRSPh5xGCfXzQRQZD', 'female'),
(715, '1349503224', 'Nguyễn Ngọc Liên', 'EAACW5Fg5N2IBAIeD4yefN2oUZBxTgEYU2TlERbsl3q90rzbrfiGtaECiPOLw0OWdIIDJ2ooKwmZAt8lduK53ZCxOqUQyPXFGqfKNBZBPmZBHRymupzkRkF38iU97GwCXNCFvZCsY1VmLDjL0AJ7D0DmJrTjdtKkC2wNwgsbNmRugTMTs4oYhUI', 'female'),
(305, '100012052873796', 'Bảo Liên Đài', 'EAACW5Fg5N2IBALoKUQZAHeNCYei9R5twZCvNQbbJRCcY4bExTJpX56v5tokv9So7qLEoIRRCJJtJMDMKzrFBTglMSO05ZCHHDtgSacIGXmNA6Ii4OF1UHfLgBY9fAZBWdR27ZBEDeAzpyaZCxvFqpgV5xAtktdbFm7BR9JCzxdvS5gTVqZB5Skqq09xr2KOv1QZD', 'female'),
(275, '100022256479099', 'Trần Thị Trúc Linh', 'EAAAAAYsX7TsBAEYMJ7byzXtmyDpQ3WU6emX9sqYQTtnTo3h3lwd4ufZA0jqz9htmTaJgI7gADANDvEKCiIVDaYZBcADVrbGZCZBlFOK4GZC08a0dDpVM6k3jzkdiaAm3goPa69qhTe0p3TEAlPTsNLgRjxQZCZAuoYR8Eh62b3ttaNF9eOYZCYJAlx3zra2hhfuEu21guYNI26KrIuVQguibyfaGWGZADT4gZD', 'female'),
(282, '100026113938204', 'Thi Ngoc Van', 'EAAAAUaZA8jlABAE1g2KN6z966nQKNCzQpvxLu9dOZCMdZABUDvJOYYBOCTD3ImFLzrILTYoBCGadNH2xG6ucfOZCaZA6x6yYKRR4XZAzd2CPUsXD8oVm37NVG4ZBSciMllKLd4utIKEZAkW3rJskVZAyuwSZAB0nCcJxrElwTphpdL9tGfLJ5FoywY', 'female'),
(707, '100005623416612', 'Nguyễn Hiền', 'EAACW5Fg5N2IBAJkglRThgYBN1kfLfKaZBOh1CQZC6uJRFnmX9iKEgSBSiZCtqpsbM4AuKj5XgeWoqvnefkx4mZBfn06BUlTarAN1hQL7ZAHzcs5IfFcIQqh9ZBpK7RQRb0woZBCdyvqjdqiSkZBcCfWl3Vb8u8zQTScg7Iztn07mqa1OGuTuVBqBTgMV2hZBmovdMAQT9WGKlxAZDZD', 'female'),
(783, '100012415142415', 'Để Hân', 'EAAAAAYsX7TsBAKkOMiT658usHmSDUNNDyJEm6xdbZAIZByHlW8jcUKyKOp4JPIUQ437gVjVk4y5dIMyoNzlpC0Qbn2uPoFjssxhSaLLGqsbJPvJBa1P4WoPhNMIFmw15iHDqBdMhxJWZASDJwm257bhDV6KbZBI2j0CeMfw98JQGshZBPSUar9E9UYCA0A0LeyQUAL7urMmZAnAUByx8RMfZCjLyqZCk4FEZD', 'undefined'),
(243, '100023906264587', 'Loan Nguyễn', 'EAAAAUaZA8jlABAFVbmABaRiB165Fd2oeHDuF3PhZAhwFBw6apXNYmx1svjHdPf9HweVt7GkllMPtgpi84NZAINJKAKwbUWLviBSUDaHQAiCSZAxXjiFprN0LkFZBv3gs5HYVzSVGQeHfKo8SqMiyRcAOzQhtHKS7lSt6jn5HQyq1teoouGUxV', 'female'),
(310, '100005465616631', 'Đoàn Tuyết Ngân', 'EAAAAUaZA8jlABAIcQHd70HocjzJtfmeXNI5GeSIcw33MRLeKGrPd1h9bKFfAIUdC7fTOutX1bwP1f9pZAbMym5tRiTh1ivmAEm6CTmtIezQoU4AenjxwDfU07fh69qaA9owyO8qTszWoLzAeZB7EhLzCWjzsPK3LyoZAhasbUXsp2eFfqkmQ', 'female'),
(780, '100004309203913', 'Tieu Oanh', 'EAAAAAYsX7TsBAENuALGvTlRsSZBKq7yyZCJE9cjBmkEZAIltsJ1OtZAucpzpCongZCiKEGLNRm97wErtkWKvK7aB0WNl419pydRbr3QJf6aXLD7rFt9ZCwJ1ZB3F5Eqin2ZAHDOH4wVOtWlRhbZAOz0PE2WRUiFRgO0vsM3TGZCZB9Rj8OVT5RUfgCU9v1nEdFCDPq2HVwo3fFZA7k9Jdnm4Jh7DDLPIOZBZBu6EYZD', 'female'),
(277, '100008071968321', 'Linh Phạm', 'EAAAAAYsX7TsBAK7pgkPOkmjNa8hCkMqshRH4LqEcZA4ZAaTRL0hb3TLFjJbzjrDvZCLUji0lxhmyuSGRBu7W8Ns3TOGuo8UgFCQtFGGlIybmrUUz6UHems5Fp6fmNZC2nkzZCaXoV7Yu8pZBCcEC6HpteeIeQDMilVWy6oD8zMxzpBiC1AaqQsHej0ZAtDW4kLy11UN40VNDDsTs8mAlG15UiU4zQxCN4MZD', 'female'),
(292, '100009113202740', 'Ngô Kiều', 'EAAAAUaZA8jlABAM7ZC54ZBs1OCEy8491RnZAHviNuLrroZCLAXfrXz4slrWhtLGl9PjQF7VfJAhZBkP1xKUTAGAEFe4LYPZA2oljHVR4L8Wk1EmWkomBVu5g3is9CBMQVH6usIXZAL8GbkcIdjFYMA4NC0csgcJbrM3JSsAQe5lRUF7Nf1A6nLLq', 'female'),
(325, '100006645703717', 'Thị Tâm', 'EAAAAUaZA8jlABACzsfM6AJEBcg0GZCF9gj3ZBEU0YxDInjmOXiD9v4Hsqr1jz1ZAbsjCGzdxz9nbpZA1a3GxFA3ENtocUW79ZA7GFqI2nfj9Q1TEeCWIjVuFc9Hjf84Tt0jL9zqf6523LivPNatOxgjfuM7dnwWT8xZBU3mtbi3XBoNZC41r2Ae8', 'female'),
(816, '100022648010380', 'Thuy Nguyen', 'EAACW5Fg5N2IBAFZAX5NNgP72tvqI4ufsAZCZAqLL7UQFZC2LWgGSpcmLLyHley7n7p40bERk4TKmRQuaoUMfOB1gfvn7QkM2j0Osf2hLcIXLik7ZAZCwS28ZCxp1IxG28HuK8dxHJhiZCzBQpGJHDOXs2rkOYZAQI0UbVzZBA41Wgvq4FGAOdsq09cniwSOaVAzQcZD', 'female'),
(806, '100003899124583', 'Ngọc Châu', 'EAACW5Fg5N2IBAN0I0cXWFYjkiqW7inxKznuH645xHjGQjsWHScDavSZAw59Bvim2PgrJnlZAhoXtzfBhDFVKvPybSHKR4zsjVxZBProBL1ckRSnz8PrkO2ghLHI8AjZBL6WG9YTnk19Xc9Ho2eGLPh9JiG1xMDKYeG51BvpgcZC7580p4xayGFigoklph4lwZD', 'female'),
(784, '100008624982813', 'Lý Thanh Thảo', 'EAAAAAYsX7TsBAIYZC9lKDMdgTO2QKCaQs6i5yQE6PcSDpWnc73QoCoDvTPeqrRO73KjBGHzxZC1Anr0HWKZAgkJ00m0ZAQvKLVcHPuJ3IqdCpZApqR8ld1ZCIGiVOKPU7lEywU3JztaqgAwUZCvMRZBD58xQG0ZBvx5GwO16Y1va6e0q2M52sULI7DfoCAJjANrNuAw7p97RdvUVAmdZAqvRZBSpwR3e2GWiiYZD', 'female'),
(716, '100014198345955', 'Nguyễn Hoàng Yến', 'EAAAAAYsX7TsBAIZAVsPfZCzYGrGD0R6jjrntwzZBjAK6RZAtHhx0INpr1O2DkKmaPOtzklYKjCxYxmoRq8nr0gMENwcWTNKBfZAe5efQBXMn6KjnTZCUpHxvivukzflJrCfPrmDPZArNkfALgifYyjyNLeC1XRFaWLMyKYLqnlshb6ZBnw0CwP4kyGXosEfuZAMFkspNFZAjZCSmaM8tWZAI6RHiBZCUx1pAfLrcZD', 'female'),
(819, '100003795248370', 'Nguyễn Lý', 'EAACW5Fg5N2IBAN284oKnyw75TYObJhA2sLDplZCZBIRvuQDvG02DRZBDVEZC4hXaRbZCZA1i8ZC6G1RHvSW2w33unBkp170EpKrtDZC1XtPVBzt7AXTvl7Is3P3FutwT3ers4jy6PuKAqlO6x9jZCeMMifZBKqhq6fyxC3BzUrWcPZBcQQlQNwcp0yZBsLWSksdvIFubxc1oZCNL54gZDZD', 'female'),
(817, '100014680086057', 'Thong Lê', 'EAACW5Fg5N2IBAKxmNduGImjnGcXR9buqbJqyPFRukwWUcuPGAq59Uc5TS51ERiAjzGZAKe89q85oqDWqKg7OebSHSQoekIizMveCWSMFi4hxcjrZASPQIHUn35lZCCnEtcFQosEBXJSIzFcWbRA7oZA7sgy9xKi8VMWboOL0txZBOU0ZCXs6c1DwQhRSugnRYZD', 'nữ'),
(821, '100028079562164', 'Lê Hằng', 'EAACW5Fg5N2IBAPug26s1NCoZCUVWnuqu4BOZAyoviYdMwrTSvZBgZA7XiBGKZBpADh87T4jgZBLq7ENfUxuL0aaka1fL4dka5w2dKZCf1icYAj8yobeFD3vxB3BKdZCQI2OAwVZB0PN7M5IJJWutqozvps5pYCQgNSEcYVR4C53xnrOLB3MHfOI8yhrb8yIsCQ4wZD', 'female'),
(803, '100004978237819', 'Tuyến Ngô', 'EAACW5Fg5N2IBAKozen4DyImNZAPIorvwZAzjz3ZB5FxsZBcKxQM3NEIgt0EpFDag1RyupNb4H3tUgxIqYkFNfxBMeZCsSB6gXyI8lhpjYT1taWUrKqToGa8Nx8ex2zxe0Hsn5o4XBYbcs5cxVSjeZBbMbJQDHboSZBENDObvjO5ZA1kRm6geZALNmBDUFZAqYYtHr9U1R100RfowZDZD', 'female'),
(804, '1835425649', '‎‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‎‏‏‏‏ ‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏‏ ‏', 'EAAAAAYsX7TsBACHpvdQIulymvDrfGKkWsQZAkdvxZApZC6FeoUN9ZChZA2tXJXYHiePFiN9LSz9PJAdboHQEhfeozZBKHn5O9ZAVMxWSELznMPaCZBG936UfW02vVMHF0s0lv32h4mFuqOBHGHV8Kwmf2zMevvLASKGMejliO8kShTTX35ZCWs7sZCvxqWIlN4ZCSKWrkWt37OZAwAZDZD', 'undefined'),
(723, '100012697746706', 'Nguyễn Thị Huỳnh Mai', 'EAACW5Fg5N2IBALiOsiMtydtUtZCZB1typfFHHoFfKoyN18AaSwXSccYwS5wFkPCJc3GE8Boj9EIYbXsawuKMFHcK0TFk8HyGZCuTY8AfxuY8UzgPN3fo0DwZBEdBbS8eNvhKlrFZC0ZCfLbuAjkI0J8hF3V4rUjw8ZAZBPZBbEYLB72MA9U6I0FJGUtfP88OplnN2ARP9oFByBwZDZD', 'female'),
(766, '100005892963589', 'Nguyễn Nhi', 'EAACW5Fg5N2IBAFwBdGlZC2nkVKsrBj8UGWw2tkqsOfFqRsTMPJGnkdxjUHycL0YgzBqCvwv8UI8nTxaqcfNZAq73XJxk3vVwBUqV7BfLOXllL2ERKbtpaLP0aQbSZBrhzi6cvRa06ZAZApeZAoQzlTBUPPhnK2P9BMc0LdWTJtJq4WZBDcNcv33wbmK1ghXTomvdOyZCfRFoigZDZD', 'female'),
(725, '100030367729750', 'Lê Thị Hồng Thủy', 'EAAAAAYsX7TsBABlI1QyqfGkYQ9e9D4sycnseHgtKy1Icb6j6Oh5nQorXaXW6LvJWWBiNZAFRZCT0KQAImCPSC0LTwB3GUnLbxZB2La8dKU0nZBr4dk8G4xds9D9ZCevOw6qVZAuTUqL5iL7AB2l0Un52gYbtaq9Im6Rv7QUZAZC8TIa2rbTGBd10LqyZCERTEZAfDRhQfoexVZBKEi8vexuB1hiH0vuFIeCcqgZD', 'female'),
(787, '100021666743677', 'Nam Hải', 'EAAAAAYsX7TsBAPVjUwEeTP1wa1zhZAvsGtZCnqEtqH8PMZBeZCMu2AHWorvTY8eHH2t6BNRD8hsLzN7JcKk8td4t6UoxHCxzOuOeaE0cj3lBEroeEYfORduYT4A52eS9pLqKGXRZAF1y0kxwpyKtinbQmh02S2JoBBkgC9ZAJaltpohWt4LnTnV1tHXWUNRW8MPugFqkRf9h0SeagzBGua', 'male'),
(727, '100000242007507', 'Võ Lê Trung Nghĩa', 'EAACW5Fg5N2IBAE9oI8pHoVK1048l6qHda5qmn9CA5StoDhQvffAyQrZB4JzAS2QF6yQzS2C1F7ok9ojx1ETw7L0UHGDHpeGcsvu0NP9QTvdTZAuUZBZADkwYl1vOrqMZBKXRi7VGvZC88vBy4nZARmxelZBZCmQhsQL3kD4eZBDuEtO13tWlXjzXlYyunoMhD3lIOjFfjAJjNWYQZDZD', 'male'),
(823, '100004630684037', 'Minh Trang', 'EAAAAAYsX7TsBAFkQ7eZCw8olylZCZA42Xx3i5c0RxUfJwU7UsU99RIhNqRy3J5XzIskRuSfrucvjIzZCANzxWBe6UXuf8TZC0vWSrBeYlQ8fSayzOYmDOuNAgg4Q98spvqkAZChICeCkZBrZAZBjYGiS1Guw2ghfiRM0lEtV6vzzTC4Eyar95Q5pIdLbFxAoOAkY78I7Hafh0p4qMSIyJreTX', 'undefined'),
(794, '100007795180333', 'Lê Ngoc Nhi', 'EAAAAAYsX7TsBAMjPdZB50PNxuXpLuyF6h9UnHsVatmFZAT5mDmqXSGRggpZA0k2wNMYLmFnZCJZBrtoTduncL80CA9rHNWINAIiMD79tRPRCfDDTrcrLY0hKGTqnpR0KUB00vMPn5Xu5ZAvlbH75spXPcVL0vpdNUrR9A4JwgQ83xNyE2172CiD7kLiVR39kc8oVznChwOlCVCOZBB865DEGFiCdeOHFkMZD', 'female'),
(826, '100003677234913', 'Mai Thị Hoa', 'EAACW5Fg5N2IBAOJTC3ZAjze4iaRN5A9URYMmlq5G9xF5dlSbSuiVKz66xIDRZBomF5ex9FXrk2sjtf2CGlXGScey2eMpHuoxvxTZC4o8Ul0VvGawXePuza9TvbniFwI49QWs4KzxOFZBD37pmjDu5NSZBwiLSwTjsbwovq6M4JSEJwpCXJh6kF6qzJIyRNJmHqcuOYNIZCvwZDZD', 'female'),
(825, '100025063574711', 'Thúy Anh', 'EAAAAAYsX7TsBABjK7cfWrlZBavPtpJxD1LnEW1zEyClmTyZAE82KA8oLGuxudUE0sEf6dCtjZChu3Ahn0kpRQ7rtyKbnKTtHZA9DvY2kDbghWoxaGX8rkZA7pKPLdkSzHBgnWiJ5Aq5qBgY3WskSvS3nL6XJAMD3asf6G8juAfT2VHrwJ1mUlGKhQwjYQVVZB0SaGamBx8oQMlW4PmenR5', 'female'),
(827, '100016969445881', 'Nguyễn Hà', 'EAACW5Fg5N2IBAFrwrZBtooBKqZBqc6hnFYZAAOeNy83YupEro3rf44VeSGFTPLwgGf6DXwUWOp9slov9U1PyaMyNlPZBD1W1tiUZAp2RCa8E4ZB35f3qGc0rUsmR8PjZCgfh5yWFlSiDZC1VkntNh3cPDPk5RtMw0j19Gd2g5I2TQ98LGn5dGuqWLgdnhGZBN6uAqugekGexy1gZDZD', 'female'),
(791, '100022844836577', 'Mỹ Hiền', 'EAACW5Fg5N2IBABrB0ZB3uAWb8cHrS5caUwbHfeXdyanYkgPNOAMInIlbwhtewKw9nLwlXsDVp39PhEHQTf66lpZC5dinn213ZBztRmgAyN7uHwZA3W7Iub4oZCFNZBDy7CxIoEIISClUcdhqxRyLpvhiKD1XlhTvVYB0HokcXjTUHBLPtZCCfSoRuu12ICoeJ4ZD', 'female'),
(793, '100002810060539', 'Triệu Nhi', 'EAAAAAYsX7TsBAEh8UZCzWMWZCUI6zyCl8Iwi3F1GqE98mGDeZCjsqV6E9mfakJQV3tQZB20h7tqZBYdk7FhZCg3EcxOVzUCKwfZBDhoejWebKvsoAPHGlILWZBoWU9GFT1W8wz1XKvJ0sBAvccMgswvaWpTo0fOBc9Nlg2f2n55QbqPsJfU8hJpmpguf2trhatayii3d9W0lAbDsZB0Czqvw5', 'undefined'),
(785, '100004646172948', 'Huyền Trang', 'EAACW5Fg5N2IBABXbVlV51GZB6lpPSquZCphDS8iN2xbZCZBgN7T0a8YbVYM8vx4b80goqeWY9iUISWuZCTYS5z7tNGqzdRObQJn5B1ou6QjJiAHtkZBxt2OuPK32AMrbqXSlMHVAdC13c2i1MUh1OCg0zZCRqZAivq6iMIQU0XuDz8UEMgE2ZB5BvaOd3wfMpJdYZD', 'female'),
(735, '100023246929013', 'Duong Nghị', 'EAACW5Fg5N2IBAJjKrtmZAfe1CtVpXFMRTNtQKsrw30kqED2eVRCuGlE3HSZAUZCqmFk4bimJFUq7pvPs4PtuGVUXtoRZAcNcrEz7b1ukOJEDXk8t085CfCQYAwOA4qoGIZARTQLfV4Np3eG4md1ZCH4pvijTN1QRhsfECdBsAxIeYpM3J4UZBhq6wrBZAB9jI0oZD', 'female'),
(800, '100011130784636', 'Thiên Trang Nguyễn', 'EAAAAAYsX7TsBAF7ZB5ZB6n1gJUOGWRRs9ZALBIV7tAZCZBmRZC3xI40GniW7JSaM3O63RZB5edrIt2NZCP6SvqokIzCeLHapkd2WfpxOweqZCp5SLTEOki66EAlWa1FKEBtzlUu4clEp2cjgtIA7SlPiBbj80f3QiF4TKuJh3bwntEaphzBr4UjGZC4ivc368Wv2CC0hZBSJZBJXJSTZC9b2NtznA', 'female'),
(822, '100019925374366', 'Phương Thư', 'EAAAAAYsX7TsBAGeRuhnrdyc1Ya0FbTPzGJZCOso4pSuxTVmjZB0F4YVwTv73vJgwCdmjjPTOLec6JaIgXx1Bl75nSJHbmtWzWxsohGzvA54pwY9LINvRH2AGQNfLLhnw9BWUhu09wQEp0xQ2CvCzXfvNe7Kri8446raZC6BvIAev9hoZBt9xWtcBmxrqEA6LEE7Lfq2rsuFY3Js9bi21', 'female'),
(805, '100000290078052', 'Nganha Pham', 'EAAAAAYsX7TsBABXH7ip6lWiJnB6dMP3yMTG7ttFlZAeJahDQ9PBtWHGIpPSgy7WhGnQhNCGvkwMFMeJugr6MubfhFEtfhx0ZAIDtURLpcchEIZAaNtQqBNYhWAs8ToEG7pQ2dkxr71C1uS1L7IY7IIZA5ahZCEtmDrQ4P0vqFK2lQxHbPUyAL06HUxc7z0AMle5YZBZC2M3ay4R32ZBs086a', 'female'),
(765, '100014570714180', 'Nông Thị Hải Ly', 'EAAAAAYsX7TsBAOnFnB0zFbZAlQDiaePQUNCZANnIgqIyHckKL7NI9H371ZARV20CYJUysrNLcDtxaT5HPv4ZBDiZBsm8WiRcc31g9XzLashp5ZADnsteShA2LAEfkmB7rZBi2Hz8ZCxZCc4KnJ1SFZBqMOu8HzgvvRSVN4Yzjr9UodoL04Td2tRSQkd6J5DcTLqmpOjsnYSOsChyrcV2srHfHL', 'female'),
(807, '100004865620387', 'Hoàng Yến', 'EAAAAAYsX7TsBAL9bNgw2PE7RebZBjWDSpqWqxkxWPdWkvE9xN7LoOWXMHsBL9n4RZBjPXKZA0rjjFQoRFB0xpOXhSZAZCc5XK4sVa8vjcCIUTS7rOXB0rE6aNPq6pZCZCfJDlH1kvYdDCZCXVMAsUD2Ani0rKjcHmyf1gzGPZAsZA4QDna7skCHPx0jb3WtbBDYdSL7U3d50OYF6PraDjLyco1', 'female'),
(747, '100008255291747', 'Phiên Ngô', 'EAACW5Fg5N2IBAEzluHTxYcTeRxkbkexRyLAMwhxjZBWC9xGZA56ZAwQ6xsQhkmWLZBSxx9upTZBqRoYcppq893ZBVihQF7WC9UBkurfhfuJLJYkaB03Uf8eU18kyElPy2FkZBsxATfqmLqYjPMgnG3ZCzxRq868hfYiHGZA3h3BPDGzLfxsT8KNe3ZCDppFlIK5ikZD', 'female'),
(818, '100006196117254', 'Nguyễn Thị Thuỳ Trang', 'EAACW5Fg5N2IBAHveuiyEjjcrFyYOTaSZBCRvMZAYRmLQWwkHRbgygf1ze533on7SjY3j51xWALqZCwqZBATvDj1IEvmaLIWBqAwtOAVuCsazR9GKVqxfNqyVfHeBCisoO9vsMttBZCZBbnKbzXy0ZAED0gxrsC11khZC3zPNirkWDEvSxFFZCgsxmWdLz672aLEb00AcReFnOfwZDZD', 'female'),
(777, '100010817828525', 'Bùi Thị Thoan', 'EAACW5Fg5N2IBAFWTLnOK3aL1JDFCiZCcNLFSBBMH3ngDN1RtZA88aYmn99ndwuZC3tQh8SARM4jJ4XNZBtxvZBC7hZAmiJWHXhEITu1tsNEMT9ZCHoXVWFuueUkh1KganeXg3gJSwCy1reWFMnX1dYyJyg9GqUP8ster6lnhOIwCJ7OhZBJwKJJv12tVopyR8GuASRcFoZCyDqwZDZD', 'female'),
(745, '100020787878288', 'Lương Kiều', 'EAACW5Fg5N2IBAPeZCOX9V4D6oKGuGSVbnJJddwkjQG2dRU3nZBfiebbocTTuaSl35hxShhccbUJvw7rLg1LgeAMBEe0eU9cMFl0CzPqSJ0ILBDCMgOOpIVfDyp2eojXDROb3gnAE8qRyWLzCEufdy4IsVKpMyJhU4Ch1gxJZCXrfBDLi0cwF2eIyInZBOpSyHA6yfeFFRgZDZD', 'female'),
(746, '100005265543253', 'Lương Thi Kiều', 'EAACW5Fg5N2IBABBx5GvVEM0rh5sCzsJzYAygCT6uCgzLgyu1WQcJhahDZA8LZCkg7h2ZAZB1ZAKvWG4kS3a3qfxaSIRQw6bmRFKJzUcaR26dhqu76flImlqGjNEs6jP7MmcVrzNgXnIOjKQ1K6TOJo2NSZAnjKYTmfMTIpT9xZAQGjReiCcEOycKrJskRyIjsAZD', 'female'),
(820, '100029548713788', 'Vân Bống', 'EAACW5Fg5N2IBAKTu9p4btcraNZAZBgZAouYoBAaMBpcqMgtAttTBXiZAMK12xlRHQnblShBewVNTaZAgZAZBJA9xVlN4Oyo7zm5cdZCzSwM8GSSuIhLn5QJ8M7TyTZCApRWluiCDWhe1BHxPgTgkqYOsxYw74PZBdsNF4E9R6Yihx1ZAwjGThEjzgSL7I73keQK6h0ZD', 'female'),
(808, '100009368330562', 'Thùy Trinh', 'EAACW5Fg5N2IBAGFKeMkDc2C2IHG2ngZBeqAaHjnxf4ZAUss1tkVfyRgZCghGRCf0AFbLMBPidmNFEMurZB4Ud6qEZABftRr7sVn4ZBdOsYbsywd7BjMtR99DrEOERCTY0wdjZC5TnspO9ylciaU3fvOM4GV7id5LrzYE2LR2RRpSqQGSC4YTHBlNSNItzlDys8Ts9faxdDmewZDZD', 'female'),
(810, '100022048238048', 'Thu Hằng', 'EAACW5Fg5N2IBALZBMF8MGIUZAd2OZCUZAKpgyevKRSFCEZBCbcB5CPIBsTwl6EGeQIZA7qVNELwqRfbVXFiw4dXapOkNWR4Q9jwgA8VJwZCLtZAHVYzbA4qaS0NBfFuUig6VuzJobWZBt6RY7Q74iscaXEseFZAVpG9ZBwBzEEZCEy9zVuh37kToM1tEZCX1SAQ8BOgWE1cT0UuHtOgZDZD', 'female'),
(811, '100005821212785', 'Hoàng Yến', 'EAACW5Fg5N2IBAJi4nUZBPv7YXhI65PER8JuotZCWnmblMxEP9zQG43TZAKSBdzJZCoImZChbZCZB9L6AbN6Nx09MZCMfdGDWksH0B725RutlrxIcq5qLHLYG5yTqEdjnH54ZAPiQCTZCXoj48ML8EGloCet9kipuUutnCCP0mcOcCqZCZAV7aUA6k9CIzTstZCbhiZBnEbmUZBDf7R1QQZDZD', 'female'),
(812, '100003018696352', 'Kim Quang', 'EAACW5Fg5N2IBALZBe1kh6KZBjWcA7JxyTiPhQA5XpxepddXdYF6QudsptNUsgMYHqoyCdFDDlNLufvkBqekoB863etjCmFHNgif6OcJ67LqKxqWxzvL38eGRzgmHc9IqLU8k4Q9W30DkZCfvC2IhCCJLbhvh4FZCBJRBySe8ZBKGVf8OUmoGmyl0QpuuCnoMRtKSTSfBfJgZDZD', 'male'),
(813, '100004326943138', 'Nguyễn Ngọc Liên', 'EAAAAAYsX7TsBAIRoL6gBfOk3MohypTI90tjPsJcbAUNyJpFqI2RewcBDo4CVXa5GGJ8xLxEJQyPQeN3YtC3ODUOPUIA1s95UzL8hnTBpdinX4UZBXHIvF5r6m4KXMeV44jeU2tJi67vA2tdDtHoKjTDajXlghU44NzWZAPyk7aqVsudlU4jBEkK51QTKh5CXD4jS2ZCuWPEaVpceekM', 'female'),
(814, '100023903992485', 'Ngân Lê', 'EAACW5Fg5N2IBAPJfpAvgBABU1vISTXEBPsQ85Bn3ZAJWWBodc9oN88Oo2wZBuQNtO8uM8nIpP51lg9wnDCOyIUE1VkUocRpZA5mjV3oDWLQv9qophGWv89l7y2z6molDMHisysCF4Qda71hChC8Iq8DokyF5UZCXqN0b9p7cF2dWNv1TRULOZB4PRv2FYkR4ZD', 'female'),
(815, '100007094882894', 'Dương Pham', 'EAACW5Fg5N2IBANlDlmKIyfVgiV0F7J3olHfdH1tsrEZC9xRut1VZBzua497VUIyicdxZCPZCRZBvekfSkb9fZCLuVVLzcB3CV3NZBZBpynwvJZBpYZCkLLz4cfmSbZB8ZCC6KK2ae8hPDhagd77ZBtpiHR2QazZB1PvdG9J4whqS8sLnYjAdOY65xTU38yiF2dj7B4LxqkNejSLJsEpwZDZD', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `tokenshare`
--

CREATE TABLE `tokenshare` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT 'COLLATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokenshare`
--

INSERT INTO `tokenshare` (`id`, `user_id`, `name`, `access_token`, `gender`) VALUES
(14, '100014135289835', 'Vệ Ðác', 'EAAAACZAVC6ygBAEamkgbgTjZBOQEdC654p98VZB44iOOq2WlE6UphaYomw2UnrsaK7CC6Ocklm7TsuUTiGhXHhhYgZCpvZCRZBfoqRtbdRLkoUKWMZC0iuLsZABNZCSJ4DdZAHXWDGrIJg2ULfBzv3ADDZBEpb9KSccvoQ3qWZCiRZAhaRAlTWDP9mODZC', 'undefined'),
(177, '100006925874034', 'Phước Tình Nguyễn', 'EAACW5Fg5N2IBAPWZCQDsWVnYwIrXzfd7HSTyeuB7o573ZAd9o LZAKdGOfTMZBHXEc2EcOgtLV8ktBgJmFJDhtt5nnJUFq1t4qTh vcR4uTrcKL9uwl6GFZAAu1ifxLiiCKLrx3A5xRL1aspwRJ16Kr qeilRoDXuxuAszYjyyxIef4nuUextUMX', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `tokensub`
--

CREATE TABLE `tokensub` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT 'COLLATE'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tokensub`
--

INSERT INTO `tokensub` (`id`, `user_id`, `name`, `access_token`, `gender`) VALUES
(4, '100014135289835', 'Vệ Ðác', 'EAAAACZAVC6ygBAEamkgbgTjZBOQEdC654p98VZB44iOOq2WlE6UphaYomw2UnrsaK7CC6Ocklm7TsuUTiGhXHhhYgZCpvZCRZBfoqRtbdRLkoUKWMZC0iuLsZABNZCSJ4DdZAHXWDGrIJg2ULfBzv3ADDZBEpb9KSccvoQ3qWZCiRZAhaRAlTWDP9mODZC', 'undefined'),
(175, '100006925874034', 'Phước Tình Nguyễn', 'EAACW5Fg5N2IBAPWZCQDsWVnYwIrXzfd7HSTyeuB7o573ZAd9o LZAKdGOfTMZBHXEc2EcOgtLV8ktBgJmFJDhtt5nnJUFq1t4qTh vcR4uTrcKL9uwl6GFZAAu1ifxLiiCKLrx3A5xRL1aspwRJ16Kr qeilRoDXuxuAszYjyyxIef4nuUextUMX', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `vip`
--

CREATE TABLE `vip` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `end` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `han` int(2) NOT NULL,
  `ghi_chu` text COLLATE utf8_unicode_ci,
  `lichsu` text COLLATE utf8_unicode_ci NOT NULL,
  `likes` int(11) NOT NULL,
  `max_like` int(11) NOT NULL,
  `id_ctv` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vip`
--

INSERT INTO `vip` (`id`, `user_id`, `name`, `start`, `end`, `han`, `ghi_chu`, `lichsu`, `likes`, `max_like`, `id_ctv`, `type`, `status`) VALUES
(148, '100006536702411', 'Yến Linh', '1544705236', '1547268436', 1, '10.10 -> 10.4.19', '', 38, 75, 1, 'LIKE', 0),
(149, '100005274731707', 'Diệu Nghiêm', '1544786079', '1552533279', 3, '10.12 -> 10.3', '', 25, 75, 1, 'LIKE', 0),
(152, '100004326943138', 'Nguyễn Ngọc Liên', '1544852465', '1547415665', 1, '', '', 25, 75, 1, 'LIKE', 0),
(153, '100015054158432', 'Duyên Nguyễn', '1544856516', '1560379716', 6, '', '', 38, 75, 1, 'LIKE', 0),
(154, '100024873786526', 'Thuý Oanh', '1544858689', '1547421889', 1, '', '', 25, 75, 1, 'LIKE', 0),
(155, '100025253033589', 'Vũ Hải', '1544858881', '1547422081', 1, '', '', 25, 75, 1, 'LIKE', 0),
(156, '100012618966622', 'Xuyen Truong', '1544862679', '1550017879', 2, '', '', 17, 75, 1, 'LIKE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vipcmt`
--

CREATE TABLE `vipcmt` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` text COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cmts` int(11) NOT NULL,
  `max_cmt` int(11) NOT NULL,
  `id_ctv` int(11) NOT NULL,
  `noi_dung` text COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `giochay` int(2) NOT NULL,
  `giodung` int(2) NOT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipreaction`
--

CREATE TABLE `vipreaction` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `end` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `han` int(2) NOT NULL,
  `limit_react` int(11) NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `batcx` int(2) NOT NULL,
  `id_ctv` int(11) NOT NULL,
  `access_token` text COLLATE utf8_unicode_ci NOT NULL,
  `idchan` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `ghi_chu` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `commentc` text COLLATE utf8_unicode_ci NOT NULL,
  `commentt` text COLLATE utf8_unicode_ci NOT NULL,
  `cmt` int(2) DEFAULT NULL,
  `cmtngay` int(2) NOT NULL,
  `stick` int(2) NOT NULL,
  `nhandan` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) DEFAULT NULL,
  `giochay` int(2) NOT NULL,
  `giodung` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipreaction`
--

INSERT INTO `vipreaction` (`id`, `user_id`, `name`, `start`, `end`, `han`, `limit_react`, `type`, `batcx`, `id_ctv`, `access_token`, `idchan`, `comment`, `ghi_chu`, `comments`, `commentc`, `commentt`, `cmt`, `cmtngay`, `stick`, `nhandan`, `status`, `giochay`, `giodung`) VALUES
(91, '100002810060539', 'Triệu Nhi', '1544588641', '1552335841', 3, 1, 'LIKE\nLOVE', 1, 2, 'EAAAAAYsX7TsBAEh8UZCzWMWZCUI6zyCl8Iwi3F1GqE98mGDeZCjsqV6E9mfakJQV3tQZB20h7tqZBYdk7FhZCg3EcxOVzUCKwfZBDhoejWebKvsoAPHGlILWZBoWU9GFT1W8wz1XKvJ0sBAvccMgswvaWpTo0fOBc9Nlg2f2n55QbqPsJfU8hJpmpguf2trhatayii3d9W0lAbDsZB0Czqvw5', '', '', '', '', '', '', 0, 0, 0, '', 1, 9, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autorep`
--
ALTER TABLE `autorep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`end`,`id_ctv`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- Indexes for table `buzz_cmt`
--
ALTER TABLE `buzz_cmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buzz_like`
--
ALTER TABLE `buzz_like`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `max_like` (`max_like`),
  ADD KEY `liked` (`liked`,`type`,`id_ctv`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- Indexes for table `buzz_share`
--
ALTER TABLE `buzz_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buzz_sub`
--
ALTER TABLE `buzz_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- Indexes for table `lichsuxoavip`
--
ALTER TABLE `lichsuxoavip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_ctv`),
  ADD UNIQUE KEY `user_name` (`username`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoutbox`
--
ALTER TABLE `shoutbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokencmt`
--
ALTER TABLE `tokencmt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `access_token` (`access_token`(333)),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tokenlike`
--
ALTER TABLE `tokenlike`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `access_token` (`access_token`(333)),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tokenshare`
--
ALTER TABLE `tokenshare`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `access_token` (`access_token`(333)),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tokensub`
--
ALTER TABLE `tokensub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `access_token` (`access_token`(333)),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vip`
--
ALTER TABLE `vip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `end` (`end`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `likes` (`likes`),
  ADD KEY `max_like` (`max_like`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- Indexes for table `vipcmt`
--
ALTER TABLE `vipcmt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `end` (`end`),
  ADD KEY `cmts` (`cmts`,`max_cmt`,`id_ctv`),
  ADD KEY `id_ctv` (`id_ctv`),
  ADD KEY `hash_tag` (`ghichu`),
  ADD KEY `gender` (`giochay`),
  ADD KEY `id_ctv_2` (`id_ctv`);

--
-- Indexes for table `vipreaction`
--
ALTER TABLE `vipreaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`end`,`limit_react`,`type`,`id_ctv`),
  ADD KEY `id_ctv` (`id_ctv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorep`
--
ALTER TABLE `autorep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buzz_cmt`
--
ALTER TABLE `buzz_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buzz_like`
--
ALTER TABLE `buzz_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buzz_share`
--
ALTER TABLE `buzz_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buzz_sub`
--
ALTER TABLE `buzz_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `lichsuxoavip`
--
ALTER TABLE `lichsuxoavip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_ctv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shoutbox`
--
ALTER TABLE `shoutbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tokencmt`
--
ALTER TABLE `tokencmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tokenlike`
--
ALTER TABLE `tokenlike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;

--
-- AUTO_INCREMENT for table `tokenshare`
--
ALTER TABLE `tokenshare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=896;

--
-- AUTO_INCREMENT for table `tokensub`
--
ALTER TABLE `tokensub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT for table `vip`
--
ALTER TABLE `vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `vipcmt`
--
ALTER TABLE `vipcmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipreaction`
--
ALTER TABLE `vipreaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
