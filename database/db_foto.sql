-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2022 pada 12.44
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_foto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-19 06:35:12', '29032019003635r.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`, `id`) VALUES
(3, 'Miftahul Arialdi', 'miff@gmail.com', '081380199366', 'Oke', '2022-01-14 12:48:43', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`, `id`) VALUES
(1, 'Kp. Warung Kaler Rt 004/02 Cibungur, Bungursari, Purwakarta', 'EggPhotography@gmail.com', '08585233222', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(11) NOT NULL,
  `nama_galery` varchar(100) NOT NULL,
  `foto_galery` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id_galery`, `nama_galery`, `foto_galery`, `id`) VALUES
(1, 'Sepak Bola', '12012022001623n.jpg', 0),
(2, 'Baby shoot', '12012022001646n.jpg', 0),
(3, 'Pre wedding', '12012022001728d.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`) VALUES
(2, 'Miftahul Arialdi', 'miff@gmail.com', '6b024e9f097fc2b58fcbc1cff221029d', '081380199366', 'Perum Kotabaru Permai 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_paket` text NOT NULL,
  `foto_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`, `ket_paket`, `foto_paket`) VALUES
(3, 'Paket Baby shoot Bronze', 500000, '1 pakaian bayi, 1 property set up, 10 File Hi-Res, Cetak 4 lbr 4R, Cetak 1 lbr 10R + Frame', '22012022075612n.jpg'),
(4, 'Paket Baby shoot Silver', 650000, '2 Pakaian Bayi, 3 Property SetUp, 15 File Hi-Res, Cetak 4 lbr 4R, 2 lbr 10R + Frame', '22012022075343n.jpg'),
(5, 'Paket Baby shoot Gold', 850000, '3 Pakaian Bayi, 3 Properti SetUp, 20 File Hi-Res, Cetak 6 lbr 4R, 2 lbr 10R, 1 lbr 12R + Frame, Baby book 11s 10x30 Cm', '12012022011130n.jpg'),
(6, 'Paket Pre-Wedding Silver', 1350000, '1 Lokasi Pemotretan\r\nCetak 1 Foto 30x40 Cm\r\n15 Foto Udah diedit', '22012022080857k.jpg'),
(7, 'Paket Pre-Wedding Golds', 1850000, '2 Lokasi Pemotretan\r\nMake Up & Hairdo\r\nCetak 1 Foto 40x60 Cm\r\n25 Foto Udah diedit + Memory', '22012022080122n.jpg'),
(9, 'Paket Tunangan 1 ', 1500000, 'a', '22012022075949n.jpg'),
(10, 'Paket Tunangan 2', 2750000, 'a', '22012022081023n.jpg'),
(11, 'Paket Pre-Wedding Platinum', 2250000, '3 Lokasi Pemotretan\r\nMake Up & Hairdo\r\nCetak 2 Foto 40x60 Cm\r\nCetak Album 20x30 Cm\r\n40 Foto Udah diedit + Memory', '22012022061339n.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '											<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">This is Therms and Conditions</span></p><p align=\"justify\"><br></p>											'),
(5, 'Rekening', 'rekening', '																																	123456789 Bank BCA a/n Miftahul A'),
(2, 'Privacy Policy', 'privacy', '											<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This is Privacy Policy</span>'),
(3, 'Tentang Kami', 'aboutus', '																																	<h5 style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: medium;\">Egg Photography bergerak dalam bidang jasa pemotretan didalam atau diluar ruang yang berlokasi di Kp. Warung Kaler RT. 004/02 Cibungur, Bungursari, Purwakarta</span></h5>																																	'),
(11, 'FAQs', 'faqs', '																																																																																																														<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara booking paket jasa fotografi disini?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\">A : 1. Pertama anda harus mendaftar terlebih dahulu sebagai member melalui menu yang telah disediakan.&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\">&nbsp; &nbsp; 2. Pilih Paket yang diinginkan&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\">&nbsp; &nbsp; 3. Setelah melakukan pemesanan, Anda dapat melihat riwayat pemesanan untuk melakukan Transaksi Pembayaran&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 1em;\">&nbsp; &nbsp; 4. Booking dilakukan sehari sebelum Tanggal booking pemesanan&nbsp;</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div>																																																																																																														');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `stt_trx` varchar(50) NOT NULL,
  `tgl_take` date NOT NULL,
  `jam_take` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_bayar` text NOT NULL,
  `ubah_tgl` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trx`, `email`, `id_paket`, `tgl_trx`, `stt_trx`, `tgl_take`, `jam_take`, `catatan`, `tgl_bayar`, `bukti_bayar`, `ubah_tgl`) VALUES
('07122021153950', 'miff@gmail.com', 2, '2021-12-07', 'Selesai', '2021-12-07', '14:00', 'Biasa\r\n', '2021-12-07', '0712202121483427062019005029IMG_20190209_161627.jpg', 0),
('07122021155657', 'miff@gmail.com', 2, '2021-12-07', 'Selesai', '2021-12-15', '12:00', 'biasa', '2021-12-07', '0712202121570827062019003520IMG_20190209_161627.jpg', 0),
('07122021170621', 'miff@gmail.com', 2, '2021-12-07', 'Selesai', '2021-12-07', '14:00', 'biasa\r\n', '2021-12-07', '07122021230641010620192020252805201917084534788684_10209405168685237_8233778212845387776_n.JPEG', 0),
('08122021102118', 'miff@gmail.com', 2, '2021-12-08', 'Selesai', '2021-12-08', '13:00', 'biasa', '2021-12-08', '0812202116254927062019005029IMG_20190209_161627.jpg', 0),
('14012022033949', 'miff@gmail.com', 3, '2022-01-14', 'Menunggu Pembayaran', '2022-01-15', '12:00', '', '0000-00-00', '', 0),
('19012022090144', 'miff@gmail.com', 2, '2022-01-19', 'Sudah Dibayar', '2022-01-19', '10:00', '', '2022-01-19', '19012022150254171-1177-1-PB.pdf', 0),
('19012022090527', 'miff@gmail.com', 3, '2022-01-19', 'Menunggu Pembayaran', '2022-01-19', '08:00', '', '0000-00-00', '', 0),
('28122021150040', 'miff@gmail.com', 2, '2021-12-28', 'Sudah Dibayar', '2021-12-14', '15:00', 'b', '2022-01-14', '1401202209403227062019003520IMG_20190209_161627.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indeks untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
