/*
Navicat MySQL Data Transfer

Source Server         : cloudastro
Source Server Version : 50539
Source Host           : 192.168.100.42:3306
Source Database       : kan_suol

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2017-02-11 09:44:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for keuangan_kategori_akun
-- ----------------------------
DROP TABLE IF EXISTS `keuangan_kategori_akun`;
CREATE TABLE `keuangan_kategori_akun` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `kode_kategori_akun` varchar(200) DEFAULT NULL,
  `nama_kategori_akun` varchar(200) DEFAULT NULL,
  `kode_jenis_akun` varchar(200) DEFAULT NULL,
  `nama_jenis_akun` varchar(200) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keuangan_kategori_akun
-- ----------------------------
INSERT INTO `keuangan_kategori_akun` VALUES ('1', '2.1', 'Pembelian', '2', 'Pengeluaran', '2016-06-01 10:20:12');
INSERT INTO `keuangan_kategori_akun` VALUES ('2', '1.1', 'Penjualan', '1', 'Pemasukan', '2016-06-01 10:23:14');
INSERT INTO `keuangan_kategori_akun` VALUES ('3', '2.2', 'Operasional', '2', 'Pengeluaran', '2016-06-01 10:31:14');
INSERT INTO `keuangan_kategori_akun` VALUES ('4', '2.3', 'Pengeluaran Lain-lain', '2', 'Pengeluaran', '2016-06-01 10:36:36');
INSERT INTO `keuangan_kategori_akun` VALUES ('5', '1.2', 'Retur Masuk', '1', 'Pemasukan', '2016-06-08 15:23:09');
INSERT INTO `keuangan_kategori_akun` VALUES ('6', '2.4', 'Retur Keluar', '2', 'Pengeluaran', '2016-06-01 13:45:53');
INSERT INTO `keuangan_kategori_akun` VALUES ('7', '2.5', 'Pengeluaran Bahan', '2', 'Pengeluaran', '2016-06-03 13:33:38');
INSERT INTO `keuangan_kategori_akun` VALUES ('8', '2.6', 'Penjualan', '2', 'Pengeluaran', '2016-06-15 14:57:41');
INSERT INTO `keuangan_kategori_akun` VALUES ('9', '2.7', 'Pembayaran Gaji', '2', 'Pengeluaran', '2016-10-12 15:50:36');
INSERT INTO `keuangan_kategori_akun` VALUES ('10', '1.3', 'Opname', '1', 'Pemasukan', '2016-12-08 11:37:39');
INSERT INTO `keuangan_kategori_akun` VALUES ('11', '1.4', 'Pemasukan Lain', '1', 'Pemasukan', '2016-12-27 08:43:45');
INSERT INTO `keuangan_kategori_akun` VALUES ('12', '2.8', 'Pembayaran Plasma', '2', 'Pengeluaran', '2017-01-18 14:48:07');
INSERT INTO `keuangan_kategori_akun` VALUES ('13', '1.5', 'Angsuran', '1', 'Pemasukan', '2017-01-23 16:07:16');

-- ----------------------------
-- Table structure for keuangan_keluar
-- ----------------------------
DROP TABLE IF EXISTS `keuangan_keluar`;
CREATE TABLE `keuangan_keluar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_jenis_keuangan` varchar(255) DEFAULT NULL,
  `nama_jenis_keuangan` varchar(255) DEFAULT NULL,
  `kode_kategori_keuangan` varchar(255) DEFAULT NULL,
  `nama_kategori_keuangan` varchar(255) DEFAULT NULL,
  `kode_sub_kategori_keuangan` varchar(255) DEFAULT NULL,
  `nama_sub_kategori_keuangan` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `kode_referensi` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keuangan_keluar
-- ----------------------------
INSERT INTO `keuangan_keluar` VALUES ('1', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '500000', 'pembelian', '2017-01-31', 'PEM_2017_000001', '64', 'astro', '2017-01-31 09:46:34');
INSERT INTO `keuangan_keluar` VALUES ('2', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '850000', 'pembelian', '2017-01-31', 'PEM_2017_000002', '64', 'astro', '2017-01-31 10:00:58');
INSERT INTO `keuangan_keluar` VALUES ('3', '2', 'Pengeluaran', '2.8', 'Pembayaran Plasma', '', 'Pembayaran Plasma', '100000', '', '2017-01-31', '', '64', 'astro', '2017-01-31 10:17:05');
INSERT INTO `keuangan_keluar` VALUES ('4', '2', 'Pengeluaran', '2.7', 'Pembayaran Gaji', '2.7.1', 'Pembayaran Gaji Karyawan', '1000000', 'Pembayaran Gaji Adi', '2017-01-31', null, '64', 'astro', '2017-01-31 10:20:27');
INSERT INTO `keuangan_keluar` VALUES ('5', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.4', 'Angsuran Pembelian Kredit', '500000', 'angsuran pembelian', '2017-01-31', 'PEM_2017_000001', null, 'astro', '2017-01-31 10:21:20');
INSERT INTO `keuangan_keluar` VALUES ('6', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '4000', 'pembelian', '2017-02-02', 'PEM_2017_000003', '64', 'astro', '2017-02-02 14:51:56');
INSERT INTO `keuangan_keluar` VALUES ('7', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '200000', 'pembelian', '2017-02-03', 'PEM_2017_000004', '64', 'astro', '2017-02-03 09:16:08');
INSERT INTO `keuangan_keluar` VALUES ('8', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-03', 'PEM_2017_000005', '64', 'astro', '2017-02-03 15:34:57');
INSERT INTO `keuangan_keluar` VALUES ('9', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-03', 'PEM_2017_000006', '64', 'astro', '2017-02-03 15:35:59');
INSERT INTO `keuangan_keluar` VALUES ('10', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-03', 'PEM_2017_000007', '64', 'astro', '2017-02-03 15:37:15');
INSERT INTO `keuangan_keluar` VALUES ('11', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-03', 'PEM_2017_000008', '64', 'astro', '2017-02-03 15:38:42');
INSERT INTO `keuangan_keluar` VALUES ('12', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-03', 'PEM_2017_000009', '64', 'astro', '2017-02-03 15:39:06');
INSERT INTO `keuangan_keluar` VALUES ('13', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-03', 'PEM_2017_000010', '64', 'astro', '2017-02-03 15:39:30');
INSERT INTO `keuangan_keluar` VALUES ('14', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '450000', 'pembelian', '2017-02-03', 'PEM_2017_000011', '64', 'astro', '2017-02-03 15:43:46');
INSERT INTO `keuangan_keluar` VALUES ('15', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '4000', 'pembelian', '2017-02-04', 'PEM_2017_000012', '64', 'astro', '2017-02-04 10:24:37');
INSERT INTO `keuangan_keluar` VALUES ('16', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '8000', 'pembelian', '2017-02-04', 'PEM_2017_000013', '64', 'astro', '2017-02-04 10:25:21');
INSERT INTO `keuangan_keluar` VALUES ('17', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '6000', 'pembelian', '2017-02-04', 'PEM_2017_000014', '64', 'astro', '2017-02-04 10:25:53');
INSERT INTO `keuangan_keluar` VALUES ('18', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-04', 'PEM_2017_000015', '64', 'astro', '2017-02-04 11:01:51');
INSERT INTO `keuangan_keluar` VALUES ('19', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '5000', 'pembelian', '2017-02-04', 'PEM_2017_000016', '64', 'astro', '2017-02-04 11:02:24');
INSERT INTO `keuangan_keluar` VALUES ('20', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '7500', 'pembelian', '2017-02-04', 'PEM_2017_000017', '64', 'astro', '2017-02-04 11:02:45');
INSERT INTO `keuangan_keluar` VALUES ('21', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '7500', 'pembelian', '2017-02-04', 'PEM_2017_000018', '64', 'astro', '2017-02-04 11:03:12');
INSERT INTO `keuangan_keluar` VALUES ('22', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '12500', 'pembelian', '2017-02-06', 'PEM_2017_000019', '64', 'astro', '2017-02-06 09:31:55');
INSERT INTO `keuangan_keluar` VALUES ('23', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '12500', 'pembelian', '2017-02-06', 'PEM_2017_000020', '64', 'astro', '2017-02-06 09:32:30');
INSERT INTO `keuangan_keluar` VALUES ('24', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '12500', 'pembelian', '2017-02-06', 'PEM_2017_000021', '64', 'astro', '2017-02-06 09:32:53');
INSERT INTO `keuangan_keluar` VALUES ('25', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '17500', 'pembelian', '2017-02-06', 'PEM_2017_000022', '64', 'astro', '2017-02-06 10:28:51');
INSERT INTO `keuangan_keluar` VALUES ('26', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '15000', 'pembelian', '2017-02-06', 'PEM_2017_000023', '64', 'astro', '2017-02-06 10:36:11');
INSERT INTO `keuangan_keluar` VALUES ('27', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '20000', 'pembelian', '2017-02-06', 'PEM_2017_000024', '64', 'astro', '2017-02-06 10:37:18');
INSERT INTO `keuangan_keluar` VALUES ('28', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '6000', 'pembelian', '2017-02-06', 'PEM_2017_000025', '64', 'astro', '2017-02-06 10:50:54');
INSERT INTO `keuangan_keluar` VALUES ('29', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.4', 'Angsuran Pembelian Kredit', '500000', 'angsuran pembelian', '2017-02-06', 'PEM_2017_000001', null, 'astro', '2017-02-06 13:13:52');
INSERT INTO `keuangan_keluar` VALUES ('30', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '7000', 'pembelian', '2017-02-06', 'PEM_2017_000026', '64', 'astro', '2017-02-06 14:16:59');
INSERT INTO `keuangan_keluar` VALUES ('31', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '30000', 'pembelian', '2017-02-06', 'PEM_2017_000027', '1', 'astro', '2017-02-06 15:10:33');
INSERT INTO `keuangan_keluar` VALUES ('32', '2', 'Pengeluaran', '2.2', '\r\nOperasional', '2.2.2', '\r\nPembayaran Listrik', '50000', 'listrik', '2017-02-06', null, '1', 'astro', '2017-02-06 15:46:48');
INSERT INTO `keuangan_keluar` VALUES ('33', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '20000', 'pembelian', '2017-02-07', 'PEM_2017_000028', '64', 'astro', '2017-02-07 09:22:10');
INSERT INTO `keuangan_keluar` VALUES ('34', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '0', 'pembelian', '2017-02-08', 'PEM_2017_000029', '64', 'astro', '2017-02-08 09:50:30');
INSERT INTO `keuangan_keluar` VALUES ('35', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '78750', 'pembelian', '2017-02-07', 'PEM_2017_000030', '64', 'astro', '2017-02-07 13:22:52');
INSERT INTO `keuangan_keluar` VALUES ('36', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '65250', 'pembelian', '2017-02-07', 'PEM_2017_000031', '64', 'astro', '2017-02-07 13:35:48');
INSERT INTO `keuangan_keluar` VALUES ('37', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '58000', 'pembelian', '2017-02-07', 'PEM_2017_000032', '64', 'astro', '2017-02-07 13:41:15');
INSERT INTO `keuangan_keluar` VALUES ('38', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '1000', 'pembelian', '2017-02-08', 'PEM_2017_000001', '64', 'astro', '2017-02-08 10:36:20');
INSERT INTO `keuangan_keluar` VALUES ('39', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '0', 'pembelian', '2017-02-08', 'PEM_2017_000002', '64', 'astro', '2017-02-08 10:38:49');
INSERT INTO `keuangan_keluar` VALUES ('40', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '0', 'pembelian', '2017-02-08', 'PEM_2017_000003', '64', 'astro', '2017-02-08 10:41:01');
INSERT INTO `keuangan_keluar` VALUES ('41', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '0', 'pembelian', '2017-02-08', 'PEM_2017_000004', '64', 'astro', '2017-02-08 10:46:59');
INSERT INTO `keuangan_keluar` VALUES ('42', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '20000', 'pembelian', '2017-02-08', 'PEM_2017_000005', '64', 'astro', '2017-02-08 14:30:52');
INSERT INTO `keuangan_keluar` VALUES ('43', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '1156.25', 'spoil', '2017-02-08', 'SP_2017_000001', null, 'astro', '2017-02-08 14:44:50');
INSERT INTO `keuangan_keluar` VALUES ('44', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '2000', 'spoil', '2017-02-08', 'SP_2017_000002', null, 'astro', '2017-02-08 14:45:50');
INSERT INTO `keuangan_keluar` VALUES ('45', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '0', 'spoil', '2017-02-08', 'SP_2017_000003', null, 'astro', '2017-02-08 15:04:24');
INSERT INTO `keuangan_keluar` VALUES ('46', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.5', 'Transfer Ke Bank', '20000', 'angsuran pembelian', '2017-02-08', 'PEM_2017_000005', null, 'astro', '2017-02-08 15:04:53');
INSERT INTO `keuangan_keluar` VALUES ('47', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.4', 'Angsuran Pembelian Kredit', '7500', 'angsuran pembelian', '2017-02-08', 'PEM_2017_000003', null, 'astro', '2017-02-08 15:28:07');
INSERT INTO `keuangan_keluar` VALUES ('48', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '6000', 'pembelian', '2017-02-08', 'PEM_2017_000006', '64', 'astro', '2017-02-08 15:37:26');
INSERT INTO `keuangan_keluar` VALUES ('49', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '6000', 'pembelian', '2017-02-08', 'PEM_2017_000007', '64', 'astro', '2017-02-08 15:39:06');
INSERT INTO `keuangan_keluar` VALUES ('50', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '6000', 'pembelian', '2017-02-08', 'PEM_2017_000008', '64', 'astro', '2017-02-08 15:48:38');
INSERT INTO `keuangan_keluar` VALUES ('51', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '60000', 'spoil', '2017-02-08', 'SP_2017_000004', null, 'astro', '2017-02-08 16:16:17');
INSERT INTO `keuangan_keluar` VALUES ('52', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '0', 'spoil', '2017-02-08', 'SP_2017_000005', null, 'astro', '2017-02-08 16:17:47');
INSERT INTO `keuangan_keluar` VALUES ('53', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '30000', 'pembelian', '2017-02-10', 'PEM_2017_000009', '64', 'astro', '2017-02-10 14:39:00');
INSERT INTO `keuangan_keluar` VALUES ('54', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '60000', 'pembelian', '2017-02-10', 'PEM_2017_000010', '64', 'astro', '2017-02-10 14:41:20');
INSERT INTO `keuangan_keluar` VALUES ('55', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '23906.25', 'spoil', '2017-02-10', 'SP_2017_000006', null, 'astro', '2017-02-10 16:07:45');

-- ----------------------------
-- Table structure for keuangan_masuk
-- ----------------------------
DROP TABLE IF EXISTS `keuangan_masuk`;
CREATE TABLE `keuangan_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_jenis_keuangan` varchar(255) DEFAULT NULL,
  `nama_jenis_keuangan` varchar(255) DEFAULT NULL,
  `kode_kategori_keuangan` varchar(255) DEFAULT NULL,
  `nama_kategori_keuangan` varchar(255) DEFAULT NULL,
  `kode_sub_kategori_keuangan` varchar(255) DEFAULT NULL,
  `nama_sub_kategori_keuangan` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `kode_referensi` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keuangan_masuk
-- ----------------------------
INSERT INTO `keuangan_masuk` VALUES ('1', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '25000', null, '2017-01-31', 'PEN_2017_000001', '64', 'astro', '2017-01-31 10:21:49');
INSERT INTO `keuangan_masuk` VALUES ('2', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '40000', null, '2017-01-31', 'PEN_2017_000002', '64', 'astro', '2017-01-31 10:23:23');
INSERT INTO `keuangan_masuk` VALUES ('3', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-01-31', 'PEN_2017_000003', '64', 'astro', '2017-01-31 10:23:54');
INSERT INTO `keuangan_masuk` VALUES ('4', '1', 'Pemasukan', '1.5', 'Angsuran', '1.5.1', 'Angsuran Member', '40000', 'Angsuran Member', '2017-01-31', 'PEN_2017_000003', '64', 'astro', '2017-01-31 10:25:05');
INSERT INTO `keuangan_masuk` VALUES ('5', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '40000', null, '2017-02-03', 'PEN_2017_000004', '64', 'astro', '2017-02-03 15:08:39');
INSERT INTO `keuangan_masuk` VALUES ('6', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '25000', null, '2017-02-03', 'PEN_2017_000005', '64', 'astro', '2017-02-03 15:12:25');
INSERT INTO `keuangan_masuk` VALUES ('7', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000006', '64', 'astro', '2017-02-04 09:22:17');
INSERT INTO `keuangan_masuk` VALUES ('8', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '600000', null, '2017-02-04', 'PEN_2017_000007', '64', 'astro', '2017-02-04 10:39:10');
INSERT INTO `keuangan_masuk` VALUES ('9', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000008', '64', 'astro', '2017-02-04 10:42:53');
INSERT INTO `keuangan_masuk` VALUES ('10', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000001', '64', 'astro', '2017-02-04 11:16:14');
INSERT INTO `keuangan_masuk` VALUES ('11', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000002', '64', 'astro', '2017-02-04 11:21:15');
INSERT INTO `keuangan_masuk` VALUES ('12', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000003', '64', 'astro', '2017-02-04 11:25:23');
INSERT INTO `keuangan_masuk` VALUES ('13', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000004', '64', 'astro', '2017-02-04 11:30:06');
INSERT INTO `keuangan_masuk` VALUES ('14', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000005', '64', 'astro', '2017-02-04 11:32:49');
INSERT INTO `keuangan_masuk` VALUES ('15', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-04', 'PEN_2017_000006', '64', 'astro', '2017-02-04 11:37:54');
INSERT INTO `keuangan_masuk` VALUES ('16', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '2000', null, '2017-02-06', 'PEN_2017_000001', '64', 'astro', '2017-02-06 09:11:47');
INSERT INTO `keuangan_masuk` VALUES ('17', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', null, null, '2017-02-06', 'PEN_2017_000001', '64', 'astro', '2017-02-06 09:12:42');
INSERT INTO `keuangan_masuk` VALUES ('18', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', null, null, '2017-02-06', 'PEN_2017_000001', '64', 'astro', '2017-02-06 09:14:48');
INSERT INTO `keuangan_masuk` VALUES ('19', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', null, null, '2017-02-06', 'PEN_2017_000002', '64', 'astro', '2017-02-06 09:18:36');
INSERT INTO `keuangan_masuk` VALUES ('20', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', null, null, '2017-02-06', 'PEN_2017_000003', '64', 'astro', '2017-02-06 09:19:27');
INSERT INTO `keuangan_masuk` VALUES ('21', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '2000', null, '2017-02-06', 'PEN_2017_000004', '64', 'astro', '2017-02-06 10:00:44');
INSERT INTO `keuangan_masuk` VALUES ('22', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '2000', null, '2017-02-06', 'PEN_2017_000001', '64', 'astro', '2017-02-06 10:04:39');
INSERT INTO `keuangan_masuk` VALUES ('23', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '0', null, '2017-02-06', 'PEN_2017_000002', '64', 'astro', '2017-02-06 10:51:39');
INSERT INTO `keuangan_masuk` VALUES ('24', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '2000', null, '2017-02-06', 'PEN_2017_000003', '64', 'astro', '2017-02-06 10:52:04');
INSERT INTO `keuangan_masuk` VALUES ('25', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '0', null, '2017-02-06', 'PEN_2017_000004', '64', 'astro', '2017-02-06 11:32:55');
INSERT INTO `keuangan_masuk` VALUES ('26', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.4', 'Angsuran Penjualan Kredit', '1000', 'angsuran penjualan', '2017-02-06', 'PEN_2017_000004', null, 'astro', '2017-02-06 11:36:33');
INSERT INTO `keuangan_masuk` VALUES ('27', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.4', 'Angsuran Penjualan Kredit', '1000', 'angsuran penjualan', '2017-02-06', 'PEN_2017_000004', null, 'astro', '2017-02-06 11:37:19');
INSERT INTO `keuangan_masuk` VALUES ('28', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '35000', null, '2017-02-06', 'PEN_2017_000005', '1', 'astro', '2017-02-06 15:36:24');
INSERT INTO `keuangan_masuk` VALUES ('29', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '10000', null, '2017-02-06', 'PEN_2017_000006', '1', 'astro', '2017-02-06 15:56:19');
INSERT INTO `keuangan_masuk` VALUES ('30', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.4', 'Angsuran Penjualan Kredit', '10000', 'angsuran penjualan', '2017-02-06', 'PEN_2017_000006', null, 'astro', '2017-02-06 16:04:20');
INSERT INTO `keuangan_masuk` VALUES ('31', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', null, null, '2017-02-07', 'PEN_2017_000007', '64', 'astro', '2017-02-07 09:32:05');
INSERT INTO `keuangan_masuk` VALUES ('32', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.4', 'Angsuran Penjualan Kredit', '10000', 'angsuran penjualan', '2017-02-07', 'PEN_2017_000006', null, 'astro', '2017-02-07 09:34:00');
INSERT INTO `keuangan_masuk` VALUES ('33', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '20000', null, '2017-02-08', 'PEN_2017_000008', '64', 'astro', '2017-02-08 09:56:37');
INSERT INTO `keuangan_masuk` VALUES ('34', '1', 'Pemasukan', '1.3', 'Opname', '1.3.1', 'Ganti Rugi Opname', '2000', 'opname', '2017-02-08', 'OP_2017_000001', '64', 'astro', '2017-02-08 14:48:40');
INSERT INTO `keuangan_masuk` VALUES ('35', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '5000', null, '2017-02-08', 'PEN_2017_000009', '64', 'astro', '2017-02-08 14:57:07');
INSERT INTO `keuangan_masuk` VALUES ('36', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.4', 'Angsuran Penjualan Kredit', '5000', 'angsuran penjualan', '2017-02-08', 'PEN_2017_000009', null, 'astro', '2017-02-08 14:59:53');
INSERT INTO `keuangan_masuk` VALUES ('37', '1', 'Pemasukan', '1.3', 'Opname', '1.3.1', 'Ganti Rugi Opname', '1', 'opname', '2017-02-08', 'OP_2017_000002', '64', 'astro', '2017-02-08 15:20:27');
INSERT INTO `keuangan_masuk` VALUES ('38', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', null, null, '2017-02-08', 'PEN_2017_000010', '64', 'astro', '2017-02-08 15:26:24');
INSERT INTO `keuangan_masuk` VALUES ('39', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '120000000', null, '2017-02-10', 'PEN_2017_000011', '64', 'astro', '2017-02-10 13:14:06');
INSERT INTO `keuangan_masuk` VALUES ('40', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '240000000', null, '2017-02-10', 'PEN_64_2017_000001', '64', 'astro', '2017-02-10 13:42:03');
INSERT INTO `keuangan_masuk` VALUES ('41', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '8000', null, '2017-02-10', 'PN_64_2017_000001', '64', 'astro', '2017-02-10 13:45:24');
INSERT INTO `keuangan_masuk` VALUES ('42', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '14000', null, '2017-02-10', 'PEN_64_2017_000001', '64', 'astro', '2017-02-10 13:50:49');
INSERT INTO `keuangan_masuk` VALUES ('43', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '14000', null, '2017-02-10', 'PEN_64_2017_000001', '64', 'astro', '2017-02-10 13:56:15');
INSERT INTO `keuangan_masuk` VALUES ('44', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', 'NaN', null, '2017-02-10', 'PN_64_2017_000001', '64', 'astro', '2017-02-10 13:57:13');
INSERT INTO `keuangan_masuk` VALUES ('45', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '4000', null, '2017-02-10', 'PN_64_2017_000002', '64', 'astro', '2017-02-10 14:06:17');
INSERT INTO `keuangan_masuk` VALUES ('46', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '2000', null, '2017-02-10', 'PEN_2017_000001', '64', 'astro', '2017-02-10 16:01:44');
INSERT INTO `keuangan_masuk` VALUES ('47', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '14000', null, '2017-02-10', 'PN_64_2017_000001', '64', 'astro', '2017-02-10 16:17:38');

-- ----------------------------
-- Table structure for keuangan_sub_kategori_akun
-- ----------------------------
DROP TABLE IF EXISTS `keuangan_sub_kategori_akun`;
CREATE TABLE `keuangan_sub_kategori_akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_jenis_akun` varchar(255) DEFAULT NULL,
  `nama_jenis_akun` varchar(255) DEFAULT NULL,
  `kode_kategori_akun` varchar(255) DEFAULT NULL,
  `nama_kategori_akun` varchar(255) DEFAULT NULL,
  `kode_sub_kategori_akun` varchar(255) DEFAULT NULL,
  `nama_sub_kategori_akun` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'CURRENT_TIMESTAMP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keuangan_sub_kategori_akun
-- ----------------------------
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('1', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.1', 'Pembelian Tunai', '2016-06-01 10:33:58');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('2', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.2', 'Pembelian Debit', '2016-06-01 10:34:07');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('3', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.3', 'Pembelian Kredit', '2016-06-01 10:34:16');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('4', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.1', 'Penjualan Tunai', '2016-06-01 10:33:33');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('5', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.2', 'Penjualan Debit', '2016-06-01 10:33:42');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('6', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.3', 'Penjualan Kredit', '2016-06-01 10:33:50');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('7', '2', 'Pengeluaran', '2.2', 'Operasional', '2.2.1', 'Pembayaran Gaji', '2016-06-01 10:33:12');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('8', '2', 'Pengeluaran', '2.2', 'Operasional', '2.2.2', 'Pembayaran Listrik', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('9', '2', 'Pengeluaran', '2.2', 'Operasional', '2.2.3', 'Pembayaran Air', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('10', '2', 'Pengeluaran', '2.2', 'Operasional', '2.2.4', 'Pengeluaran Lain-lain', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('11', '1', 'Pemasukan', '1.2', 'Retur Masuk', '1.2.1', 'Pemasukan Dana Retur', '2016-06-01 13:49:41');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('12', '2', 'Pengeluaran', '2.4', 'Retur Keluar', '2.4.1', 'Pengeluaran Dana Retur', '2016-06-01 13:49:53');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('13', '2', 'Pengeluaran', '2.5', 'Pengeluaran Spoil', '2.5.1', 'Proses Pengeluaran Spoil', '2016-06-03 13:34:54');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('14', '2', 'Pengeluaran', '2.2', 'Operasional', '2.2.5', 'Transport', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('15', '2', 'Pengeluaran', '2.5', 'Pengeluaran Bahan', '2.5.2', 'Proses Pengeluaran Bahan', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('16', '2', 'Pengeluaran', '2.6', 'Penjualan', '2.6.1', 'Penjualan Compliment', '2016-06-15 15:06:44');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('18', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.4', 'Angsuran Pembelian Kredit', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('19', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.4', 'Angsuran Penjualan Kredit', '2016-06-15 15:29:23');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('20', '2', 'Pengeluaran', '2.3', 'Pengeluaran Lain-lain', '2.3.1', 'Sumbangan', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('21', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.5', 'Penjualan COD', '2016-06-01 10:33:33');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('22', '1', 'Pemasukan', '1.3', 'Opname', '1.3.1', 'Ganti Rugi Opname', '2016-12-08 11:38:09');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('23', '2', 'Pengeluaran', '2.1', 'Pembelian', '2.1.5', 'Transfer Ke Bank', '2016-12-16 15:45:59');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('24', '1', 'Pemasukan', '1.4', 'Pemasukan Lain', '1.4.1', 'Pendapatan Lain', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('25', '2', 'Pengeluaran', '2.7', 'Pembayaran Gaji', '2.7.1', 'Pembayaran Gaji Karyawan', null);
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('26', '1', 'Pemasukan', '1.5', 'Angsuran', '1.5.1', 'Angsuran Member', '2017-01-23 16:07:10');
INSERT INTO `keuangan_sub_kategori_akun` VALUES ('27', '1', 'Pemasukan', '1.1', 'Penjualan', '1.1.6', 'Penjualan Konsinasi', '2017-02-03 15:36:52');

-- ----------------------------
-- Table structure for master_akun
-- ----------------------------
DROP TABLE IF EXISTS `master_akun`;
CREATE TABLE `master_akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_header` varchar(255) DEFAULT NULL,
  `nama_header` varchar(255) DEFAULT NULL,
  `kode_sub_header` varchar(255) DEFAULT NULL,
  `nama_sub_header` varchar(255) DEFAULT NULL,
  `kode_akun` varchar(255) DEFAULT NULL,
  `nama_akun` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_akun
-- ----------------------------
INSERT INTO `master_akun` VALUES ('1', '1000.06', 'Aktiva Lancar', '1001.06.000', 'Bank', '1001.06.100', 'BRI', '1');
INSERT INTO `master_akun` VALUES ('2', '1000.06', 'Aktiva Lancar', '1010.06.000', 'Piutang jk.pendek', '1010.06.100', 'Piutang Anggota', '1');
INSERT INTO `master_akun` VALUES ('3', '1000.06', 'Aktiva Lancar', '1001.06.000', 'Bank', '1001.06.200', 'BCA', '1');
INSERT INTO `master_akun` VALUES ('4', '1000.06', 'Aktiva Lancar', '1000.06.000', 'Kas', '1000.06.000', 'Kas', '1');
INSERT INTO `master_akun` VALUES ('5', '1000.06', 'Aktiva Lancar', '1040.06.000', 'Persediaan', '1040.06.100', 'Persediaan bahan baku', '1');
INSERT INTO `master_akun` VALUES ('6', '1000.06', 'Aktiva Lancar', '1040.06.000', 'Persediaan', '1040.06.200', 'Persediaan barang jadi', '1');
INSERT INTO `master_akun` VALUES ('7', '2000.06', 'Hutang Lancar', '2000.06.000', 'Hutang', '2000.06.100', 'Hutang supplier', '1');
INSERT INTO `master_akun` VALUES ('8', '7000.06', 'Beban Administrasi Unit', '7023.06.000', 'B. Resiko', '7023.06.100', 'Resiko Persediaan', '1');
INSERT INTO `master_akun` VALUES ('9', '7000.06', 'Beban Administrasi Unit', '7023.06.000', 'B. Resiko', '7023.06.200', 'Kecelakaan', '1');
INSERT INTO `master_akun` VALUES ('10', '7000.06', 'Beban Administrasi Unit', '7023.06.000', 'B. Resiko', '7023.06.300', 'Kerusakan Produk', '1');

-- ----------------------------
-- Table structure for master_bahan_baku
-- ----------------------------
DROP TABLE IF EXISTS `master_bahan_baku`;
CREATE TABLE `master_bahan_baku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bahan_baku` varchar(255) DEFAULT NULL,
  `nama_bahan_baku` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `id_satuan_pembelian` varchar(255) DEFAULT NULL,
  `satuan_pembelian` varchar(255) DEFAULT NULL,
  `id_satuan_stok` varchar(255) DEFAULT NULL,
  `satuan_stok` varchar(255) DEFAULT NULL,
  `jumlah_dalam_satuan_pembelian` varchar(255) DEFAULT NULL,
  `stok_minimal` int(255) DEFAULT NULL,
  `real_stock` int(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_bahan_baku
-- ----------------------------
INSERT INTO `master_bahan_baku` VALUES ('1', 'BB_001', 'Susu', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_04', 'pieces', 'S_04', 'pieces', '1', '100', '1043', '1468.75', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('2', 'BB_002', 'Gula', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_04', 'pieces', 'S_04', 'pieces', '1', '100', '998', '2437.5', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('3', 'BB_003', 'Vitamin', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_04', 'pieces', 'S_04', 'pieces', '1', '100', '986', '3000', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('4', 'BB_004', 'Margarin', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_04', 'pieces', 'S_04', 'pieces', '1', '100', '986', '4000', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('6', 'BB_06', 'Ragi', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_03', 'liter', 'S_03', 'liter', '5', '5', '546', '5000', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('7', 'BB_1213', 'bb1234', 'U001', 'Gudang', 'R001', 'Rak Manufactur', 'S_01', 'kilogram', 'S_01', 'kilogram', '1', '100', '23', '1156.25', 'sendiri', '2323', 'cv aremaku');
INSERT INTO `master_bahan_baku` VALUES ('8', 'BB_23435', 'bb4321', 'U001', 'Gudang', 'R001', 'Rak Manufactur', 'S_01', 'kilogram', 'S_01', 'kilogram', '1', '1', '31', '2187.5', 'sendiri', '2323', 'cv aremaku');
INSERT INTO `master_bahan_baku` VALUES ('9', 'BB_12', 'Coklat', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_04', 'pieces', 'S_04', 'pieces', '1', '5', '1', '2000', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('11', 'BB_0001', 'Gula', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_01', 'kilogram', 'S_07', 'gram', '1000', '100', '0', '0', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('12', 'BB_0002', 'Essense', 'U001', 'Gudang', '002', 'Rak Bahan Baku', 'S_03', 'liter', 'S_02', 'mililiter', '1000', '100', '0', '0', 'sendiri', '002', 'Jaya Sakti');
INSERT INTO `master_bahan_baku` VALUES ('13', 'BB_1000000', 'New', '1003', 'Gudang 3', 'R001', 'Rak Manufactur', 'S_02', 'mililiter', 'S_01', 'kilogram', '1', '1', '0', '1', 'sendiri', null, null);

-- ----------------------------
-- Table structure for master_bahan_jadi
-- ----------------------------
DROP TABLE IF EXISTS `master_bahan_jadi`;
CREATE TABLE `master_bahan_jadi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bahan_jadi` varchar(255) DEFAULT '',
  `nama_bahan_jadi` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `id_satuan_pembelian` varchar(255) DEFAULT NULL,
  `satuan_pembelian` varchar(255) DEFAULT NULL,
  `id_satuan_stok` varchar(255) DEFAULT NULL,
  `satuan_stok` varchar(255) DEFAULT NULL,
  `jumlah_dalam_satuan_pembelian` varchar(255) DEFAULT NULL,
  `stok_minimal` int(255) DEFAULT NULL,
  `real_stock` int(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `kode_member` varchar(255) DEFAULT '',
  `nama_member` varchar(255) DEFAULT NULL,
  `kode_plasma` varchar(255) DEFAULT NULL,
  `nama_plasma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_bahan_jadi
-- ----------------------------
INSERT INTO `master_bahan_jadi` VALUES ('1', 'BJ_001', 'Lexus Broom', 'plasma', 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '100', '1', '35290.75', '40000', 'sendiri', '', null, null, null);
INSERT INTO `master_bahan_jadi` VALUES ('2', 'BJ_002', 'Sodok Turbo', 'plasma', 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '100', '0', '20075', '25000', 'sendiri', '', null, null, null);
INSERT INTO `master_bahan_jadi` VALUES ('5', 'BJ_001', 'Lexus Broom', null, 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, null, '0', '35290.75', null, 'plasma', '', null, 'PLM_0001', 'Chandra ');
INSERT INTO `master_bahan_jadi` VALUES ('6', 'BJ_002', 'Sodok Turbo', null, 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, null, '2', '20075', null, 'plasma', '', null, 'PLM_0001', 'Chandra ');
INSERT INTO `master_bahan_jadi` VALUES ('7', 'BJ_001', 'Lexus Broom', 'plasma', 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '100', '0', '35290.75', '40000', 'member', 'CST_0001', 'Burhan', null, null);
INSERT INTO `master_bahan_jadi` VALUES ('8', '', null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null, 'member', 'CST_0001', 'Burhan', null, null);

-- ----------------------------
-- Table structure for master_barang_dalam_proses
-- ----------------------------
DROP TABLE IF EXISTS `master_barang_dalam_proses`;
CREATE TABLE `master_barang_dalam_proses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(255) DEFAULT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `id_satuan_pembelian` varchar(255) DEFAULT NULL,
  `satuan_pembelian` varchar(255) DEFAULT NULL,
  `id_satuan_stok` varchar(255) DEFAULT NULL,
  `satuan_stok` varchar(255) DEFAULT NULL,
  `jumlah_dalam_satuan_pembelian` varchar(255) DEFAULT NULL,
  `stok_minimal` int(255) DEFAULT NULL,
  `real_stock` int(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_barang_dalam_proses
-- ----------------------------
INSERT INTO `master_barang_dalam_proses` VALUES ('1', 'BP_001', 'Susu Padat', 'dalam proses', 'U001', 'Gudang', '002', 'Rak Bahan Baku', null, null, 'S_03', 'liter', null, '1', '20', '875', '6000000000', 'sendiri');
INSERT INTO `master_barang_dalam_proses` VALUES ('2', 'BP_423423', 'bdp123', 'dalam proses', 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_01', 'kilogram', null, '1', '12', '0', '2000', 'sendiri');
INSERT INTO `master_barang_dalam_proses` VALUES ('3', 'BP_123', 'margaragi', 'dalam proses', 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '5', '7', '0', '10000', 'sendiri');
INSERT INTO `master_barang_dalam_proses` VALUES ('4', 'BP_04', 'susu coklat', 'dalam proses', 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '5', '0', '0', '5000', 'sendiri');
INSERT INTO `master_barang_dalam_proses` VALUES ('5', 'BP_1000000', 'New', 'dalam proses', '1001', 'Gudang 1', 'R001', 'Rak Manufactur', null, null, 'S_07', 'gram', null, '1', null, null, '1', 'sendiri');
INSERT INTO `master_barang_dalam_proses` VALUES ('6', 'BP_222222', 'New Baru Edit', 'dalam proses', '1002', 'Gudang 2', 'R001', 'Rak Manufactur', null, null, 'S_06', 'botol', null, '1', null, null, null, 'sendiri');

-- ----------------------------
-- Table structure for master_gudang
-- ----------------------------
DROP TABLE IF EXISTS `master_gudang`;
CREATE TABLE `master_gudang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_gudang` varchar(255) DEFAULT NULL,
  `nama_gudang` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_gudang
-- ----------------------------
INSERT INTO `master_gudang` VALUES ('1', '1001', 'Gudang 1', '-', '1', '2017-02-10 14:57:20');
INSERT INTO `master_gudang` VALUES ('8', '1002', 'Gudang 2', '-', '1', '2017-02-10 14:57:33');
INSERT INTO `master_gudang` VALUES ('9', '1003', 'Gudang 3', '-', '1', '2017-02-10 14:57:47');

-- ----------------------------
-- Table structure for master_header
-- ----------------------------
DROP TABLE IF EXISTS `master_header`;
CREATE TABLE `master_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_header` varchar(255) DEFAULT NULL,
  `nama_header` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_header
-- ----------------------------
INSERT INTO `master_header` VALUES ('2', '1100.06', 'Aktiva Tetap', '1');
INSERT INTO `master_header` VALUES ('3', '4000.06', 'Penjualan', '1');
INSERT INTO `master_header` VALUES ('4', '2000.06', 'Hutang Lancar', '1');
INSERT INTO `master_header` VALUES ('6', '5000.06', 'Beban Pokok Penjualan', '1');
INSERT INTO `master_header` VALUES ('7', '6000.06', 'Beban Tenaga Kerja (SDM)', '1');
INSERT INTO `master_header` VALUES ('8', '7000.06', 'Beban Administrasi Unit', '1');
INSERT INTO `master_header` VALUES ('9', '8000.06', 'Beban Lain-lain', '1');
INSERT INTO `master_header` VALUES ('11', '121.06', 'Header Tes', '1');

-- ----------------------------
-- Table structure for master_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `master_jabatan`;
CREATE TABLE `master_jabatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_jabatan` varchar(255) DEFAULT NULL,
  `nama_jabatan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_jabatan
-- ----------------------------
INSERT INTO `master_jabatan` VALUES ('1', 'J001', 'admin', '-', '1', null);

-- ----------------------------
-- Table structure for master_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `master_karyawan`;
CREATE TABLE `master_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_karyawan` varchar(255) DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `gaji` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_karyawan
-- ----------------------------
INSERT INTO `master_karyawan` VALUES ('1', 'KAR_0001', 'Adi', 'Malang', '1500000', '081554111056', '--', '1', '2017-01-31 09:32:23');
INSERT INTO `master_karyawan` VALUES ('2', 'KAR_0002', 'Hadi', 'Malang', '1500000', '082233670497', '-', '1', '2017-01-31 09:32:55');

-- ----------------------------
-- Table structure for master_kasir
-- ----------------------------
DROP TABLE IF EXISTS `master_kasir`;
CREATE TABLE `master_kasir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `nama_kasir` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_kasir
-- ----------------------------
INSERT INTO `master_kasir` VALUES ('1', '001', 'kasir1', '192.168.100.111');
INSERT INTO `master_kasir` VALUES ('2', '002', 'kasir2', '192.168.100.42');
INSERT INTO `master_kasir` VALUES ('3', '003', 'kasir3', '192.168.100.33');
INSERT INTO `master_kasir` VALUES ('4', '004', 'kasir4', '192.168.100.66');
INSERT INTO `master_kasir` VALUES ('5', '005', 'kasir5', '::1');
INSERT INTO `master_kasir` VALUES ('6', '006', 'kasir6', '192.168.100.58');
INSERT INTO `master_kasir` VALUES ('7', '007', 'kasir7', '192.168.100.7');
INSERT INTO `master_kasir` VALUES ('8', '008', 'kasir8', '192.168.100.22');
INSERT INTO `master_kasir` VALUES ('9', '009', 'kasir9', '192.168.100.101');
INSERT INTO `master_kasir` VALUES ('10', '010', 'kasir10', '192.168.100.44');
INSERT INTO `master_kasir` VALUES ('11', '011', 'kasir11', '192.168.100.37');
INSERT INTO `master_kasir` VALUES ('12', '012', 'kasir12', '192.168.100.31');

-- ----------------------------
-- Table structure for master_member
-- ----------------------------
DROP TABLE IF EXISTS `master_member`;
CREATE TABLE `master_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_member` varchar(255) DEFAULT NULL,
  `nama_member` varchar(255) DEFAULT NULL,
  `alamat_member` varchar(255) DEFAULT NULL,
  `telp_member` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status_member` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_member
-- ----------------------------
INSERT INTO `master_member` VALUES ('1', 'CST_0001', 'Burhan', 'fdsfdf', '32423', '', '1', '2017-01-19 10:40:08');
INSERT INTO `master_member` VALUES ('2', 'CST_0002', 'mirza', 'jalan melati 24', '08434334', '', '1', '2017-01-19 10:39:49');
INSERT INTO `master_member` VALUES ('3', 'CST_0003', 'sasa', 'dfdsfdsf', '073432', '', '1', '2017-02-06 15:08:10');

-- ----------------------------
-- Table structure for master_modul
-- ----------------------------
DROP TABLE IF EXISTS `master_modul`;
CREATE TABLE `master_modul` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kode` varchar(160) DEFAULT NULL,
  `modul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_modul
-- ----------------------------
INSERT INTO `master_modul` VALUES ('1', '001', 'Master', 'master', '', '2016-06-25 12:45:00', '1');
INSERT INTO `master_modul` VALUES ('2', '002', 'Pembelian', 'Pembelian', '', '2016-06-17 13:29:19', '1');
INSERT INTO `master_modul` VALUES ('3', 'k_01', 'Order', 'kasir', '', '2016-11-11 15:22:53', '1');
INSERT INTO `master_modul` VALUES ('4', 'G_01', 'Gudang', 'Gudang', '', '2016-06-17 13:29:21', '1');
INSERT INTO `master_modul` VALUES ('5', 'L_01', 'Laporan', 'Laporan', '', '2016-06-17 13:29:21', '1');
INSERT INTO `master_modul` VALUES ('6', 'KU_01', 'Keuangan', 'keuangan', '', '2016-06-17 13:29:22', '1');
INSERT INTO `master_modul` VALUES ('7', 'S_01', 'Stok', 'stok', '', '2016-06-17 13:29:22', '1');
INSERT INTO `master_modul` VALUES ('8', 'SE_01', 'Setting', 'setting', '', '2016-06-17 13:29:22', '1');
INSERT INTO `master_modul` VALUES ('9', 'outlet_kontrol', 'Outlet Kontrol', 'Outlet Kontrol', '', '2016-12-14 16:21:45', '0');
INSERT INTO `master_modul` VALUES ('10', 'transaksi_kasir', 'Transaksi Kasir', 'Transaksi Kasir', '', '2016-06-18 09:05:02', '1');
INSERT INTO `master_modul` VALUES ('11', 'hutang_piutang', 'Hutang / Piutang', 'Hutang / Piutang', '', '2016-06-17 13:29:24', '1');
INSERT INTO `master_modul` VALUES ('12', 'master_proses', 'Master Proses', 'Master Proses', '', '2016-11-04 09:19:21', '0');
INSERT INTO `master_modul` VALUES ('13', 'master_modul', 'Master Modul', 'Master Modul', '', '2016-11-04 09:19:24', '0');
INSERT INTO `master_modul` VALUES ('14', 'master_keuangan', 'Master Keuangan', 'Master Keuangan', '', '2016-11-04 09:19:26', '0');
INSERT INTO `master_modul` VALUES ('15', 'master_unit', 'Master Unit', 'Master Unit', '', '2016-11-04 09:19:28', '0');
INSERT INTO `master_modul` VALUES ('16', 'master_rak', 'Master Rak', 'Master Rak', '', '2016-11-11 15:25:09', '1');
INSERT INTO `master_modul` VALUES ('17', 'master_bahan_jadi', 'Master Bahan Jadi', 'Master Bahan Jadi', '', '2016-11-04 09:19:30', '0');
INSERT INTO `master_modul` VALUES ('18', 'master_menu', 'Master Menu', 'Master Menu', '', '2016-06-18 11:38:24', '1');
INSERT INTO `master_modul` VALUES ('19', 'master_meja', 'Master Meja', 'Master Meja', '', '2016-06-18 11:39:04', '1');
INSERT INTO `master_modul` VALUES ('20', 'master_member', 'Master Member', 'Master Member', '', '2016-06-18 11:39:45', '1');
INSERT INTO `master_modul` VALUES ('21', 'retur_outlet', 'Retur Outlet', 'Retur Outlet', '', '2016-11-04 09:19:34', '0');
INSERT INTO `master_modul` VALUES ('22', 'repack', 'Repack', 'Repack', '', '2016-11-04 09:19:35', '0');
INSERT INTO `master_modul` VALUES ('23', 'produksi', 'Produksi', 'Produksi', '', '2016-11-04 09:19:36', '0');
INSERT INTO `master_modul` VALUES ('24', 'Pengeluaran_bahan', 'Pengeluaran_bahan', 'Pengeluaran Bahan', '', '2016-11-04 09:19:37', '0');
INSERT INTO `master_modul` VALUES ('25', 'pelaporan_outlet', 'Pelaporan Outlet', 'Pelaporan Outlet', '', '2016-11-04 09:19:40', '0');
INSERT INTO `master_modul` VALUES ('26', 'bahan_baku', 'Master Bahan Baku', 'Master Bahan Baku', '', '2016-06-28 09:45:16', '1');
INSERT INTO `master_modul` VALUES ('27', 'master_supplier', 'Master Supplier', 'Master Supplier', '', '2016-06-28 09:45:43', '1');
INSERT INTO `master_modul` VALUES ('28', 'master_jabatan', 'Master Jabatan', 'Master Jabatan', '', '2016-06-28 09:46:19', '1');
INSERT INTO `master_modul` VALUES ('29', 'master_karyawan', 'Master Karyawan', 'Master Karyawan', '', '2016-06-28 09:46:42', '1');
INSERT INTO `master_modul` VALUES ('30', 'master_user', 'Master User', 'Master User', '', '2016-06-28 09:47:07', '1');

-- ----------------------------
-- Table structure for master_plasma
-- ----------------------------
DROP TABLE IF EXISTS `master_plasma`;
CREATE TABLE `master_plasma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_plasma` varchar(255) DEFAULT NULL,
  `nama_plasma` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_plasma
-- ----------------------------
INSERT INTO `master_plasma` VALUES ('1', 'PLM_0001', 'Chandra ', 'Malang', '081554111059', '--', '1', '2017-01-31 09:33:22');
INSERT INTO `master_plasma` VALUES ('2', 'PLM_0002', 'Andy', 'Malang', '085646539946', '-', '1', '2017-01-31 09:33:42');

-- ----------------------------
-- Table structure for master_produk
-- ----------------------------
DROP TABLE IF EXISTS `master_produk`;
CREATE TABLE `master_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(255) DEFAULT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `id_satuan_pembelian` varchar(255) DEFAULT NULL,
  `satuan_pembelian` varchar(255) DEFAULT NULL,
  `id_satuan_stok` varchar(255) DEFAULT NULL,
  `satuan_stok` varchar(255) DEFAULT NULL,
  `jumlah_dalam_satuan_pembelian` varchar(255) DEFAULT NULL,
  `stok_minimal` int(255) DEFAULT NULL,
  `real_stock` int(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_produk
-- ----------------------------
INSERT INTO `master_produk` VALUES ('1', 'PR_001', 'Susu Chocolate', null, 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '6', '97', '0', '120000000', 'sendiri');
INSERT INTO `master_produk` VALUES ('2', 'PR_243823', 'p1234', null, 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_01', 'kilogram', null, '1', '123', '0', '2000', 'sendiri');
INSERT INTO `master_produk` VALUES ('3', 'PR_123', 'Produk 123', null, 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '5', '96', '0', '14000', 'sendiri');
INSERT INTO `master_produk` VALUES ('4', 'PR_04', 'Susu Coklat', null, 'U001', 'Gudang', 'R001', 'Rak Manufactur', null, null, 'S_04', 'pieces', null, '5', '15', '0', '8000', 'sendiri');
INSERT INTO `master_produk` VALUES ('5', 'PR_100000', 'New', null, '1002', 'Gudang 2', 'R001', 'Rak Manufactur', null, null, 'S_01', 'kilogram', null, '1', '0', null, '1', 'sendiri');

-- ----------------------------
-- Table structure for master_rak
-- ----------------------------
DROP TABLE IF EXISTS `master_rak`;
CREATE TABLE `master_rak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_rak
-- ----------------------------
INSERT INTO `master_rak` VALUES ('1', 'R001', 'Rak Manufactur', '1002', 'Gudang 2', '-', '1', '2017-02-10 15:08:47');
INSERT INTO `master_rak` VALUES ('2', '002', 'Rak Bahan Baku', '1001', 'Gudang 1', '-', '1', '2017-02-10 15:09:03');

-- ----------------------------
-- Table structure for master_satuan
-- ----------------------------
DROP TABLE IF EXISTS `master_satuan`;
CREATE TABLE `master_satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(150) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `kategori` varchar(15) DEFAULT NULL,
  `acuan` varchar(8) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_satuan
-- ----------------------------
INSERT INTO `master_satuan` VALUES ('1', 'S_01', 'kilogram', 'berat', '1000', 'kg');
INSERT INTO `master_satuan` VALUES ('2', 'S_02', 'mililiter', 'volume', '1', 'ml');
INSERT INTO `master_satuan` VALUES ('3', 'S_03', 'liter', 'volume', '1000', 'l');
INSERT INTO `master_satuan` VALUES ('4', 'S_04', 'pieces', 'satuan', '1', 'pcs');
INSERT INTO `master_satuan` VALUES ('5', 'S_05', 'porsi', 'satuan', '1', 'porsi');
INSERT INTO `master_satuan` VALUES ('6', 'S_06', 'botol', 'satuan', '1', 'btl');
INSERT INTO `master_satuan` VALUES ('7', 'S_07', 'gram', 'berat', '1', 'gr');
INSERT INTO `master_satuan` VALUES ('8', 'S_08', 'kilogram', 'satuan', '1000', 'gr');
INSERT INTO `master_satuan` VALUES ('9', 'S_09', 'Box / Kotak', 'satuan', '1', 'box');
INSERT INTO `master_satuan` VALUES ('10', 'S_10', 'ikat', 'satuan', '1', 'ikat');

-- ----------------------------
-- Table structure for master_setting
-- ----------------------------
DROP TABLE IF EXISTS `master_setting`;
CREATE TABLE `master_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(255) DEFAULT NULL,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `kode_reservasi` varchar(255) DEFAULT NULL,
  `kode_retur` varchar(255) DEFAULT NULL,
  `kode_opname` varchar(255) DEFAULT NULL,
  `kode_spoil` varchar(255) DEFAULT NULL,
  `kode_produksi` varchar(255) DEFAULT NULL,
  `kode_repack` varchar(255) DEFAULT NULL,
  `kode_blended` varchar(255) DEFAULT NULL,
  `kode_konsinyasi` varchar(255) DEFAULT NULL,
  `kode_ro` varchar(255) DEFAULT NULL,
  `kode_pelanggan` varchar(255) DEFAULT NULL,
  `kode_pelaporan` varchar(255) DEFAULT NULL,
  `kode_retur_outlet` varchar(255) DEFAULT NULL,
  `kode_input_stok_outlet` varchar(255) DEFAULT NULL,
  `nama_resto` varchar(255) DEFAULT NULL,
  `alamat_resto` varchar(255) DEFAULT NULL,
  `telp_resto` varchar(255) DEFAULT NULL,
  `web_resto` varchar(255) DEFAULT NULL,
  `fb_resto` varchar(255) DEFAULT NULL,
  `ig_resto` varchar(255) DEFAULT NULL,
  `kode_bahan_jadi` varchar(255) DEFAULT NULL,
  `kode_produk` varchar(255) DEFAULT NULL,
  `kode_bahan_baku` varchar(255) DEFAULT NULL,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  `kode_unit_default` varchar(255) DEFAULT NULL,
  `kode_rak_default` varchar(255) DEFAULT NULL,
  `printer` varchar(255) DEFAULT NULL,
  `kode_pengeluaran_bahan` varchar(255) DEFAULT NULL,
  `logo_resto` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `aktifasi` varchar(255) DEFAULT NULL,
  `patch` varchar(255) DEFAULT NULL,
  `kode_po` varchar(255) DEFAULT NULL,
  `kode_bahan_proses` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_setting
-- ----------------------------
INSERT INTO `master_setting` VALUES ('1', 'PEM', 'PEN', 'KAS', 'RES', 'RET', 'OP', 'SP', 'PRO', 'REP', 'BLE', 'KON', 'RO', 'PL', 'OT', 'REOUT', 'INO', 'KAN-SUOL', 'Jabung', '085648852654', 'www.mix-resto.com', 'Mix Resto Asik', 'Mr. Resto', 'BJ', 'PR', 'BB', 'MUT', '01', '01', '\\\\192.168.100.35\\TM-U220', 'PB', '160622100138.png', '', 'ec6d61830e3b6eb4665deb48c255a750fa3b384ff8d632c80ec3ad8c5eff0062', 'bc994cc61ab75522ab50e633c23257c830190a9b1dc79f973d88f648f5018366', 'PO', 'BP');

-- ----------------------------
-- Table structure for master_sub_header
-- ----------------------------
DROP TABLE IF EXISTS `master_sub_header`;
CREATE TABLE `master_sub_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_header` varchar(255) DEFAULT NULL,
  `nama_header` varchar(255) DEFAULT NULL,
  `kode_sub_header` varchar(255) DEFAULT NULL,
  `nama_sub_header` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_sub_header
-- ----------------------------
INSERT INTO `master_sub_header` VALUES ('1', '1000.06', 'Aktiva Lancar', '1000.06.000', 'Kas', '1');
INSERT INTO `master_sub_header` VALUES ('2', '1000.06', 'Aktiva Lancar', '1001.06.000', 'Bank', '1');
INSERT INTO `master_sub_header` VALUES ('3', '1000.06', 'Aktiva Lancar', '1011.06.000', '(Cadangan penyisihan piutang)', '1');
INSERT INTO `master_sub_header` VALUES ('4', '1100.06', 'Aktiva Tetap', '1110.06.000', 'Tanah', '1');
INSERT INTO `master_sub_header` VALUES ('5', '1000.06', 'Aktiva Lancar', '1020.06.000', 'Piutang Jangka Panjang', '1');
INSERT INTO `master_sub_header` VALUES ('6', '1000.06', 'Aktiva Lancar', '1010.06.000', 'Piutang jk.pendek', '1');
INSERT INTO `master_sub_header` VALUES ('7', '1000.06', 'Aktiva Lancar', '1040.06.000', 'Persediaan', '1');
INSERT INTO `master_sub_header` VALUES ('8', '2000.06', 'Hutang Lancar', '2000.06.000', 'Hutang', '1');
INSERT INTO `master_sub_header` VALUES ('10', '1100.06', 'Aktiva Tetap', '1120.06.000', 'Bangunan', '1');
INSERT INTO `master_sub_header` VALUES ('11', '1100.06', 'Aktiva Tetap', '1121.06.000', '(Akm. penyusutan bangunan)', '1');
INSERT INTO `master_sub_header` VALUES ('12', '4000.06', 'Penjualan', '4000.06.000', 'Penjualan', '1');
INSERT INTO `master_sub_header` VALUES ('13', '4000.06', 'Penjualan', '4001.06.000', 'Retur Penjualan/Diskon Penjualan', '1');
INSERT INTO `master_sub_header` VALUES ('14', '5000.06', 'Beban Pokok Penjualan', '5000.06.000', 'Harga Pokok Produksi*)', '1');
INSERT INTO `master_sub_header` VALUES ('15', '5000.06', 'Beban Pokok Penjualan', '5001.06.000', 'B. Pembinaan Kelompok', '1');
INSERT INTO `master_sub_header` VALUES ('16', '7000.06', 'Beban Administrasi Unit', '7023.06.000', 'B. Resiko', '1');

-- ----------------------------
-- Table structure for master_supplier
-- ----------------------------
DROP TABLE IF EXISTS `master_supplier`;
CREATE TABLE `master_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `kategori_supplier` varchar(255) DEFAULT NULL,
  `alamat_supplier` varchar(255) DEFAULT NULL,
  `telp_supplier` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `nama_pic` varchar(255) DEFAULT NULL,
  `jabatan_pic` varchar(255) DEFAULT NULL,
  `telp_pic` varchar(255) DEFAULT NULL,
  `status_supplier` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_supplier
-- ----------------------------
INSERT INTO `master_supplier` VALUES ('1', '2323', 'cv aremaku', '2', '-', '22423424', 'BRI', '234343', 'fefe', 'owner', '0879678', '1', '2017-01-16 11:09:13', null);
INSERT INTO `master_supplier` VALUES ('2', '002', 'Jaya Sakti', '2', 'jl. dan', '082234694149', 'Mandiri', '013830348098', 'Uhaw', 'Syalalal', '091883038102', '1', '2017-01-16 11:07:04', null);
INSERT INTO `master_supplier` VALUES ('3', '455', 'UD abadi', '1', 'gfhghgjj', '087768', 'BCA', '54666', 'tere', 'tes', '08678', '1', '2017-01-16 13:29:31', null);

-- ----------------------------
-- Table structure for master_tambahan
-- ----------------------------
DROP TABLE IF EXISTS `master_tambahan`;
CREATE TABLE `master_tambahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_tambahan
-- ----------------------------
INSERT INTO `master_tambahan` VALUES ('1', 'Finishing', '1000', '1');
INSERT INTO `master_tambahan` VALUES ('2', 'Komisi Supir', '10000', '1');

-- ----------------------------
-- Table structure for master_unit
-- ----------------------------
DROP TABLE IF EXISTS `master_unit`;
CREATE TABLE `master_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT '',
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_unit
-- ----------------------------
INSERT INTO `master_unit` VALUES ('1', 'U001', 'Gudang', null, null, '1', '', '2016-10-12 15:28:21', 'induk');
INSERT INTO `master_unit` VALUES ('2', 'U002', 'Kitchen', null, null, '1', '', '2016-10-12 15:28:24', 'induk');
INSERT INTO `master_unit` VALUES ('3', 'U003', 'Kasir', null, null, '1', '', '2016-10-12 15:28:28', 'induk');
INSERT INTO `master_unit` VALUES ('4', 'U004', 'Server', null, null, '1', '', '2016-10-18 15:02:01', 'induk');
INSERT INTO `master_unit` VALUES ('5', 'U005', 'Office', null, null, '1', '', '2016-10-12 15:28:37', 'induk');
INSERT INTO `master_unit` VALUES ('6', 'U006', 'Bar', null, null, '1', '', '2016-10-18 11:51:11', 'induk');

-- ----------------------------
-- Table structure for master_user
-- ----------------------------
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE `master_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` longtext,
  `last_login` datetime DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `group` varchar(255) DEFAULT '',
  `position` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_user
-- ----------------------------
INSERT INTO `master_user` VALUES ('64', '1', 'astro', '8cd07cf78166032f36fd06cb40163942', '0000-00-00 00:00:00', '003', 'superuser', null, 'U001', 'Gudang');
INSERT INTO `master_user` VALUES ('75', '1', 'pusat', 'f16277a71ae1e44f210806e787632404', null, 'J001', '', null, 'U001', 'Gudang');

-- ----------------------------
-- Table structure for opsi_bayar_piutang_member
-- ----------------------------
DROP TABLE IF EXISTS `opsi_bayar_piutang_member`;
CREATE TABLE `opsi_bayar_piutang_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_bayar_piutang_member
-- ----------------------------
INSERT INTO `opsi_bayar_piutang_member` VALUES ('1', 'PEN_2017_000003', 'BJ_001', '1', '', '2017-01-31 10:25:05', 'Lexus Broom', '40000', '40000');

-- ----------------------------
-- Table structure for opsi_bayar_piutang_member_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_bayar_piutang_member_temp`;
CREATE TABLE `opsi_bayar_piutang_member_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_bayar_piutang_member_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_hutang
-- ----------------------------
DROP TABLE IF EXISTS `opsi_hutang`;
CREATE TABLE `opsi_hutang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `angsuran` varchar(255) DEFAULT NULL,
  `tanggal_angsuran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_hutang
-- ----------------------------
INSERT INTO `opsi_hutang` VALUES ('1', 'PEM_2017_000001', '500000', '2017-01-31', '2017-01-31 10:21:20');
INSERT INTO `opsi_hutang` VALUES ('2', 'PEM_2017_000001', '500000', '2017-02-06', '2017-02-06 13:13:52');
INSERT INTO `opsi_hutang` VALUES ('3', 'PEM_2017_000005', '20000', '2017-02-08', '2017-02-08 15:04:53');
INSERT INTO `opsi_hutang` VALUES ('4', 'PEM_2017_000003', '7500', '2017-02-08', '2017-02-08 15:28:07');

-- ----------------------------
-- Table structure for opsi_komposisi_produksi
-- ----------------------------
DROP TABLE IF EXISTS `opsi_komposisi_produksi`;
CREATE TABLE `opsi_komposisi_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_barang` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_komposisi_produksi
-- ----------------------------
INSERT INTO `opsi_komposisi_produksi` VALUES ('1', 'PP_2017_000001', 'BP_423423', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('2', 'PP_2017_000001', 'BP_423423', 'BB_23435', 'bb4321', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('3', 'PP_2017_000002', 'PR_243823', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('4', 'PP_2017_000002', 'PR_243823', 'BP_423423', 'bdp123', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('5', 'PP_2017_000003', 'BP_423423', 'BB_1213', 'bb1234', '4');
INSERT INTO `opsi_komposisi_produksi` VALUES ('6', 'PP_2017_000003', 'BP_423423', 'BB_23435', 'bb4321', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('7', 'PP_2017_000004', 'PR_243823', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('8', 'PP_2017_000004', 'PR_243823', 'BP_423423', 'bdp123', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('9', 'PP_2017_000005', 'BP_423423', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('10', 'PP_2017_000005', 'BP_423423', 'BB_23435', 'bb4321', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('11', 'PP_2017_000006', 'PR_243823', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('12', 'PP_2017_000006', 'PR_243823', 'BP_423423', 'bdp123', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('13', 'PP_2017_000007', 'BP_001', 'BB_001', 'Susu', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('14', 'PP_2017_000007', 'BP_001', 'BB_002', 'Gula', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('15', 'PP_2017_000008', 'BP_423423', 'BB_1213', 'bb1234', '12');
INSERT INTO `opsi_komposisi_produksi` VALUES ('16', 'PP_2017_000008', 'BP_423423', 'BB_23435', 'bb4321', '6');
INSERT INTO `opsi_komposisi_produksi` VALUES ('17', 'PP_2017_000001', 'BP_423423', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('18', 'PP_2017_000001', 'BP_423423', 'BB_23435', 'bb4321', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('19', 'PP_2017_000002', 'PR_243823', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('20', 'PP_2017_000002', 'PR_243823', 'BP_423423', 'bdp123', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('21', 'PP_2017_000003', 'BP_423423', 'BB_1213', 'bb1234', '4');
INSERT INTO `opsi_komposisi_produksi` VALUES ('22', 'PP_2017_000003', 'BP_423423', 'BB_23435', 'bb4321', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('23', 'PP_2017_000004', 'BP_123', 'BB_004', 'Margarin', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('24', 'PP_2017_000004', 'BP_123', 'BB_06', 'Ragi', '2.5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('25', 'PP_2017_000004', 'BP_423423', 'BB_1213', 'bb1234', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('26', 'PP_2017_000004', 'BP_423423', 'BB_23435', 'bb4321', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('27', 'PP_2017_000005', 'BP_123', 'BB_004', 'Margarin', '3');
INSERT INTO `opsi_komposisi_produksi` VALUES ('28', 'PP_2017_000005', 'BP_123', 'BB_06', 'Ragi', '1.5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('29', 'PP_2017_000006', 'BP_001', 'BB_001', 'Susu', '3');
INSERT INTO `opsi_komposisi_produksi` VALUES ('30', 'PP_2017_000006', 'BP_001', 'BB_002', 'Gula', '3');
INSERT INTO `opsi_komposisi_produksi` VALUES ('31', 'PP_2017_000006', 'BP_123', 'BB_004', 'Margarin', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('32', 'PP_2017_000006', 'BP_123', 'BB_06', 'Ragi', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('33', 'PP_2017_000006', 'PR_123', 'BP_123', 'margaragi', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('34', 'PP_2017_000007', 'BP_001', 'BB_001', 'Susu', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('35', 'PP_2017_000007', 'BP_001', 'BB_002', 'Gula', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('36', 'PP_2017_000008', 'BP_123', 'BB_004', 'Margarin', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('37', 'PP_2017_000008', 'BP_123', 'BB_06', 'Ragi', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('38', 'PP_2017_000009', 'BP_123', 'BB_004', 'Margarin', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('39', 'PP_2017_000009', 'BP_123', 'BB_06', 'Ragi', '0.5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('40', 'PP_2017_000010', 'BP_001', 'BB_001', 'Susu', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('41', 'PP_2017_000010', 'BP_001', 'BB_002', 'Gula', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('42', 'PP_2017_000010', 'BP_423423', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('43', 'PP_2017_000010', 'BP_423423', 'BB_23435', 'bb4321', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('44', 'PP_2017_000011', 'BP_04', 'BB_001', 'Susu', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('45', 'PP_2017_000011', 'BP_04', 'BB_12', 'Coklat', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('46', 'PP_2017_000012', 'PR_04', 'BP_04', 'susu coklat', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('47', 'PP_2017_000012', 'PR_04', 'BB_002', 'Gula', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('48', 'PP_2017_000013', 'PR_243823', 'BB_1213', 'bb1234', '2');
INSERT INTO `opsi_komposisi_produksi` VALUES ('49', 'PP_2017_000013', 'PR_243823', 'BP_423423', 'bdp123', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('50', 'PP_2017_000014', 'PR_001', 'BB_003', 'Vitamin', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('51', 'PP_2017_000014', 'PR_001', 'BP_001', 'Susu Padat', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('52', 'PP_2017_000015', 'PR_04', 'BP_04', 'susu coklat', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('53', 'PP_2017_000015', 'PR_04', 'BB_002', 'Gula', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('54', 'PP_2017_000016', 'PR_04', 'BP_04', 'susu coklat', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('55', 'PP_2017_000016', 'PR_04', 'BB_002', 'Gula', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('56', 'PP_2017_000017', 'PR_04', 'BP_04', 'susu coklat', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('57', 'PP_2017_000017', 'PR_04', 'BB_002', 'Gula', '1');
INSERT INTO `opsi_komposisi_produksi` VALUES ('58', 'PP_2017_000018', 'BP_04', 'BB_001', 'Susu', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('59', 'PP_2017_000018', 'BP_04', 'BB_12', 'Coklat', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('60', 'PP_2017_000019', 'PR_04', 'BP_04', 'susu coklat', '3');
INSERT INTO `opsi_komposisi_produksi` VALUES ('61', 'PP_2017_000019', 'PR_04', 'BB_002', 'Gula', '3');
INSERT INTO `opsi_komposisi_produksi` VALUES ('62', 'PP_2017_000020', 'BP_001', 'BB_001', 'Susu', '55');
INSERT INTO `opsi_komposisi_produksi` VALUES ('63', 'PP_2017_000020', 'BP_001', 'BB_002', 'Gula', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('64', 'PP_2017_000020', 'BP_001', 'BB_003', 'Vitamin', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('65', 'PP_2017_000020', 'BP_001', 'BB_004', 'Margarin', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('66', 'PP_2017_000021', 'BP_001', 'BB_001', 'Susu', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('67', 'PP_2017_000021', 'BP_001', 'BB_002', 'Gula', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('68', 'PP_2017_000021', 'BP_001', 'BB_003', 'Vitamin', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('69', 'PP_2017_000021', 'BP_001', 'BB_004', 'Margarin', '5');
INSERT INTO `opsi_komposisi_produksi` VALUES ('70', 'PP_2017_000022', 'BP_001', 'BB_001', 'Susu', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('71', 'PP_2017_000022', 'BP_001', 'BB_002', 'Gula', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('72', 'PP_2017_000022', 'BP_001', 'BB_003', 'Vitamin', '10');
INSERT INTO `opsi_komposisi_produksi` VALUES ('73', 'PP_2017_000022', 'BP_001', 'BB_004', 'Margarin', '10');

-- ----------------------------
-- Table structure for opsi_master_bahan_jadi
-- ----------------------------
DROP TABLE IF EXISTS `opsi_master_bahan_jadi`;
CREATE TABLE `opsi_master_bahan_jadi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bahan_jadi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `id_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `rumus` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_master_bahan_jadi
-- ----------------------------
INSERT INTO `opsi_master_bahan_jadi` VALUES ('1', 'BJ_001', 'BSJ_001', 'New Hexa', 'bahan setengah jadi', '1', 'S_04', 'pieces', '20075', '10', '22082.5');
INSERT INTO `opsi_master_bahan_jadi` VALUES ('2', 'BJ_002', 'BB_001', 'Kepala Sapu', 'bahan baku', '2', 'S_04', 'pieces', '2000', '10', '2200');
INSERT INTO `opsi_master_bahan_jadi` VALUES ('3', 'BJ_002', 'BB_002', 'Lakop', 'bahan baku', '2', 'S_04', 'pieces', '2500', '10', '2750');
INSERT INTO `opsi_master_bahan_jadi` VALUES ('4', 'BJ_002', 'BB_003', 'Gagang 80', 'bahan baku', '2', 'S_04', 'pieces', '3000', '10', '3300');

-- ----------------------------
-- Table structure for opsi_master_bahan_jadi_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_master_bahan_jadi_temp`;
CREATE TABLE `opsi_master_bahan_jadi_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bahan_jadi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `id_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `rumus` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_master_bahan_jadi_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_master_barang_dalam_proses
-- ----------------------------
DROP TABLE IF EXISTS `opsi_master_barang_dalam_proses`;
CREATE TABLE `opsi_master_barang_dalam_proses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `id_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_master_barang_dalam_proses
-- ----------------------------
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('1', 'BP_001', 'BB_001', 'Susu', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('2', 'BP_001', 'BB_002', 'Gula', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('3', 'BP_423423', 'BB_1213', 'bb1234', 'bahan baku', '2', 'S_01', 'kilogram');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('4', 'BP_423423', 'BB_23435', 'bb4321', 'bahan baku', '2', 'S_01', 'kilogram');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('5', 'BP_123', 'BB_004', 'Margarin', 'bahan baku', '2', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('6', 'BP_123', 'BB_06', 'Ragi', 'bahan baku', '6.5', 'S_03', 'liter');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('7', 'BP_04', 'BB_001', 'Susu', 'bahan baku', '11', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('8', 'BP_04', 'BB_12', 'Coklat', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('12', 'BP_001', 'BB_003', 'Vitamin', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('13', 'BP_001', 'BB_004', 'Margarin', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('14', 'BP_04', 'BB_003', 'Vitamin', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('15', 'BP_1000000', 'BB_002', 'Gula', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('16', 'BP_222222', 'BB_001', 'Susu', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_barang_dalam_proses` VALUES ('17', 'BP_222222', 'BB_002', 'Gula', 'bahan baku', '1', 'S_04', 'pieces');

-- ----------------------------
-- Table structure for opsi_master_barang_dalam_proses_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_master_barang_dalam_proses_temp`;
CREATE TABLE `opsi_master_barang_dalam_proses_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `id_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_master_barang_dalam_proses_temp
-- ----------------------------
INSERT INTO `opsi_master_barang_dalam_proses_temp` VALUES ('1', 'BP_00001', 'BB_0001', 'Gula', 'bahan baku', '100', 'S_07', 'gram');
INSERT INTO `opsi_master_barang_dalam_proses_temp` VALUES ('2', 'BP_10000', 'BB_001', 'Susu', 'bahan baku', '1', 'S_04', 'pieces');

-- ----------------------------
-- Table structure for opsi_master_produk
-- ----------------------------
DROP TABLE IF EXISTS `opsi_master_produk`;
CREATE TABLE `opsi_master_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `id_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_master_produk
-- ----------------------------
INSERT INTO `opsi_master_produk` VALUES ('1', 'PR_001', 'BB_003', 'Vitamin', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_produk` VALUES ('3', 'PR_243823', 'BB_1213', 'bb1234', 'bahan baku', '2', 'S_01', 'kilogram');
INSERT INTO `opsi_master_produk` VALUES ('4', 'PR_243823', 'BP_423423', 'bdp123', 'bahan proses', '1', 'S_01', 'kilogram');
INSERT INTO `opsi_master_produk` VALUES ('5', 'PR_123', 'BP_123', 'margaragi', 'bahan proses', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_produk` VALUES ('6', 'PR_04', 'BP_04', 'susu coklat', 'bahan proses', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_produk` VALUES ('7', 'PR_04', 'BB_002', 'Gula', 'bahan baku', '1', 'S_04', 'pieces');
INSERT INTO `opsi_master_produk` VALUES ('11', 'PR_001', 'BB_001', 'Susu', 'bahan baku', '4', 'S_04', 'pieces');
INSERT INTO `opsi_master_produk` VALUES ('12', 'PR_001', 'BP_001', 'Susu Padat', 'bahan proses', '4', 'S_03', 'liter');
INSERT INTO `opsi_master_produk` VALUES ('16', 'PR_100000', 'BB_002', 'Gula', 'bahan baku', '1', 'S_04', 'pieces');

-- ----------------------------
-- Table structure for opsi_master_produk_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_master_produk_temp`;
CREATE TABLE `opsi_master_produk_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `id_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_master_produk_temp
-- ----------------------------
INSERT INTO `opsi_master_produk_temp` VALUES ('2', 'PR_1000000', 'BB_001', 'Susu', 'bahan baku', '2', 'S_04', 'pieces');

-- ----------------------------
-- Table structure for opsi_piutang
-- ----------------------------
DROP TABLE IF EXISTS `opsi_piutang`;
CREATE TABLE `opsi_piutang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `angsuran` varchar(255) DEFAULT NULL,
  `tanggal_angsuran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_piutang
-- ----------------------------
INSERT INTO `opsi_piutang` VALUES ('1', 'IP_2017_000001', '10731.50', '2017-01-31', '2017-01-31 10:17:05');
INSERT INTO `opsi_piutang` VALUES ('2', 'PEN_2017_000003', '40000', '2017-01-31', '2017-01-31 10:25:05');
INSERT INTO `opsi_piutang` VALUES ('3', 'PEN_2017_000004', '1000', '2017-02-06', '2017-02-06 11:36:33');
INSERT INTO `opsi_piutang` VALUES ('4', 'PEN_2017_000004', '1000', '2017-02-06', '2017-02-06 11:37:19');
INSERT INTO `opsi_piutang` VALUES ('5', 'PEN_2017_000006', '10000', '2017-02-06', '2017-02-06 16:04:20');
INSERT INTO `opsi_piutang` VALUES ('6', 'PEN_2017_000006', '10000', '2017-02-07', '2017-02-07 09:34:00');
INSERT INTO `opsi_piutang` VALUES ('7', 'PEN_2017_000009', '5000', '2017-02-08', '2017-02-08 14:59:53');

-- ----------------------------
-- Table structure for opsi_transaksi_input_plasma
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_input_plasma`;
CREATE TABLE `opsi_transaksi_input_plasma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(50) DEFAULT NULL,
  `sub_total` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_input_plasma
-- ----------------------------
INSERT INTO `opsi_transaksi_input_plasma` VALUES ('1', 'IP_2017_000001', 'BSJ_001', 'New Hexa', 'setengah_jadi', '2', '', '20075', '40150');
INSERT INTO `opsi_transaksi_input_plasma` VALUES ('2', 'IP_2017_000001', 'BJ_001', 'Lexus Broom', 'jadi', '2', '', '35290.75', '70581.5');

-- ----------------------------
-- Table structure for opsi_transaksi_input_plasma_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_input_plasma_temp`;
CREATE TABLE `opsi_transaksi_input_plasma_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `sub_total` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_input_plasma_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_input_plasma_temp` VALUES ('6', 'IP_2017_000002', 'Sodok Turbo', 'BJ_002', 'jadi', '2', '20075', '', '40150');

-- ----------------------------
-- Table structure for opsi_transaksi_opname
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_opname`;
CREATE TABLE `opsi_transaksi_opname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_opname` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `stok_awal` varchar(255) DEFAULT NULL,
  `stok_akhir` varchar(255) DEFAULT NULL,
  `selisih` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_opname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_opname
-- ----------------------------
INSERT INTO `opsi_transaksi_opname` VALUES ('1', 'OP_2017_000001', 'BB_12', 'Coklat', null, 'U001', 'Gudang', '002', 'Rak Bahan Baku', '29', '30', '1', 'lebih', null, '2017-02-08 14:47:52', null);
INSERT INTO `opsi_transaksi_opname` VALUES ('2', 'OP_2017_000002', 'BP_123', 'margaragi', 'dalam proses', 'U001', 'Gudang', 'R001', 'Rak Manufactur', '7', '8', '1', 'lebih', null, '2017-02-08 15:14:02', null);
INSERT INTO `opsi_transaksi_opname` VALUES ('3', 'OP_2017_000003', 'BB_001', 'Susu', null, 'U001', 'Gudang', '002', 'Rak Bahan Baku', '1050', '1043', '7', 'kurang', null, '2017-02-10 16:27:37', null);
INSERT INTO `opsi_transaksi_opname` VALUES ('4', 'OP_2017_000003', 'BB_002', 'Gula', null, 'U001', 'Gudang', '002', 'Rak Bahan Baku', '990', '998', '8', 'lebih', null, '2017-02-10 16:27:37', null);

-- ----------------------------
-- Table structure for opsi_transaksi_opname_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_opname_temp`;
CREATE TABLE `opsi_transaksi_opname_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_opname` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `stok_awal` varchar(255) DEFAULT NULL,
  `stok_akhir` varchar(255) DEFAULT NULL,
  `selisih` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_opname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_opname_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_transaksi_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_pembelian`;
CREATE TABLE `opsi_transaksi_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(255) DEFAULT NULL,
  `kode_po` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `jenis_diskon` varchar(255) DEFAULT NULL,
  `diskon_item` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `status_sesuai` varchar(255) DEFAULT NULL,
  `jumlah_retur` varchar(225) DEFAULT '',
  `subtotal_retur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_pembelian
-- ----------------------------
INSERT INTO `opsi_transaksi_pembelian` VALUES ('52', 'PEM_2017_000001', 'PO_080217103507_U001_1', 'stok', 'BB_002', 'Gula', '3', 'S_04', 'pieces', '2750', null, null, null, '002', 'Jaya Sakti', '8250', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('53', 'PEM_2017_000002', 'PO_080217103808_U001_1', 'stok', 'BB_002', 'Gula', '3', 'S_04', 'pieces', '2750', null, null, null, '002', 'Jaya Sakti', '8250', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('54', 'PEM_2017_000003', 'PO_080217104009_U001_1', 'stok', 'BB_001', 'Susu', '4', 'S_04', 'pieces', '1875', null, null, null, '2323', 'cv aremaku', '7500', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('55', 'PEM_2017_000004', 'PO_080217104631_U001_1', 'stok', 'BB_06', 'Ragi', '5', 'S_03', 'liter', '5000', null, null, null, '455', 'UD abadi', '25000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('56', 'PEM_2017_000005', 'PO_080217142913_U001_1', 'stok', 'BB_12', 'Coklat', '40', 'S_04', 'pieces', '2000', null, null, null, '455', 'UD abadi', '80000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('57', 'PEM_2017_000006', 'PO_080217153658_U001_1', 'stok', 'BB_12', 'Coklat', '3', 'S_04', 'pieces', '2000', null, null, null, '2323', 'cv aremaku', '6000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('58', 'PEM_2017_000007', 'PO_080217153840_U001_1', 'stok', 'BB_12', 'Coklat', '3', 'S_04', 'pieces', '2000', null, null, null, '455', 'UD abadi', '6000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('59', 'PEM_2017_000008', 'PO_080217154656_U001_1', 'stok', 'BB_003', 'Vitamin', '2', 'S_04', 'pieces', '3000', null, null, null, '002', 'Jaya Sakti', '6000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('60', 'PEM_2017_000009', 'PO_100217143814_U001_1', 'stok', 'BB_001', 'Susu', '10', 'S_04', 'pieces', '1000', null, null, '0', '2323', 'cv aremaku', '10000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('61', 'PEM_2017_000009', 'PO_100217143814_U001_1', 'stok', 'BB_002', 'Gula', '10', 'S_04', 'pieces', '2000', null, null, '0', '2323', 'cv aremaku', '20000', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('62', 'PEM_2017_000010', 'PO_100217143941_U001_1', 'stok', 'BB_001', 'Susu', '15', 'S_04', 'pieces', '1500', null, null, '0', '002', 'Jaya Sakti', '22500', 'gudang', '', null, '', null);
INSERT INTO `opsi_transaksi_pembelian` VALUES ('63', 'PEM_2017_000010', 'PO_100217143941_U001_1', 'stok', 'BB_002', 'Gula', '15', 'S_04', 'pieces', '2500', null, null, '0', '002', 'Jaya Sakti', '37500', 'gudang', '', null, '', null);

-- ----------------------------
-- Table structure for opsi_transaksi_pembelian_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_pembelian_temp`;
CREATE TABLE `opsi_transaksi_pembelian_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `jenis_diskon` varchar(255) DEFAULT NULL,
  `diskon_item` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_pembelian_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_transaksi_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_penjualan`;
CREATE TABLE `opsi_transaksi_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_meja` varchar(255) DEFAULT NULL,
  `kategori_menu` varchar(255) DEFAULT NULL,
  `kode_menu` varchar(255) DEFAULT NULL,
  `nama_menu` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah_retur` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `jenis_diskon` varchar(255) DEFAULT NULL,
  `diskon_item` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `waiter` varchar(255) DEFAULT NULL,
  `status_diskon` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_menu` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `subtotal_retur` varchar(255) DEFAULT NULL,
  `ongkos_kirim` varchar(255) DEFAULT NULL,
  `expired` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_penjualan
-- ----------------------------
INSERT INTO `opsi_transaksi_penjualan` VALUES ('28', '64', 'PN_64_2017_000001', null, null, 'PR_123', 'Produk 123', null, null, '1', 'S_04', 'pieces', '14000', 'persen', '0', '0', '14000', null, null, null, null, '2017-02-10', null, null, '-');

-- ----------------------------
-- Table structure for opsi_transaksi_penjualan_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_penjualan_temp`;
CREATE TABLE `opsi_transaksi_penjualan_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_meja` varchar(255) DEFAULT NULL,
  `kategori_menu` varchar(255) DEFAULT NULL,
  `kode_menu` varchar(255) DEFAULT NULL,
  `nama_menu` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `jenis_diskon` varchar(255) DEFAULT NULL,
  `diskon_item` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `status_diskon` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `status_menu` varchar(255) DEFAULT NULL,
  `status_meja` varchar(255) DEFAULT NULL,
  `expired` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_penjualan_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_transaksi_perintah_produksi
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_perintah_produksi`;
CREATE TABLE `opsi_transaksi_perintah_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_perintah_produksi
-- ----------------------------
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('1', 'PP_2017_000001', 'BP_423423', 'bdp123', 'setengah_jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('2', 'PP_2017_000002', 'PR_243823', 'p1234', 'jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('3', 'PP_2017_000003', 'BP_423423', 'bdp123', 'setengah_jadi', '2', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('4', 'PP_2017_000004', 'BP_123', 'margaragi', 'setengah_jadi', '5', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('5', 'PP_2017_000004', 'BP_423423', 'bdp123', 'setengah_jadi', '5', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('6', 'PP_2017_000005', 'BP_123', 'margaragi', 'setengah_jadi', '3', 'tes');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('7', 'PP_2017_000006', 'BP_001', 'Susu Padat', 'setengah_jadi', '3', '-');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('8', 'PP_2017_000006', 'BP_123', 'margaragi', 'setengah_jadi', '2', '-');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('9', 'PP_2017_000006', 'PR_123', 'Produk 123', 'jadi', '2', '-');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('10', 'PP_2017_000007', 'BP_001', 'Susu Padat', 'setengah_jadi', '2', '-');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('11', 'PP_2017_000008', 'BP_123', 'margaragi', 'setengah_jadi', '2', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('12', 'PP_2017_000009', 'BP_123', 'margaragi', 'setengah_jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('13', 'PP_2017_000010', 'BP_001', 'Susu Padat', 'setengah_jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('14', 'PP_2017_000010', 'BP_423423', 'bdp123', 'setengah_jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('15', 'PP_2017_000011', 'BP_04', 'susu coklat', 'setengah_jadi', '10', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('16', 'PP_2017_000012', 'PR_04', 'Susu Coklat', 'jadi', '10', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('17', 'PP_2017_000013', 'PR_243823', 'p1234', 'jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('18', 'PP_2017_000014', 'PR_001', 'Susu Chocolate', 'jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('19', 'PP_2017_000015', 'PR_04', 'Susu Coklat', 'jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('20', 'PP_2017_000016', 'PR_04', 'Susu Coklat', 'jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('21', 'PP_2017_000017', 'PR_04', 'Susu Coklat', 'jadi', '1', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('22', 'PP_2017_000018', 'BP_04', 'susu coklat', 'setengah_jadi', '5', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('23', 'PP_2017_000019', 'PR_04', 'Susu Coklat', 'jadi', '3', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('24', 'PP_2017_000020', 'BP_001', 'Susu Padat', 'setengah_jadi', '5', '');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('25', 'PP_2017_000021', 'BP_001', 'Susu Padat', 'setengah_jadi', '5', '-');
INSERT INTO `opsi_transaksi_perintah_produksi` VALUES ('26', 'PP_2017_000022', 'BP_001', 'Susu Padat', 'setengah_jadi', '10', '-');

-- ----------------------------
-- Table structure for opsi_transaksi_perintah_produksi_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_perintah_produksi_temp`;
CREATE TABLE `opsi_transaksi_perintah_produksi_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_perintah_produksi_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_transaksi_po
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_po`;
CREATE TABLE `opsi_transaksi_po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_po` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `position` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_po
-- ----------------------------
INSERT INTO `opsi_transaksi_po` VALUES ('1', 'PO_310117094600_U001_1', 'stok', 'BB_001', 'Kepala Sapu', '1000', 'S_04', 'pieces', '', '2017-01-31 09:46:00', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('2', 'PO_310117094600_U001_1', 'stok', 'BB_002', 'Lakop', '1000', 'S_04', 'pieces', '', '2017-01-31 09:46:00', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('3', 'PO_310117094600_U001_1', 'stok', 'BB_003', 'Gagang 80', '1000', 'S_04', 'pieces', '', '2017-01-31 09:46:00', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('4', 'PO_310117100025_U001_1', 'stok', 'BB_004', 'Sticker', '1000', 'S_04', 'pieces', '', '2017-01-31 10:00:25', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('5', 'PO_310117100025_U001_1', 'stok', 'BB_005', 'Staples', '1000', 'S_04', 'pieces', '', '2017-01-31 10:00:25', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('6', 'PO_020217143728_U001_1', 'stok', 'BB_001', 'Kepala Sapu', '2', 'S_04', 'pieces', 'lol', '2017-02-02 14:37:28', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('7', 'PO_020217143728_U001_1', 'stok', 'BB_002', 'Lakop', '1', 'S_04', 'pieces', 'jos', '2017-02-02 14:37:28', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('8', 'PO_030217091539_U001_1', 'stok', 'BB_001', 'Kepala Sapu', '100', 'S_04', 'pieces', '', '2017-02-03 09:15:39', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('9', 'PO_030217153433_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-03 15:34:33', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('10', 'PO_030217153532_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-03 15:35:32', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('11', 'PO_030217153646_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-03 15:36:46', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('12', 'PO_030217153744_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-03 15:37:44', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('13', 'PO_030217153758_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-03 15:37:58', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('14', 'PO_030217153816_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-03 15:38:16', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('15', 'PO_030217153954_U001_1', 'stok', 'BB_06', 'bahan 1', '100', 'S_03', 'liter', '', '2017-02-03 15:39:54', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('16', 'PO_040217102243_U001_1', 'stok', 'BB_23435', 'bb4321', '4', 'S_01', 'kilogram', '', '2017-02-04 10:22:43', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('17', 'PO_040217102309_U001_1', 'stok', 'BB_23435', 'bb4321', '4', 'S_01', 'kilogram', '', '2017-02-04 10:23:09', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('18', 'PO_040217102325_U001_1', 'stok', 'BB_23435', 'bb4321', '4', 'S_01', 'kilogram', '', '2017-02-04 10:23:25', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('19', 'PO_040217102339_U001_1', 'stok', 'BB_23435', 'bb4321', '4', 'S_01', 'kilogram', '', '2017-02-04 10:23:39', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('20', 'PO_040217110041_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-04 11:00:41', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('21', 'PO_040217110055_U001_1', 'stok', 'BB_1213', 'bb1234', '2', 'S_01', 'kilogram', '', '2017-02-04 11:00:55', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('22', 'PO_040217110111_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-04 11:01:11', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('23', 'PO_040217110124_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-04 11:01:24', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('24', 'PO_060217093033_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-06 09:30:33', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('25', 'PO_060217093033_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-06 09:30:33', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('26', 'PO_060217093053_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '-', '2017-02-06 09:30:53', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('27', 'PO_060217093053_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-06 09:30:54', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('28', 'PO_060217093119_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '-', '2017-02-06 09:31:19', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('29', 'PO_060217093119_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-06 09:31:19', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('30', 'PO_060217102756_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-06 10:27:56', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('31', 'PO_060217102756_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-06 10:27:56', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('32', 'PO_060217103445_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-06 10:34:45', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('33', 'PO_060217103445_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-06 10:34:45', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('34', 'PO_060217103508_U001_1', 'stok', 'BB_1213', 'bb1234', '5', 'S_01', 'kilogram', '', '2017-02-06 10:35:08', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('35', 'PO_060217103508_U001_1', 'stok', 'BB_23435', 'bb4321', '5', 'S_01', 'kilogram', '', '2017-02-06 10:35:08', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('36', 'PO_060217105024_U001_1', 'stok', 'BB_001', 'Susu', '4', 'S_04', 'pieces', '', '2017-02-06 10:50:24', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('37', 'PO_060217141456_U001_1', 'stok', 'BB_1213', 'bb1234', '3', 'S_01', 'kilogram', '', '2017-02-06 14:14:56', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('38', 'PO_060217141456_U001_1', 'stok', 'BB_001', 'Susu', '2', 'S_04', 'pieces', '', '2017-02-06 14:14:56', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('39', 'PO_060217150926_U001_1', 'stok', 'BB_004', 'Margarin', '10', 'S_04', 'pieces', '', '2017-02-06 15:09:26', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('40', 'PO_060217150926_U001_1', 'stok', 'BB_06', 'Ragi', '5', 'S_03', 'liter', '', '2017-02-06 15:09:26', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('41', 'PO_070217091927_U001_1', null, 'BB_1213', 'bb1234', '10', 'S_01', 'kilogram', '', '2017-02-07 09:19:27', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('42', 'PO_070217094219_U001_1', null, 'BB_1213', 'bb1234', '20', 'S_01', 'kilogram', '', '2017-02-07 09:42:20', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('43', 'PO_070217132209_U001_1', 'stok', 'BB_001', 'Susu', '5', 'S_04', 'pieces', '-', '2017-02-07 13:22:09', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('44', 'PO_070217132209_U001_1', 'stok', 'BB_002', 'Gula', '10', 'S_04', 'pieces', '-', '2017-02-07 13:22:09', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('45', 'PO_070217132209_U001_1', 'stok', 'BB_003', 'Vitamin', '15', 'S_04', 'pieces', '-', '2017-02-07 13:22:09', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('46', 'PO_070217133521_U001_1', 'stok', 'BB_001', 'Susu', '13', 'S_04', 'pieces', '-', '2017-02-07 13:35:21', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('47', 'PO_070217133521_U001_1', 'stok', 'BB_002', 'Gula', '17', 'S_04', 'pieces', '-', '2017-02-07 13:35:21', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('48', 'PO_070217134032_U001_1', 'stok', 'BB_001', 'Susu', '11', 'S_04', 'pieces', '-', '2017-02-07 13:40:32', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('49', 'PO_070217134032_U001_1', 'stok', 'BB_002', 'Gula', '12', 'S_04', 'pieces', '-', '2017-02-07 13:40:32', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('50', 'PO_080217103231_U001_1', 'stok', 'BB_003', 'Vitamin', '2', 'S_04', 'pieces', '', '2017-02-08 10:32:31', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('51', 'PO_080217103507_U001_1', 'stok', 'BB_002', 'Gula', '3', 'S_04', 'pieces', '', '2017-02-08 10:35:07', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('52', 'PO_080217103808_U001_1', 'stok', 'BB_002', 'Gula', '3', 'S_04', 'pieces', '', '2017-02-08 10:38:08', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('53', 'PO_080217104009_U001_1', 'stok', 'BB_001', 'Susu', '4', 'S_04', 'pieces', '', '2017-02-08 10:40:09', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('54', 'PO_080217104631_U001_1', 'stok', 'BB_06', 'Ragi', '5', 'S_03', 'liter', '', '2017-02-08 10:46:31', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('55', 'PO_080217142913_U001_1', 'stok', 'BB_12', 'Coklat', '40', 'S_04', 'pieces', '', '2017-02-08 14:29:13', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('56', 'PO_080217153658_U001_1', 'stok', 'BB_12', 'Coklat', '3', 'S_04', 'pieces', '', '2017-02-08 15:36:58', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('57', 'PO_080217153840_U001_1', 'stok', 'BB_12', 'Coklat', '3', 'S_04', 'pieces', '', '2017-02-08 15:38:40', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('58', 'PO_080217154656_U001_1', 'stok', 'BB_003', 'Vitamin', '2', 'S_04', 'pieces', '', '2017-02-08 15:46:56', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('59', 'PO_100217143814_U001_1', 'stok', 'BB_001', 'Susu', '10', 'S_04', 'pieces', '-', '2017-02-10 14:38:14', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('60', 'PO_100217143814_U001_1', 'stok', 'BB_002', 'Gula', '10', 'S_04', 'pieces', '', '2017-02-10 14:38:14', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('61', 'PO_100217143941_U001_1', 'stok', 'BB_001', 'Susu', '15', 'S_04', 'pieces', '', '2017-02-10 14:39:41', 'U001', '');
INSERT INTO `opsi_transaksi_po` VALUES ('62', 'PO_100217143941_U001_1', 'stok', 'BB_002', 'Gula', '15', 'S_04', 'pieces', '', '2017-02-10 14:39:41', 'U001', '');

-- ----------------------------
-- Table structure for opsi_transaksi_po_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_po_temp`;
CREATE TABLE `opsi_transaksi_po_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_po` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_po_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_transaksi_produksi
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_produksi`;
CREATE TABLE `opsi_transaksi_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produksi` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_produksi` varchar(255) DEFAULT NULL,
  `jenis_produksi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_produksi
-- ----------------------------
INSERT INTO `opsi_transaksi_produksi` VALUES ('1', 'PRO_2017_000001', 'Barang Dalam Proses', 'BP_423423', 'bdp123', '1', null, null, null, null, null, '2017-02-06', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('2', 'PRO_2017_000002', 'Produk', 'PR_243823', 'p1234', '1', null, null, null, null, null, '2017-02-06', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('3', 'PRO_2017_000003', 'Barang Dalam Proses', 'BP_423423', 'bdp123', '2', null, null, null, null, null, '2017-02-06', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('4', 'PRO_2017_000004', 'Barang Dalam Proses', 'BP_123', 'margaragi', '5', null, null, null, null, null, '2017-02-06', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('5', 'PRO_2017_000005', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', '3', null, null, null, null, null, '2017-02-07', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('6', 'PRO_2017_000005', 'Barang Dalam Proses', 'BP_123', 'margaragi', '2', null, null, null, null, null, '2017-02-07', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('7', 'PRO_2017_000005', 'Produk', 'PR_123', 'Produk 123', '2', null, null, null, null, null, '2017-02-07', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('8', 'PRO_2017_000006', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', '2', null, null, null, null, null, '2017-02-07', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('9', 'PRO_2017_000007', 'Barang Dalam Proses', 'BP_123', 'margaragi', '2', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('10', 'PRO_2017_000008', 'Barang Dalam Proses', 'BP_123', 'margaragi', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('11', 'PRO_2017_000009', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('12', 'PRO_2017_000009', 'Barang Dalam Proses', 'BP_423423', 'bdp123', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('13', 'PRO_2017_000010', 'Barang Dalam Proses', 'BP_04', 'susu coklat', '10', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('14', 'PRO_2017_000011', 'Produk', 'PR_04', 'Susu Coklat', '10', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('15', 'PRO_2017_000012', 'Produk', 'PR_243823', 'p1234', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('16', 'PRO_2017_000013', 'Produk', 'PR_001', 'Susu Chocolate', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('17', 'PRO_2017_000014', 'Produk', 'PR_04', 'Susu Coklat', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('18', 'PRO_2017_000015', 'Produk', 'PR_04', 'Susu Coklat', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('19', 'PRO_2017_000016', 'Produk', 'PR_04', 'Susu Coklat', '1', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('20', 'PRO_2017_000017', 'Barang Dalam Proses', 'BP_04', 'susu coklat', '5', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('21', 'PRO_2017_000018', 'Produk', 'PR_04', 'Susu Coklat', '3', null, null, null, null, null, '2017-02-08', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('22', 'PRO_2017_000019', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', '5', null, null, null, null, null, '2017-02-10', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('23', 'PRO_2017_000020', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', '5', null, null, null, null, null, '2017-02-10', null);
INSERT INTO `opsi_transaksi_produksi` VALUES ('24', 'PRO_2017_000021', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', '10', null, null, null, null, null, '2017-02-10', null);

-- ----------------------------
-- Table structure for opsi_transaksi_produksi_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_produksi_temp`;
CREATE TABLE `opsi_transaksi_produksi_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produksi` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `tanggal_produksi` varchar(255) DEFAULT NULL,
  `jenis_produksi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_produksi_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_produksi_temp` VALUES ('1', 'PRO_2017_000022', 'Barang Dalam Proses', 'BP_123', 'margaragi', '3', null, null, null, null, '', null, 'sendiri');

-- ----------------------------
-- Table structure for opsi_transaksi_spoil
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_spoil`;
CREATE TABLE `opsi_transaksi_spoil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_spoil` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_spoil
-- ----------------------------
INSERT INTO `opsi_transaksi_spoil` VALUES ('1', 'SP_2017_000001', 'BB_1213', 'bb1234', 'bahan_baku', 'U001', 'Gudang', 'R001', 'Rak Manufactur', '1', null, '2017-02-08 14:44:50');
INSERT INTO `opsi_transaksi_spoil` VALUES ('2', 'SP_2017_000002', 'BB_12', 'Coklat', 'bahan_baku', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '1', null, '2017-02-08 14:45:50');
INSERT INTO `opsi_transaksi_spoil` VALUES ('3', 'SP_2017_000003', 'BP_123', 'margaragi', 'bahan_setengah_jadi', 'U001', 'Gudang', 'R001', 'Rak Manufactur', '1', null, '2017-02-08 15:04:24');
INSERT INTO `opsi_transaksi_spoil` VALUES ('4', 'SP_2017_000004', 'BB_12', 'Coklat', 'bahan_baku', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '30', null, '2017-02-08 16:16:17');
INSERT INTO `opsi_transaksi_spoil` VALUES ('5', 'SP_2017_000005', 'BP_123', 'margaragi', 'bahan_setengah_jadi', 'U001', 'Gudang', 'R001', 'Rak Manufactur', '1', null, '2017-02-08 16:17:47');
INSERT INTO `opsi_transaksi_spoil` VALUES ('6', 'SP_2017_000006', 'BB_001', 'Susu', 'bahan_baku', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '3', null, '2017-02-10 16:07:45');
INSERT INTO `opsi_transaksi_spoil` VALUES ('7', 'SP_2017_000006', 'BB_002', 'Gula', 'bahan_baku', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '8', null, '2017-02-10 16:07:45');

-- ----------------------------
-- Table structure for opsi_transaksi_spoil_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_spoil_temp`;
CREATE TABLE `opsi_transaksi_spoil_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_spoil` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_spoil_temp
-- ----------------------------

-- ----------------------------
-- Table structure for setting_gudang
-- ----------------------------
DROP TABLE IF EXISTS `setting_gudang`;
CREATE TABLE `setting_gudang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_unit` varchar(100) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `printer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of setting_gudang
-- ----------------------------
INSERT INTO `setting_gudang` VALUES ('1', 'U001', 'Gudang', '192.168.100.33', 'dsasejd');

-- ----------------------------
-- Table structure for setting_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `setting_pembelian`;
CREATE TABLE `setting_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of setting_pembelian
-- ----------------------------
INSERT INTO `setting_pembelian` VALUES ('1', '2016-10-11 16:03:15', '');

-- ----------------------------
-- Table structure for setting_resto
-- ----------------------------
DROP TABLE IF EXISTS `setting_resto`;
CREATE TABLE `setting_resto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_resto` varchar(225) DEFAULT NULL,
  `no_tlp` varchar(225) DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `web_resto` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `aktivasi` varchar(225) DEFAULT NULL,
  `patch` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of setting_resto
-- ----------------------------
INSERT INTO `setting_resto` VALUES ('1', 'KAN- SUOL', '23213424', 'sdsfs', 'sdfsdf', 'sdf', 'sdf', 'sdf', 'sdf');

-- ----------------------------
-- Table structure for transaksi_hutang
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_hutang`;
CREATE TABLE `transaksi_hutang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `nominal_hutang` varchar(255) DEFAULT NULL,
  `angsuran` varchar(255) DEFAULT NULL,
  `sisa` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `tanggal_jatuh_tempo` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_hutang
-- ----------------------------
INSERT INTO `transaksi_hutang` VALUES ('1', 'PEM_2017_000001', '002', 'Jaya Sakti', '5000000', '1000000', '4000000', '2017-01-31', '2017-02-08 11:06:38', '64', 'astro', '2017-02-11');
INSERT INTO `transaksi_hutang` VALUES ('2', 'PEM_2017_000028', '002', 'Jaya Sakti', '66562.5', '', '66562.5', '2017-02-07', '2017-02-08 11:06:42', '64', 'astro', '2017-02-11');
INSERT INTO `transaksi_hutang` VALUES ('3', 'PEM_2017_000029', '002', 'Jaya Sakti', '23125', '', '23125', '2017-02-08', '2017-02-08 11:06:51', '64', 'astro', '2017-02-11');
INSERT INTO `transaksi_hutang` VALUES ('4', 'PEM_2017_000001', '002', 'Jaya Sakti', '7250', '', '7250', '2017-02-08', '2017-02-08 11:01:00', '64', 'astro', '2017-02-10');
INSERT INTO `transaksi_hutang` VALUES ('5', 'PEM_2017_000002', '002', 'Jaya Sakti', '8250', '', '8250', '2017-02-08', '2017-02-08 11:14:43', '64', 'astro', '2017-02-09');
INSERT INTO `transaksi_hutang` VALUES ('6', 'PEM_2017_000003', '2323', 'cv aremaku', '7500', '7500', '0', '2017-02-08', '2017-02-08 15:28:07', '64', 'astro', '2017-02-09');
INSERT INTO `transaksi_hutang` VALUES ('7', 'PEM_2017_000004', '455', 'UD abadi', '25000', '', '25000', '2017-02-08', '2017-02-08 10:46:59', '64', 'astro', '2017-02-10');
INSERT INTO `transaksi_hutang` VALUES ('8', 'PEM_2017_000005', '455', 'UD abadi', '60000', '20000', '40000', '2017-02-08', '2017-02-08 15:04:53', '64', 'astro', '2017-02-23');

-- ----------------------------
-- Table structure for transaksi_input_plasma
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_input_plasma`;
CREATE TABLE `transaksi_input_plasma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `kode_plasma` varchar(255) DEFAULT NULL,
  `nama_plasma` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_input_plasma
-- ----------------------------
INSERT INTO `transaksi_input_plasma` VALUES ('1', 'IP_2017_000001', '2017-01-31', 'PLM_0001', 'Chandra ', '64', 'astro');

-- ----------------------------
-- Table structure for transaksi_kasir
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_kasir`;
CREATE TABLE `transaksi_kasir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `nama_kasir` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `saldo_awal` varchar(255) DEFAULT NULL,
  `saldo_akhir` varchar(255) DEFAULT NULL,
  `saldo_sebenarnya` varchar(255) DEFAULT NULL,
  `nominal_penjualan` varchar(255) DEFAULT NULL,
  `nominal_tambahan` varchar(255) DEFAULT NULL,
  `selisih` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `validasi` varchar(255) DEFAULT '',
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_kasir
-- ----------------------------
INSERT INTO `transaksi_kasir` VALUES ('1', 'KAS_2017_000001', '009', 'kasir9', '2017-01-31', '10:20:01', null, 'astro', '350000', null, null, null, null, null, 'open', '', null, '2017-01-31 10:20:05');
INSERT INTO `transaksi_kasir` VALUES ('2', 'KAS_2017_000002', '005', 'kasir5', '2017-02-03', '13:55:30', null, 'astro', '100000', null, null, null, null, null, 'open', '', null, '2017-02-03 13:55:36');
INSERT INTO `transaksi_kasir` VALUES ('3', 'KAS_2017_000003', '012', 'kasir12', '2017-02-03', '14:08:02', null, 'astro', '1000000', null, null, null, null, null, 'open', '', null, '2017-02-03 14:08:06');
INSERT INTO `transaksi_kasir` VALUES ('4', 'KAS_2017_000004', '012', 'kasir12', '2017-02-04', '08:34:10', null, 'astro', '100000', null, null, null, null, null, 'open', '', null, '2017-02-04 08:59:05');
INSERT INTO `transaksi_kasir` VALUES ('5', 'KAS_2017_000005', '012', 'kasir12', '2017-02-06', '08:42:10', null, 'astro', '100000', null, null, null, null, null, 'open', 'valid', null, '2017-02-07 09:29:03');
INSERT INTO `transaksi_kasir` VALUES ('6', 'KAS_2017_000006', '007', 'kasir7', '2017-02-06', '15:32:37', null, 'astro', '0', null, null, null, null, null, 'open', 'valid', null, '2017-02-07 09:28:52');
INSERT INTO `transaksi_kasir` VALUES ('7', 'KAS_2017_000007', '007', 'kasir7', '2017-02-07', '09:29:14', null, 'astro', '100000', null, null, null, null, null, 'open', '', null, '2017-02-07 09:29:21');
INSERT INTO `transaksi_kasir` VALUES ('8', 'KAS_2017_000008', '007', 'kasir7', '2017-02-08', '09:55:54', null, 'astro', '0', null, null, null, null, null, 'open', '', null, '2017-02-08 09:56:05');
INSERT INTO `transaksi_kasir` VALUES ('9', 'KAS_2017_000009', '003', 'kasir3', '2017-02-08', '09:28:47', null, 'astro', '346678', null, null, null, null, null, 'open', '', null, '2017-02-08 09:28:51');
INSERT INTO `transaksi_kasir` VALUES ('10', 'KAS_2017_000010', '012', 'kasir12', '2017-02-10', '08:45:44', '13:11:35', 'astro', '1000000', '1000000', '1000000', '', '', '0', 'close', '', null, '2017-02-10 13:11:41');
INSERT INTO `transaksi_kasir` VALUES ('11', 'KAS_2017_000011', '009', 'kasir9', '2017-02-10', '08:51:52', null, 'astro', '350000', null, null, null, null, null, 'open', '', null, '2017-02-10 08:51:58');

-- ----------------------------
-- Table structure for transaksi_opname
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_opname`;
CREATE TABLE `transaksi_opname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_opname` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_opname` date DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `validasi` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urut` varchar(255) DEFAULT NULL,
  `status_opname` varchar(255) DEFAULT NULL,
  `nominal_opname` varchar(255) DEFAULT NULL,
  `jenis_bahan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_opname
-- ----------------------------
INSERT INTO `transaksi_opname` VALUES ('1', 'OP_2017_000001', 'OP_080217144752_1', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', 'confirmed', '2017-02-08 14:48:40', '0001', null, '2000', 'bahan baku');
INSERT INTO `transaksi_opname` VALUES ('2', 'OP_2017_000002', 'OP_080217151402_1', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', 'confirmed', '2017-02-08 15:20:26', '0002', null, '1', 'setengah jadi');
INSERT INTO `transaksi_opname` VALUES ('3', 'OP_2017_000003', 'OP_100217162737_1', '2017-02-10', '64', 'astro', null, 'U001', 'Gudang', 'confirmed', '2017-02-10 16:32:11', '0003', null, null, 'bahan baku');

-- ----------------------------
-- Table structure for transaksi_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_pembelian`;
CREATE TABLE `transaksi_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(255) DEFAULT NULL,
  `kode_po` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_pembelian` date DEFAULT NULL,
  `nomor_nota` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `total_nominal` varchar(255) DEFAULT NULL,
  `diskon_persen` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT '',
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `proses_pembayaran` varchar(255) DEFAULT NULL,
  `dibayar` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_pembelian
-- ----------------------------
INSERT INTO `transaksi_pembelian` VALUES ('34', 'PEM_2017_000001', 'PO_080217103507_U001_1', 'PEM_08022017103620_0034', '2017-02-08', '4657', '002', 'Jaya Sakti', '8250', '', '', '8250', '64', 'astro', '', 'credit', '1000', 'gudang', 'belum divalidasi', '0034');
INSERT INTO `transaksi_pembelian` VALUES ('35', 'PEM_2017_000002', 'PO_080217103808_U001_1', 'PEM_08022017103849_0035', '2017-02-08', '35465', '002', 'Jaya Sakti', '8250', '', '', '8250', '64', 'astro', '', 'credit', '0', 'gudang', 'belum divalidasi', '0035');
INSERT INTO `transaksi_pembelian` VALUES ('36', 'PEM_2017_000003', 'PO_080217104009_U001_1', 'PEM_08022017104101_0036', '2017-02-08', '334544', '2323', 'cv aremaku', '7500', '', '', '7500', '64', 'astro', '', 'credit', '0', 'gudang', 'belum divalidasi', '0036');
INSERT INTO `transaksi_pembelian` VALUES ('37', 'PEM_2017_000004', 'PO_080217104631_U001_1', 'PEM_08022017104659_0037', '2017-02-08', '354', '455', 'UD abadi', '25000', '', '', '25000', '64', 'astro', '', 'credit', '0', 'gudang', 'belum divalidasi', '0037');
INSERT INTO `transaksi_pembelian` VALUES ('38', 'PEM_2017_000005', 'PO_080217142913_U001_1', 'PEM_08022017023051_0038', '2017-02-08', '123', '455', 'UD abadi', '80000', '', '', '80000', '64', 'astro', '', 'credit', '20000', 'gudang', 'belum divalidasi', '0038');
INSERT INTO `transaksi_pembelian` VALUES ('39', 'PEM_2017_000006', 'PO_080217153658_U001_1', 'PEM_08022017033726_0039', '2017-02-08', '2354', '2323', 'cv aremaku', '6000', '', '', '6000', '64', 'astro', '', 'cash', '6000', 'gudang', 'belum divalidasi', '0039');
INSERT INTO `transaksi_pembelian` VALUES ('40', 'PEM_2017_000007', 'PO_080217153840_U001_1', 'PEM_08022017033906_0040', '2017-02-08', '3544', '455', 'UD abadi', '6000', '', '', '6000', '64', 'astro', '', 'cash', '6000', 'gudang', 'belum divalidasi', '0040');
INSERT INTO `transaksi_pembelian` VALUES ('41', 'PEM_2017_000008', 'PO_080217154656_U001_1', 'PEM_08022017034838_0041', '2017-02-08', '3534', '002', 'Jaya Sakti', '6000', '', '', '6000', '64', 'astro', '', 'cash', '6000', 'gudang', 'belum divalidasi', '0041');
INSERT INTO `transaksi_pembelian` VALUES ('42', 'PEM_2017_000009', 'PO_100217143814_U001_1', 'PEM_10022017023900_0042', '2017-02-10', '1234', '2323', 'cv aremaku', '30000', '', '0', '30000', '64', 'astro', '', 'cash', '30000', 'gudang', 'belum divalidasi', '0042');
INSERT INTO `transaksi_pembelian` VALUES ('43', 'PEM_2017_000010', 'PO_100217143941_U001_1', 'PEM_10022017024120_0043', '2017-02-10', '4566', '002', 'Jaya Sakti', '60000', '', '0', '60000', '64', 'astro', '', 'cash', '60000', 'gudang', 'belum divalidasi', '0043');

-- ----------------------------
-- Table structure for transaksi_penggajian
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_penggajian`;
CREATE TABLE `transaksi_penggajian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_karyawan` varchar(255) DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `total_gaji` varchar(255) DEFAULT NULL,
  `angsuran_gaji` varchar(255) DEFAULT NULL,
  `sisa_gaji` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_penggajian
-- ----------------------------
INSERT INTO `transaksi_penggajian` VALUES ('1', 'KAR_0001', 'Adi', '6000000', '1000000', '5000000', '2017-01-31');

-- ----------------------------
-- Table structure for transaksi_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_penjualan`;
CREATE TABLE `transaksi_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_penjualan` date DEFAULT NULL,
  `jam_penjualan` time DEFAULT NULL,
  `nomor_nota` varchar(255) DEFAULT NULL,
  `kode_meja` varchar(255) DEFAULT NULL,
  `kode_partner` varchar(255) DEFAULT NULL,
  `nama_partner` varchar(255) DEFAULT NULL,
  `kode_member` varchar(255) DEFAULT NULL,
  `nama_member` varchar(255) DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat_penerima` varchar(255) DEFAULT NULL,
  `tanggal_pengiriman` date DEFAULT NULL,
  `jam_pengiriman` varchar(255) DEFAULT NULL,
  `total_nominal` varchar(255) DEFAULT NULL,
  `diskon_persen` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembalian` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `proses_pembayaran` varchar(255) DEFAULT NULL,
  `jenis_transaksi` varchar(255) DEFAULT NULL,
  `diskon_partner` varchar(255) DEFAULT NULL,
  `nominal_bonus` varchar(255) DEFAULT NULL,
  `nominal_retur` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_retur` varchar(255) DEFAULT NULL,
  `status_penerimaan` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  `ongkos_kirim` varchar(255) DEFAULT NULL,
  `kategori_penjualan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_penjualan
-- ----------------------------
INSERT INTO `transaksi_penjualan` VALUES ('25', 'PN_64_2017_000001', '64', 'PEN_100217161738_1', '2017-02-10', '16:17:38', null, null, null, null, '', '', null, null, null, null, null, '14000', '', '0', '14000', '14000', '0', '64', 'astro', null, null, 'tunai', null, null, null, null, null, null, '1', '0', 'Umum');

-- ----------------------------
-- Table structure for transaksi_perintah_produksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_perintah_produksi`;
CREATE TABLE `transaksi_perintah_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_input` date DEFAULT NULL,
  `kode_karyawan` varchar(255) DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `jenis_produksi` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_perintah_produksi
-- ----------------------------
INSERT INTO `transaksi_perintah_produksi` VALUES ('1', 'PP_2017_000001', '2017-02-06', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('2', 'PP_2017_000002', '2017-02-06', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('3', 'PP_2017_000003', '2017-02-06', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('4', 'PP_2017_000004', '2017-02-06', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('5', 'PP_2017_000005', '2017-02-07', null, null, 'astro', 'menunggu', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('6', 'PP_2017_000006', '2017-02-07', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('7', 'PP_2017_000007', '2017-02-07', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('8', 'PP_2017_000008', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('9', 'PP_2017_000009', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('10', 'PP_2017_000010', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('11', 'PP_2017_000011', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('12', 'PP_2017_000012', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('13', 'PP_2017_000013', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('14', 'PP_2017_000014', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('15', 'PP_2017_000015', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('16', 'PP_2017_000016', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('17', 'PP_2017_000017', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('18', 'PP_2017_000018', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('19', 'PP_2017_000019', '2017-02-08', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('20', 'PP_2017_000020', '2017-02-10', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('21', 'PP_2017_000021', '2017-02-10', null, null, 'astro', 'selesai', 'sendiri', null);
INSERT INTO `transaksi_perintah_produksi` VALUES ('22', 'PP_2017_000022', '2017-02-10', null, null, 'astro', 'selesai', 'sendiri', null);

-- ----------------------------
-- Table structure for transaksi_piutang
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_piutang`;
CREATE TABLE `transaksi_piutang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_customer` varchar(255) DEFAULT NULL,
  `nama_customer` varchar(255) DEFAULT NULL,
  `nominal_piutang` varchar(255) DEFAULT NULL,
  `angsuran` varchar(255) DEFAULT '',
  `sisa` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `petugas` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_piutang
-- ----------------------------
INSERT INTO `transaksi_piutang` VALUES ('11', 'PEN_2017_000004', 'CST_0001', 'Burhan', '2000', '2000', '0', '2017-02-06', '2017-02-06 11:37:19', 'astro', 'member');
INSERT INTO `transaksi_piutang` VALUES ('12', 'PEN_2017_000006', 'CST_0003', 'sasa', '50000', '20000', '30000', '2017-02-06', '2017-02-07 09:34:00', 'astro', 'member');
INSERT INTO `transaksi_piutang` VALUES ('13', 'PEN_2017_000008', 'CST_0002', 'mirza', '40000', '', '40000', '2017-02-08', '2017-02-08 09:56:37', 'astro', 'member');
INSERT INTO `transaksi_piutang` VALUES ('14', 'PEN_2017_000009', 'CST_0002', 'mirza', '15000', '5000', '10000', '2017-02-08', '2017-02-08 14:59:53', 'astro', 'member');

-- ----------------------------
-- Table structure for transaksi_po
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_po`;
CREATE TABLE `transaksi_po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_po` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_input` date DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT '',
  `position` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_po
-- ----------------------------
INSERT INTO `transaksi_po` VALUES ('1', 'PO_310117094600_U001_1', 'PO_2017_000001', '2017-01-31', 'astro', '2017-01-31 09:46:34', 'selesai', 'U001', '0001', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('2', 'PO_310117100025_U001_1', 'PO_2017_000002', '2017-01-31', 'astro', '2017-01-31 10:00:58', 'selesai', 'U001', '0002', '', null);
INSERT INTO `transaksi_po` VALUES ('3', 'PO_020217143728_U001_1', 'PO_2017_000003', '2017-02-02', 'astro', '2017-02-02 14:51:56', 'selesai', 'U001', '0003', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('4', 'PO_030217091539_U001_1', 'PO_2017_000004', '2017-02-03', 'astro', '2017-02-03 09:16:08', 'selesai', 'U001', '0004', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('5', 'PO_030217153433_U001_1', 'PO_2017_000005', '2017-02-03', 'astro', '2017-02-03 15:34:57', 'selesai', 'U001', '0005', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('6', 'PO_030217153532_U001_1', 'PO_2017_000006', '2017-02-03', 'astro', '2017-02-03 15:35:59', 'selesai', 'U001', '0006', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('7', 'PO_030217153646_U001_1', 'PO_2017_000007', '2017-02-03', 'astro', '2017-02-03 15:37:15', 'selesai', 'U001', '0007', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('8', 'PO_030217153744_U001_1', 'PO_2017_000008', '2017-02-03', 'astro', '2017-02-03 15:38:42', 'selesai', 'U001', '0008', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('9', 'PO_030217153758_U001_1', 'PO_2017_000009', '2017-02-03', 'astro', '2017-02-03 15:39:06', 'selesai', 'U001', '0009', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('10', 'PO_030217153816_U001_1', 'PO_2017_000010', '2017-02-03', 'astro', '2017-02-03 15:39:31', 'selesai', 'U001', '0010', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('11', 'PO_030217153954_U001_1', 'PO_2017_000011', '2017-02-03', 'astro', '2017-02-03 15:43:46', 'selesai', 'U001', '0011', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('12', 'PO_040217102243_U001_1', 'PO_2017_000012', '2017-02-04', 'astro', '2017-02-04 10:22:43', 'menunggu', 'U001', '0012', '', null);
INSERT INTO `transaksi_po` VALUES ('13', 'PO_040217102309_U001_1', 'PO_2017_000013', '2017-02-04', 'astro', '2017-02-04 10:24:37', 'selesai', 'U001', '0013', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('14', 'PO_040217102325_U001_1', 'PO_2017_000014', '2017-02-04', 'astro', '2017-02-04 10:25:21', 'selesai', 'U001', '0014', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('15', 'PO_040217102339_U001_1', 'PO_2017_000015', '2017-02-04', 'astro', '2017-02-04 10:25:53', 'selesai', 'U001', '0015', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('16', 'PO_040217110041_U001_1', 'PO_2017_000016', '2017-02-04', 'astro', '2017-02-04 11:01:51', 'selesai', 'U001', '0016', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('17', 'PO_040217110055_U001_1', 'PO_2017_000017', '2017-02-04', 'astro', '2017-02-04 11:02:24', 'selesai', 'U001', '0017', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('18', 'PO_040217110111_U001_1', 'PO_2017_000018', '2017-02-04', 'astro', '2017-02-04 11:02:45', 'selesai', 'U001', '0018', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('19', 'PO_040217110124_U001_1', 'PO_2017_000019', '2017-02-04', 'astro', '2017-02-04 11:03:12', 'selesai', 'U001', '0019', '', null);
INSERT INTO `transaksi_po` VALUES ('20', 'PO_060217093033_U001_1', 'PO_2017_000020', '2017-02-06', 'astro', '2017-02-06 09:31:55', 'selesai', 'U001', '0020', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('21', 'PO_060217093053_U001_1', 'PO_2017_000021', '2017-02-06', 'astro', '2017-02-06 09:32:30', 'selesai', 'U001', '0021', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('22', 'PO_060217093119_U001_1', 'PO_2017_000022', '2017-02-06', 'astro', '2017-02-06 09:32:53', 'selesai', 'U001', '0022', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('23', 'PO_060217102756_U001_1', 'PO_2017_000023', '2017-02-06', 'astro', '2017-02-06 10:28:51', 'selesai', 'U001', '0023', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('24', 'PO_060217103445_U001_1', 'PO_2017_000024', '2017-02-06', 'astro', '2017-02-06 10:36:11', 'selesai', 'U001', '0024', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('25', 'PO_060217103508_U001_1', 'PO_2017_000025', '2017-02-06', 'astro', '2017-02-06 10:37:18', 'selesai', 'U001', '0025', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('26', 'PO_060217105024_U001_1', 'PO_2017_000026', '2017-02-06', 'astro', '2017-02-06 10:50:54', 'selesai', 'U001', '0026', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('27', 'PO_060217141456_U001_1', 'PO_2017_000027', '2017-02-06', 'astro', '2017-02-06 14:16:59', 'selesai', 'U001', '0027', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('28', 'PO_060217150926_U001_1', 'PO_2017_000028', '2017-02-06', 'astro', '2017-02-06 15:10:33', 'selesai', 'U001', '0028', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('29', 'PO_070217091927_U001_1', 'PO_2017_000029', '2017-02-07', 'astro', '2017-02-07 09:22:10', 'selesai', 'U001', '0029', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('30', 'PO_070217094219_U001_1', 'PO_2017_000030', '2017-02-07', 'astro', '2017-02-08 09:50:30', 'selesai', 'U001', '0030', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('31', 'PO_070217132209_U001_1', 'PO_2017_000031', '2017-02-07', 'astro', '2017-02-07 13:22:52', 'selesai', 'U001', '0031', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('32', 'PO_070217133521_U001_1', 'PO_2017_000032', '2017-02-07', 'astro', '2017-02-07 13:35:48', 'selesai', 'U001', '0032', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('33', 'PO_070217134032_U001_1', 'PO_2017_000033', '2017-02-07', 'astro', '2017-02-07 13:41:15', 'selesai', 'U001', '0033', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('34', 'PO_080217103231_U001_1', 'PO_2017_000034', '2017-02-08', 'astro', '2017-02-08 10:32:31', 'menunggu', 'U001', '0034', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('35', 'PO_080217103507_U001_1', 'PO_2017_000035', '2017-02-08', 'astro', '2017-02-08 10:36:20', 'selesai', 'U001', '0035', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('36', 'PO_080217103808_U001_1', 'PO_2017_000036', '2017-02-08', 'astro', '2017-02-08 10:38:49', 'selesai', 'U001', '0036', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('37', 'PO_080217104009_U001_1', 'PO_2017_000037', '2017-02-08', 'astro', '2017-02-08 10:41:01', 'selesai', 'U001', '0037', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('38', 'PO_080217104631_U001_1', 'PO_2017_000038', '2017-02-08', 'astro', '2017-02-08 10:46:59', 'selesai', 'U001', '0038', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('39', 'PO_080217142913_U001_1', 'PO_2017_000039', '2017-02-08', 'astro', '2017-02-08 14:30:52', 'selesai', 'U001', '0039', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('40', 'PO_080217153658_U001_1', 'PO_2017_000040', '2017-02-08', 'astro', '2017-02-08 15:37:26', 'selesai', 'U001', '0040', '2323', 'cv aremaku');
INSERT INTO `transaksi_po` VALUES ('41', 'PO_080217153840_U001_1', 'PO_2017_000041', '2017-02-08', 'astro', '2017-02-08 15:39:06', 'selesai', 'U001', '0041', '455', 'UD abadi');
INSERT INTO `transaksi_po` VALUES ('42', 'PO_080217154656_U001_1', 'PO_2017_000042', '2017-02-08', 'astro', '2017-02-08 15:48:38', 'selesai', 'U001', '0042', '002', 'Jaya Sakti');
INSERT INTO `transaksi_po` VALUES ('43', 'PO_100217143814_U001_1', 'PO_2017_000043', '2017-02-10', 'astro', '2017-02-10 14:39:00', 'selesai', 'U001', '0043', '', null);
INSERT INTO `transaksi_po` VALUES ('44', 'PO_100217143941_U001_1', 'PO_2017_000044', '2017-02-10', 'astro', '2017-02-10 14:41:20', 'selesai', 'U001', '0044', '', null);

-- ----------------------------
-- Table structure for transaksi_produksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_produksi`;
CREATE TABLE `transaksi_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produksi` varchar(255) DEFAULT NULL,
  `kode_perintah_produksi` varchar(255) DEFAULT NULL,
  `tanggal_produksi` date DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_plasma` varchar(255) DEFAULT NULL,
  `nama_plasma` varchar(255) DEFAULT NULL,
  `kode_karyawan` varchar(255) DEFAULT NULL,
  `nama_karyawan` varchar(255) DEFAULT NULL,
  `total_nominal` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `jenis_produksi` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_produksi
-- ----------------------------
INSERT INTO `transaksi_produksi` VALUES ('1', 'PRO_2017_000001', 'PP_2017_000001', '2017-02-06', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('2', 'PRO_2017_000002', 'PP_2017_000002', '2017-02-06', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('3', 'PRO_2017_000003', 'PP_2017_000003', '2017-02-06', '2', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('4', 'PRO_2017_000004', 'PP_2017_000004', '2017-02-06', '5', null, null, null, null, null, '1', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('5', 'PRO_2017_000005', 'PP_2017_000006', '2017-02-07', '7', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('6', 'PRO_2017_000006', 'PP_2017_000007', '2017-02-07', '2', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('7', 'PRO_2017_000007', 'PP_2017_000008', '2017-02-08', '2', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('8', 'PRO_2017_000008', 'PP_2017_000009', '2017-02-08', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('9', 'PRO_2017_000009', 'PP_2017_000010', '2017-02-08', '2', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('10', 'PRO_2017_000010', 'PP_2017_000011', '2017-02-08', '10', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('11', 'PRO_2017_000011', 'PP_2017_000012', '2017-02-08', '10', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('12', 'PRO_2017_000012', 'PP_2017_000013', '2017-02-08', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('13', 'PRO_2017_000013', 'PP_2017_000014', '2017-02-08', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('14', 'PRO_2017_000014', 'PP_2017_000015', '2017-02-08', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('15', 'PRO_2017_000015', 'PP_2017_000016', '2017-02-08', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('16', 'PRO_2017_000016', 'PP_2017_000017', '2017-02-08', '1', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('17', 'PRO_2017_000017', 'PP_2017_000018', '2017-02-08', '5', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('18', 'PRO_2017_000018', 'PP_2017_000019', '2017-02-08', '3', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('19', 'PRO_2017_000019', 'PP_2017_000020', '2017-02-10', '5', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('20', 'PRO_2017_000020', 'PP_2017_000021', '2017-02-10', '5', null, null, null, null, null, '64', 'astro', null, null, null, null);
INSERT INTO `transaksi_produksi` VALUES ('21', 'PRO_2017_000021', 'PP_2017_000022', '2017-02-10', '10', null, null, null, null, null, '64', 'astro', null, null, null, null);

-- ----------------------------
-- Table structure for transaksi_spoil
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_spoil`;
CREATE TABLE `transaksi_spoil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_spoil` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_spoil` date DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_spoil
-- ----------------------------
INSERT INTO `transaksi_spoil` VALUES ('1', 'SP_2017_000001', 'SP_0001', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', '2017-02-08 14:44:50', '0001');
INSERT INTO `transaksi_spoil` VALUES ('2', 'SP_2017_000002', 'SP_0002', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', '2017-02-08 14:45:50', '0002');
INSERT INTO `transaksi_spoil` VALUES ('3', 'SP_2017_000003', 'SP_0003', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', '2017-02-08 15:04:24', '0003');
INSERT INTO `transaksi_spoil` VALUES ('4', 'SP_2017_000004', 'SP_0004', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', '2017-02-08 16:16:17', '0004');
INSERT INTO `transaksi_spoil` VALUES ('5', 'SP_2017_000005', 'SP_0005', '2017-02-08', '64', 'astro', null, 'U001', 'Gudang', '2017-02-08 16:17:47', '0005');
INSERT INTO `transaksi_spoil` VALUES ('6', 'SP_2017_000006', 'SP_0006', '2017-02-10', '64', 'astro', null, 'U001', 'Gudang', '2017-02-10 16:07:45', '0006');

-- ----------------------------
-- Table structure for transaksi_stok
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_stok`;
CREATE TABLE `transaksi_stok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_transaksi` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `stok_keluar` varchar(255) DEFAULT NULL,
  `stok_masuk` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `sisa_stok` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `posisi_awal` varchar(255) DEFAULT NULL,
  `kode_unit_asal` varchar(255) DEFAULT NULL,
  `nama_unit_asal` varchar(255) DEFAULT NULL,
  `kode_rak_asal` varchar(255) DEFAULT NULL,
  `nama_rak_asal` varchar(255) DEFAULT NULL,
  `posisi_akhir` varchar(255) DEFAULT NULL,
  `kode_unit_tujuan` varchar(255) DEFAULT NULL,
  `nama_unit_tujuan` varchar(255) DEFAULT NULL,
  `kode_rak_tujuan` varchar(255) DEFAULT NULL,
  `nama_rak_tujuan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_stok
-- ----------------------------
INSERT INTO `transaksi_stok` VALUES ('1', 'pembelian', 'PEM_2017_000009', 'stok', 'BB_001', 'Susu', '10', '10', '1000', '0', '64', 'astro', '2017-02-10', 'supplier', null, null, null, null, 'gudang', null, null, null, null, 'masuk');
INSERT INTO `transaksi_stok` VALUES ('2', 'pembelian', 'PEM_2017_000009', 'stok', 'BB_002', 'Gula', '10', '10', '2000', '0', '64', 'astro', '2017-02-10', 'supplier', null, null, null, null, 'gudang', null, null, null, null, 'masuk');
INSERT INTO `transaksi_stok` VALUES ('3', 'pembelian', 'PEM_2017_000010', 'stok', 'BB_001', 'Susu', '5', '15', '1500', '10', '64', 'astro', '2017-02-10', 'supplier', null, null, null, null, 'gudang', null, null, null, null, 'masuk');
INSERT INTO `transaksi_stok` VALUES ('4', 'pembelian', 'PEM_2017_000010', 'stok', 'BB_002', 'Gula', '5', '15', '2500', '10', '64', 'astro', '2017-02-10', 'supplier', null, null, null, null, 'gudang', null, null, null, null, 'masuk');
INSERT INTO `transaksi_stok` VALUES ('9', 'produksi', 'PRO_2017_000020', 'bahan baku', 'BB_001', 'Susu', '5', null, '1000', null, '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('10', 'produksi', 'PRO_2017_000020', 'bahan baku', 'BB_002', 'Gula', '5', null, '2000', null, '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('11', 'produksi', 'PRO_2017_000020', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', null, '5', '750', '5', '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'masuk');
INSERT INTO `transaksi_stok` VALUES ('12', 'produksi', 'PRO_2017_000021', 'bahan baku', 'BB_001', 'Susu', '5', null, '1000', null, '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('13', 'produksi', 'PRO_2017_000021', 'bahan baku', 'BB_001', 'Susu', '5', null, '1500', null, '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('14', 'produksi', 'PRO_2017_000021', 'bahan baku', 'BB_002', 'Gula', '5', null, '2000', null, '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('15', 'produksi', 'PRO_2017_000021', 'bahan baku', 'BB_002', 'Gula', '5', null, '2500', null, '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('16', 'produksi', 'PRO_2017_000021', 'Barang Dalam Proses', 'BP_001', 'Susu Padat', null, '10', '875', '10', '64', 'astro', '2017-02-10', null, null, null, null, null, null, null, null, null, null, 'masuk');
INSERT INTO `transaksi_stok` VALUES ('17', 'spoil', 'SP_2017_000006', 'bahan_baku', 'BB_001', 'Susu', '3', '', '1468.75', null, '64', 'astro', '2017-02-10', 'gudang', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '', null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('18', 'spoil', 'SP_2017_000006', 'bahan_baku', 'BB_002', 'Gula', '8', '', '2437.5', null, '64', 'astro', '2017-02-10', 'gudang', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '', null, null, null, null, 'keluar');
INSERT INTO `transaksi_stok` VALUES ('19', 'opname', 'OP_2017_000003', null, 'BB_002', 'Gula', '0', '8', '2000', null, '64', 'astro', '2017-02-10', 'gudang', 'U001', 'Gudang', '002', 'Rak Bahan Baku', '', null, null, null, null, null);

-- ----------------------------
-- View structure for view_transaksi_stok
-- ----------------------------
DROP VIEW IF EXISTS `view_transaksi_stok`;
CREATE ALGORITHM=UNDEFINED DEFINER=`cloudastro`@`192.168.100.%`  VIEW `view_transaksi_stok` AS SELECT
transaksi_stok.id,
transaksi_stok.jenis_transaksi,
transaksi_stok.kode_transaksi,
transaksi_stok.kategori_bahan,
transaksi_stok.kode_bahan,
transaksi_stok.nama_bahan,
transaksi_stok.stok_keluar,
transaksi_stok.stok_masuk,
transaksi_stok.hpp,
transaksi_stok.sisa_stok,
transaksi_stok.id_petugas,
transaksi_stok.nama_petugas,
transaksi_stok.tanggal_transaksi,
transaksi_stok.posisi_awal,
transaksi_stok.kode_unit_asal,
transaksi_stok.nama_unit_asal,
transaksi_stok.kode_rak_asal,
transaksi_stok.nama_rak_asal,
transaksi_stok.posisi_akhir,
transaksi_stok.kode_unit_tujuan,
transaksi_stok.nama_unit_tujuan,
transaksi_stok.kode_rak_tujuan,
transaksi_stok.nama_rak_tujuan,
transaksi_stok.`status`
FROM
transaksi_stok
ORDER BY
transaksi_stok.kode_bahan ASC ;
