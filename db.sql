/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : wca

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2017-01-27 11:32:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `judul` text,
  `tanggal` date DEFAULT NULL,
  `isi` text,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES ('1', 'Mengenai Pekerjaan Pramugariplplpl', '2017-01-17', 'Tentunya kita semua sudah sering mendengar istilah pramugari, tetapi tahukah anda pengertian pramugari? Pramugari merupakan staf atau karyawan perusahaan pengangkutan umum. Baik angkutan darat, laut, maupun udara. Seperti yang sudah diketahui banyak pihak, pramugari memiliki tugas untuk melayani penumpang. Selain itu tugas utama dari seorang pramugari adalah menjaga keselamatan penumpang selama dalam perjalanan. Pramugari merupakan sebutan untuk wanita. Sedangkan pramugara adalah sebutan untuk pria. Selama ini pramugari selalu dikaitkan dengan pekerjaan untuk di dalam pesawat. Padahal sebenarnya dalam pengertian, pekerjaan ini tidak selalu berada di pesawat saja. Memang telah terjadi penyempitan pengertian untuk kata pramugari.', '170124051749.gif');
INSERT INTO `berita` VALUES ('2', 'Cara Menjadi Pramugara/Pramugari Profesional !iijijij', '2017-01-17', 'Setelah Anda memutuskan apa jenis penerbangan Anda ingin lakukan, sekarang Anda perlu untuk mendapatkan sebuah wawancara. Tempat terbaik untuk mulai mencari adalah internet. Setiap maskapai penerbangan memiliki website, dan biasanya di bawah “informasi perusahaan” bagian dari website ini bagian peluang karir. Hanya perlu menggunakan komputer, handphone dan tablet untuk mulai mencari lowongan kerja pramugari pramugara terbaru.\r\n\r\nSetiap maskapai penerbangan melakukan proses wawancara mereka sedikit berbeda, beberapa maskapai penerbangan Anda ingin Anda untuk mengirim resume / cv langsung kepada mereka, yang lain mengijinkan Anda mendaftar secara online, dan lain-lain. Bagaimanapun, akhirnya Anda akan bertemu tatap muka langsung dengan perekrut maskapai. Kadang-kadang perekrut ini pramugari yang sebenarnya dengan “tugas khusus” untuk melakukan perekrutan, dan kadang-kadang mereka adalah staf HRD (Human Resources Development) airlines.', '170117090131.jpg');
INSERT INTO `berita` VALUES ('3', 'Mengenai Pekerjaan Pramugarisfjdjasndjasn', '2017-01-17', 'Tentunya kita semua sudah sering mendengar istilah pramugari, tetapi tahukah anda pengertian pramugari? Pramugari merupakan staf atau karyawan perusahaan pengangkutan umum. Baik angkutan darat, laut, maupun udara. Seperti yang sudah diketahui banyak pihak, pramugari memiliki tugas untuk melayani penumpang. Selain itu tugas utama dari seorang pramugari adalah menjaga keselamatan penumpang selama dalam perjalanan. Pramugari merupakan sebutan untuk wanita. Sedangkan pramugara adalah sebutan untuk pria. Selama ini pramugari selalu dikaitkan dengan pekerjaan untuk di dalam pesawat. Padahal sebenarnya dalam pengertian, pekerjaan ini tidak selalu berada di pesawat saja. Memang telah terjadi penyempitan pengertian untuk kata pramugari.', '170124034654.gif');
INSERT INTO `berita` VALUES ('4', 'Cara Menjadi Pramugara/Pramugari Profesional !', '2017-01-17', 'Setelah Anda memutuskan apa jenis penerbangan Anda ingin lakukan, sekarang Anda perlu untuk mendapatkan sebuah wawancara. Tempat terbaik untuk mulai mencari adalah internet. Setiap maskapai penerbangan memiliki website, dan biasanya di bawah “informasi perusahaan” bagian dari website ini bagian peluang karir. Hanya perlu menggunakan komputer, handphone dan tablet untuk mulai mencari lowongan kerja pramugari pramugara terbaru.\r\n\r\nSetiap maskapai penerbangan melakukan proses wawancara mereka sedikit berbeda, beberapa maskapai penerbangan Anda ingin Anda untuk mengirim resume / cv langsung kepada mereka, yang lain mengijinkan Anda mendaftar secara online, dan lain-lain. Bagaimanapun, akhirnya Anda akan bertemu tatap muka langsung dengan perekrut maskapai. Kadang-kadang perekrut ini pramugari yang sebenarnya dengan “tugas khusus” untuk melakukan perekrutan, dan kadang-kadang mereka adalah staf HRD (Human Resources Development) airlines.', '170117090131.jpg');
INSERT INTO `berita` VALUES ('5', 'Mengenai Pekerjaan Pramugarisfjdjasndjasn', '2017-01-17', 'Tentunya kita semua sudah sering mendengar istilah pramugari, tetapi tahukah anda pengertian pramugari? Pramugari merupakan staf atau karyawan perusahaan pengangkutan umum. Baik angkutan darat, laut, maupun udara. Seperti yang sudah diketahui banyak pihak, pramugari memiliki tugas untuk melayani penumpang. Selain itu tugas utama dari seorang pramugari adalah menjaga keselamatan penumpang selama dalam perjalanan. Pramugari merupakan sebutan untuk wanita. Sedangkan pramugara adalah sebutan untuk pria. Selama ini pramugari selalu dikaitkan dengan pekerjaan untuk di dalam pesawat. Padahal sebenarnya dalam pengertian, pekerjaan ini tidak selalu berada di pesawat saja. Memang telah terjadi penyempitan pengertian untuk kata pramugari.', '170124034654.gif');
INSERT INTO `berita` VALUES ('6', 'Cara Menjadi Pramugara/Pramugari Profesional !', '2017-01-17', 'Setelah Anda memutuskan apa jenis penerbangan Anda ingin lakukan, sekarang Anda perlu untuk mendapatkan sebuah wawancara. Tempat terbaik untuk mulai mencari adalah internet. Setiap maskapai penerbangan memiliki website, dan biasanya di bawah “informasi perusahaan” bagian dari website ini bagian peluang karir. Hanya perlu menggunakan komputer, handphone dan tablet untuk mulai mencari lowongan kerja pramugari pramugara terbaru.\r\n\r\nSetiap maskapai penerbangan melakukan proses wawancara mereka sedikit berbeda, beberapa maskapai penerbangan Anda ingin Anda untuk mengirim resume / cv langsung kepada mereka, yang lain mengijinkan Anda mendaftar secara online, dan lain-lain. Bagaimanapun, akhirnya Anda akan bertemu tatap muka langsung dengan perekrut maskapai. Kadang-kadang perekrut ini pramugari yang sebenarnya dengan “tugas khusus” untuk melakukan perekrutan, dan kadang-kadang mereka adalah staf HRD (Human Resources Development) airlines.', '170117090131.jpg');
INSERT INTO `berita` VALUES ('7', 'Mengenai Pekerjaan Pramugarisfjdjasndjasn', '2017-01-17', 'Tentunya kita semua sudah sering mendengar istilah pramugari, tetapi tahukah anda pengertian pramugari? Pramugari merupakan staf atau karyawan perusahaan pengangkutan umum. Baik angkutan darat, laut, maupun udara. Seperti yang sudah diketahui banyak pihak, pramugari memiliki tugas untuk melayani penumpang. Selain itu tugas utama dari seorang pramugari adalah menjaga keselamatan penumpang selama dalam perjalanan. Pramugari merupakan sebutan untuk wanita. Sedangkan pramugara adalah sebutan untuk pria. Selama ini pramugari selalu dikaitkan dengan pekerjaan untuk di dalam pesawat. Padahal sebenarnya dalam pengertian, pekerjaan ini tidak selalu berada di pesawat saja. Memang telah terjadi penyempitan pengertian untuk kata pramugari.', '170124034654.gif');
INSERT INTO `berita` VALUES ('8', 'Cara Menjadi Pramugara/Pramugari Profesional !', '2017-01-17', 'Setelah Anda memutuskan apa jenis penerbangan Anda ingin lakukan, sekarang Anda perlu untuk mendapatkan sebuah wawancara. Tempat terbaik untuk mulai mencari adalah internet. Setiap maskapai penerbangan memiliki website, dan biasanya di bawah “informasi perusahaan” bagian dari website ini bagian peluang karir. Hanya perlu menggunakan komputer, handphone dan tablet untuk mulai mencari lowongan kerja pramugari pramugara terbaru.\r\n\r\nSetiap maskapai penerbangan melakukan proses wawancara mereka sedikit berbeda, beberapa maskapai penerbangan Anda ingin Anda untuk mengirim resume / cv langsung kepada mereka, yang lain mengijinkan Anda mendaftar secara online, dan lain-lain. Bagaimanapun, akhirnya Anda akan bertemu tatap muka langsung dengan perekrut maskapai. Kadang-kadang perekrut ini pramugari yang sebenarnya dengan “tugas khusus” untuk melakukan perekrutan, dan kadang-kadang mereka adalah staf HRD (Human Resources Development) airlines.', '170117090131.jpg');
INSERT INTO `berita` VALUES ('9', 'Mengenai Pekerjaan Pramugarisfjdjasndjasn', '2017-01-17', 'Tentunya kita semua sudah sering mendengar istilah pramugari, tetapi tahukah anda pengertian pramugari? Pramugari merupakan staf atau karyawan perusahaan pengangkutan umum. Baik angkutan darat, laut, maupun udara. Seperti yang sudah diketahui banyak pihak, pramugari memiliki tugas untuk melayani penumpang. Selain itu tugas utama dari seorang pramugari adalah menjaga keselamatan penumpang selama dalam perjalanan. Pramugari merupakan sebutan untuk wanita. Sedangkan pramugara adalah sebutan untuk pria. Selama ini pramugari selalu dikaitkan dengan pekerjaan untuk di dalam pesawat. Padahal sebenarnya dalam pengertian, pekerjaan ini tidak selalu berada di pesawat saja. Memang telah terjadi penyempitan pengertian untuk kata pramugari.', '170124034654.gif');
INSERT INTO `berita` VALUES ('10', 'Cara Menjadi Pramugara/Pramugari Profesional !', '2017-01-17', 'Setelah Anda memutuskan apa jenis penerbangan Anda ingin lakukan, sekarang Anda perlu untuk mendapatkan sebuah wawancara. Tempat terbaik untuk mulai mencari adalah internet. Setiap maskapai penerbangan memiliki website, dan biasanya di bawah “informasi perusahaan” bagian dari website ini bagian peluang karir. Hanya perlu menggunakan komputer, handphone dan tablet untuk mulai mencari lowongan kerja pramugari pramugara terbaru.\r\n\r\nSetiap maskapai penerbangan melakukan proses wawancara mereka sedikit berbeda, beberapa maskapai penerbangan Anda ingin Anda untuk mengirim resume / cv langsung kepada mereka, yang lain mengijinkan Anda mendaftar secara online, dan lain-lain. Bagaimanapun, akhirnya Anda akan bertemu tatap muka langsung dengan perekrut maskapai. Kadang-kadang perekrut ini pramugari yang sebenarnya dengan “tugas khusus” untuk melakukan perekrutan, dan kadang-kadang mereka adalah staf HRD (Human Resources Development) airlines.', '170117090131.jpg');
INSERT INTO `berita` VALUES ('11', 'Mengenai Pekerjaan Pramugarisfjdjasndjasn', '2017-01-17', 'Tentunya kita semua sudah sering mendengar istilah pramugari, tetapi tahukah anda pengertian pramugari? Pramugari merupakan staf atau karyawan perusahaan pengangkutan umum. Baik angkutan darat, laut, maupun udara. Seperti yang sudah diketahui banyak pihak, pramugari memiliki tugas untuk melayani penumpang. Selain itu tugas utama dari seorang pramugari adalah menjaga keselamatan penumpang selama dalam perjalanan. Pramugari merupakan sebutan untuk wanita. Sedangkan pramugara adalah sebutan untuk pria. Selama ini pramugari selalu dikaitkan dengan pekerjaan untuk di dalam pesawat. Padahal sebenarnya dalam pengertian, pekerjaan ini tidak selalu berada di pesawat saja. Memang telah terjadi penyempitan pengertian untuk kata pramugari.', '170124034654.gif');
INSERT INTO `berita` VALUES ('12', 'Cara Menjadi Pramugara/Pramugari Profesional !', '2017-01-17', 'Setelah Anda memutuskan apa jenis penerbangan Anda ingin lakukan, sekarang Anda perlu untuk mendapatkan sebuah wawancara. Tempat terbaik untuk mulai mencari adalah internet. Setiap maskapai penerbangan memiliki website, dan biasanya di bawah “informasi perusahaan” bagian dari website ini bagian peluang karir. Hanya perlu menggunakan komputer, handphone dan tablet untuk mulai mencari lowongan kerja pramugari pramugara terbaru.\r\n\r\nSetiap maskapai penerbangan melakukan proses wawancara mereka sedikit berbeda, beberapa maskapai penerbangan Anda ingin Anda untuk mengirim resume / cv langsung kepada mereka, yang lain mengijinkan Anda mendaftar secara online, dan lain-lain. Bagaimanapun, akhirnya Anda akan bertemu tatap muka langsung dengan perekrut maskapai. Kadang-kadang perekrut ini pramugari yang sebenarnya dengan “tugas khusus” untuk melakukan perekrutan, dan kadang-kadang mereka adalah staf HRD (Human Resources Development) airlines.', '170117090131.jpg');

-- ----------------------------
-- Table structure for galeri
-- ----------------------------
DROP TABLE IF EXISTS `galeri`;
CREATE TABLE `galeri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(245) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of galeri
-- ----------------------------
INSERT INTO `galeri` VALUES ('6', 'ruang tunggu', '170117074116.jpg', '0');
INSERT INTO `galeri` VALUES ('8', 'ruang present', '170117074403.JPG', 'ruang present');
INSERT INTO `galeri` VALUES ('9', 'ruang apa', '170117074433.jpg', 'ruang');
INSERT INTO `galeri` VALUES ('10', 'ruang apa', '170117074743.JPG', 'ruang apa');
INSERT INTO `galeri` VALUES ('11', 'ru', '170117075835.jpg', 'ru');
INSERT INTO `galeri` VALUES ('12', 're', '170117075854.jpg', 're');
INSERT INTO `galeri` VALUES ('13', 'test', '170117080000.jpg', 'test');
INSERT INTO `galeri` VALUES ('14', 'YU', '170117080019.jpg', 'YU');
INSERT INTO `galeri` VALUES ('16', 'uhuhuh', '170124052209.gif', '0');

-- ----------------------------
-- Table structure for home
-- ----------------------------
DROP TABLE IF EXISTS `home`;
CREATE TABLE `home` (
  `judul` varchar(20) DEFAULT NULL,
  `id_home` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_home`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of home
-- ----------------------------
INSERT INTO `home` VALUES ('ini judul', '21', 'initext', '170121073053.png');
INSERT INTO `home` VALUES ('text', '22', 'text', '170126144318.png');

-- ----------------------------
-- Table structure for kontak
-- ----------------------------
DROP TABLE IF EXISTS `kontak`;
CREATE TABLE `kontak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `pesan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kontak
-- ----------------------------
INSERT INTO `kontak` VALUES ('1', 'Muhammad Choirul Anam', 'choirulanam2222@gmail.com', '2017-01-24', 'saya ingin daftar di sekolah sini, tapi alurnya bagaimana untuk daftar ?, tolong berikan jawabannya secepatnya ya :\'v');
INSERT INTO `kontak` VALUES ('2', 'Jihan Reza', 'jihanjasad@gmail.com', '2017-01-24', 'Caranya Daftar gimana ya ?\r\n');
INSERT INTO `kontak` VALUES ('3', 'Erlangga', 'erlangga@ngga.com', '2017-01-24', 'Hai, ini contact ya?');

-- ----------------------------
-- Table structure for pendaftaran
-- ----------------------------
DROP TABLE IF EXISTS `pendaftaran`;
CREATE TABLE `pendaftaran` (
  `kode_register` varchar(255) DEFAULT NULL,
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `namalengkap` varchar(30) DEFAULT NULL,
  `namapanggilan` varchar(10) DEFAULT NULL,
  `tempatlahir` varchar(20) DEFAULT NULL,
  `tanggallahir` varchar(20) DEFAULT NULL,
  `alamatlengkap` varchar(50) DEFAULT NULL,
  `kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(12) DEFAULT NULL,
  `tinggi` varchar(10) DEFAULT NULL,
  `berat` varchar(10) DEFAULT NULL,
  `asalsekolah` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `hp` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `ayah` varchar(40) DEFAULT NULL,
  `ibu` varchar(40) DEFAULT NULL,
  `pekerjaan` varchar(40) DEFAULT NULL,
  `alamatortu` varchar(50) DEFAULT NULL,
  `pengalamankerja` varchar(50) DEFAULT NULL,
  `hportu` varchar(13) DEFAULT NULL,
  `tujuan` varchar(40) DEFAULT NULL,
  `foto` varchar(244) DEFAULT NULL,
  `pass` varchar(40) DEFAULT NULL,
  `tglregistrasi` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pendaftaran
-- ----------------------------
INSERT INTO `pendaftaran` VALUES (null, '9', 'a', 'a', 'a', '2017-01-17', 'hell', 'Perempuan', 'budha', '12', '12', 'mad', 'popo', '0000909090909', 'reza@f.com', 'asas', 'asa', 'asas', 'asas', 'asas', '0000909090980', 'wwwww', '170117092234.jpg', '0', '2017-01-17', 'Pending');
INSERT INTO `pendaftaran` VALUES (null, '10', 'irvan charis', 'charis', 'malang', '1992-09-15', 'kendalpayak', 'Pria', 'islam', '168', '52', 'sekolah', 'jurusan sekolah', '081357501196', 'irvancharis@gmail.com', 'ayah', 'ibu', 'kerja', 'kendalpayak', '-', '123', 'FLIGHT ATTENDANT', '170124041732.jpg', '0', '2017-01-24', 'pending');
INSERT INTO `pendaftaran` VALUES (null, '11', 'A', 'a', 'a', '1999-02-02', 'malang', 'Pria', 'hindu', '180', '56', 'sawojajar', 'rpl', '8909876567890', 'erlangga@ngga.com', 'wew', 'waw', 'kerja', 'malang', '-', '0989098765', 'FLIGHT ATTENDANT', '170126072548.jpg', '0', '2017-01-26', 'pending');
INSERT INTO `pendaftaran` VALUES ('12345', '12', 'a', 'a', 'a', '1111-11-11', 'mlg', 'Pria', 'hindu', '123', '23', 'fre', 'ref', '234567', 'erlangga@ngga.com', 'er', 're', 'w', 'wwwww', 'w', '2345', 'FLIGHT ATTENDANT', '170126084201.jpg', '0', '2017-01-26', 'pending');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id_profile` int(13) NOT NULL AUTO_INCREMENT,
  `text` text,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('2', 'Lembaga Pendidikan dan Pelatihan WIDYA CITRA ANGKASA yang berlokasi di JL. Raya Wendit Barat Ruko Kav. 15 Mangliawan-Malang, didirikan Oleh Dra. Tri Widiyaningrum sesuai Akta Pendirian Notaris tanggal 22 Juli 2014 No. 45\r\n	Dunia industri jasa penerbangan saat ini terus melakukan inovasi untuk memenuhi kebutuhan penumpang yang berkaitan dengan faktor keselamatan, faktor keamanan, serta faktor kenyamanan dalam perjalanan.\r\nDikarenakan standard pelayanan yang juga semakin meningkat dari waktu ke waktu serta seiring dengan berkembangnya sektor transportasi udara tersebut, maka sangat dibutuhkan SDM yang berkompeten dan sesuai dengan standard pelayanan maskapai penerbangan, yang biasanya meliputi Performance (penampilan fisik) , Skill dan Knowledge ( ketrampilan dan pengetahuan ), serta Attitude ( etika ).\r\nMengantisipasi untuk memenuhi kebutuhan SDM di industri jasa penerbangan tersebut, maka WIDYA CITRA ANGKASA menyelenggarakan pendidikan dan pelatihan untuk membantu SDM yang siap bersaing di pasar kerja global dengan pendidikan singkat dan biaya terjangkau serta langsung diarahkan untuk memasuki dunia kerja.\r\nSaat ini peluang kerja di perusahaan-perusahaan penerbangan dan perusahaan pendukungnya masih terbuka luas.\r\nKebutuhan akan SDM yang profesional, handal, dan siap bersaing di bidang transportasi udara masih sangat tinggi dan bahkan semakin meningkat.\r\nMengingat kondisi tersebut , WIDYA CITRA ANGKASA yang didukung oleh para praktisi dan akademisi yang berkompeten di bidang perhubungan udara merasa terpanggil untuk ikut serta mempersiapkan peserta didiknya untuk memenuhi kebutuhan SDM tersebut sesuai dengan segmen pasar yang ada.\r\n', '170124052450.jpg');

-- ----------------------------
-- Table structure for syarat
-- ----------------------------
DROP TABLE IF EXISTS `syarat`;
CREATE TABLE `syarat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of syarat
-- ----------------------------
INSERT INTO `syarat` VALUES ('1', '<p>Mengisi Formulir Pendaftaran Online disini\r\n<br>1.Transfer biaya pendaftaran sebesar Rp.200.000 ke  No. Rekening Resmi Kami \r\n<br>2. Konfirmasi pembayaran anda kepada panitia penerimaan peserta didik baru kampus PSPP penerbangan \r\n<br>3. Selanjutnya anda akan mendapatkan USERNAME dan PASSWORD untuk login ke website dan mengikuti tes online\r\n<br>4. Melengkapi berkas pendaftaran seperti pass foto, foto full body, surat keterangan sehat bisa mengirim via sosmed atau email\r\n<br>5. Test interview via telepon\r\n<br>6. Tes seleksi selesai, surat kelulusan akan diinfokan oleh panitia melalui email anda\r\n<br>7. Daftar Ulang & Persiapan berkas pendidikan harus koordinasi dengan panitia pendaftaran.\r\n<br>8. Siswa Masuk Pendidikan - SELESAI\r\n</p>');

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `text` text,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('6', 'Dra. Tri Widiyaningrum', 'Komisaris Utama ', 'tes', null);
INSERT INTO `team` VALUES ('7', ' Ditya Enandini Palupi', 'Direktur Keuangan', 'iniketerangan', '170117051507.png');
INSERT INTO `team` VALUES ('8', 'Adji Rudy. RH', 'Direktur Lembaga ', 'ini keterangan', '170117051817.png');
INSERT INTO `team` VALUES ('9', ' Alfiana Wangsadiriya', 'Akademik', 'ini keterangan', '170117051921.png');
INSERT INTO `team` VALUES ('10', ' Bayu Arga', 'Administrasi & FO', 'ini keterangan', '170117052052.png');
INSERT INTO `team` VALUES ('11', ' Sulton', 'Office Boy', 'iniketerangan', '170117052127.png');

-- ----------------------------
-- Table structure for testimoni
-- ----------------------------
DROP TABLE IF EXISTS `testimoni`;
CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `uraian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testimoni
-- ----------------------------
INSERT INTO `testimoni` VALUES ('2', 'Motto Kami', '“Jika Anda selalu bermimpi untuk menjadi Awak Kabin, sekaranglah saatnya untuk mewujudkannya”');
INSERT INTO `testimoni` VALUES ('4', 'Erlangga', '\"Ini adalah sekolah yang cocok untuk meraih sukses\"');
INSERT INTO `testimoni` VALUES ('5', 'Anam', '\"Sekolah untuk Masa Depan yang cerah\"');
INSERT INTO `testimoni` VALUES ('6', 'Jihan', '\"Tempat untuk menjadi professional\"');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` longtext,
  `last_login` datetime DEFAULT NULL,
  `akses` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', null, '1992-07-14', '123456789987654321', 'Admin', 'L', 'singosari', '085721423839', null, '1', 'admin', '9c69c2e28557a737ffc2d3aad9160b76', null, 'home|berita|profil|testimoni|galeri|team|pendaftaran|kontak|user');
INSERT INTO `user` VALUES ('45', null, null, null, 'operator', 'L', '', '', null, '1', 'operator', 'd2720d226b77f433944f0110a0f4eea7', null, 'berita|galeri|pendaftaran|kontak');
INSERT INTO `user` VALUES ('57', null, null, null, 'test', null, null, null, null, null, 'test', '7a140ed1997098259a4b01895bdf89d1', null, 'home|berita|profil|testimoni|galeri|team|pendaftaran|kontak|user ');
