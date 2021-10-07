-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 
-- サーバのバージョン： 5.7.24
-- PHP のバージョン: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_bm_table`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `書籍名` varchar(64) NOT NULL,
  `書籍URL` text NOT NULL,
  `書籍コメント` text NOT NULL,
  `登録日時` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `書籍名`, `書籍URL`, `書籍コメント`, `登録日時`) VALUES
(1, 'SQL入門 変更', 'www.aaa', '非常にすばらしい書籍', '2021-10-06 22:24:08'),
(2, 'JavaScript入門', 'www.bbb', '大変すばらしい', '2021-09-27 20:50:45'),
(3, 'ストレスフリー大全', 'www.ccc', 'ふつうのレベル', '2021-09-27 20:53:11'),
(4, 'CALCULUS', 'www.ddd', 'this was just awesome', '2021-09-27 20:54:33'),
(5, 'masa', 'www.aaaaaaaaaaaaa', 'cccccccccc', '2021-09-27 22:38:03'),
(6, 'masa', 'www.aaaaaaaaaaaaa', 'ccccccccccc', '2021-09-27 22:38:23'),
(7, 'masa', 'www.aaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', '2021-10-04 21:58:19'),
(8, 'masa', 'www.aaaaaaaaaaaaa', 'zzzzzzzzzzzz', '2021-10-04 23:22:50'),
(9, 'masa', 'www.aaaaaaaaaaaaa', 'aa', '2021-10-04 23:46:28'),
(10, 'masa', 'www.aaaaaaaaaaaaa', 'vvvvvvvvvvvvv', '2021-10-05 09:27:44'),
(11, 'masa', '編集', 'aaaaaaaaaaaaaa', '2021-10-05 20:44:22'),
(12, 'masa', 'www.aaaaaaaaaaaaa', 'zzzzzzzzzzzzz', '2021-10-05 20:51:52'),
(13, 'masa', 'www.aaaaaaaaaaaaa', 'ccccccccccc', '2021-10-06 15:51:37'),
(14, 'masa', '', 'mmmm', '2021-10-06 16:05:23'),
(16, 'masa', 'www.aaaaaaaaaaaaa', 'ddddddddd', '2021-10-06 16:42:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
