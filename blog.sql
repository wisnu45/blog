-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2022 pada 09.33
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi_berita` varchar(1000) NOT NULL,
  `tgl_posting` date NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul_galeri` varchar(255) NOT NULL,
  `gmbr_galeri` varchar(255) NOT NULL,
  `ket` varchar(1000) NOT NULL,
  `tgl_posting` date NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nm_kategori` varchar(255) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_komentar` date NOT NULL,
  `ket` varchar(1000) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `desc`, `img`, `cat`, `date`, `uid`) VALUES
(15, 'Berjuang Melestarikan Pusaka agar Tetap Berharga', '<p class=\"ql-align-justify\">Panasnya terik matahari tak menghalangi kemeriahan dalam bazar dan expo muktamar 48 di Surakarta, ada banyak sekali expo yang dibuka seperti bagian kuliner, produk kecantikan, alat ibadah, dan lain-lain. Salah satu expo yang menarik perhatian saya adalah expo pameran keris yang didirikan olah Eswan Mustofa dan kawan-kawan. Eswan membentuk kelompok yang berfokus pada pemeliharaan peninggalan kerajaan-kerajaan muslim di nusantara terutama pada benda pusaka yang diberi nama INCREASE Indonesia Creation Study And Relief.</p><p class=\"ql-align-justify\">Anak zaman sekarang sangat jarang ada yang mau merawat benda-benda pusaka seperti keris atau benda pusaka lainnya. Eswan sendiri prihatin terhadap orang-orang zaman sekarang yang tidak peduli terhadap barang-barang peninggalan bersejarah, tidak sedikit yang dirusak, dipotong, dibuang oleh mereka yang tidak paham dengan benda-benda pusaka tersebut. Padahal benda-benda tersebut adalah peninggalan sejarah yang bisa ber', '1670395773066seni1.jpg', 'art', '2022-12-07 13:49:33', 9),
(16, 'Tips Menulis & Memotret Ala Raditya Dika', '<p><span style=\"color: rgb(51, 51, 51);\">Inspirasi menjadi kata kunci yang diperlukan bagi banyak orang untuk membuat suatu karya berkualitas. Inspirasi sendiri bisa datang dari mana saja, selama orang tersebut bisa menuangkannya dengan baik ke dalam sebuah karya, baik itu tulisan maupun fotografi.</span></p><p><span style=\"color: rgb(51, 51, 51);\"> Seperti yang dilakukan penulis sekaligus konten kreator Raditya Dika dan fotografer profesional Putri Anindya dalam Webinar Lomba Foto Astra dan Anugerah Pewarta Astra 2022 dengan tema \"Bangkit Bersama untuk Indonesia\", Jumat (2/12).</span></p><p><span style=\"color: rgb(51, 51, 51);\"> </span></p><p><span style=\"color: rgb(51, 51, 51);\"> Raditya misalnya. Dia menyebut hampir semua karyanya, baik tulisan, film, hingga stand up komedi berawal dari kegelisahaan. Dia menjadikan kegelisahaan dalam hidupnya sebagai sumber inspirasi untuk membuat karya.\"Semua seni adalah alat menyampaikan kegelisahaan. Kebetulan tulisan gw itu semua tentang kegelis', '1670395939450seni2.jpg', 'art', '2022-12-07 13:52:19', 9),
(17, 'Eksplorasi Digital Art	', '<p>Melukis Tanpa Kertas dan Tanpa Kanvas. Dengan semakin banyaknya aplikasi, maka menghasilkan karya seni semakin mudah, murah, praktis dan menyenangkan. File digital dapat diedit kapan saja jika diperlukan. Hasil karya dapat diaplikasikan sebagai cover buku, ilustrasi maupun untuk menghiasi halaman artikel. Membuat ilustrasi, tulisan atau lukisan menjadi mudah, semudah bernafas. Tanpa kertas, halaman kosong selalu tersedia. Warna, tidak terbatas dan tidak akan pernah habis, tidak perlu kotor tangan kita.</p><p>Tidak perlu kuas, bahkan kuas dapat diubah bentuk sesuka hati. Kuas dapat diganti memakai stylus yang ujungnya dapat disetel sesuka hati. Market Place Untuk Digital Art. Sudah ada beberapa Market Place untuk memasarkan Digital Art.</p><p>1. Ada yang dibayar pakai US Dollar.</p><p>2. Ada yang dibayar pakai Crypto Currency.</p><p>Kalau kita dibayar pakai US Dollar pasti akan senang, meskipun harus ditukarkan terlebih dahulu ke Rupiah dengan dipotong biaya administrasi. Semua mekan', '1670396257736seni3.jpg', 'art', '2022-12-07 13:57:38', 9),
(18, 'Seni Musik Tradisional Indonesia yang Mendunia', '<p><span style=\"color: rgb(42, 42, 42);\">&nbsp;Kekayaan budaya Indonesia yang beragam yang dimiliki Indonesia, salah satunya adalah seni musik tradisional yang memiliki keunikan tersendiri. Meskipun memiliki karakteristik tradisional, namun di dalam perkembangannya beberapa jenis musik ini sudah cukup dikenal di mancanegara. Bahkan saat ini, sudah ada grup-grup seni musik tradisional yang berasal dari luar negeri. Beberapa seni musik tradisional yang sudah terkenal dan&nbsp;mendunia adalah gamelan, angklung, kolintang, dan sasando. </span></p><p><span style=\"color: rgb(42, 42, 42);\">Gamelan adalah seni musik orkestra asli Indonesia yang sudah sangat digemari oleh masyarakat mancanegara. Gamelan yang paling terkenal adalah gamelan Jawa, selain gamelan jawa ada juga gamelan bali dan gamelan sunda. Perbedaanya terletak pada susunan beberapa alat musik dan nada yang dimainkan. Gamelan Jawa memiliki nada yang lebih lembut dan bertempo lebih lambat.</span></p><p><span style=\"color: rgb(42, 4', '1670396409011seni4.jpg', 'art', '2022-12-07 14:00:09', 9),
(19, 'Pengertian Seni Tari dan Fungsinya Menurut Para Ahli', '<p><span style=\"color: black;\">Pengertian Seni Tari dan Fungsinya Menurut Para Ahli</span></p><p><span style=\"color: black;\"> </span></p><p><span style=\"color: black;\"> Seni tari adalah gerak yang diberi bentuk ritmis dari anggota badan di dalam ruang dan waktu tertentu. Seni tari juga menjadi bagian dari bentuk ekspresi gerak tubuh.</span></p><p><span style=\"color: black;\"> Untuk lebih memahami seni tari, siswa bisa simak pengertian dan fungsi seni tari menurut beberapa ahli.</span></p><p><span style=\"color: black;\"> </span></p><p><span style=\"color: black;\"> </span></p><h3><span style=\"color: black;\">Pengertian Seni Tari</span></h3><p><span style=\"color: black;\"> Mengutip buku Mengenal Seni Tari Indonesia (2019) karya Muryanto, berikut ini penjelasan mengenai seni tari.</span></p><p><span style=\"color: black;\"> 1. Drs. S. Humardani</span></p><p><span style=\"color: black;\"> Seni tari adalah ungkapan bentuk-bentuk dari gerak ekspresif yang indah serta ritmis.</span></p><p><span style=\"', '1670396623888seni5.jpg', 'art', '2022-12-07 14:03:44', 9),
(20, '‘Procrastinate’ atau menunda-nunda pekerjaan ada hubungannya dengan masalah kesehatan dan karir', '<p><span style=\"color: black;\">Apakah kamu pernah menyalahkan diri sendiri karena menunda-nunda pekerjaan (</span><em style=\"color: black;\">procrastination</em><span style=\"color: black;\">)? Kamu mungkin pernah menunda menulis pesan pada seorang teman, menunda mengerjakan laporan penting untuk sekolah atau pekerjaan, dan melakukan semampu kamu untuk menghindari suatu hal, tetapi jauh di lubuk hati, kamu tahu bahwa kamu harus melanjutkannya. Sayangnya, mengatakan pada diri sendiri untuk tidak menunda tidak akan menghentikan hal tersebut. Faktanya, ini adalah salah satu cara terburuk untuk melakukannya. Menunda-nunda pekerjaan merupakan hal yang perlu ditanggapi dengan serius, karena berdasarkan penelitian saya, hal ini bukan hanya soal membuang-buang waktu tetapi sebenarnya terkait dengan masalah lain yang nyata.</span></p><p><br></p><p><em style=\"color: black;\">Procrastination</em><span style=\"color: black;\">&nbsp;tidak disebabkan oleh rasa malas atau manajemen waktu yang buruk. Studi ', '1670397525313science1.jpg', 'science', '2022-12-07 14:18:45', 10),
(21, ' Gempa Cianjur: ahli jelaskan mengapa gempa dangkal lebih destruktif', '<p><span style=\"color: black;\">Pada tanggal 21 November 2022, gempa bumi di dekat kota Cianjur, Jawa Barat menyebabkan setidaknya&nbsp;</span><a href=\"https://www.bbc.com/news/world-asia-63712461\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(75, 75, 78);\">268 kematian dan merusak 22.000 bangunan</a><span style=\"color: black;\">. Dengan kekuatan 5,6 skala richter, gempa ini jauh lebih kecil daripada banyak&nbsp;</span><a href=\"https://www.ngdc.noaa.gov/hazel/view/hazards/earthquake/search\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(75, 75, 78);\">gempa bumi lainnya</a><span style=\"color: black;\">&nbsp;yang telah menyebabkan kematian dan kehancuran di Indonesia selama beberapa dekade terakhir. Mengapa gempa Cianjur sangatlah berbeda? Salah satu alasan utama yang membuat gempa bumi ini begitu merusak adalah kedalamannya yang dangkal, yaitu 10 km.</span></p><p><span style=\"color: black;\">Peristiwa ini harus menjadi peringatan untuk meningkatkan praktik kontruk', '1670397857708science2.jpg', 'science', '2022-12-07 14:24:18', 10),
(22, 'Seperti manusia, ikan juga perlu tidur    ', '<p><span style=\"color: black;\">Para ilmuwan masih mempelajari cara ikan tidur. Yang kami tahu adalah tidur ikan&nbsp;</span><a href=\"https://animals.howstuffworks.com/fish/do-fish-sleep.htm\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(75, 75, 78);\">tidaklah seperti tidur manusia</a><span style=\"color: black;\">.</span></p><p><span style=\"color: black;\">Salah satu perbedaannya adalah, manusia, tidak menyadari lingkungan mereka sepanjang mereka tertidur, meskipun suara keras mungkin membangunkan mereka. Namun, hampir sepanjang waktu tidurnya, ikan akan tetap waspada untuk mendeteksi pemangsa yang mendekat.</span></p><p><span style=\"color: black;\">Tampaknya sebagian besar ikan memiliki siklus tidur seperti manusia. Ikan yang hidup di akuarium tidur selama&nbsp;</span><a href=\"https://whypetfish.com/how-many-hours-do-fish-sleep-a-day/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(75, 75, 78);\">tujuh hingga duabelas jam setiap hari</a><span style=\"color: black;', '1670398040958science3.jpg', 'science', '2022-12-07 14:27:21', 10),
(23, 'Penglihatan Malam Kucing Sangat Tajam', '<p class=\"ql-align-justify\"><span style=\"color: rgb(18, 20, 25);\">Mata kucing merupakan salah satu bukti kesempurnaan Allah dalampenciptaan. Allah telah menciptakan mata kucing dengan&nbsp;pengaturan dan&nbsp;letak yangsesuai dengan makhluknya. Di salah satu&nbsp;ayat, Allah berfirman tentangkesempurnaan ciptaannya ;</span></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong style=\"color: rgb(18, 20, 25);\">Dia – lah&nbsp;Allah yang menciptakan, yang mengadakan, yangmembentuk rupa, Dia memiliki nama –&nbsp;nama yang indah, apa yangada di langit dan di&nbsp;bumi bertasbih kepada – Nya. Dan Dialah yangMaha perkasa lagi Maha bijaksana.&nbsp;(QS. Al-Hasyr 24).</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(18, 20, 25);\">Kucing dapat dengan mudah membedakan warna hijau, biru dan merah. alaupunbegitu, kelebihan sebenarnya dari mata kucing adalah agar&nbsp;dapat melihat di malamhari. Kel!pak mata kucing terbuka di mal', '1670398159207science4.jpg', 'science', '2022-12-07 14:29:19', 10),
(24, 'Tulang Ekor Manusia Tak Hancur hingga Kiamat, Terbukti Ilmiah dan Sesuai Alquran', '<p class=\"ql-align-justify\"><span style=\"color: rgb(67, 67, 67);\">Manusia&nbsp;bakal mengalami proses pembusukan serta penguraian hingga tubuh-tubuh hancur, ini berlangsung ketika meninggal dunia dan dikubur ke dalam tanah. Namun, ada satu bagian di dalam tubuh manusia yang tidak akan pernah hancur setelah dimakamkan, kekal dan dibangkitkan saat kiamat terjadi, yakni tulang ekor.</span></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(67, 67, 67);\">Ilmuwan telah mencoba melarutkan secara kimia dengan asam yang sangat kuat, melalui pembakaran, bahkan dipukul benda keras, hingga diberi berbagai jenis radiasi, namun tulang ekor ini tidak bisa dihancurkan sepenuhnya. Dirangkum dari buku Miracles of Al-Qur\'an &amp; As-Sunnah, disebutkan bahwa para ahli embriologi membuktikan jika tubuh manusia diciptakan dari untai sangat halus, dinamai untai primer.</span></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><span style=\"color: rgb(67', '1670398333761science6.jpg', 'science', '2022-12-07 14:32:13', 10),
(25, 'Teknologi Wireless', '<p>Teknologi digital terakhir yang sedang tren saat ini adalah wireless atau nirkabel. </p><p>Di mana, teknologi digital ini merupakan teknologi tanpa membutuhkan kabel sebagai transmisi data sehingga akan memudahkan kehidupan manusia untuk urusan telekomunikasi, kontrol kendali, sampai transportasi.</p><p>Apalagi teknologi wireless kini berkembang cukup pesat yang penerapannya sudah dilakukan di kehidupan sehari-hari.</p><p>Di mana, komunikasi melalui smartphone menjadi contoh jelas yang memungkinkan komunikasi dilakukan secara mobile untuk hampir semua kalangan usia. </p><p>Mengingat, keberadaan smartphone saat ini menjadi salah satu kebutuhan primer.</p>', '1670398649117teknologi1.jpg', 'technology', '2022-12-07 14:37:29', 11),
(26, 'Internet of Things atau IoT', '<p>Istilah IoT atau Internet of Things juga tidak kalah terkenalnya saat ini. </p><p>Di mana, IoT adalah interkoneksi antara alat maupun objek dengan jaringan internet sehingga memungkinkan penggunaannya dapat dipantau dari jarak jauh melalui koneksi internet.</p><p>Menurut oracle.com, ada sebanyak lebih dari 7 miliar device yang terhubung dengan IoT dan diperkirakan jumlahnya bakal terus meningkat mencapai 22 miliar di tahun 2025.</p><p>Teknologi digital ini menjadi tren berkat kepraktisannya dalam penerapan di aktivitas sehari hari. </p><p>Misalnya saja, pada lampu atau AC yang dikendalikan melalui smartphone dan mobil masa depan yang mampu berjalan tanpa driver dengan pengendalian otomatis berbasis GPS serta jaringan internet.</p>', '1670398719110teknologi2.jpg', 'technology', '2022-12-07 14:38:39', 11),
(27, 'Institut Teknologi Sepuluh Nopember (ITS) kembali mencetak inovasi.', '<p><span style=\"color: black;\"> Setelah sebelumnya membuat inovasi desain kendaraan listrik ramah lingkungan bernama i-Deora pada 2021, kali ini ITS berinovasi dengan meluncurkan mobil listrik multiguna.</span></p><p><span style=\"color: black;\"> Inovasi mobil tersebut bernama Multipurpose Electric Vehicle ITS (MEvITS). Peluncuran mobil ini dilakukan di Departemen Teknik Mesin ITS pada Minggu (27/11) kemarin.</span></p><p><span style=\"color: black;\"> </span></p><p><span style=\"color: black;\"> Peluncuran mobil karya sivitas akademika ITS ini dilangsungkan bersamaan dengan perhelatan tahunan temu alumni Teknik Mesin ITS yang bertajuk Pulang Bengkel. Peluncuran ini turut disaksikan oleh para alumni Teknik Mesin dari berbagai angkatan.</span></p>', '1670398820203teknologi3.jpg', 'technology', '2022-12-07 14:40:20', 11),
(28, 'Vespa S 125 I-GET', '<p>terdiri dari tiga varian warna yakni Merah, Kuning, dan Abu-abu. Menariknya, salah satu perubahan yang paling terlihat pada Vespa S adalah bentuk baru dari sadel kursi ganda yang juga dilengkapi dengan bahan sadel baru untuk tempat duduk yang nyaman dan tampilan premium. Untuk satu unit Vespa S 125 I-GET dibanderol harga Rp 41,5 juta. </p><p><br></p><p>Harga tersebut adalah harga On the Road (OTR) wilayah Jabodetabek. Harga di kota lain mungkin berbeda. Perusahaan berhak untuk membuat perubahan teknis, gaya, dan penampilan setiap saat. Spesifikasi Mesin: i get, silinder tunggal, 4-tak, 3 katup Kapasitas tangki bahan bakar: sekitar 7 liter Sistem distribusi bahan bakar: Injeksi elektronik Pemindahan: 124,5 cc Maksimal torsi: 10,2 Nm @ 6.000 rpm Maksimal tenaga: 7,6 kW @ 7.600 rpm Suspensi depan: Lengan tunggal dengan pegas heliks dan peredam kejut hidrolik kerja ganda tunggal Suspensi belakang: Peredam kejut dengan preload yang dapat disesuaikan dengan 4 pengaturan Transmisi: CVT oto', '1670398901601teknologi4.jpg', 'technology', '2022-12-07 14:41:41', 11),
(29, 'Perkembangan Teknologi Smartphone', '<p><span style=\"color: black;\">Di era modern sekarang, siapa yang tidak kenal smartphone?, saat ini smartphone telah menjadi kebutuhan dalam hidup kita. Mulai dari anak kecil, remaja, bahkan orang tua sekalipun, tidak asing lagi dengan yang namanya smartphone. Seiring berkembangnya teknologi, smartphone selalu memiliki fitur-fitur terbaru dan memiliki body yang menarik dan unik. Salah satu fitur yang menarik adalah fingerprint, fitur ini berfungsi untuk mengetahui identitas kita melalui sidik jari yang dikenali system. </span></p><p><br></p><p><span style=\"color: black;\">Setelah itu muncul lagi teknologi face unlock, cara kerja nya hampir sama seperti fingerprint, tetapi menggunakan pengenalan wajah.Bagaimana untuk smartphone pada masa depan?, di masa sekarang sudah banyak kemajuan teknologi yang luar biasa, seperti sensor fingerprint pada layar, ataupun iris scanner, yang membuat penampilan fisik smartphone lebih elegan tanpa ada fingerprint scanner di body smartphone.</span></p><p><b', '1670399023298teknologi5.jpg', 'technology', '2022-12-07 14:43:43', 11),
(30, 'Film Bukan Hanya Sekedar Hiburan', '<p class=\"ql-align-justify\"><span style=\"color: black;\">Menonton film adalah alternatif hiburan yang sering dipilih ketika merasa penat atau bosan dengan rutinitas. Apalagi kini banyak tersedia&nbsp;</span><em style=\"color: black;\">platform</em><span style=\"color: black;\">&nbsp;digital dari yang gratis hingga berbayar yang menawarkan beragam genre film dan bisa ditonton di mana saja melalui ponsel.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">Selain meredakan penat, menonton film bisa mengalihkan kita sementara dari hiruk-pikuk dunia nyata. Ada juga manfaat positif lain yang bisa kita dapat dari menonton film, bukan hanya sebagai hiburan yang kadang dianggap membuang-buang waktu. Berikut manfaat positif menonton film yang bisa kita dapat.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;</span><strong style=\"color: black;\">Mengusir stres</strong></p><p class=\"ql-align-justify\"><span style=\"color: black;\">Bagi b', '1670399347409CINEMA1.jpg', 'cinema', '2022-12-07 14:49:07', 12),
(31, 'Belajar dari Novel Tere Liye yang Sukses Jadi Sinema Indonesia', '<p>&nbsp;Tere Liye sebagai nama pena dari Darwis mulai dari 2005. Sejak awal menulis sampai dengan tahun 2020, Tere Liye telah menghasilkan 28 buku yang telah rilis dan dapat ditemukan di toko buku terdekat atau dapat pula membeli secara pre-order di online shop. Novel Tere Liye yang di filmkan beberapa diantaranya telah dirilis di Indonesia dan juga mendapatkan beberapa penghargaan bergengsi di Indonesia maupun negara lain. Novel tersebut diantaranya,</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-justify\">Novel \'Hafalan Shalat Delisa\' yang menceritakan mengenai seorang anak yang menghafal doa shalat demi mendapatkan hadiah kalung dari ibunya namun, mendapatkan kejadian yang tidak akan pernah dilupakan yaitu tsunami yang sekaligus merenggut ibu, ketiga kakaknya, juga beberapa teman-temannya.&nbsp;</p><p class=\"ql-align-justify\">&nbsp;</p><p class=\"ql-align-justify\">Film ini sebelumnya telah dirilis pada tahun 2011 dengan aktor dan aktris ternama di Indonesia. Hingga saat ', '1670399433117CINEMA2.jpg', 'cinema', '2022-12-07 14:50:33', 12),
(32, 'Soekarno, Glorifikasi, dan Film Dokumenter', '<p>&nbsp;Pada 14 Agustus 2022, film dokumenter tentang Soekarno bakal dirilis di Surabaya. Film Koesno, Jati Diri Soekarno, diproduksi oleh TVRI Jawa Timur bekerja sama dengan Perkumpulan Begandring Soerabaia.</p><p class=\"ql-align-justify\">Eri Cahyadi wali kota Surabaya yang baru pertama main film, memerankan sosok Soekarno dewasa. Soekarno yang pernah hidup cukup lama di Surabaya. Yang tempat kelahirannya sempat diperdebatkan. Di mana publik awalnya tahu Soekarno lahir di Blitar. Bertahun-tahun.</p><p class=\"ql-align-justify\">Namun tempat kelahiran Soekarno direvisi. Soekarno ternyata lahir di Kampung Pandean Surabaya. Itu mengacu sumber dan referensi yang kuat, seperti ijazah, pengakuan Soekarno dengan kolumnis Amerika Serikat Cindy Adam, dan masih banyak lagi.</p><p class=\"ql-align-justify\">Sebagai penikmat film, saya tentu senang dan bersyukur lahirnya kreativitas yang menjadi kearifan lokal. Munculnya ide segar yang menghibur untuk menyampaikan pesan ke publik tentang kisah dan s', '1670399561772CINEMA3.jpg', 'cinema', '2022-12-07 14:52:41', 12),
(33, 'Tips Membut Sebuah Video yang Bagus', '<p>&nbsp;Seiring dengan berkembangnya zaman, Komunikasi disampaikan dalam berbagai macam cara salah satunya memalui video. Orang-orang saat ini mengembel-embelkan video yang bagus tersebut dengan sebutan video cinematic, Jadi video cinematic look adalah video yang terlihat seperti layaknya film. dapat disimpulkan bahwa cinematic video itu adalah pengolahan video menjadi tampilan seperti dalam format film.&nbsp;</p><p class=\"ql-align-justify\">Namun banyak faktor juga yang mempengaruhi sehingga video itu nampak cinematic. Sedangkan menurut kaidah sineas (sebutan bagi mereka penggarap film) sinematik adalah unsur pembangun sebuah film yang bersifat teknik, unsur sinematik sendiri terdiri dari beberapa aspek yaitu mise en scene, sinematografi, editing dan suara.</p><p class=\"ql-align-justify\">RENCANAKAN</p><p class=\"ql-align-justify\">Bagian terpenting sebelum membuat video yang bagus adalah perencanaan, mulai dari konsep, ide cerita, lokasi, floor plan hingga storyboard tentunya harus dibu', '1670399668233CINEMA4.jpg', 'cinema', '2022-12-07 14:54:28', 12),
(34, 'Pemerataan Bioskop adalah Kunci Sukses Perfilman Nasional', '<p>Seiring dengan kemajuan perfilman nasional, perbioskopan nasional kini juga semakin bertumbuh. Tidak hanya di kota-kota besar saja, tetapi juga di daerah-daerah di penjuru tanah air.&nbsp;</p><p class=\"ql-align-justify\">Tidak hanya bioskop berjaringan, bioskop non jaringan atau independen kini juga tumbuh subur di banyak tempat. Baik bioskop jaringan atau non jaringan kini memiliki peluang sukses yang sama.</p><p class=\"ql-align-justify\">Berkat teknologi film digital, bioskop manapun kini bisa memutar film-film terbaru. Misalnya bioskop di kecamatan Genteng, Kabupaten Banyuwangi bisa memutar film terbaru yang juga diputar di bioskop-bioskop di kota-kota besar seperti Jakarta, Bandung atau Surabaya.</p><p class=\"ql-align-justify\">Kini dengan teknologi film digital, film-film terbaru dapat didistribusikan secara merata dengan mudah. Tidak ada lagi kesenjangan tontonan film antara warga kota dan daerah karena kini mereka memiliki kesempatan menonton film terbaru yang sama.</p><p class=', '1670400044626CINEMA5.jpg', 'cinema', '2022-12-07 15:00:44', 12),
(35, 'Inspirasi Trend Minimalis a La Street Style Fashion Week ', '<p>&nbsp;<span style=\"color: black;\">Gaya minimalis merupakan salah satu&nbsp;</span><em style=\"color: black;\">trend</em><span style=\"color: black;\">&nbsp;yang paling disukai karena nggak sulit diaplikasikan dan cocok dengan selera banyak orang. Meskipun terlihat simpel, kunci dari gaya ini adalah potongan dari desain baju yang membuat&nbsp;</span><em style=\"color: black;\">look</em><span style=\"color: black;\">-nya jadi&nbsp;</span><em style=\"color: black;\">effortless</em><span style=\"color: black;\">&nbsp;dan modis.</span></p><p><span style=\"color: black;\">Cukup koleksi&nbsp;</span><em style=\"color: black;\">item basic</em><span style=\"color: black;\">, seperti kemeja,&nbsp;</span><em style=\"color: black;\">tailored pants</em><span style=\"color: black;\">, dan&nbsp;</span><em style=\"color: black;\">blazer</em><span style=\"color: black;\">, kamu sudah bisa tampil sempurna. Berikut ini deretan&nbsp;</span><em style=\"color: black;\">outfit</em><span style=\"color: black;\">&nbsp;minimalis dari&nbsp', '1670400637792desain1.jpg', 'design', '2022-12-07 15:10:37', 13),
(36, 'Yuk, Buat Desain Rumah Kamu Lebih Menarik dengan Penggunaan Rotan!', '<p>Sebelum mengetahui tips untuk mendesain rumah kamu dengan rotan, mari ketahui dulu beberapa hal tentang rotan. Rotan adalah tanaman yang tumbuh di daerah bagian tropis Afrika dan Asia. Indonesia merupakan salah satu negara penghasil rotan terbesar di dunia yang dihasilkan dari kawasan hutan Kalimantan, Sumatera, Sulawesi dan Papua.&nbsp;</p><p class=\"ql-align-justify\">Rotan juga sering dikaitkan dengan produk green karena merupakan salah satu material yang ramah lingkungan jika dibandingkan dengan material lain seperti kayu. Selain itu, sifat material rotan yang mudah lentur dan mudah dibentuk serta tahan lama, membuat material ini sangat disukai para desainer yang ingin menambah unsur artistik di dalam desain ruangannya.&nbsp;</p><p class=\"ql-align-justify\">Oleh karena itu, yuk kita simak apa saja yang dapat membuat rumah kamu lebih menarik dengan menggunakan rotan!</p><p class=\"ql-align-justify\">1. Lampu Gantung</p><p class=\"ql-align-justify\">Lampu gantung merupakan salah satu aks', '1670400726133desain2.jpg', 'design', '2022-12-07 15:12:07', 13),
(37, 'HDMI sebut desainer mebel lokal masih terkendala ekosistem', '<p class=\"ql-align-justify\"><span style=\"color: rgb(49, 49, 50);\">Tenaga desainer dalam negeri terus bertambah seiring dengan semakin banyaknya sekolah-sekolah desain yang dibuka di Indonesia. Sayangnya, ekosistem industri furnitur dalam negeri dinilai belum bisa mengakomodasi keterampilan-keterampilan yang dimiliki oleh desainer dalam negeri.</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(49, 49, 50);\">“Kendalanya kita tak terkoneksi, ekosistemnya itu kita belom jadi, sementara kalau di Vietnam di Cina dia udah jadi semua, jadi desainernya udah&nbsp;</span><em style=\"color: rgb(49, 49, 50);\">connected&nbsp;</em><span style=\"color: rgb(49, 49, 50);\">ke produsen dan ke&nbsp;</span><em style=\"color: rgb(49, 49, 50);\">trader</em><span style=\"color: rgb(49, 49, 50);\">-nya,“ ujar Ketua Himpunan Desainer Mebel Indonesia (HDMI), Ira Samri kepada Kontan.co.id (23/09).</span></p><p class=\"ql-align-justify\"><span style=\"color: rgb(49, 49, 50);\">Permasalahan di atas menghambat indu', '1670400811255desain3.jpg', 'design', '2022-12-07 15:13:31', 13),
(38, 'Berkenalan dengan Front End dan Lingkup Kerjanya', '<p class=\"ql-align-justify\"><span style=\"color: black;\">Dengan sebutannya sebagai&nbsp;</span><em style=\"color: black;\">client-side</em><span style=\"color: black;\">” ini, bisa disebutkan bahwa pekerjaan ini banyak berkaitan dengan pengguna. Terutama, mereka yang memakai situs atau aplikasi dari perusahaan.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">Jadi, bayangkan sebuah perusahaan memiliki aplikasi. Nah, ketika ada orang yang melihat aplikasi itu, di situlah tim ini bekerja.&nbsp;</span><em style=\"color: black;\">Front end</em><span style=\"color: black;\">&nbsp;membuat interaksi dengan pengguna lewat banyak halaman, klik, atau&nbsp;</span><em style=\"color: black;\">swipe</em><span style=\"color: black;\">.</span></p><p class=\"ql-align-justify\"><span style=\"color: black;\">Orang yang berposisi sebagai&nbsp;</span><em style=\"color: black;\">front end</em><span style=\"color: black;\">&nbsp;ini pada intinya bekerja untuk menciptakan merespons keinginan dari&nbsp;</span><em ', '1670400904315desain4.jpg', 'design', '2022-12-07 15:15:04', 13),
(39, 'Bakso Merupakan Kuliner Nasional Indonesia', '<p>Halo sobat menit.com Kalian tahu Bakso nga sih? Pasti tahu dong, hampir semua orang suka kuliner khas nusantara satu ini nih.</p><p><br></p><p>Bakso merupakan campuran daging sapi giling yang dicampur tepung tapioca dan dibentuk mirip bola-bola kecil ,biasanya menggunakan daging sapi tapi banyak juga yang menggunakan&nbsp;daging ikan,ayam,udang,kerbau . Bakso disajikan dalam keadaan panas dengan kuah bening biasanya juga di tambahkan mie dan bihun serta telur kemudian di taburi bawang goreng.</p><p><br></p><p>Ternyata bakso berasal dari Tionghoa-Indonesia, dapat dilihat dari istilah ‘Bakso’ berasal dari kata Bak dan So, yaitu dalam bahasa Hokkien yang secara harfiah berarti daging giling. Tapi yang membedakan dengan bakso Tionghoa ini adalah dagingnnya,karena Mayoritas Penduduk indonesia adalah muslim,maka daging digunakan&nbsp;adalah daging halal.</p><p><br></p><p>Bakso di zaman sekarang ini dapat ditemukan dimana mana ,dan biasanya&nbsp;penjual bakso adalah orang jawa karena tempa', '1670401423064bks.jpg', 'food', '2022-12-07 15:23:43', 14),
(40, 'Rawon, Makanan Khas Jawa Timur Yang Bercita Rasa Khas Dan Berempah', '<p>Rawon memang belum banyak yang membahas secara jelas, namun banyak yang beranggapan bahwa Rawon merupakan makanan raja-raja pada zaman dahulu yang bermula dari makanan rakyat jelata. Kini Rawon telah menjadi makanan yang banyak disukai oleh masyarakat bahkan hingga mancanegara.</p><p><br></p><p>Di luar negeri, Rawon disebut dengan nama \'Black Soup\' karena warna hidangan Rawon berwarna hitam. Rawon memiliki cita rasa khas dengan aroma dan rasa yang menggugah selera. Daging sapi yang merupakan komposisi utama dalam Rawon dimasak hingga empuk. Rasa hidangan Rawon merupakan perpaduan dari rasa manis, gurih dan legit.</p><p><br></p><p>Rawon&nbsp;merupakan&nbsp;kuliner khas Jawa Timur, berupa sup daging dengan kuah berwarna hitam. Warna hitam dari kuah Rawon berasal dari buah kepayang atau sering disebut dengan kluwak. Meskipun dikenal sebagai masakan khas Jawa Timur,&nbsp;Rawon juga dikenal luas oleh oleh masyarakat Jawa Tengah sebelah timur terutama daerah Surakarta.</p><p><br></p><p>Se', '1670401504761rawon.jpg', 'food', '2022-12-07 15:25:04', 14),
(41, 'Sate, Kuliner Asli Indonesia yang Go International', '<p>Siapa sih, yang tidak mengenal kuliner khas Indonesia yang satu ini? Sate merupakan kuliner khas Indonesia yang sangat populer di Indonesia dan sudah diketahui oleh masyarakat di berbagai belahan dunia. Bahkan, sate khas Indonesia masuk ke dalam 50 makanan terlezat di dunia menurut survei World’s 50 Most Delicious Foods dan menempati urutan ke-14 lho. Di Indonesia, sate kebanyakan dijual oleh pedagang kaki lima. Sate dapat ditemukan dengan mudah di hampir semua daerah, mulai dari sate ayam, sate kambing, sate kelinci, dan daging lainnya. Dalam artikel kali ini, kita akan mengenal sate lebih jauh, mulai dari sejarah, cara memasak, sampai jenis-jenis sate yang populer di Indonesia.</p><p>Sate diolah dengan memotong daging menjadi bagian-bagian kecil, ditusuk ke batang bambu, kemudian dibakar dan dibumbui. Dipercaya bahwa tujuan memotong daging menjadi kecil-kecil adalah agar cepat matang dan bumbu dapat meresa[ dengan sempurna. Daging yang sudah dibakar kemudian akan dibumbui. Keunika', '1670401627857sate.jpg', 'food', '2022-12-07 15:27:07', 14),
(42, 'Dikenal dari Indonesia, Rupanya Nasi Goreng Bukan Asli Makanan Indonesia', '<p>Kalau ditanya, “apa makanan khas Indonesia?” Biasanya, nasi goreng gaji salah satu jawaban di antara banyaknya makanan yang bisa disebutkan sebagai makanan khasi Indonesia.</p><p>Di manca negara pun Indonesia dikenal dengan nasi gorengnya. Di dalam negeri, ada berbagai jenis resep nasi goreng dengan keunikan rasanya masing. Nasi Goreng Petai, Nasi Goreng Kambing, Nasi Goreng Babat adalah tiga di antaranya.</p><p><br></p><p>Namun, tidak hanya Indonesia saja yang memiliki masakan nasi goreng. Di Malaysia, juga ada sajian yang judulnya pun sama. Ini tidak mengherankan, sebab Malaysia dan Indonesia memiliki latar sejarah yang sama. Singapura juga memiliki nasi goreng, begitupun India, dan Cina. Jadi, sebenarnya nasi goreng bukanlah makanan ekslusif milik Indonesia.</p><p>Lalu, dari mana asal-usul nasi goreng? Jika ditelusuri jejaknya, nasi goreng itu merupakan sajian yang dipengaruhi oleh masyarakat Cina. Ditemukan dokumentasi tahun 589 M mengenai nasi goreng yang berasal dari kota Yang', '1670401761326nasgor.jpg', 'food', '2022-12-07 15:29:21', 14),
(43, 'Kenali 4 Manfaat Salad Buah di Balik Kelezatannya', '<p>Manfaat Salad Buah bagi Kesehatan</p><p>Ada berbagai manfaat kesehatan yang bisa Anda dapatkan dari mengonsumsi salad buah, baik untuk kesehatan fisik maupun kesehatan mental. Berikut ini adalah beberapa manfaat salad buah bagi kesehatan yang bisa diperoleh:</p><p><br></p><p>1. Mencegah berbagai penyakit</p><p>Menyantap salad buah dapat memperkuat kekebalan dan fungsi organ tubuh. Manfaat ini diperoleh berkat kandungan antioksidan yang melimpah dalam buah-buahan.</p><p><br></p><p>Dengan begitu, Anda menjadi tidak mudah sakit atau mengalami masalah kesehatan, misalnya penyakit infeksi, penyakit jantung, diabetes tipe 2, atau hipertensi.</p><p><br></p><p>2. Menjaga kesehatan saluran cerna</p><p>Salad buah kaya akan serat yang baik untuk menjaga saluran cerna agar berfungsi dengan baik dan mencegah Anda mengalami konstipasi. Selain itu, serat juga bermanfaat untuk mendukung fungsi bakteri baik di usus dan mengurangi peradangan dalam saluran cerna.</p><p><br></p><p>3. Menjaga berat bada', '1670401842774salad.jpg', 'food', '2022-12-07 15:30:42', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `img`) VALUES
(7, 'titin', 'titin@gmail.com', '$2a$10$LqC2gvshgW7FKO93hUDT5uNjbygFHpZB/1ZlgDpAYsi/wBjygcYbC', ''),
(8, 'salma', 'salmakamiliah@gmail.com', '$2a$10$KDSKM07QRs9TMqh2sotWhOAtYchhG5JWoRPj8agZYajXlIBRVUlWu', ''),
(9, 'Alfi', 'alfimahfudzoh@gmail.com', '$2a$10$gifhWeKJbH1.Wi961eUDxOGXcyMKNbIRviVmHWLIic0P6dRwPVhve', ''),
(10, 'Afifah', 'afifah@gmail.com', '$2a$10$ejaZEtsUsxj.r7/5wk9ktOG7NUIt/soRE.9mDniB8drVa434Tyv2y', ''),
(11, 'Vena', 'vena@gmail,com', '$2a$10$jbUXAZBOVzS6QG4Mw2439.5ZW1GCxHO.tGwEgrYeSwayOULyQUAPm', ''),
(12, 'Nida', 'nida@gmail.com', '$2a$10$e.qzh.F02vjfYsPcqCiLNeyxDKAInnSRMKHbcSjPZNWizCEqmVuYq', ''),
(13, 'Puput ', 'puput@gmail.com', '$2a$10$tsSU5Q2PzWjaHkH9UWOjkuvt1I4xtiwokLZXA1p98ZrLhknKRff.i', ''),
(14, 'Sari', 'sari@gmail.com', '$2a$10$4uVmDTlvorcFlq64YSTI3OTvcmC7tS3sn08/NdbmPWsiuQ9H/bs5i', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_post` (`id_post`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_post` (`id_post`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
