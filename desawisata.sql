-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 09:36 AM
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
-- Database: `desawisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `pass`, `tanggal_dibuat`) VALUES
('admin', 'admin', '2021-01-06 18:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_sub` int(11) NOT NULL,
  `toilet` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `pertemuan` enum('Ya','Tidak') NOT NULL,
  `penginapan` enum('Ya','Tidak') NOT NULL,
  `souvenir` enum('Ya','Tidak') NOT NULL,
  `jalan` enum('Mobil','Bus') NOT NULL,
  `mushola` enum('Ya','Tidak') NOT NULL,
  `foto` varchar(40) NOT NULL,
  `deskripsi` text NOT NULL,
  `biaya` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nama`, `id_kriteria`, `id_sub`, `toilet`, `pertemuan`, `penginapan`, `souvenir`, `jalan`, `mushola`, `foto`, `deskripsi`, `biaya`) VALUES
(1, 'Desa Brayut', 3, 11, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-f96956ac54.jpeg', 'Desa wisata Brayut terletak di Brayut, Pandowoharjo, Sleman, Yogyakarta. Desa wisata Brayut merupakan desa wisata berbasis budaya, dengan rumah adat joglo yang sudah berusia ratusan tahun sebagai daya tariknya. Selain itu, desa wisata Brayut menyuguhkan beberapa aktifitas wisata seperti kegiatan pertanian, kesenian, hingga aktifitas budaya. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, penginapan(homestay) hingga toko souvenir untuk wisatawan membeli oleh-oleh ataupun kenang-kenangan tanda telah berkunjung desa wisata Brayut. Para wisatawan yang ingin berkunjung tidak perlu khawatir, karena jalan menuju desa ini dapat dilalui Bus. Apabila ingin melalukan kegian di desa wisata brayut, wisatawan dapat mengambil paket mulai dari Rp 26.000,- yang terdiri dari 3 paket kegiatan. Untuk biaya tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(2, 'Desa Wisata Grogol', 2, 9, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-fbe1d66e93.jpg', 'Desa wisata Grogrol terletak di Margodadi, Seyegan, Sleman, Yogyakarta. Desa wisata Grogol merupakan desa wisata berbasis buatan, dengan egiatan outbound sebagai daya tariknya. Selain itu, desa wisata Grogol menyuguhkan beberapa kegiatan wisata lainnya seperti aktifitas budaya dan kegiatan dengan memanfaatkan kondisi alam yang ada di desa wisata Grogol. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan hingga penginapan(homestay) agar wisatawan dapat menikmati suasana di desa lebih lama .Para wisatawan yang ingin berkunjung tidak perlu khawatir, karena jalan menuju desa ini dapat dilalui Bus. Apabila ingin melalukan kegian di desa wisata Grogol, wisatawan dapat mengambil paket mulai dari Rp 55.000,- dengan kegiatan outbound. Untuk biaya tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(3, 'Desa Wisata Pentingsari', 1, 5, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-53ef0d2d20.jpg', 'Desa wisata Pentingsari terletak di Umbulharjo, Cangkringan, Sleman, Yogyakarta. Desa wisata Pentingsari merupakan desa wisata berbasis alam, dengan kegiatan susur sungai sebagai daya tariknya. Selain itu, desa wisata Pentingsari menyuguhkan beberapa kegiatan wisata lainnya seperti outound, edukasi wisata dalam berkebun, hingga aktifitas budaya. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, penginapan(homestay) hingga toko souvenir untuk wisatawan membeli oleh-oleh ataupun kenang-kenangan tanda telah berkunjung desa wisata Pentingsari. Untuk jalan menuju desa ini dapat dilalui mobil, karena bus hanya sampai di jalan besar. Meskipun demikian, wisatawan tidak perlu khawatir karena dari parkiran menuju titik kumpul hanya berjarak beberapa ratus meter saja . Apabila ingin melalukan kegian di desa wisata Pentingsari, wisatawan dapat mengambil paket mulai dari Rp 10.000,- /orang untuk 1 kegiatan. Untuk tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(4, 'Desa Wisata R. Domes', 3, 12, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-279b40fb63.jpg', 'Desa wisata rumah Domes terletak di Nglepen, Sumberharjo, Prambanan, Sleman, Yogyakarta. Desa wisata rumah Domes merupakan desa wisata berbasis budaya, dengan rumah teletubbies yang merupakan bangunan bersejarah sebagai daya tariknya. Selain itu, desa wisata rumah Domes menyuguhkan beberapa kegiatan wisata lainnya seperti outound, serta penjelasan sejarah awal mula adanya rumah Domes. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, penginapan(homestay) hingga toko souvenir untuk wisatawan membeli oleh-oleh ataupun kenang-kenangan tanda telah berkunjung desa wisata rumah Domes. Untuk jalan menuju desa ini dapat dilalui mobil, karena bus hanya sampai di jalan besar. Meskipun demikian, wisatawan tidak perlu khawatir karena dari parkiran menuju titik kumpul hanya berjarak beberapa ratus meter saja . Apabila ingin masuk ke wilayah rumah Domes, wisatawan dapat membeli tiket dengan harga Rp 5.000,- /orang. Untuk tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(5, 'Desa Wisata Kelor', 3, 12, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-6659715859.jpg', 'Desa wisata Kelor terletak di Kelor, Bangunkerto, Turi, Sleman, Yogyakarta. Desa wisata Kelor merupakan desa wisata berbasis budaya, dengan kampung sejarah sebagai daya tariknya. Selain itu, desa wisata Kelor menyuguhkan beberapa kegiatan wisata lainnya seperti outound, susur sungai hingga edukasi wisata dalam pertanian dan perkebunan. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, penginapan(homestay) hingga toko souvenir untuk wisatawan membeli oleh-oleh ataupun kenang-kenangan tanda telah berkunjung desa wisata Kelor. Untuk jalan menuju desa ini dapat dilalui bus. Apabila ingin melalukan kegian di desa wisata Kelor, wisatawan dapat mengambil paket mulai dari Rp 50.000,- /orang untuk 1 kegiatan. Untuk tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(6, 'Desa Wisata Gamplong', 4, 13, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-fa9827be15.jpg', 'Desa wisata Gamlong terletak di Sumber Rahayu, Moyudan, Sleman, Yogyakarta. Desa wisata Gamplong merupakan desa wisata berbasis kerajinan, dengan kegiatan kerajinan tenun sebagai daya tariknya. Selain itu, desa wisata Gamplong menyuguhkan beberapa kegiatan wisata lainnya seperti outound serta edukasi berbagai macam kerajinan yang berhubungan dengan bambu. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, penginapan(homestay) hingga toko souvenir untuk wisatawan membeli oleh-oleh ataupun kenang-kenangan tanda telah berkunjung desa wisata Pentingsari. Untuk jalan menuju desa ini dapat dilalui mobil, karena bus hanya sampai di jalan besar. Meskipun demikian, wisatawan tidak perlu khawatir karena dari parkiran menuju titik kumpul hanya berjarak beberapa ratus meter saja . Apabila ingin melalukan kegian di desa wisata Pentingsari, wisatawan dapat mengambil paket mulai dari Rp 25.000,- /orang untuk 1 kegiatan. Untuk tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(7, 'Desa Wisata Pulesari', 1, 5, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-91104b4cf0.jpg', 'Desa wisata Pulesari terletak di Wonokerto, Turi, Sleman, Yogyakarta. Desa wisata Pulesari merupakan desa wisata berbasis alam, dengan kegiatan susur sungai sebagai daya tariknya. Selain itu, desa wisata Pulesari menyuguhkan beberapa kegiatan wisata lainnya seperti edukasi wisata dalam bercocok tanam serta kesempatan untuk mencoba kegiatan sehari-hari para penduduk desa Pulesari. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, hingga penginapan(homestay) agar wisatawan dapat merasakan kehidupan di desa Pulesari. Untuk jalan menuju desa ini dapat dilalui menggunakan bus. Apabila ingin melalukan kegian di desa wisata Pulesari, wisatawan dapat mengambil paket mulai dari Rp 25.000,- /orang untuk 1 kegiatan. Untuk tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1'),
(8, 'Desa Wisata Sukunan', 2, 10, 'Tidak', 'Ya', 'Ya', 'Ya', 'Mobil', 'Ya', 'item-211118-e6d1ea345a.jpg', 'Desa wisata Sukunan terletak di Sukunan, Banyuraden, Gamping, Sleman, Yogyakarta. Desa wisata Sukunan merupakan desa wisata berbasis buatan, dengan kegiatan pengolahan limbah rumah tanga sebagai daya tariknya. Selain itu, desa wisata Sukunan menyuguhkan beberapa kegiatan wisata lainnya seperti edukasi wisata dalam pertenakan hingga pengolahan kotorannya serta kegiatan pertanian. Untuk fasilitas di desa wisata ini cukup lengkap. Mulai dari toilet, musholla, ruang pertemuan, penginapan(homestay) hingga toko souvenir untuk wisatawan membeli oleh-oleh ataupun kenang-kenangan tanda telah berkunjung desa wisata Sukunan. Untuk jalan menuju desa ini dapat dilalui mobil, karena bus hanya sampai di jalan besar. Meskipun demikian, wisatawan tidak perlu khawatir karena dari parkiran menuju titik kumpul hanya berjarak beberapa ratus meter saja . Apabila ingin melalukan kegian di desa wisata Pentingsari, wisatawan dapat mengambil paket mulai dari Rp 200.000,- /kelompok. Untuk tambahan kegiatan, menginap dan makan akan dilalukan tambahan harga sesuai dengan keinginan wisatawan.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `desa_log`
--

CREATE TABLE `desa_log` (
  `id_kriteria` int(11) NOT NULL,
  `id_sub` int(11) NOT NULL,
  `toilet` enum('Ya','Tidak') NOT NULL DEFAULT 'Tidak',
  `pertemuan` enum('Ya','Tidak') NOT NULL,
  `penginapan` enum('Ya','Tidak') NOT NULL,
  `souvenir` enum('Ya','Tidak') NOT NULL,
  `jalan` enum('Mobil','Bus') NOT NULL,
  `mushola` enum('Ya','Tidak') NOT NULL,
  `biaya` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kedekatan`
--

CREATE TABLE `kedekatan` (
  `id_kedekatan` int(11) NOT NULL,
  `id_sub1` int(11) NOT NULL,
  `id_sub2` int(11) NOT NULL,
  `nilai` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kedekatan`
--

INSERT INTO `kedekatan` (`id_kedekatan`, `id_sub1`, `id_sub2`, `nilai`) VALUES
(1, 1, 1, '1'),
(2, 1, 2, '0.75'),
(3, 1, 3, '0.5'),
(4, 1, 4, '0.25'),
(5, 2, 1, '0.75'),
(6, 2, 2, '1'),
(7, 2, 3, '0.75'),
(8, 2, 4, '0.5'),
(9, 3, 1, '0.5'),
(10, 3, 2, '0.75'),
(11, 3, 3, '1'),
(12, 3, 4, '0.75'),
(13, 4, 1, '0.25'),
(14, 4, 2, '0.5'),
(15, 4, 3, '0.75'),
(16, 4, 4, '1'),
(17, 5, 5, '1'),
(18, 5, 6, '0.95'),
(19, 5, 7, '0.9'),
(20, 5, 8, '0.85'),
(21, 5, 9, '0.8'),
(22, 5, 10, '0.75'),
(23, 5, 11, '0.7'),
(24, 5, 12, '0.65'),
(25, 5, 13, '0.6'),
(26, 6, 5, '0.95'),
(27, 6, 6, '1'),
(28, 6, 7, '0.95'),
(29, 6, 8, '0.9'),
(30, 6, 9, '0.85'),
(31, 6, 10, '0.8'),
(32, 6, 11, '0.75'),
(33, 6, 12, '0.7'),
(34, 6, 13, '0.65'),
(35, 7, 5, '0.9'),
(36, 7, 6, '0.95'),
(37, 7, 7, '1'),
(38, 7, 8, '0.95'),
(39, 7, 9, '0.9'),
(40, 7, 10, '0.85'),
(41, 7, 11, '0.8'),
(42, 7, 12, '0.75'),
(43, 7, 13, '0.7'),
(44, 8, 5, '0.85'),
(45, 8, 6, '0.9'),
(46, 8, 7, '0.95'),
(47, 8, 8, '1'),
(48, 8, 9, '0.95'),
(49, 8, 10, '0.9'),
(50, 8, 11, '0.85'),
(51, 8, 12, '0.8'),
(52, 8, 13, '0.75'),
(53, 9, 5, '0.8'),
(54, 9, 6, '0.85'),
(55, 9, 7, '0.9'),
(56, 9, 8, '0.95'),
(57, 9, 9, '1'),
(58, 9, 10, '0.95'),
(59, 9, 11, '0.9'),
(60, 9, 12, '0.85'),
(61, 9, 13, '0.8'),
(62, 10, 5, '0.75'),
(63, 10, 6, '0.8'),
(64, 10, 7, '0.85'),
(65, 10, 8, '0.9'),
(66, 10, 9, '0.95'),
(67, 10, 10, '1'),
(68, 10, 11, '0.95'),
(69, 10, 12, '0.9'),
(70, 10, 13, '0.85'),
(71, 11, 5, '0.7'),
(72, 11, 6, '0.75'),
(73, 11, 7, '0.8'),
(74, 11, 8, '0.85'),
(75, 11, 9, '0.9'),
(76, 11, 10, '0.95'),
(77, 11, 11, '1'),
(78, 11, 12, '0.95'),
(79, 11, 13, '0.9'),
(80, 12, 5, '0.65'),
(81, 12, 6, '0.7'),
(82, 12, 7, '0.75'),
(83, 12, 8, '0.8'),
(84, 12, 9, '0.85'),
(85, 12, 10, '0.9'),
(86, 12, 11, '0.95'),
(87, 12, 12, '1'),
(88, 12, 13, '0.95'),
(89, 13, 5, '0.6'),
(90, 13, 6, '0.65'),
(91, 13, 7, '0.7'),
(92, 13, 8, '0.75'),
(93, 13, 9, '0.8'),
(94, 13, 10, '0.85'),
(95, 13, 11, '0.9'),
(96, 13, 12, '0.95'),
(97, 13, 13, '1'),
(98, 14, 14, '1'),
(99, 14, 15, '0.5'),
(100, 15, 14, '0.5'),
(101, 15, 15, '1'),
(102, 16, 16, '1'),
(103, 16, 17, '0.5'),
(104, 17, 16, '0.5'),
(105, 17, 17, '1'),
(106, 18, 18, '1'),
(107, 18, 19, '0.5'),
(108, 19, 18, '0.5'),
(109, 19, 19, '1'),
(110, 20, 20, '1'),
(111, 20, 21, '0.5'),
(112, 21, 20, '0.5'),
(113, 21, 21, '1'),
(114, 22, 22, '1'),
(115, 22, 23, '0.5'),
(116, 23, 22, '0.5'),
(117, 23, 23, '1'),
(118, 24, 24, '1'),
(119, 24, 25, '0.5'),
(120, 25, 24, '0.5'),
(121, 25, 25, '1'),
(122, 26, 26, '1'),
(123, 26, 27, '0,7'),
(124, 26, 28, '0.4'),
(125, 27, 26, '0.7'),
(126, 27, 27, '1'),
(127, 27, 28, '0.7'),
(128, 28, 26, '0.4'),
(129, 28, 27, '0.7'),
(130, 28, 28, '1');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nm_kriteria` varchar(30) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nm_kriteria`, `bobot`) VALUES
(1, 'Kategori', 0.85),
(2, 'Daya Tarik', 0.8),
(3, 'Toilet', 0.7),
(4, 'Masjid/Musholla', 0.68),
(5, 'Ruang Pertemuan', 0.66),
(6, 'Penginapan', 0.64),
(7, 'Toko Souvenir', 0.62),
(8, 'Jalan', 0.57),
(9, 'Biaya', 0.75);

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_sub` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nm_sub` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id_sub`, `id_kriteria`, `nm_sub`) VALUES
(1, 1, 'Alam'),
(2, 1, 'Buatan'),
(3, 1, 'Budaya'),
(4, 1, 'Kerajinan'),
(5, 2, 'Sungai'),
(6, 2, 'Agrowisata'),
(7, 2, 'Wisata Alam'),
(8, 2, 'Peternakan'),
(9, 2, 'Outbound'),
(10, 2, 'Pengolahan Limbah'),
(11, 2, 'Rumah Adat'),
(12, 2, 'Rumah Sejarah'),
(13, 2, 'Kerajinan Tangan'),
(14, 3, 'Toilet - Ya'),
(15, 3, 'Toilet - Tidak'),
(16, 4, 'Musholla - Ya'),
(17, 4, 'Musholla - Tidak'),
(18, 5, 'Ruang Pertemuan - Ya'),
(19, 5, 'Ruang Pertemuan - Tidak'),
(20, 6, 'Penginapan - Ya'),
(21, 6, 'Penginapan - Tidak'),
(22, 7, 'Toko Souvenir - Ya'),
(23, 7, 'Toko Souvenir - Tidak'),
(24, 8, 'Jalan -Mobil'),
(25, 8, 'Jalan - Bus'),
(26, 9, 'Biaya < 20.000 '),
(27, 9, 'Biaya 20.000 - 40.000'),
(28, 9, 'Biaya > 40.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `kedekatan`
--
ALTER TABLE `kedekatan`
  ADD PRIMARY KEY (`id_kedekatan`),
  ADD KEY `id_sub1` (`id_sub1`),
  ADD KEY `id_sub2` (`id_sub2`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_sub`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kedekatan`
--
ALTER TABLE `kedekatan`
  MODIFY `id_kedekatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
