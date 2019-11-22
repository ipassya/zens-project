-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2019 pada 20.44
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu Adidas Neo cantik banget cocok untuk jalan jalan', 'Pakaian Pria', 1500000, 12, 'sepatu.jpg'),
(2, 'Kamera', 'Canon EOS 3000D Kit 18-55mm III Kamera DSLR - Black, hadir dengan 18 MP yang di dukung Processor DIGIC 4+ dan Sensor Size APS-C. di bekali LCD Monitor 2.7-in.', 'elektronik', 7000000, 12, 'kamera.jpg'),
(3, 'IPhone 11', 'IPhone 11 256GB warna hitam super kekinian cocok untuk milenial', 'elektronik', 24000000, 11, 'hp.jpg'),
(4, 'Laptop MSI', 'Laptop MSI G-series dengan spek super kentjeng parah', 'elektronik', 36000000, 2, 'laptop.jpg'),
(6, 'gaun', 'A-line dress bermotif garis dengan desain classic minimalist berwarna kuning ', 'Pakaian Wanita', 525000, 11, 'ellenaDress1.png'),
(7, 'Ellenna Dress', 'Dress tidak berlengan yang cocok untuk kamu yang suka naik gunung menyebrangi sungai layaknya bolang(bocah petualang).', 'Pakaian Wanita', 700000, 17, 'ellennaGrey.png'),
(10, 'Baju', 'Baju merah jambu polos dengan lengan pendek yang memudahkan kalian untuk berlari dan bergaya alay seperti gaya bebas,gaya dada,gaya batu ,dll dan paduan kancing-kancing yang simetris satu dengan yang lainnya', 'Pakaian Wanita', 2000000, 9, 'ellennaPink.png'),
(11, 'Jam Tangan Gold', 'Jam tangan dengan motif classic yang cocok dengan tangan pasanganmu', 'Pakaian Wanita', 2000000, 15, 'watchGold.png'),
(12, 'Sepatu', 'Sepatu dengan warna putih dengan emoticon smile ', 'Pakaian Wanita', 800000, 7, 'SepatuPutih.png'),
(13, 'Tas Super', 'Tas dengan tambahan corak dari kulit zebra dan kulit macan betina ', 'Pakaian Wanita', 1250000, 20, 'TassClassic.png'),
(14, 'celana pendek adidas', 'Celana pendek dengan model yang menarik di sertai logo adidas yang menambah penampilanmu semakin berani lagi.', 'Pakaian Wanita', 1000000, 9, 'celanapendek.png'),
(15, 'Jam Tangan', 'Jam tangan ori dengan harga yang mahal cocok bagi kalangan yang ingin membelinya dan yang memiliki kemampuan untuk membeli', 'Pakaian Pria', 2500000, 19, 'g-shock.png'),
(16, 'Baju Batik', 'Cintai produk dalam negeri batik buatan tangan dengan harga yang mahal dan kualitas terbaik yang nyaman di gunakan dengan motif yang menarik perhatian setiap mata yang memandang.', 'Pakaian Pria', 3500000, 10, 'batik.jpg'),
(17, 'sepatu', 'Sepatu dengan bahan kulit yang pernah di pakai Robert downey,jr. dapat meningkatkan charisma anda sebagai pria sejati yang memiliki model classic cocok bagi lelaki elegan ', 'Pakaian Pria', 1500000, 10, 'sepatupriapng.png'),
(18, 'Sling Bag', 'Sling bag dengan warna hitam dengan Material genuine leather yang menggunkan system resleting yang memudahkan dalam membuka  dan menutup demi menjaga ke amanan barang yang ada di dalamnya', 'Pakaian Pria', 300000, 6, 'SLINGBAG.jpg'),
(19, 'Topi', 'Topi lucu dengan icon ironman yang unch unch.........', 'Pakaian Anak-anak', 500000, 13, 'topi_ironman.jpg'),
(21, 'gaun', 'gaun dengan bahan yang nyaman dengan kombinasi warna dan motif yang membuat anak anda layaknya putri', 'Pakaian Anak-anak', 600000, 15, 'gaun_anak.jpg'),
(24, 'monitor', 'monitor dengan risolusi 4k++ dapat menampilkan gambar lebih nyata ', 'Elektronik', 1000000, 4, 'monitor.jpg'),
(25, 'Kemeja Super', 'kemeja super nyaman kali enaklah pokoknya murh pulak', 'Pakaian Pria', 100000, 10, 'super-kemeja.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Ihza Luckyan Passya', 'Boyolali, Jawa Tengah', '2019-11-05 19:59:29', '2019-11-06 19:59:29'),
(2, 'Dinda Ayu', 'Solo, Jawa Tengah', '2019-11-05 20:03:27', '2019-11-06 20:03:27'),
(3, 'Annisa', 'Indonesia', '2019-11-05 20:36:59', '2019-11-06 20:36:59'),
(5, 'dhito febrian', 'batam kota', '2019-11-06 16:25:25', '2019-11-07 16:25:25'),
(6, 'Ihza Luckyan Passya', 'Indonesia', '2019-11-12 21:26:46', '2019-11-13 21:26:46'),
(8, 'Luckyan', 'Jl Klaten', '2019-11-13 07:25:28', '2019-11-14 07:25:28'),
(9, 'Dhito Faza', 'Boyolali', '2019-11-19 14:32:11', '2019-11-20 14:32:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`) VALUES
(1, 1, 1, 'Sepatu', 1, 1500000),
(2, 1, 2, 'Kamera', 1, 7000000),
(3, 1, 4, 'Laptop MSI', 1, 36000000),
(4, 1, 3, 'IPhone 11', 1, 24000000),
(5, 2, 3, 'IPhone 11', 1, 24000000),
(6, 3, 1, 'Sepatu', 1, 1500000),
(7, 3, 2, 'Kamera', 1, 7000000),
(11, 5, 2, 'Kamera', 1, 7000000),
(12, 5, 3, 'IPhone 11', 1, 24000000),
(13, 5, 4, 'Laptop MSI', 1, 36000000),
(14, 5, 1, 'Sepatu', 1, 1500000),
(18, 5, 1, 'Sepatu', 1, 1500000),
(19, 5, 3, 'IPhone 11', 1, 24000000),
(20, 5, 13, 'Tas Classis', 1, 1250000),
(21, 6, 1, 'Sepatu', 1, 1500000),
(26, 8, 1, 'Sepatu', 1, 1500000),
(27, 8, 3, 'IPhone 11', 1, 24000000),
(28, 8, 4, 'Laptop MSI', 1, 36000000),
(29, 9, 1, 'Sepatu', 1, 1500000),
(30, 9, 2, 'Kamera', 1, 7000000),
(31, 9, 4, 'Laptop MSI', 1, 36000000);

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'Zens', 'zens', 'zens', 1),
(2, 'User Zens', 'user', 'user', 2),
(3, 'Ihza', 'ihza', 'super', 2),
(4, 'Super', 'super', 'super', 2),
(5, 'Admin', 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkId_brg` (`id_brg`),
  ADD KEY `fkId_invoice` (`id_invoice`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD CONSTRAINT `fkId_brg` FOREIGN KEY (`id_brg`) REFERENCES `tb_barang` (`id_brg`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkId_invoice` FOREIGN KEY (`id_invoice`) REFERENCES `tb_invoice` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
