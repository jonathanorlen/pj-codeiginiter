/*
Navicat MySQL Data Transfer

Source Server         : cloudastro
Source Server Version : 50539
Source Host           : 192.168.100.42:3306
Source Database       : kan_jabung

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2017-02-09 11:46:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cara_pemakaian
-- ----------------------------
DROP TABLE IF EXISTS `cara_pemakaian`;
CREATE TABLE `cara_pemakaian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pemakaian` varchar(15) DEFAULT NULL,
  `pemakaian` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cara_pemakaian
-- ----------------------------
INSERT INTO `cara_pemakaian` VALUES ('1', '1001', 'kloning', '0');
INSERT INTO `cara_pemakaian` VALUES ('2', '1002', 'close source', '0');
INSERT INTO `cara_pemakaian` VALUES ('3', '1003', 'Dolly', '1');
INSERT INTO `cara_pemakaian` VALUES ('4', '1004', 'trojan', '0');
INSERT INTO `cara_pemakaian` VALUES ('5', '1005', 'Sality', '0');
INSERT INTO `cara_pemakaian` VALUES ('6', '1006', 'entahlah', '1');

-- ----------------------------
-- Table structure for checklist_audit
-- ----------------------------
DROP TABLE IF EXISTS `checklist_audit`;
CREATE TABLE `checklist_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_checklist` varchar(255) DEFAULT NULL,
  `kode_audit` varchar(255) DEFAULT NULL,
  `tanggal_audit` date DEFAULT NULL,
  `kode_bagian` varchar(255) DEFAULT NULL,
  `nama_bagian` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `cek_item` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `no_urut` varchar(255) DEFAULT NULL,
  `temuan` varchar(255) DEFAULT '',
  `keterangan_temuan` varchar(255) DEFAULT NULL,
  `catatan_auditor` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `no_pasal` varchar(255) DEFAULT '',
  `batas_penyelesaian` date DEFAULT NULL,
  `identifikasi_penyebab` varchar(255) DEFAULT NULL,
  `tindakan_perbaikan` varchar(255) DEFAULT NULL,
  `tindakan_pencegahan` varchar(255) DEFAULT NULL,
  `dokumen_terkait` varchar(255) DEFAULT NULL,
  `nama_dokument` varchar(225) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  `verifikasi_tindakan` varchar(255) DEFAULT NULL,
  `keputusan` varchar(255) DEFAULT '',
  `status_ptpp` varchar(255) DEFAULT '',
  `tanggal_verifikasi` date DEFAULT NULL,
  `no_ptpp` varchar(255) DEFAULT '',
  `implementasi` varchar(255) DEFAULT '',
  `keterangan_review` varchar(255) DEFAULT '',
  `tanggal_keputusan` date DEFAULT NULL,
  `tanggal_penyelesaian` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of checklist_audit
-- ----------------------------
INSERT INTO `checklist_audit` VALUES ('1', 'CL_13012017103902', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Keamanan', 'Apakah mereka akan aman saja ?', '1', 'OK', 'kita lihat saja', 'aku penasaran !', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('2', 'CL_13012017103902', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Kebersamaan', 'Apakah mereka akan selalu bersama ?', '2', 'NC Major', 'dilihat pasti juga tahu saja', 'menjadi curigaan', 'ptpp', '4.1|4.2', '2017-01-20', 'kurang perhatiane', 'harap diperhatikan saja', 'selalu perhatian dan waspada', '-', 'ini', '170113045448.docx|', 'oke selesai', 'selesai', 'selesai', '2017-01-13', '', 'sudah', 'ok', '2017-01-13', '2017-01-13');
INSERT INTO `checklist_audit` VALUES ('3', 'CL_13012017103902', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Kebahagiaan', 'Apakah mereka akan selalu bahagia ?', '3', 'NC Minor', 'penglihatan yang bisa menjawabnya', 'mungkin ini cobaan darimana', 'ptpp', '5.1|5.2', '2017-01-20', 'rabun', 'tajamkan mata', 'minum obat', '-', 'buktinya', '170113045634.png|', 'mantap', 'selesai', 'selesai', '2017-01-13', '', 'sudah', 'jos', '2017-01-13', '2017-01-13');
INSERT INTO `checklist_audit` VALUES ('4', 'CL_13012017104058', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Kesatuan', 'Apakah mereka nanti akan bersatu ?', null, 'Rekomendasi', 'pasti akan satukan', 'terlalu banyak ujian', 'ptpp', '5.3|5.4', '2017-01-13', 'kurang bersatu', 'harap disatukan', 'siap bersatu mantapkan', '-', 'a', '170106024149.docx|', 'masih salah..', 'belum_selesai', 'selesai', '2017-01-06', '', '', '', '2017-01-06', '2017-01-06');
INSERT INTO `checklist_audit` VALUES ('5', 'CL_13012017104058', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'mantap', 'oke', '2', 'OK', 'sd', 'fafw', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('6', 'CL_13012017104058', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 's', 'd', '3', 'NC Minor', 'da', 'a', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('7', 'CL_06012017094133', 'KA_170120094139_1', '2017-01-06', '008', 'Pengadaan', 'Mawar Citra', 'Prosedur keamanan', 'Tes Prosedur Keamanan', '1', 'NC Major', 'Belum sesuai keamanan', 'Cek Ulang', 'ptpp', '4.1|5.4.1', '2017-01-13', 'k', 'o', 'p', 'l', 'bukti perbaikan', '170106040437.pdf|', 'kurang sesuaii', 'belum_selesai', 'selesai', '2017-01-06', '', '', '', '2017-01-06', '2017-01-06');
INSERT INTO `checklist_audit` VALUES ('8', 'CL_06012017094133', 'KA_170120094139_1', '2017-01-06', '008', 'Pengadaan', 'Mawar Citra', 'Prosedur Pelarian', 'Tes Uji Lari', '2', 'NC Minor', 'Tidak standard', 'Koordinasikan', 'ptpp', '4.2.4|5.4.1', null, 'dsh', 'aga', 'fes', 'werw', null, null, null, '', 'lead_auditor', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('9', 'CL_06012017094133', 'KA_170120094139_1', '2017-01-06', '008', 'Pengadaan', 'Mawar Citra', 'prosedur kesesuain', 'olkn', '3', 'NC Minor', 'okojpphj', 'dqdq', 'ptpp', '5.1|5.3', null, 'a', 'dd', 'da', 'asw', null, null, null, '', 'lead_auditor', null, '1', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('10', 'CL_16012017085409', 'KA_170116082853_1', '2017-01-16', '002', 'Ketua II', 'Wardoyo Suseno', 'A', 'A', '1', 'OK', 'AAA', 'A', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('11', 'CL_16012017085409', 'KA_170116082853_1', '2017-01-16', '002', 'Ketua II', 'Wardoyo Suseno', 'B', 'B', '2', 'NC Major', 'B', 'B', 'ptpp', '4.2|4.2.3', '2017-01-23', '1', '2', '3', '4', 'AAA', '170116030959.jpg|', 'frgrghrhg', 'belum_selesai', 'selesai', '2017-01-16', '', '', '', '2017-01-16', '2017-01-16');
INSERT INTO `checklist_audit` VALUES ('12', 'CL_16012017085436', 'KA_170116082853_1', '2017-01-16', '002', 'Ketua II', 'Wardoyo Suseno', 'C', 'C', null, 'NC Minor', 'C', 'C', 'ptpp', '4.1', '2017-01-23', '324', '45', '56', 'i', 'SFG', '170116032004.jpg|', null, '', 'verifikasi closing', '2017-01-16', '', '', '', null, '2017-01-16');
INSERT INTO `checklist_audit` VALUES ('13', 'CL_16012017085444', 'KA_170116082853_1', '2017-01-16', '002', 'Ketua II', 'Wardoyo Suseno', 'D', 'D', null, 'Rekomendasi', 'D', 'D', 'ptpp', '4.2', null, 'tryt', 'dgrfdg', 'fgfdg', 'dfgfdgdf', null, null, null, '', 'belum diverifikasi', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('14', 'CL_16012017011949', 'KA_170116010216_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', 'Item 1', 'Perihal 1', '1', '', null, null, 'auditor2', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('15', 'CL_16012017011949', 'KA_170116010216_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', 'Item 2', 'Perihal 2', '2', '', null, null, 'auditor2', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('16', 'CL_16012017013540', 'KA_170116010035_1', '2017-01-16', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '1', '1', '1', 'NC Major', 'a', 'a', 'ptpp', '4.1|4.2|4.2.4', '2017-01-23', 'qwe', 'wer', 'ert', 'rty', 'a', '170116074240.png|', 'ssfgp', 'selesai', 'selesai', '2017-01-16', '', '', '', '2017-01-16', '2017-01-16');
INSERT INTO `checklist_audit` VALUES ('17', 'CL_16012017013540', 'KA_170116010035_1', '2017-01-16', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '2', '2', '2', 'NC Minor', 'q', 'q', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('18', 'CL_16012017013540', 'KA_170116010035_1', '2017-01-16', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '3', '3', '3', 'Rekomendasi', 'w', 'w', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('19', 'CL_16012017015058', 'KA_170116011050_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', '1', '1', '1', 'NC Major', '1', '1', 'ptpp', '4.2.3', '2017-01-23', 'a', 'a', 'a', 'a', 'a', '170116080943.PNG|', null, '', 'verifikasi closing', '2017-01-16', '', '', '', null, '2017-01-16');
INSERT INTO `checklist_audit` VALUES ('20', 'CL_16012017015058', 'KA_170116011050_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', '2', '2', '2', 'NC Minor', '2', '2', 'ptpp', '4.2', '2017-01-23', 'b', 'b', 'b', 'b', 'b', '170116080957.PNG|', null, '', 'verifikasi closing', '2017-01-16', '', '', '', null, '2017-01-16');
INSERT INTO `checklist_audit` VALUES ('21', 'CL_16012017035925', 'KA_170116031658_1', '2017-01-16', '004', 'Bendahara', 'Rani', '1', '1', '1', '', null, null, 'auditor2', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('22', 'CL_16012017035925', 'KA_170116031658_1', '2017-01-16', '004', 'Bendahara', 'Rani', '2', '2', '2', '', null, null, 'auditor2', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('23', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Prosedur Mutu', 'Apakah sudah dilakukan dengan benar ?', '1', 'OK', 'tentunya ', 'perhatikan', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('24', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Kebersihan', 'Apakah sudah bersih2 susu ?', '2', 'NC Major', 'sudahlah', 'cek keadaan', 'ptpp', '5.4|5.4|5.4|5.4.1|5.4.1|5.4.1|5.4.2|5.4.2|5.4.2', '2017-01-26', 'q', 'w', 'e', 'r', 'qwq', '170119082152.png|', 'wdawda', 'belum_selesai', 'selesai', '2017-01-19', '', '', '', '2017-01-19', '2017-01-19');
INSERT INTO `checklist_audit` VALUES ('25', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Kerapian', 'Apakah rapi ketika meninggalkan ruangan ?', '3', 'NC Minor', 'biar rapi sendiri', 'jangan pergi sebelum rapi', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('26', 'CL_19012017094122', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Cek', 'Cwk', '4', 'NC Major', 'wkwk', 'ulala', 'ptpp', '4.1|4.1|4.2.3|4.2.3|4.2.4|4.2.4', '2017-01-26', 'mungkin', 'ada sebab', 'ada akibat', '-', 'aku', '170119072142.png|', 'Oke jak', 'belum_selesai', 'selesai', '2017-01-19', '', '', '', '2017-01-19', '2017-01-19');
INSERT INTO `checklist_audit` VALUES ('27', 'CL_19012017100536', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Kesiapan', 'Apakah siap jika terjadi kebakaran ?', '5', 'Rekomendasi', 'sya sudah menyiiapkan api dan bahan bkarnya', 'laksanakan pembakaran..', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('28', 'CL_19012017094122', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Ceks', 'Cwka', '2', 'NC Major', 'wkwkqw', 'ulalaer', 'ptpp', '4.2.3|5.2', null, 'apa', 'saja', 'oada', 'adaw', null, null, null, '', 'proses closing', '2017-01-19', '4', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('29', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Kebersihan', 'Apakah sudah bersih2 susu ?', '4', 'NC Major', 'sudahlah', 'cek keadaan', 'ptpp', '5.2|5.4', null, 'f', 'g', 'h', 'j', null, null, null, '', 'received', null, '2', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('30', 'CL_20012017092535', 'KA_170120085953_1', '2017-01-20', '013', 'Susu Olahan', 'Wardoyo Suseno', 'a', 'a', '1', 'NC Major', 'q', 'q', 'ptpp', '4.1|4.1|4.2|4.2', null, 'qwe', 'wer', 'ert', 'rty', null, null, null, '', 'proses closing', '2017-01-20', '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('31', 'CL_20012017092535', 'KA_170120085953_1', '2017-01-20', '013', 'Susu Olahan', 'Wardoyo Suseno', 'b', 'b', '2', 'NC Minor', 'w', 'w', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);
INSERT INTO `checklist_audit` VALUES ('32', 'CL_20012017092535', 'KA_170120085953_1', '2017-01-20', '013', 'Susu Olahan', 'Wardoyo Suseno', 'c', 'c', '3', 'Rekomendasi', 'e', 'e', 'ptpp', '', null, null, null, null, null, null, null, null, '', '', null, '', '', '', null, null);

-- ----------------------------
-- Table structure for checklist_audit_tmp
-- ----------------------------
DROP TABLE IF EXISTS `checklist_audit_tmp`;
CREATE TABLE `checklist_audit_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_checklist` varchar(255) DEFAULT NULL,
  `kode_audit` varchar(255) DEFAULT NULL,
  `tanggal_audit` varchar(255) DEFAULT NULL,
  `kode_bagian` varchar(255) DEFAULT NULL,
  `nama_bagian` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `cek_item` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of checklist_audit_tmp
-- ----------------------------
INSERT INTO `checklist_audit_tmp` VALUES ('1', 'CL_13012017103902', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Keamanan', 'Apakah mereka akan aman saja ?');
INSERT INTO `checklist_audit_tmp` VALUES ('2', 'CL_13012017103902', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Kebersamaan', 'Apakah mereka akan selalu bersama ?');
INSERT INTO `checklist_audit_tmp` VALUES ('3', 'CL_13012017103902', 'KA_170113103836_1', '2017-01-13', '004', 'Bendahara', 'Waluyo', 'Kebahagiaan', 'Apakah mereka akan selalu bahagia ?');
INSERT INTO `checklist_audit_tmp` VALUES ('4', 'CL_06012017094133', 'KA_170120094139_1', '2017-01-06', '008', 'Pengadaan', 'Mawar Citra', 'Prosedur keamanan', 'Tes Prosedur Keamanan');
INSERT INTO `checklist_audit_tmp` VALUES ('5', 'CL_06012017094133', 'KA_170120094139_1', '2017-01-06', '008', 'Pengadaan', 'Mawar Citra', 'Prosedur Pelarian', 'Tes Uji Lari');
INSERT INTO `checklist_audit_tmp` VALUES ('6', 'CL_16012017085409', 'KA_170116082853_1', '2017-01-16', '002', 'Ketua II', 'Wardoyo Suseno', 'A', 'A');
INSERT INTO `checklist_audit_tmp` VALUES ('7', 'CL_16012017085409', 'KA_170116082853_1', '2017-01-16', '002', 'Ketua II', 'Wardoyo Suseno', 'B', 'B');
INSERT INTO `checklist_audit_tmp` VALUES ('8', 'CL_16012017011949', 'KA_170116010216_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', 'Item 1', 'Perihal 1');
INSERT INTO `checklist_audit_tmp` VALUES ('9', 'CL_16012017011949', 'KA_170116010216_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', 'Item 2', 'Perihal 2');
INSERT INTO `checklist_audit_tmp` VALUES ('10', 'CL_16012017013540', 'KA_170116010035_1', '2017-01-16', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '1', '1');
INSERT INTO `checklist_audit_tmp` VALUES ('11', 'CL_16012017013540', 'KA_170116010035_1', '2017-01-16', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '2', '2');
INSERT INTO `checklist_audit_tmp` VALUES ('12', 'CL_16012017013540', 'KA_170116010035_1', '2017-01-16', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '3', '3');
INSERT INTO `checklist_audit_tmp` VALUES ('13', 'CL_16012017015058', 'KA_170116011050_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', '1', '1');
INSERT INTO `checklist_audit_tmp` VALUES ('14', 'CL_16012017015058', 'KA_170116011050_1', '2017-01-16', '001', 'Ketua I & MU', 'Waluyo', '2', '2');
INSERT INTO `checklist_audit_tmp` VALUES ('15', 'CL_16012017035925', 'KA_170116031658_1', '2017-01-16', '004', 'Bendahara', 'Rani', '1', '1');
INSERT INTO `checklist_audit_tmp` VALUES ('16', 'CL_16012017035925', 'KA_170116031658_1', '2017-01-16', '004', 'Bendahara', 'Rani', '2', '2');
INSERT INTO `checklist_audit_tmp` VALUES ('17', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Prosedur Mutu', 'Apakah sudah dilakukan dengan benar ?');
INSERT INTO `checklist_audit_tmp` VALUES ('18', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Kebersihan', 'Apakah sudah bersih2 susu ?');
INSERT INTO `checklist_audit_tmp` VALUES ('19', 'CL_19012017093841', 'KA_170119095637_1', '2017-01-19', '013', 'Susu Olahan', 'Wardoyo Suseno', 'Kerapian', 'Apakah rapi ketika meninggalkan ruangan ?');
INSERT INTO `checklist_audit_tmp` VALUES ('20', 'CL_20012017092535', 'KA_170120085953_1', '2017-01-20', '013', 'Susu Olahan', 'Wardoyo Suseno', 'a', 'a');
INSERT INTO `checklist_audit_tmp` VALUES ('21', 'CL_20012017092535', 'KA_170120085953_1', '2017-01-20', '013', 'Susu Olahan', 'Wardoyo Suseno', 'b', 'b');
INSERT INTO `checklist_audit_tmp` VALUES ('22', 'CL_20012017092535', 'KA_170120085953_1', '2017-01-20', '013', 'Susu Olahan', 'Wardoyo Suseno', 'c', 'c');

-- ----------------------------
-- Table structure for data_anggota
-- ----------------------------
DROP TABLE IF EXISTS `data_anggota`;
CREATE TABLE `data_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_transaksi` varchar(225) DEFAULT NULL,
  `nomor_anggota` varchar(225) DEFAULT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `no_ktp` varchar(225) DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `kode_jenis_anggota` varchar(225) DEFAULT NULL,
  `nama_jenis_anggota` varchar(225) DEFAULT NULL,
  `kode_pos_penampungan_susu` varchar(225) DEFAULT NULL,
  `nama_pos_penampungan_susu` varchar(225) DEFAULT NULL,
  `kode_kelompok` varchar(225) DEFAULT NULL,
  `nama_kelompok` varchar(225) DEFAULT NULL,
  `kode_cooling_unit` varchar(225) DEFAULT NULL,
  `nama_cooling_unit` varchar(225) DEFAULT NULL,
  `jabatan` varchar(225) DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `usr` varchar(225) DEFAULT NULL,
  `pwd` varchar(225) DEFAULT NULL,
  `tanggal_pendaftaran` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal_validasi` date DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `validasi` varchar(255) DEFAULT NULL,
  `keanggotaan` varchar(255) DEFAULT NULL,
  `insentif_ramadan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_anggota
-- ----------------------------
INSERT INTO `data_anggota` VALUES ('1', 'TR_161203145711', 'TR_161203145711', 'Asa', 'Malang kab', '08-12-2016', '87897486465410', 'Malang kab', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-10 13:52:49', '2016-12-03', 'diterima', 'sudah_divalidasi', 'calon_anggota', '0');
INSERT INTO `data_anggota` VALUES ('2', 'TR_161203145844', 'TR_161203145844', 'Aca', 'Malang', '07-12-2016', '5435435', 'Malang', '', null, '1', 'asa', 'KL002', 'Kelompok 2', null, null, null, null, null, null, '2017-01-20 14:55:32', '2016-12-03', 'diterima', 'sudah_divalidasi', 'calon_anggota', '0');
INSERT INTO `data_anggota` VALUES ('3', 'TR_161205145828', 'TR_161205145828', 'Anggi', 'Malang', '03-08-1990', '8979874', 'Malang', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-10 13:52:45', '2016-12-06', 'tidak_diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('6', 'TR_161210112535', 'TR_161210112535', 'Khoirudin', 'Malang', '28-02-2011', '98726546666', 'Malang ', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-20 14:55:33', '2016-12-15', 'diterima', 'sudah_divalidasi', 'calon_anggota', '0');
INSERT INTO `data_anggota` VALUES ('7', 'TR_161210112612', 'TR_161210112612', 'Intan', 'Malang', '14-03-2000', '54765756', 'Malang', '0', null, null, null, '0', null, null, null, null, null, null, null, '2017-01-10 13:52:41', '2016-12-23', 'tidak_diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('8', 'TR_161221152501', 'TR_161221152501', 'nurma', 'malang', '30-01-1990', '3527887', 'fdfdsf', null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-23 10:44:37', '2016-12-23', 'tidak_diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('9', 'TR_161222104122', 'TR_161222104122', 'Wahyu Kristin', 'Malang', '01-12-2016', '018710237192739172', 'Jl. Danau', '0', null, null, null, null, null, null, null, null, null, null, null, '2017-01-10 13:52:39', null, null, 'belum_divalidasi', 'balon_anggota', null);
INSERT INTO `data_anggota` VALUES ('10', 'TR_161223105141', 'TR_161223105141', 'rima', 'malang', '30-01-1990', '3590495034343', 'jalan', null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-23 10:52:40', '2016-12-23', 'tidak_diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('11', 'TR_161223112209', 'TR_161223112209', 'Kristina', 'Malang', '29-08-2014', '8309173172317391723', 'jl. Danau', '', null, '1', 'asa', 'KL002', 'Kelompok 2', null, null, null, null, null, null, '2017-01-10 13:52:34', '2016-12-23', 'diterima', 'sudah_divalidasi', 'calon_anggota', '0');
INSERT INTO `data_anggota` VALUES ('12', 'TR_161223142116', 'TR_161223142116 ', 'rahmat', 'malang', '01-03-1990', '3567689', 'jalan mawar', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-27 09:30:17', '2016-12-23', 'diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('13', 'TR_161223144313', 'TR_161223144313', 'milika', 'malang', '21-03-1991', '3577878', 'jl kemarin', '', null, '1', 'asa', 'KL007', 'Kelompok 3', null, null, null, null, null, null, '2017-01-20 14:55:33', '2016-12-23', 'diterima', 'sudah_divalidasi', 'calon_anggota', '0');
INSERT INTO `data_anggota` VALUES ('14', 'TR_161223145503', 'TR_161223145503', 'lolita', 'malang', '13-06-1989', '3575645', 'jalan kenangan', null, null, null, null, null, null, null, null, null, null, null, null, '2016-12-23 14:56:14', '2016-12-23', 'tidak_diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('15', 'TR_170111093426', 'TR_170111093426 ', 'Ekky Ilham Virgiawan', 'Malang', '22-09-1994', '1234567891234567', 'JL.Kemantren I', '0', null, null, null, null, null, null, null, null, null, null, null, '2017-01-11 09:34:47', null, null, 'belum_divalidasi', 'balon_anggota', null);
INSERT INTO `data_anggota` VALUES ('16', 'TR_170127085814', 'TR_170127085814', 'Anggota Baru', 'Malang', '04-01-2017', '10001', 'Malang', null, null, null, null, null, null, null, null, null, null, null, null, '2017-01-27 09:05:18', '2017-01-27', 'tidak_diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('17', 'TR_170127091842', 'TR_170127091842 ', 'Anggota Dion', 'Malang', '12-01-2017', '100019090', 'Malang', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-27 09:39:47', '2017-01-27', 'diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('18', 'TR_170127092805', 'TR_170127092805 ', '2000000', 'Lumajang', '06-01-2017', '10001', 'Malang', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-27 10:02:36', '2017-01-27', 'diterima', 'sudah_divalidasi', 'calon_anggota', null);
INSERT INTO `data_anggota` VALUES ('20', 'TR_170127101123', 'TR_170127101123 ', 'News Anggota', 'Malang', '', '1001', 'Malang', '', null, '1001', 'as', 'KL001', 'Kelompok 1', null, null, null, null, null, null, '2017-01-27 10:49:02', '2017-01-27', 'diterima', 'sudah_divalidasi', 'calon_anggota', null);

-- ----------------------------
-- Table structure for data_sapi
-- ----------------------------
DROP TABLE IF EXISTS `data_sapi`;
CREATE TABLE `data_sapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `tanggal_identifikasi` date DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `Column 8` int(11) DEFAULT NULL,
  `type_sapi` varchar(255) DEFAULT NULL,
  `no_induk` varchar(255) DEFAULT NULL,
  `no_bapak` varchar(255) DEFAULT NULL,
  `nama_pejantan` varchar(255) DEFAULT NULL,
  `telinga` varchar(255) DEFAULT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `metoda` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `laktasi_ke` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_kepemilikan` varchar(255) DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `status_rumatan` varchar(255) DEFAULT NULL,
  `status_penjualan` varchar(255) DEFAULT '',
  `status_sapi` varchar(255) DEFAULT '',
  `SGS` varchar(255) DEFAULT '',
  `SGD` varchar(255) DEFAULT '',
  `MGS` varchar(255) DEFAULT '',
  `MGD` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_sapi
-- ----------------------------
INSERT INTO `data_sapi` VALUES ('1', null, 'E999', 'Jesika', '2016-12-03', '2016-12-03', '67', null, '15', '', '', null, 'kanan', '1', '1', 'betina', '1', '1', 'Ryan', 'Keterangan', 'Kris', 'jl. Dan', null, null, '0', 'Milik Kan Jabung', '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('2', 'TR_161203145711   ', 'E901', 'D', '2016-12-03', '2016-12-03', '67', null, '12', '3434', '', null, 'kiri', '', '1', 'betina', '', '1', 'Ryan', '', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '1', null, '1', '', '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('3', null, 'E912', 'S', '2016-12-03', '2016-12-03', '67', null, '13', '2321323', 'asas', 'asas', 'kanan', '1', '2', 'betina', '', '1', 'Ryan', '', 'Kris', 'jl. Dan', null, null, '1', null, '2', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('4', 'TR_161223112209', 'E123', 'Shinta', '2016-12-05', '2016-12-05', '65', null, '15', 'I235', 'S12', 'Joko', 'kanan', '1', '1', 'betina', '0', null, null, 'Sapi lahir', 'Kris', 'jl. Dan', null, null, '1', null, '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('5', 'TR_161222104122  ', 'E124', 'Esa', '2016-12-05', '2016-12-05', '65', null, '15', 'I1234', 'S12', 'Joko', 'kanan', '1', '1', 'betina', '0', null, null, 'Lahir', 'Wahyu Kristin', 'Jl. Danau', '', '', '1', null, '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('6', 'TR_161223112209', 'E1235', 'Sia', '2016-12-05', '2016-12-05', '65', null, '15', 'I1234', 'S12', 'Joko', 'kanan', '2', '1', 'betina', '0', null, null, 'Lahir B', '', '', '', '', '1', null, '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('7', 'TR_161223142116', 'E21', 'Sea', '2016-12-05', '2016-12-05', '65', null, '15', 'E123', 'asas', 'asas', 'kanan', '1', '1', 'betina', '0', null, null, 'sapi lahir baru', 'rahmat', 'jalan mawar', null, null, '1', null, '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('8', 'TR_161223144313', 'E22', 'Sinyo', '2016-12-05', '2016-12-05', '65', null, '15', 'E123', 'asas', 'asas', 'kiri', '2', '1', 'betina', '0', null, null, 'lahir baru', 'milika', 'jl kemarin', null, null, '0', null, '3', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('9', 'TR_161223142116', 'E111', 'Desi', '2016-12-05', '2016-12-05', '65', null, '15', 'IN21', 'STR002', 'Tara', 'kanan', '1', '1', 'betina', '0', null, null, 'sapi lahir ', 'rahmat', 'jalan mawar', null, null, '1', null, '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('16', 'TR_161223144313', 'E919', 'Angel', '2016-12-06', '2016-11-27', '73', null, '15', '342', 'S12', 'Joko', 'kanan', '1', '1', 'jantan', '1', null, null, '', 'milika', 'jl kemarin', null, null, '1', null, '2', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('17', 'TR_161223112209', 'E657', 'Andi a', '2016-12-06', '2016-08-16', '176', null, '14', '5646', 'S12', 'Joko', 'kanan', '1', '2', 'jantan', '1', null, null, '', 'Kris', 'jl. Dan', null, null, '0', null, '1.5', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('18', 'TR_161223144313', 'E555', 'Dahlia', '2016-12-06', '2016-12-06', '64', null, '15', '12', 'S12', 'Joko', 'kanan', '1', '1', 'betina', '1', null, null, '', 'milika', 'jl kemarin', null, null, '0', 'Milik Kan Jabung', '2', 'rumatan', '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('19', 'TR_161223144313', 'E231', 'Melati', '2016-12-06', '2016-12-06', '64', null, '9', '213', 'S12', 'Joko', 'kanan', '1', '1', 'betina', '2', null, null, '', 'milika', 'jl kemarin', null, null, '1', 'Milik Kan Jabung', '1', null, 'terjual', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('20', 'TR_161223112209', 'E5321', 'Kikin', '2016-12-15', '2016-07-11', '212', null, '', '23423', 'S12', 'Joko', 'kanan', '2', '1', 'jantan', '1', null, null, '', 'Kris', 'jl. Dan', null, null, '1', null, '1', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('21', 'TR_161223112209', 'E126', 'Afan', '2016-12-15', '2016-09-06', '155', null, '14', '2432', 'S12', 'Joko', 'kanan', '2', '1', 'jantan', '1', null, null, '', 'Kris', 'jl. Dan', null, null, '0', null, '2', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('22', 'TR_161223112209', '1111', 'Dion', '2016-12-20', '2016-12-20', '50', null, '9', '12', '1001', 'Nama', 'kanan', '2', '2', 'jantan', '1', null, null, '1', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '1', null, '1', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('26', 'TR_161223112209', 'E900', 'Dion', '0012-12-12', '2016-12-20', '50', null, '8', 'ear_tag', 'No Bapak', null, 'kanan', '2', '1', 'Betina', '1', null, null, '1', 'Kris', 'jl. Dan', null, null, null, 'Milik Kan Jabung', '1', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('27', 'TR_161223112209', 'DION  EAr', 'Dion Sapi', '0021-12-12', '2016-12-20', '50', null, '9', 'E912', 'No Bapak', null, 'kanan', '2', '1', 'Jantan', '1', null, null, '1', 'Kris', 'jl. Dan', null, null, null, null, '2', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('28', 'TR_161223112209', 'DION  EAr', 'Dion Sapi', '0021-12-12', '2016-12-20', '50', null, '9', 'E912', 'S12', null, 'kanan', '2', '1', 'Jantan', '1', null, null, '1', 'Kris', 'jl. Dan', null, null, null, null, '2', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('29', 'TR_161223112209', 'ear tag baru', 'dion', '0121-12-12', '2016-12-21', '49', null, '10', 'DION  EAr', null, null, 'kanan', '2', '1', 'Jantan', '1', null, null, '-', 'Kris', 'jl. Dan', null, null, null, null, '5', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('30', 'TR_161223112209', 'ear tag baru', 'dion', '0121-12-12', '2016-12-21', '49', null, '10', 'E912', 'S12', null, 'kanan', '2', '1', 'Jantan', '1', null, null, '-', 'Kris', 'jl. Dan', null, null, null, null, '1', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('31', 'TR_161223112209', 'E9001', 'Dion', '2016-12-12', '2016-12-21', '49', null, '15', 'E900', '1001', null, 'kanan', '', '1', 'Betina', '1', null, null, 'Keterangan', 'Kris', 'jl. Dan', null, null, null, null, '1', null, '', 'Dara', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('32', 'TR_161223112209', 'E9002', 'Alun', '2016-12-12', '2016-12-21', '49', null, '8', 'E9001', '1001', null, 'kanan', '2', '1', 'Betina', '1', null, null, '1', 'Kris', 'jl. Dan', null, null, null, null, '1', null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('35', 'TR_161223144313', 'E9003', 'Bayu', '2006-12-12', '2016-12-21', '49', null, '8', 'E9002', '1001', null, 'kanan', '2', '1', 'Betina', '0', null, null, '-', 'Kris', 'jl. Dan', null, null, '0', null, '0.1', null, '', 'Dara', '', '', '1001', 'E9001');
INSERT INTO `data_sapi` VALUES ('39', '', 'E9004', 'Dion', '2016-12-11', '2016-12-22', '48', null, '9', 'E9003', '1001', null, 'kanan', '2', '1', 'Betina', '2', null, null, '1', '', '', '', '', '0', null, '2', null, '', 'Dara', 'USAM1983348', 'USAF13666170', '1001', 'E9002');
INSERT INTO `data_sapi` VALUES ('41', 'TR_170127091842', '1001', '1', '2016-12-11', '2016-12-12', '58', null, '13', '1001', '1001', null, 'kanan', '2', null, 'jantan', '1', null, null, '1', 'Anggota Dion', 'Malang', null, null, null, null, '2', null, '', 'Dara', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('42', null, 'Ear Tag Sapi', 'Dion Coy', '2016-12-01', '1990-12-12', '9555', null, '12', '1', '1001', null, 'kanan', '2', null, 'jantan', '1', null, null, '1', 'Kris', 'jl. Dan', null, null, null, null, '0.5', null, '', 'Pedet', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('48', 'TR_161223112209', 'E234', 'sasa', '2016-12-23', '2016-01-02', '403', null, '15', '234', '1001', 'Michel', 'kanan', '2', '1', 'betina', '1', null, null, '', 'Kris', 'jl. Dan', null, null, '1', null, '2.5', null, '', '', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('50', '', 'E9006', 'Anak E9004', '1212-12-12', '2016-12-28', '42', null, '8', 'E9004', '1002', null, 'kiri', '2', '1', 'Betina', '1', null, null, '-', '', '', '', '', '0', null, '1', null, '', 'Induk', 'USAM1983348', 'USAF13666170', '1001', 'E9003');
INSERT INTO `data_sapi` VALUES ('51', 'TR_161223112209', '', '', '0000-00-00', '2016-12-28', '42', null, '', 'E124', null, null, '', '', '', 'Jantan', '', null, null, '', 'Kris', 'jl. Dan', 'KL002', 'Kelompok 2', null, null, '3', null, '', '', null, null, 'S12', 'I1234');
INSERT INTO `data_sapi` VALUES ('52', 'TR_161223144313', 'E2209', 'Jesi', '2016-12-29', '2016-12-29', '41', null, '15', 'E231', '1001', null, 'kanan', '2', '1', 'Betina', '-', null, null, '-', 'milika', 'jl kemarin', 'KL007', 'Kelompok 3', null, null, '3.5', null, '', 'Pedet', null, null, 'S12', '213');
INSERT INTO `data_sapi` VALUES ('53', 'TR_161223144313', 'E00912', 'Sukma', '2016-12-29', '2016-12-28', '42', null, '15', 'PE001', null, null, 'kiri', '2', '1', 'Betina', '0', null, null, '-', 'milika', 'jl kemarin', 'KL002', 'Kelompok 2', null, null, '4', null, '', 'Pedet', null, null, null, null);
INSERT INTO `data_sapi` VALUES ('57', 'TR_161223144313', 'E12999', 'Lala', '2016-12-29', '2016-12-28', '42', null, '15', 'E231', '1001', 'Michel', 'kanan', '2', '', 'Betina', '0', null, null, '-', 'milika', 'jl kemarin', 'KL007', 'Kelompok 3', null, null, '1.5', null, '', 'Pedet', null, null, 'S12', '213');
INSERT INTO `data_sapi` VALUES ('58', 'TR_161223112209', 'E0099', 'Sapi Anak E0099', '2016-12-30', '2016-12-30', '40', null, '13', 'E9004', '1001', 'Michel', 'kanan', '2', '1', 'Betina', '1', null, null, '1', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', null, null, null, null, '', 'Dara', 'USAM1983348', 'USAF13666170', '1001', 'E9003');
INSERT INTO `data_sapi` VALUES ('59', 'TR_161223112209 ', 'E0001', 'Dion', '0012-12-12', '0012-12-12', '732004', null, '8', '1', '1002', null, 'kiri', '2', null, 'betina', '1', null, null, '-', 'Kristina', 'jl. Danau', 'KL002', 'Kelompok 2', '1', null, null, null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('60', 'TR_161223144313 ', 'E98', 'arimbi', '2017-01-05', '2017-01-01', '38', null, '15', 'E231', '1001', null, 'kanan', '2', null, 'betina', '0', null, null, 'A', 'milika', 'jl kemarin', 'KL007', 'Kelompok 3', null, null, null, null, '', 'Pedet', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('61', 'TR_170127085814', '10001', 'Sapi Dion', '2017-01-27', '2017-01-27', '12', null, '14', '10001', '1001', 'Michel', 'kanan', '2', '1', 'jantan', '1', null, null, '0', 'Anggota Baru', 'Malang', '', '1', '1', null, null, null, '', 'Pedet', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('62', 'TR_170127085814', '100000001', 'Dion New', '2017-01-27', '2017-01-27', '12', null, '8', '1', '1002', 'Sapi Lanang', 'kanan', '2', '2', 'jantan', '1', null, null, '1', 'Anggota Baru', 'Malang', null, null, '1', null, null, null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('63', 'TR_170127092805', '200000', 'Sapi 20000', '2017-01-27', '2017-01-27', '12', null, '8', '11111', '1001', 'Michel', 'kanan', '2', '1', 'jantan', '0', null, null, '-', '2000000', 'Malang', 'KL001', 'Kelompok 1', '1', null, null, null, '', 'Induk', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('64', 'TR_170127101123', '100001', 'Sapi 100001', '2017-01-27', '2017-01-27', '12', null, '8', '1001', '1001', 'Michel', 'kiri', '2', '1', 'jantan', '1', null, null, '-', 'News Anggota', 'Malang', 'KL001', 'Kelompok 1', '1', null, null, null, '', 'Dara', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('65', 'TR_161222104122', 'e134', 'arimbi', '2017-02-08', '2017-02-08', '0', null, '15', '212', '1001', 'Michel', 'kanan', '2', '2', 'betina', '0', null, null, '', 'Wahyu Kristin', 'Jl. Danau', '', '', '1', null, null, null, '', 'Pedet', '', '', '', '');
INSERT INTO `data_sapi` VALUES ('66', 'TR_161222104122', 'E1233', 'Eka', '2017-02-08', '2017-02-08', '0', null, '15', '1213', '1001', 'Michel', 'kiri', '2', '2', 'betina', '', null, null, '', 'Wahyu Kristin', 'Jl. Danau', '', '', '1', null, null, null, '', 'Pedet', '', '', '', '');

-- ----------------------------
-- Table structure for jenis_anggota
-- ----------------------------
DROP TABLE IF EXISTS `jenis_anggota`;
CREATE TABLE `jenis_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_jenis_anggota` varchar(225) DEFAULT NULL,
  `nama_jenis_anggota` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_anggota
-- ----------------------------
INSERT INTO `jenis_anggota` VALUES ('1', '1', 'asas', '1');
INSERT INTO `jenis_anggota` VALUES ('3', 'M11', 'Ageng', '1');

-- ----------------------------
-- Table structure for kelompok_anggota
-- ----------------------------
DROP TABLE IF EXISTS `kelompok_anggota`;
CREATE TABLE `kelompok_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kelompok` varchar(225) DEFAULT NULL,
  `nama_kelompok` varchar(225) DEFAULT NULL,
  `kode_pos_penampungan_susu` varchar(225) DEFAULT NULL,
  `nama_pos_penampungan_susu` varchar(225) DEFAULT NULL,
  `kode_cooling_unit` varchar(225) DEFAULT NULL,
  `nama_cooling_unit` varchar(225) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kelompok_anggota
-- ----------------------------
INSERT INTO `kelompok_anggota` VALUES ('1', '1', '1', '1001', 'as', null, null, '1');
INSERT INTO `kelompok_anggota` VALUES ('2', '12', 'sa', '1001', 'as', null, null, '1');
INSERT INTO `kelompok_anggota` VALUES ('3', 'KL001', 'Kelompok 1', '1001', 'as', null, null, '1');
INSERT INTO `kelompok_anggota` VALUES ('4', 'KL002', 'Kelompok 2', '1', 'asa', null, null, '1');
INSERT INTO `kelompok_anggota` VALUES ('5', 'KL007', 'Kelompok 3', '1', 'asa', null, null, '1');
INSERT INTO `kelompok_anggota` VALUES ('6', 'KL005', 'Kelompok 4', 'P011', 'Pos Pusat1', null, null, '1');

-- ----------------------------
-- Table structure for keluhan
-- ----------------------------
DROP TABLE IF EXISTS `keluhan`;
CREATE TABLE `keluhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_keluhan` varchar(255) DEFAULT NULL,
  `tanggal_keluhan` date DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `jenis_produk` varchar(255) DEFAULT NULL,
  `alamat_pelanggan` text,
  `keluhan` varchar(255) DEFAULT NULL,
  `penyebab` varchar(255) DEFAULT NULL,
  `investigasi` varchar(255) DEFAULT NULL,
  `penyelesaian` varchar(255) DEFAULT NULL,
  `tindakan_perbaikan` varchar(255) DEFAULT NULL,
  `feedback_manager` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `tanggal_penyelesaian` varchar(255) DEFAULT NULL,
  `status_keluhan` varchar(255) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT '',
  `jenis_keluhan` varchar(255) DEFAULT NULL,
  `tindakan_pencegahan` varchar(255) DEFAULT NULL,
  `kode_petugas_upload` varchar(255) DEFAULT NULL,
  `status_upload` varchar(255) DEFAULT NULL,
  `keterangan_overdue` varchar(50) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `jawaban_md` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keluhan
-- ----------------------------
INSERT INTO `keluhan` VALUES ('25', 'KNT_26012017014512_1', '2017-01-26', 'UB_002', 'Pengolahan Susu', '1001', '', 'Dion', 'New', 'Malang', 'Isi Keluhan', 'a', 'a', 'a', 'a', 'MD', '65', 'yosa', '2017-01-26', 'close', 'kabag', '0', 'non transaksi', 'a', null, 'selesai', null, '2017-01-26 14:08', 'MD');
INSERT INTO `keluhan` VALUES ('26', 'KT_26012017025303_1', '2017-01-26', 'UB_002', 'Pengolahan Susu', '1001', '', 'Dion', null, 'Malang', 'Isi', 'Penyebab', null, 'Penyelesaian', 'Perbaikan', null, '69', 'ika', '2017-01-26', 'open', null, null, 'transaksi', null, null, null, null, '2017-01-26 14:53', null);

-- ----------------------------
-- Table structure for laporan_ai
-- ----------------------------
DROP TABLE IF EXISTS `laporan_ai`;
CREATE TABLE `laporan_ai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `audit_ke` varchar(255) DEFAULT NULL,
  `id_ptpp` varchar(255) DEFAULT NULL,
  `pasal` varchar(255) DEFAULT NULL,
  `temuan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_audit` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of laporan_ai
-- ----------------------------
INSERT INTO `laporan_ai` VALUES ('1', '1', '2', '4.1', 'NC Major', 'selesai', '2017-01-13');
INSERT INTO `laporan_ai` VALUES ('2', '1', '2', '4.2', 'NC Major', 'selesai', '2017-01-13');
INSERT INTO `laporan_ai` VALUES ('3', '1', '3', '5.1', 'NC Minor', 'selesai', '2017-01-13');
INSERT INTO `laporan_ai` VALUES ('4', '1', '3', '5.2', 'NC Minor', 'selesai', '2017-01-13');
INSERT INTO `laporan_ai` VALUES ('5', '1', '4', '5.3', 'Rekomendasi', 'selesai', '2017-01-13');
INSERT INTO `laporan_ai` VALUES ('6', '1', '4', '5.4', 'Rekomendasi', 'selesai', '2017-01-13');
INSERT INTO `laporan_ai` VALUES ('7', '1', '7', '4.1', 'NC Major', 'selesai', '2017-01-06');
INSERT INTO `laporan_ai` VALUES ('8', '1', '7', '5.4.1', 'NC Major', 'selesai', '2017-01-06');
INSERT INTO `laporan_ai` VALUES ('9', '1', '9', '5.1', 'NC Minor', 'belum selesai', '2017-01-06');
INSERT INTO `laporan_ai` VALUES ('10', '1', '9', '5.3', 'NC Minor', 'belum selesai', '2017-01-06');
INSERT INTO `laporan_ai` VALUES ('11', '1', '8', '4.2.4', 'NC Minor', 'belum selesai', '2017-01-06');
INSERT INTO `laporan_ai` VALUES ('12', '1', '8', '5.4.1', 'NC Minor', 'belum selesai', '2017-01-06');
INSERT INTO `laporan_ai` VALUES ('13', '1', '11', '4.2', 'NC Major', 'selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('14', '1', '11', '4.2.3', 'NC Major', 'selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('15', '1', '12', '4.1', 'NC Minor', 'belum selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('16', '1', '13', '4.2', 'Rekomendasi', 'belum selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('17', '1', '16', '4.1', 'NC Major', 'selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('18', '1', '16', '4.2', 'NC Major', 'selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('19', '1', '16', '4.2.4', 'NC Major', 'selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('20', '1', '19', '4.2.3', 'NC Major', 'belum selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('21', '1', '20', '4.2', 'NC Minor', 'belum selesai', '2017-01-16');
INSERT INTO `laporan_ai` VALUES ('22', '1', '26', '4.1', 'NC Major', 'selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('23', '1', '26', '4.2.3', 'NC Major', 'selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('24', '1', '26', '4.2.4', 'NC Major', 'selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('25', '1', '28', '4.2.3', 'NC Major', 'belum selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('26', '1', '28', '5.2', 'NC Major', 'belum selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('27', '1', '24', '5.4', 'NC Major', 'selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('28', '1', '24', '5.4.1', 'NC Major', 'selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('29', '1', '24', '5.4.2', 'NC Major', 'selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('30', '1', '29', '5.2', 'NC Major', 'belum selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('31', '1', '29', '5.4', 'NC Major', 'belum selesai', '2017-01-19');
INSERT INTO `laporan_ai` VALUES ('32', '1', '30', '4.1', 'NC Major', 'belum selesai', '2017-01-20');
INSERT INTO `laporan_ai` VALUES ('33', '1', '30', '4.2', 'NC Major', 'belum selesai', '2017-01-20');

-- ----------------------------
-- Table structure for laporan_peternak
-- ----------------------------
DROP TABLE IF EXISTS `laporan_peternak`;
CREATE TABLE `laporan_peternak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_laporan_peternak` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nomor_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat_anggota` varchar(255) DEFAULT NULL,
  `kasus` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of laporan_peternak
-- ----------------------------
INSERT INTO `laporan_peternak` VALUES ('1', 'LP_03122016030036', '2016-12-03', 'TR_161203145844', 'Aca', 'Malang', 'ada', 'E901', '3:00 PM', '1', 'Astroboy', '2016-12-03 15:00:36');
INSERT INTO `laporan_peternak` VALUES ('2', 'LP_05122016050714', '2016-12-05', 'TR_161205145828', 'Anggi', 'Malang', 'Kasus A', 'E22', '5:15 PM', '1', 'Astroboy', '2016-12-05 17:07:14');
INSERT INTO `laporan_peternak` VALUES ('3', 'LP_21122016014020', '2016-12-21', 'TR_161203145711  ', 'Asa', 'Malang kab', '', null, '1:45 PM', '1', 'Astroboy', '2016-12-21 14:27:45');
INSERT INTO `laporan_peternak` VALUES ('4', 'LP_21122016023000', '2016-12-21', 'TR_161203145711  ', 'Asa', 'Malang kab', '', null, '2:30 PM', '1', 'Astroboy', '2016-12-21 14:31:20');
INSERT INTO `laporan_peternak` VALUES ('5', 'LP_21122016023855', '2016-12-21', 'TR_161203145711  ', 'Asa', 'Malang kab', 'Meteng', null, '2:45 PM', '1', 'Astroboy', '2016-12-21 14:39:20');
INSERT INTO `laporan_peternak` VALUES ('6', 'LP_22122016092709', '2016-12-22', 'TR_161203145711  ', 'Asa', 'Malang kab', 'Kaus', null, '9:30 AM', '1', 'Astroboy', '2016-12-22 09:27:50');
INSERT INTO `laporan_peternak` VALUES ('7', 'LP_22122016094836', '2016-12-22', 'TR_161203145711  ', 'Asa', 'Malang kab', '', null, '10:00 AM', '1', 'Astroboy', '2016-12-22 09:48:59');
INSERT INTO `laporan_peternak` VALUES ('8', 'LP_22122016095246', '2016-12-22', 'TR_161203145711  ', 'Asa', 'Malang kab', 'a', null, '10:00 AM', '1', 'Astroboy', '2016-12-22 09:53:01');

-- ----------------------------
-- Table structure for master_bayaran_komposit
-- ----------------------------
DROP TABLE IF EXISTS `master_bayaran_komposit`;
CREATE TABLE `master_bayaran_komposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bayaran` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_bayaran_komposit
-- ----------------------------
INSERT INTO `master_bayaran_komposit` VALUES ('1', 'Komposit', '2000');

-- ----------------------------
-- Table structure for master_bayaran_sub_standart
-- ----------------------------
DROP TABLE IF EXISTS `master_bayaran_sub_standart`;
CREATE TABLE `master_bayaran_sub_standart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bayaran` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_bayaran_sub_standart
-- ----------------------------
INSERT INTO `master_bayaran_sub_standart` VALUES ('1', 'Sub Standart', '2500');

-- ----------------------------
-- Table structure for master_breed
-- ----------------------------
DROP TABLE IF EXISTS `master_breed`;
CREATE TABLE `master_breed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_breed` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_breed
-- ----------------------------
INSERT INTO `master_breed` VALUES ('2', 'Holstein', '1');

-- ----------------------------
-- Table structure for master_cara_pemakaian
-- ----------------------------
DROP TABLE IF EXISTS `master_cara_pemakaian`;
CREATE TABLE `master_cara_pemakaian` (
  `id` int(11) NOT NULL,
  `kode_cara_pakai` varchar(255) DEFAULT NULL,
  `nama_cara_pakai` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_cara_pemakaian
-- ----------------------------

-- ----------------------------
-- Table structure for master_cooling_unit
-- ----------------------------
DROP TABLE IF EXISTS `master_cooling_unit`;
CREATE TABLE `master_cooling_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_cooling_unit` varchar(225) DEFAULT NULL,
  `nama_cooling_unit` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `stok_susu` decimal(11,1) DEFAULT '0.0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_cooling_unit
-- ----------------------------
INSERT INTO `master_cooling_unit` VALUES ('1', 'CU001', 'CU Pusat', '1', '1030.0');
INSERT INTO `master_cooling_unit` VALUES ('10', 'CU002', 'Cooling Unit', '1', '62.0');

-- ----------------------------
-- Table structure for master_diagnosa_penyakit
-- ----------------------------
DROP TABLE IF EXISTS `master_diagnosa_penyakit`;
CREATE TABLE `master_diagnosa_penyakit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_diagnosa` varchar(255) DEFAULT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `kode_kategori` varchar(255) DEFAULT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_diagnosa_penyakit
-- ----------------------------
INSERT INTO `master_diagnosa_penyakit` VALUES ('1', 'DP093237', 'FOOTROT', 'KP092918', 'App. Logomotoris', '1');
INSERT INTO `master_diagnosa_penyakit` VALUES ('2', 'DP093339', 'OVARIAN HYPOPLASIA, KANAN', 'KP092948', 'Gangguan Reproduksi', '1');
INSERT INTO `master_diagnosa_penyakit` VALUES ('3', 'DP093418', 'DELAY MILK LETDOWN', 'KP093018', 'Mammaria', '1');
INSERT INTO `master_diagnosa_penyakit` VALUES ('4', 'DP093432', 'GRASS TETANY', 'KP093039', 'Metabolic/Intoxicasi', '1');
INSERT INTO `master_diagnosa_penyakit` VALUES ('5', 'DP093451', 'CLOSTREDIAL, INFEKSI', 'KP093057', 'Sistem Digestivus', '1');
INSERT INTO `master_diagnosa_penyakit` VALUES ('6', 'DP093514', 'MYOSITIS', 'KP093121', 'Sistem Musculi et Cutanea', '1');
INSERT INTO `master_diagnosa_penyakit` VALUES ('7', 'DP093545', 'INSUFISIENSI CORDIS', 'KP093121', 'Sistem Musculi et Cutanea', '1');

-- ----------------------------
-- Table structure for master_divisi
-- ----------------------------
DROP TABLE IF EXISTS `master_divisi`;
CREATE TABLE `master_divisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_divisi` varchar(255) DEFAULT '',
  `nama_divisi` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_divisi
-- ----------------------------
INSERT INTO `master_divisi` VALUES ('1', '001', 'Ketua I & MU', '1');
INSERT INTO `master_divisi` VALUES ('2', '002', 'Ketua II', '1');
INSERT INTO `master_divisi` VALUES ('3', '003', 'Ketua III', '1');
INSERT INTO `master_divisi` VALUES ('4', '004', 'Bendahara', '1');
INSERT INTO `master_divisi` VALUES ('5', '005', 'Pengawas', '1');
INSERT INTO `master_divisi` VALUES ('6', '006', 'HRD', '1');
INSERT INTO `master_divisi` VALUES ('7', '007', 'HI & SE', '1');
INSERT INTO `master_divisi` VALUES ('8', '008', 'Pengadaan', '1');
INSERT INTO `master_divisi` VALUES ('9', '009', 'PPPP', '1');
INSERT INTO `master_divisi` VALUES ('10', '010', 'Laboratorium', '1');
INSERT INTO `master_divisi` VALUES ('11', '011', 'Qualitas', '1');
INSERT INTO `master_divisi` VALUES ('12', '012', 'Keswan', '1');
INSERT INTO `master_divisi` VALUES ('13', '013', 'Susu Olahan', '1');
INSERT INTO `master_divisi` VALUES ('14', '014', 'Pengolahan Limbah', '1');
INSERT INTO `master_divisi` VALUES ('15', '015', 'Teknisi', '1');
INSERT INTO `master_divisi` VALUES ('16', '016', 'MR', '1');
INSERT INTO `master_divisi` VALUES ('17', '017', 'IT', '1');
INSERT INTO `master_divisi` VALUES ('18', '018', 'Sapronak', '1');
INSERT INTO `master_divisi` VALUES ('19', '019', 'TR dan Saprotan', '1');
INSERT INTO `master_divisi` VALUES ('20', '020', 'Angkutan', '1');
INSERT INTO `master_divisi` VALUES ('21', '021', 'Kan Trading', '1');
INSERT INTO `master_divisi` VALUES ('22', '022', 'Unggul Bersama', '1');

-- ----------------------------
-- Table structure for master_divisi_keluhan
-- ----------------------------
DROP TABLE IF EXISTS `master_divisi_keluhan`;
CREATE TABLE `master_divisi_keluhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_divisi` varchar(255) DEFAULT NULL,
  `nama_divisi` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_divisi_keluhan
-- ----------------------------
INSERT INTO `master_divisi_keluhan` VALUES ('24', '1001', 'Inti', '-', '1');
INSERT INTO `master_divisi_keluhan` VALUES ('25', '1002', 'Penunjang', '-', '1');

-- ----------------------------
-- Table structure for master_grade
-- ----------------------------
DROP TABLE IF EXISTS `master_grade`;
CREATE TABLE `master_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_grade
-- ----------------------------
INSERT INTO `master_grade` VALUES ('1', 'Grade 1', '3500');
INSERT INTO `master_grade` VALUES ('2', 'Grade 2', '3300');
INSERT INTO `master_grade` VALUES ('3', 'Grade 3', '3200');

-- ----------------------------
-- Table structure for master_insentif
-- ----------------------------
DROP TABLE IF EXISTS `master_insentif`;
CREATE TABLE `master_insentif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `insentif` varchar(225) DEFAULT NULL,
  `angka` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_insentif
-- ----------------------------
INSERT INTO `master_insentif` VALUES ('5', 'Insentif Operasional', '200');
INSERT INTO `master_insentif` VALUES ('6', 'Insentif Ramadhan', '200');

-- ----------------------------
-- Table structure for master_ips
-- ----------------------------
DROP TABLE IF EXISTS `master_ips`;
CREATE TABLE `master_ips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_ips` varchar(225) DEFAULT NULL,
  `nama_ips` varchar(225) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_ips
-- ----------------------------
INSERT INTO `master_ips` VALUES ('1', 'IPS001', 'Nesle', '-', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_jabatan
-- ----------------------------
INSERT INTO `master_jabatan` VALUES ('4', 'K_001', 'Supervisor', '-', '1', null);
INSERT INTO `master_jabatan` VALUES ('5', 'AI_001', 'Lead Auditor', 'Lead Auditor', '1', 'audit');
INSERT INTO `master_jabatan` VALUES ('6', 'AI_002', 'MR', 'MR', '1', 'audit');
INSERT INTO `master_jabatan` VALUES ('7', 'AI_003', 'Auditor', 'Auditor', '1', 'audit');
INSERT INTO `master_jabatan` VALUES ('8', 'AI_004', 'Auditee', 'Auditee', '1', 'audit');
INSERT INTO `master_jabatan` VALUES ('9', 'AI_005', 'Manajer Umum', 'Manajer Umum', '1', 'audit');
INSERT INTO `master_jabatan` VALUES ('10', 'AI_006', 'Pengurus', 'Pengurus', '1', 'audit');
INSERT INTO `master_jabatan` VALUES ('11', 'RN001', 'Resepsionis', '-', '1', null);
INSERT INTO `master_jabatan` VALUES ('12', 'AD001', 'Admin', '-', '1', null);
INSERT INTO `master_jabatan` VALUES ('16', 'K_002', 'Kabag', '-', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('17', 'K_003', 'Admin', 'Admin', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('18', 'K_004', 'Resepsionis', 'Resepsionis', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('19', 'K_005', 'Manager Umum', 'Manager Umum', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('20', 'K_006', 'Pengurus', 'Pengurus', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('21', 'K_007', 'MR', 'MR', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('22', 'K_008', 'Manajer Divisi', 'Manajer Divisi', '1', 'kan_keluhan');
INSERT INTO `master_jabatan` VALUES ('23', 'K_009', 'Koordinator Admin', 'Koordinator Admin', '1', 'kan_keluhan');

-- ----------------------------
-- Table structure for master_kategori_obat
-- ----------------------------
DROP TABLE IF EXISTS `master_kategori_obat`;
CREATE TABLE `master_kategori_obat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori_obat` varchar(255) DEFAULT NULL,
  `nama_kategori_obat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_kategori_obat
-- ----------------------------
INSERT INTO `master_kategori_obat` VALUES ('1', 'KO093754', '0', '0', '2017-02-07 13:39:13', '0');
INSERT INTO `master_kategori_obat` VALUES ('3', 'KO093852', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('4', 'KO093906', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('5', 'KO093922', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('6', 'KO093933', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('7', 'KO093947', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('8', 'KO093956', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('9', 'KO094010', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('10', 'KO094028', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('11', 'KO094040', '0', '0', '2017-02-07 13:27:02', '1');
INSERT INTO `master_kategori_obat` VALUES ('12', 'KO094107', 'ereer', 'dfg', '2017-02-07 15:08:39', '1');

-- ----------------------------
-- Table structure for master_kategori_penyakit
-- ----------------------------
DROP TABLE IF EXISTS `master_kategori_penyakit`;
CREATE TABLE `master_kategori_penyakit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(255) DEFAULT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_kategori_penyakit
-- ----------------------------
INSERT INTO `master_kategori_penyakit` VALUES ('1', 'KP092918', 'App. Logomotoris', '1');
INSERT INTO `master_kategori_penyakit` VALUES ('2', 'KP092948', 'Gangguan Reproduksi', '1');
INSERT INTO `master_kategori_penyakit` VALUES ('3', 'KP093018', 'Mammaria', '1');
INSERT INTO `master_kategori_penyakit` VALUES ('4', 'KP093039', 'Metabolic/Intoxicasi', '1');
INSERT INTO `master_kategori_penyakit` VALUES ('5', 'KP093057', 'Sistem Digestivus', '1');
INSERT INTO `master_kategori_penyakit` VALUES ('6', 'KP093121', 'Sistem Musculi et Cutanea', '1');
INSERT INTO `master_kategori_penyakit` VALUES ('7', 'KP093151', 'Sistem Respira et Cardiovascular', '1');

-- ----------------------------
-- Table structure for master_metoda
-- ----------------------------
DROP TABLE IF EXISTS `master_metoda`;
CREATE TABLE `master_metoda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_metoda` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_metoda
-- ----------------------------
INSERT INTO `master_metoda` VALUES ('1', 'Lahir', '1');
INSERT INTO `master_metoda` VALUES ('2', 'Beli Baru', '1');
INSERT INTO `master_metoda` VALUES ('3', 'asas', '1');
INSERT INTO `master_metoda` VALUES ('4', 'asas', '1');

-- ----------------------------
-- Table structure for master_metode
-- ----------------------------
DROP TABLE IF EXISTS `master_metode`;
CREATE TABLE `master_metode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_metode` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_metode
-- ----------------------------
INSERT INTO `master_metode` VALUES ('1', 'MCC', '-');
INSERT INTO `master_metode` VALUES ('2', 'Standart Method', '-');
INSERT INTO `master_metode` VALUES ('3', 'MBRT', '-');
INSERT INTO `master_metode` VALUES ('4', 'GERBER', '-');
INSERT INTO `master_metode` VALUES ('5', 'Manual', '- ');
INSERT INTO `master_metode` VALUES ('6', 'Teskit', '-');

-- ----------------------------
-- Table structure for master_mutasi
-- ----------------------------
DROP TABLE IF EXISTS `master_mutasi`;
CREATE TABLE `master_mutasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  `jenis_mutasi` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_mutasi
-- ----------------------------
INSERT INTO `master_mutasi` VALUES ('2', 'MUT001', 'Mutasi Langsung', '-', '1');
INSERT INTO `master_mutasi` VALUES ('4', 'MUT002', 'Mutasi B', 'Mutasi b', '1');

-- ----------------------------
-- Table structure for master_obat
-- ----------------------------
DROP TABLE IF EXISTS `master_obat`;
CREATE TABLE `master_obat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_obat` varchar(255) DEFAULT NULL,
  `nama_obat` varchar(255) DEFAULT NULL,
  `kode_kategori_obat` varchar(255) DEFAULT NULL,
  `nama_kategori_obat` varchar(255) DEFAULT NULL,
  `kode_satuan_obat` varchar(255) DEFAULT NULL,
  `nama_satuan_obat` varchar(255) DEFAULT NULL,
  `jenis_obat` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `real_stock` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `stok_minimal` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_obat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_obat
-- ----------------------------
INSERT INTO `master_obat` VALUES ('1', 'O_0001', '1Atropine sulfat', 'KO093754', 'Analgetik', 'S_03', 'Botol', 'Non Antibiotik', 'U001', 'Gudang', null, '120000', '130000', null, null, null, null, null);
INSERT INTO `master_obat` VALUES ('2', 'O_0002', 'Mastilak', 'KO094107', 'Antibiotik', 'S_01', 'Ampul', 'Antibiotik', 'U001', 'Gudang', null, '10000', '12000', null, null, null, null, null);
INSERT INTO `master_obat` VALUES ('7', 'O_0006', 'koyo\' cap jihan', 'KO093922', '0', 'S_02', 'Pcs', 'Non Antibiotik', 'U001', 'Gudang', null, '1000', '1500', '1000', '0', 'Block 1', '1', '1');
INSERT INTO `master_obat` VALUES ('9', 'O_0007', 'pshycotro', 'KO093852', '0', 'S_01', 'Ampul', 'Antibiotik', 'U001', 'Gudang', null, '1000', '75000', '12', 'BL_003', 'Block 3', '1', '1');
INSERT INTO `master_obat` VALUES ('10', 'O_0008', 'parasetamol', 'KO093933', '0', 'S_02', 'Pcs', 'Antibiotik', 'U001', 'Gudang', null, '1000', '12000', '1', 'BL_002', 'Block 2', '0', '1');
INSERT INTO `master_obat` VALUES ('11', 'O_0009', 'dewi bulan', 'KO093906', '0', 'S_02', 'Pcs', 'Antibiotik', 'U001', 'Gudang', null, '1000', '12000', '12', '0', 'Block 1', '1', '0');

-- ----------------------------
-- Table structure for master_pasal
-- ----------------------------
DROP TABLE IF EXISTS `master_pasal`;
CREATE TABLE `master_pasal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pasal` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_pasal
-- ----------------------------
INSERT INTO `master_pasal` VALUES ('1', '4.1', 'Identifikasi proses kritis antara lain : mengidentifikasi proses yang dibutuhkan');
INSERT INTO `master_pasal` VALUES ('2', '4.2', 'Dokumentasi/Persyaratan Dokumen');
INSERT INTO `master_pasal` VALUES ('3', '4.2.3', 'Pengendalian dokumen (DIDT), mengesahkan');
INSERT INTO `master_pasal` VALUES ('4', '4.2.4', 'Catatan mutu / pengarsipan');
INSERT INTO `master_pasal` VALUES ('5', '5.1', 'Management Commitment / monitoring');
INSERT INTO `master_pasal` VALUES ('6', '5.2', 'Customer Fokus');
INSERT INTO `master_pasal` VALUES ('7', '5.3', 'Kebijakan Mutu');
INSERT INTO `master_pasal` VALUES ('8', '5.4', 'Planning');
INSERT INTO `master_pasal` VALUES ('9', '5.4.1', 'Sasaran Mutu');
INSERT INTO `master_pasal` VALUES ('10', '5.4.2', 'Program Kerja / perencanaan system manajemen mutu');

-- ----------------------------
-- Table structure for master_pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `master_pelayanan`;
CREATE TABLE `master_pelayanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan` varchar(255) DEFAULT NULL,
  `nama_pelayanan` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_pelayanan
-- ----------------------------
INSERT INTO `master_pelayanan` VALUES ('6', '1', '1', '1', '1');
INSERT INTO `master_pelayanan` VALUES ('7', 'wer', 'werw', 'wer', '1');

-- ----------------------------
-- Table structure for master_peralatan
-- ----------------------------
DROP TABLE IF EXISTS `master_peralatan`;
CREATE TABLE `master_peralatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_peralatan` varchar(255) DEFAULT NULL,
  `nama_peralatan` varchar(255) DEFAULT NULL,
  `kode_satuan_peralatan` varchar(255) DEFAULT NULL,
  `nama_satuan_peralatan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `real_stock` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `stok_minimal` varchar(255) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_peralatan
-- ----------------------------
INSERT INTO `master_peralatan` VALUES ('3', '54646466', 'okeokek', null, null, null, null, null, null, null, '3444', 'BL_002', 'Block 2', '0');
INSERT INTO `master_peralatan` VALUES ('4', '54646466', 'okeokek', null, null, null, null, null, null, null, '3444', 'BL_002', 'Block 2', '0');

-- ----------------------------
-- Table structure for master_petugas
-- ----------------------------
DROP TABLE IF EXISTS `master_petugas`;
CREATE TABLE `master_petugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `kode_wilayah` varchar(255) DEFAULT NULL,
  `nama_wilayah` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_petugas
-- ----------------------------
INSERT INTO `master_petugas` VALUES ('1', 'PE001', 'Ryan', '1001|PO02', 'as|Pos 1|', '1');
INSERT INTO `master_petugas` VALUES ('2', 'P002', 'Petugas B', 'P011|PO02', 'Pos Pusat1|Pos 1|', '1');
INSERT INTO `master_petugas` VALUES ('24', 'P000123', 'Wahyu Uhaw', '1001|1|3', 'as|asa|sas|', '1');

-- ----------------------------
-- Table structure for master_potongan
-- ----------------------------
DROP TABLE IF EXISTS `master_potongan`;
CREATE TABLE `master_potongan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_potongan` varchar(255) DEFAULT NULL,
  `nama_potongan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_potongan
-- ----------------------------
INSERT INTO `master_potongan` VALUES ('2', '362', 'Simpanan Pokok');
INSERT INTO `master_potongan` VALUES ('3', '222', 'Simpanan Sukarela');

-- ----------------------------
-- Table structure for master_pps
-- ----------------------------
DROP TABLE IF EXISTS `master_pps`;
CREATE TABLE `master_pps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pos_penampungan_susu` varchar(225) DEFAULT NULL,
  `nama_pos_penampungan_susu` varchar(225) DEFAULT NULL,
  `kode_cooling_unit` varchar(225) DEFAULT NULL,
  `nama_cooling_unit` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_pps
-- ----------------------------
INSERT INTO `master_pps` VALUES ('1', '1001', 'as', null, null, '1');
INSERT INTO `master_pps` VALUES ('2', '1', 'asa', null, null, '1');
INSERT INTO `master_pps` VALUES ('3', '3', 'sas', null, null, '1');
INSERT INTO `master_pps` VALUES ('4', 'P011', 'Pos Pusat1', null, null, '1');
INSERT INTO `master_pps` VALUES ('5', 'PO02', 'Pos 1', null, null, '1');

-- ----------------------------
-- Table structure for master_premi_produksi
-- ----------------------------
DROP TABLE IF EXISTS `master_premi_produksi`;
CREATE TABLE `master_premi_produksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rerata_volume` varchar(255) DEFAULT NULL,
  `angka` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_premi_produksi
-- ----------------------------
INSERT INTO `master_premi_produksi` VALUES ('1', '<10', '550');
INSERT INTO `master_premi_produksi` VALUES ('2', '11-20', '590');
INSERT INTO `master_premi_produksi` VALUES ('3', '21-30', '630');
INSERT INTO `master_premi_produksi` VALUES ('4', '31-50', '670');
INSERT INTO `master_premi_produksi` VALUES ('5', '51-100', '710');
INSERT INTO `master_premi_produksi` VALUES ('6', '>100', '750');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_rak
-- ----------------------------
INSERT INTO `master_rak` VALUES ('1', 'BL_001', 'Block 1', 'U001', 'Gudang', 'Block 1', '1', '2016-11-24 17:17:49');
INSERT INTO `master_rak` VALUES ('3', 'BL_002', 'Block 2', 'U001', 'Gudang', 'Block 2', '1', '2016-12-28 08:11:56');
INSERT INTO `master_rak` VALUES ('4', 'BL_003', 'Block 3', 'U001', 'Gudang', 'Block 3', '1', '2016-12-28 08:12:23');
INSERT INTO `master_rak` VALUES ('5', 'BL_004', 'Block 4', 'U001', 'Gudang', 'Block 4', '1', '2016-12-28 08:13:06');
INSERT INTO `master_rak` VALUES ('6', 'BL_005', 'Block 5', 'U001', 'Gudang', 'Block 5', '1', '2016-12-28 08:13:42');
INSERT INTO `master_rak` VALUES ('7', 'BL_006', 'Block 6', 'U001', 'Gudang', 'Block 6', '1', '2016-12-28 08:14:19');
INSERT INTO `master_rak` VALUES ('8', 'BL_007', 'Block 7', 'U001', 'Gudang', 'Block 7', '1', '2016-12-28 08:14:52');
INSERT INTO `master_rak` VALUES ('9', 'BL_008', 'Block 8', 'U001', 'Gudang', 'Block 8', '1', '2016-12-28 08:15:29');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of master_satuan
-- ----------------------------
INSERT INTO `master_satuan` VALUES ('1', 'S_01', 'Ampul', '-', '1', 'Ampul');
INSERT INTO `master_satuan` VALUES ('2', 'S_02', 'Pcs', '-', '1', 'Pcs');
INSERT INTO `master_satuan` VALUES ('3', 'S_03', 'Botol', '-', '1', 'Botol');
INSERT INTO `master_satuan` VALUES ('4', 'S_04', 'Bls', '-', '1', 'Bls');
INSERT INTO `master_satuan` VALUES ('5', 'S_05', 'Syiringe', '-', '1', 'Syiringe');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_setting
-- ----------------------------
INSERT INTO `master_setting` VALUES ('1', 'PEM', 'PEN', 'KAS', 'RES', 'RET', 'OP', 'SP', 'PRO', 'REP', 'BLE', 'KON', 'RO', 'PL', 'OT', 'REOUT', 'INO', 'MY RESTO', 'Jalan Jakarta', '085648852654', 'www.mix-resto.com', 'Mix Resto Asik', 'Mr. Resto', 'BJ', 'BB', 'MUT', '01', '01', '\\\\192.168.100.35\\TM-U220', 'PB', '160622100138.png', '', 'ec6d61830e3b6eb4665deb48c255a750fa3b384ff8d632c80ec3ad8c5eff0062', 'bc994cc61ab75522ab50e633c23257c830190a9b1dc79f973d88f648f5018366', 'PO');

-- ----------------------------
-- Table structure for master_strow
-- ----------------------------
DROP TABLE IF EXISTS `master_strow`;
CREATE TABLE `master_strow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_strow` varchar(255) DEFAULT NULL,
  `nama_pejantan` varchar(255) DEFAULT NULL,
  `no_batch` varchar(255) DEFAULT NULL,
  `id_dam` varchar(255) DEFAULT NULL,
  `nama_dam` varchar(255) DEFAULT NULL,
  `id_sire` varchar(255) DEFAULT NULL,
  `nama_sire` varchar(255) DEFAULT NULL,
  `harga_beli` varchar(50) DEFAULT NULL,
  `harga_jual` varchar(50) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `stok_min` varchar(50) DEFAULT NULL,
  `kode_rak` varchar(255) DEFAULT NULL,
  `nama_rak` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_strow
-- ----------------------------
INSERT INTO `master_strow` VALUES ('4', '1001', 'Michel', 'Batch_01', 'USAF13666170', 'Myerlene Velmas Velvet ET VG', 'USAM1983348', 'ROTHROCK TRADITION LEADMAN', '10000', '12000', 'S_03', null, null, null, null);
INSERT INTO `master_strow` VALUES ('5', '1002', 'Sapi Lanang', '1', '103', 'Ibuk.e', '1004', 'Bapak.e', '1200000', '12000000', 'S_01', '1', '34', 'BL_003', 'Block 3');

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
INSERT INTO `master_supplier` VALUES ('1', 'SP001', 'Supplier A', '1', 'Malang', '081554111057', 'BCA', '1234578', 'Yola', 'Manager', '081554111057', '1', '2016-12-03 14:51:41', null);
INSERT INTO `master_supplier` VALUES ('3', 'SP002', 'Setia Kusuma', '1', 'Malang', '081554111052', 'BCA', '9897456', 'Sukma', 'Manager', '0341254123', '1', '2016-12-05 16:33:32', null);

-- ----------------------------
-- Table structure for master_tangky
-- ----------------------------
DROP TABLE IF EXISTS `master_tangky`;
CREATE TABLE `master_tangky` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sopir` varchar(225) DEFAULT NULL,
  `nomor_polisi` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_tangky
-- ----------------------------
INSERT INTO `master_tangky` VALUES ('1', 'susiloe', 'N 270');
INSERT INTO `master_tangky` VALUES ('2', 'Suparman', 'N 123 F');
INSERT INTO `master_tangky` VALUES ('3', 'Paijo', 'P 41 JO');
INSERT INTO `master_tangky` VALUES ('4', 'Faat', 'F 44 T');
INSERT INTO `master_tangky` VALUES ('5', 'Gunawan', 'N 2108 GS');

-- ----------------------------
-- Table structure for master_tipe_sapi
-- ----------------------------
DROP TABLE IF EXISTS `master_tipe_sapi`;
CREATE TABLE `master_tipe_sapi` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(225) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `keterangan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_tipe_sapi
-- ----------------------------
INSERT INTO `master_tipe_sapi` VALUES ('8', 'Induk Laktasi Bunting', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('9', 'Induk Laktasi Tidak Bunting', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('10', 'Induk Kering Bunting', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('11', 'Induk Kering Tidak Bunting', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('12', 'Dara Bunting', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('13', 'Dara Tidak Bunting', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('14', 'Pedet Jantan', '1', '-');
INSERT INTO `master_tipe_sapi` VALUES ('15', 'Pedet Betina', '1', '-');

-- ----------------------------
-- Table structure for master_uji_lab
-- ----------------------------
DROP TABLE IF EXISTS `master_uji_lab`;
CREATE TABLE `master_uji_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_uji` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_uji_lab
-- ----------------------------
INSERT INTO `master_uji_lab` VALUES ('1', 'Fat', '-');
INSERT INTO `master_uji_lab` VALUES ('2', 'Reduktase', '-');
INSERT INTO `master_uji_lab` VALUES ('4', 'AB', '-');
INSERT INTO `master_uji_lab` VALUES ('5', 'BJ', '-');
INSERT INTO `master_uji_lab` VALUES ('6', 'PH', '-');
INSERT INTO `master_uji_lab` VALUES ('7', 'Protein', '-');
INSERT INTO `master_uji_lab` VALUES ('8', 'SNF', 'Solid Non Fat');
INSERT INTO `master_uji_lab` VALUES ('9', 'Lactosa', '-');
INSERT INTO `master_uji_lab` VALUES ('10', 'Add water', '-');
INSERT INTO `master_uji_lab` VALUES ('11', 'TPC', '-');
INSERT INTO `master_uji_lab` VALUES ('12', 'TCC', '-');
INSERT INTO `master_uji_lab` VALUES ('13', 'Gula', '-');
INSERT INTO `master_uji_lab` VALUES ('14', 'Borak', '-');
INSERT INTO `master_uji_lab` VALUES ('15', 'Formalin', '-');
INSERT INTO `master_uji_lab` VALUES ('16', 'Susu Masak', '-');
INSERT INTO `master_uji_lab` VALUES ('17', 'Penambahan Santan', '-');
INSERT INTO `master_uji_lab` VALUES ('18', 'Air Beras', '-');
INSERT INTO `master_uji_lab` VALUES ('19', 'Urea', '-');
INSERT INTO `master_uji_lab` VALUES ('21', 'ORGANOLEPTIK', '-');

-- ----------------------------
-- Table structure for master_unit
-- ----------------------------
DROP TABLE IF EXISTS `master_unit`;
CREATE TABLE `master_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_divisi` varchar(50) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_unit
-- ----------------------------
INSERT INTO `master_unit` VALUES ('7', '1002', 'UB_002', 'Pengolahan Susu', '1');
INSERT INTO `master_unit` VALUES ('8', '1001', 'UB003', 'Swalayan', '1');
INSERT INTO `master_unit` VALUES ('9', '1002', 'UB_004', 'Mimicow', '1');

-- ----------------------------
-- Table structure for master_user
-- ----------------------------
DROP TABLE IF EXISTS `master_user`;
CREATE TABLE `master_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` longtext,
  `last_login` datetime DEFAULT NULL,
  `modul` longtext,
  `kode_jabatan` varchar(255) DEFAULT NULL,
  `nama_jabatan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `kode_divisi` varchar(255) DEFAULT NULL,
  `nama_divisi` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT '',
  `group` varchar(255) DEFAULT '',
  `auditee_ke` varchar(255) DEFAULT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of master_user
-- ----------------------------
INSERT INTO `master_user` VALUES ('1', '1', 'Astroboy', 'astro', '8cd07cf78166032f36fd06cb40163942', null, 'AI_001|AI_002|AI_003|AI_004|AI_005|AI_006', 'J_001', 'Jabatan 1', null, null, null, null, '', 'superuser', null, null);
INSERT INTO `master_user` VALUES ('78', '1', 'Ria', 'ria', 'd1f773e6081a5c0f536d85297a6a541f', null, null, 'K_005', 'Manager Umum', 'Pilih Unit Bisnis', null, 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('79', '1', 'dandy', 'dandy', '090ab62940a969ebcfacf423cf90e366', null, null, 'K_003', 'Admin', 'UB003', 'Swalayan', 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('7', '1', 'Administrator', 'admin', '9c69c2e28557a737ffc2d3aad9160b76', null, null, 'Pilih Jabatan', 'Admin', 'Pilih Unit Bisnis', null, null, null, 'audit', 'admin', null, null);
INSERT INTO `master_user` VALUES ('10', '1', 'Joko Swasembada', 'joko', '3e0f5d2357e8919be9c9b6f919e8f2ee', null, 'AI_003', null, null, null, null, '', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('11', '1', 'Wardoyo Suseno', 'wardoyo', '85bf06e89e06327cdd71cf6eee64478f', null, 'AI_004', null, null, null, null, '013', 'Susu Olahan', 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('12', '1', 'Lead Auditor', 'ketua', 'ee1b0913e6560a11b061f2a7b9e888be', null, 'AI_001', null, null, null, null, '', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('13', '1', 'Waluyo', 'waluyo', 'e7e5dfa1321725fba76b5d4c444dc7ad', null, 'AI_004', null, null, null, null, '010', 'Laboratorium', 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('14', '1', 'Rani Dyah', 'rani', '4b70aa118fd08cd4d99f0646d97ccd64', null, 'AI_003', null, null, null, null, '', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('15', '1', 'Sammy Simorangking satu', 'mr', '47d9ab1dda47cacb0e7a276b7e3a4bb2', null, 'AI_002', null, null, null, null, '', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('22', '1', 'Wahyu Kris', 'why', 'f71fb9ab5b191bf79e782261d2381199', null, 'AI_001|AI_003', null, null, null, null, '', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('66', '1', 'yuni', 'yuni', '03fac9afb3ca31e1fa1e48c087870571', null, null, 'K_009', 'Koordinator Admin', 'UB_002', 'Pengolahan Susu', 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('67', '1', 'latifah', 'latifah', 'dcf809a1e7d99187e272b602b1ab1d88', null, null, 'K_008', 'Manajer Divisi', 'Pilih Unit Bisnis', null, '1002', 'Penunjang', '', '', null, null);
INSERT INTO `master_user` VALUES ('68', '1', 'eva', 'eva', 'fdc4d996e5d0fc6d1ef6b050d492658e', null, null, 'K_005', 'Manager Umum', 'Pilih Unit Bisnis', null, 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('69', '1', 'ika', 'ika', '0b561011a82eddea09539842a930410f', null, null, 'K_003', 'Admin', 'UB_002', 'Pengolahan Susu', 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('75', '1', 'manajerumum', 'manajerumum', '179f83e55de2ad0f148f21deeae11bce', null, null, 'K_005', 'Manager Umum', 'Pilih Unit Bisnis', null, 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('80', '1', 'Rigen', 'rigen', 'b9c6c839b21e8f62656224becaa46785', null, null, 'K_002', 'Kabag', 'UB003', 'Swalayan', 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('33', '1', 'Rani', 'rani', '4b70aa118fd08cd4d99f0646d97ccd64', null, 'AI_004', null, null, null, null, '004', 'Bendahara', 'audit', '', '1', null);
INSERT INTO `master_user` VALUES ('34', '1', 'Mawar Citra', 'mawar', '3250513166a285a54636bc93907ee225', null, 'AI_004', null, null, null, null, '004', 'Bendahara', 'audit', '', '2', null);
INSERT INTO `master_user` VALUES ('35', '1', 'df', 'df', '94147d412b41680dbf4dfc9abe25b25e', null, 'AI_001|AI_003', null, null, null, null, '', null, 'audit', '', null, '161216091901.JPG|');
INSERT INTO `master_user` VALUES ('36', '1', 'non', 'non', 'c8ffc27262f3cf272e12fe38d7af6ebe', null, 'AI_001|AI_002|AI_003', null, null, null, null, '001', 'Ketua I & MU', 'audit', '', null, 'non_sertifikat');
INSERT INTO `master_user` VALUES ('37', '1', 'llll', 'llll', 'fa2641d0f9423d6d6d8312e1b63b3641', null, 'AI_001', null, null, null, null, null, 'HRD', 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('38', '1', 'asdasdasdasd', 'asdasdasda', 'e42044e7066f7da9ef61b1b40e8e928c6750f566a8d8c2c37e939a935b2d9b3a', null, 'AI_001', null, null, null, null, null, 'Bendahara', 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('47', '1', 'Budi', 'budi', '57c728aa53822c876107e71536af4ac6', null, 'AI_003', null, null, null, null, null, null, 'audit', '', null, 'non_sertifikat');
INSERT INTO `master_user` VALUES ('40', '1', 'Laluna', 'luna', '1fa4abe1e367a9414565abcb84aed634', null, 'AI_001', null, null, null, null, '001|002|003|004|005|020', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('41', '1', 'Mayangsari', 'maya', '790d843fc97d3dbc75560dde7636885d', null, 'AI_001', null, null, null, null, '006|007|008|009|010|012|013|014|014', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('42', '1', 'auditor', 'auditor', 'a411a7aefe46a0af43a5a8230279b123', null, 'AI_003', null, null, null, null, null, null, 'audit', '', null, '161219023630.png|');
INSERT INTO `master_user` VALUES ('48', '1', 'Kriss', 'kriss', '6df77a400727d33b731d71963797b9ad', null, 'AI_002', null, null, null, null, '007|008|010', null, 'audit', '', null, null);
INSERT INTO `master_user` VALUES ('81', '1', 'Jadid', 'jadid', 'b91aa125fc2e91f44f45bbf99947dc06', null, null, 'K_008', 'Manajer Divisi', 'Pilih Unit Bisnis', null, '1002', 'Penunjang', '', '', null, null);
INSERT INTO `master_user` VALUES ('64', '1', 'ari', 'ari ', '5d40d0d1e732678af4ff93c022ef79a4', null, null, 'K_004', 'Resepsionis', 'Pilih Unit Bisnis', null, 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('65', '1', 'yosa', 'yosa', '21bd0b84959ee5ef77e5a445d456a059', null, null, 'K_002', 'Kabag', 'UB_002', 'Pengolahan Susu', 'Pilih', null, '', '', null, null);
INSERT INTO `master_user` VALUES ('53', '1', 'yola', 'yola', 'bad43a15b48dd7f93c5efdc930ae3ccc', null, 'AI_001', null, null, null, null, '003', null, 'audit', '', null, null);

-- ----------------------------
-- Table structure for mutasi_sapi
-- ----------------------------
DROP TABLE IF EXISTS `mutasi_sapi`;
CREATE TABLE `mutasi_sapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `kode_anggota_penerima` varchar(255) DEFAULT NULL,
  `nama_anggota_penerima` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `jenis_mutasi` varchar(255) DEFAULT NULL,
  `type_mutasi` varchar(255) DEFAULT NULL,
  `alasan_1` varchar(255) DEFAULT NULL,
  `alasan_2` varchar(255) DEFAULT NULL,
  `penerimaan` varchar(255) DEFAULT NULL,
  `penyebab` varchar(255) DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `obat` varchar(255) DEFAULT NULL,
  `kebutuhan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mutasi_sapi
-- ----------------------------
INSERT INTO `mutasi_sapi` VALUES ('31', 'MUT_22122016040627', '', '', null, null, '', '', '', '', '', '2016-12-22', null, 'Mutasi Masuk', '', '', '', '', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('32', 'MUT_22122016040727', '', '', null, null, '', '', '', '', '', '2016-12-22', null, 'Mutasi Masuk', '', '', '', '', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('33', 'MUT_22122016041022', 'E9002', 'Alun', 'TR_161205145828', 'Dion', 'TR_161203145711  ', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '2016-12-22', null, 'Mutasi Internal', '', '1', '2', '3', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('34', 'MUT_22122016041316', '', '', null, null, '', '', '', '', '', '2016-12-22', null, 'Mutasi Masuk', '', '', '', '', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('35', 'MUT_22122016041347', '', '', null, null, '', '', '', '', '', '2016-12-22', null, 'Mutasi Masuk', '', '', '', '', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('36', 'MUT_22122016041402', '', '', null, null, '', '', '', '', '', '2016-12-22', null, 'Mutasi Masuk', '', '', '', '', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('37', 'MUT_05012017085023', 'E9004', 'Dion', 'TR_161223112209', 'Kris', '', '', '', '', '', '2017-01-05', null, 'Mutasi Keluar', 'Potong Paksa', '1', '2', 'Penerimaan', 'Kebutuhan', '', '', 'Tidak Ada Uang');
INSERT INTO `mutasi_sapi` VALUES ('38', 'MUT_05012017085348', 'E9006', 'Anak E9004', 'TR_161223112209', 'Kris', '', '', '', '', '', '2017-01-05', null, 'Mutasi Keluar', 'Mati Bangkai', '1', '2', '3', 'Kebutuhan', '', '', 'Uang');
INSERT INTO `mutasi_sapi` VALUES ('39', 'MUT_05012017090115', 'E0001', 'Dion', null, null, 'TR_161203145711   ', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '2017-01-05', null, 'Mutasi Masuk', '', '', '', '', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('40', 'MUT_05012017090811', 'E1235', 'Sia', 'TR_161223144313', 'milika', '', '', '', '', '', '2017-01-05', null, 'Mutasi Keluar', 'Dijual', '1', '2', '2', 'Kebutuhan', '', '', 'Uang');
INSERT INTO `mutasi_sapi` VALUES ('41', 'MUT_05012017091128', 'E901', 'D', '', 'Kris', 'TR_161203145711   ', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '2017-01-05', null, 'Mutasi Internal', '', '1', '2', 'Penerimaan', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('42', 'MUT_05012017091340', 'E124', 'Esa', 'TR_161223112209', 'Kris', 'TR_161222104122  ', 'Wahyu Kristin', 'Jl. Danau', '', '', '2017-01-05', null, 'Mutasi Internal', '', '1', '2', 'penerimaan', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('43', 'MUT_05012017091811', 'E0001', 'Dion', 'TR_161203145711   ', 'Asa', 'TR_161205145828 ', 'Anggi', 'Malang', 'KL001', 'Kelompok 1', '2017-01-05', null, 'Mutasi Internal', '', '1', '2', 'Pneerimana', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('44', 'MUT_05012017091958', 'E0001', 'Dion', 'TR_161205145828 ', 'Anggi', 'TR_161223112209 ', 'Kristina', 'jl. Danau', 'KL002', 'Kelompok 2', '2017-01-05', null, 'Mutasi Internal', '', '1', '2', '3', null, null, null, null);
INSERT INTO `mutasi_sapi` VALUES ('45', 'MUT_05012017092744', 'E98', 'arimbi', null, null, 'TR_161223144313 ', 'milika', 'jl kemarin', 'KL007', 'Kelompok 3', '2017-01-05', null, 'Mutasi Masuk', 'Beli Baru', '', '', '', null, null, null, null);

-- ----------------------------
-- Table structure for opsi_laporan_peternak
-- ----------------------------
DROP TABLE IF EXISTS `opsi_laporan_peternak`;
CREATE TABLE `opsi_laporan_peternak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_laporan` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `layanan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_laporan_peternak
-- ----------------------------
INSERT INTO `opsi_laporan_peternak` VALUES ('1', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak` VALUES ('2', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak` VALUES ('3', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak` VALUES ('4', 'LP_21122016014020', '1111', 'Dion', 'Informasi Kelahiran');
INSERT INTO `opsi_laporan_peternak` VALUES ('5', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak` VALUES ('6', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak` VALUES ('7', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak` VALUES ('8', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak` VALUES ('9', 'LP_21122016023000', '1111', 'Dion', 'Informasi Kelahiran');
INSERT INTO `opsi_laporan_peternak` VALUES ('10', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak` VALUES ('11', 'LP_21122016023855', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak` VALUES ('12', 'LP_22122016092709', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak` VALUES ('13', 'LP_22122016094836', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak` VALUES ('14', 'LP_22122016095246', '0000', 'Dion', 'Pelayanan Keswan');

-- ----------------------------
-- Table structure for opsi_laporan_peternak_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_laporan_peternak_temp`;
CREATE TABLE `opsi_laporan_peternak_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_laporan` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `layanan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_laporan_peternak_temp
-- ----------------------------
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('18', 'LP_21122016113656', '0000', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('19', null, null, null, null);
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('20', null, null, null, null);
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('21', 'LP_21122016114854', '0000', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('22', 'LP_21122016114927', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('23', 'LP_21122016114957', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('24', 'LP_21122016115111', '1111', null, 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('25', 'LP_21122016115237', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('26', 'LP_21122016012353', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('27', 'LP_21122016012504', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('28', 'LP_21122016012526', '1111', null, 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('29', 'LP_21122016012835', '1111', null, 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('30', null, '1111', null, 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('31', 'LP_21122016013008', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('32', 'LP_21122016013008', '', null, 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('33', 'LP_21122016013008', '1111', null, 'Informasi Kelahiran');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('34', 'LP_21122016013307', 'E5321', null, 'Informasi Kelahiran');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('35', 'LP_21122016013307', 'E5321', null, 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('36', 'LP_21122016013511', '1111', null, 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('37', 'LP_21122016013548', '0000', null, 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('38', 'LP_21122016013751', '1111', null, 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('39', 'LP_21122016013751', '0000', null, 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('41', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('42', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('43', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('44', 'LP_21122016014020', '1111', 'Dion', 'Informasi Kelahiran');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('45', 'LP_21122016014020', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('46', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan IB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('47', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan PKB');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('48', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan Potong Kuku');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('49', 'LP_21122016023000', '1111', 'Dion', 'Informasi Kelahiran');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('50', 'LP_21122016023000', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('51', 'LP_21122016023855', '1111', 'Dion', 'Pelayanan Keswan');
INSERT INTO `opsi_laporan_peternak_temp` VALUES ('52', 'LP_21122016031159', '1111', 'Dion', 'Pelayanan PKB');

-- ----------------------------
-- Table structure for opsi_pelayanan_keswan
-- ----------------------------
DROP TABLE IF EXISTS `opsi_pelayanan_keswan`;
CREATE TABLE `opsi_pelayanan_keswan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_keswan` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `nama_obat` varchar(255) DEFAULT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `metode_pemberian` varchar(255) DEFAULT NULL,
  `keterangan_abortus` varchar(50) DEFAULT NULL,
  `umur` varchar(50) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_kelompok` varchar(50) DEFAULT NULL,
  `nama_kelompok` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_pelayanan_keswan
-- ----------------------------
INSERT INTO `opsi_pelayanan_keswan` VALUES ('51', 'PK_161229022959', 'E9006', '2016-12-29', 'DP093808', 'Inzana', '1', '', '', '', '2016-12-29 14:42:25', 'KL001', 'Kelompok 1');
INSERT INTO `opsi_pelayanan_keswan` VALUES ('52', 'PK_161229022959', 'E9006', '2016-12-29', 'DP093829', 'Inzana', '1', '1', '', '', '2016-12-29 16:07:45', 'KL001', 'Kelompok 1');
INSERT INTO `opsi_pelayanan_keswan` VALUES ('53', 'PK_161229022959', 'E9006', '2016-12-29', 'DP093808', 'Mixagrib', '1', '1', '', '', '2016-12-29 16:07:29', 'KL003', 'Kelompo 3');
INSERT INTO `opsi_pelayanan_keswan` VALUES ('54', 'PK_161230105840', 'E9004', '2016-12-30', 'DP093808', 'Inzana', '1', '1', '', '', '2016-12-30 10:59:14', 'KL001', 'Kelompok 1');

-- ----------------------------
-- Table structure for opsi_pengiriman
-- ----------------------------
DROP TABLE IF EXISTS `opsi_pengiriman`;
CREATE TABLE `opsi_pengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_do` varchar(255) DEFAULT NULL,
  `kode_cu` varchar(255) DEFAULT NULL,
  `nama_cu` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_pengiriman
-- ----------------------------
INSERT INTO `opsi_pengiriman` VALUES ('1', 'DO_20170203113328', 'CU001', 'CU Pusat', '5');
INSERT INTO `opsi_pengiriman` VALUES ('2', 'DO_20170206023633', 'CU002', 'Cooling Unit', '150');
INSERT INTO `opsi_pengiriman` VALUES ('3', 'DO_20170206033231', 'CU001', 'CU Pusat', '100');
INSERT INTO `opsi_pengiriman` VALUES ('4', 'DO_20170206033231', 'CU002', 'Cooling Unit', '10');
INSERT INTO `opsi_pengiriman` VALUES ('5', 'DO_20170206033708', 'CU001', 'CU Pusat', '50');
INSERT INTO `opsi_pengiriman` VALUES ('6', 'DO_20170207013915', 'CU001', 'CU Pusat', '10');
INSERT INTO `opsi_pengiriman` VALUES ('7', 'DO_20170207031147', 'CU001', 'CU Pusat', '100');

-- ----------------------------
-- Table structure for opsi_pengiriman_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_pengiriman_temp`;
CREATE TABLE `opsi_pengiriman_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_do` varchar(255) DEFAULT NULL,
  `kode_cu` varchar(255) DEFAULT NULL,
  `nama_cu` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_pengiriman_temp
-- ----------------------------

-- ----------------------------
-- Table structure for opsi_sapi_anggota
-- ----------------------------
DROP TABLE IF EXISTS `opsi_sapi_anggota`;
CREATE TABLE `opsi_sapi_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(255) DEFAULT NULL,
  `jumlah_sapi` varchar(255) DEFAULT NULL,
  `kondisi_kandang` varchar(255) DEFAULT NULL,
  `Induk_Laktasi_Bunting_milik_sendiri` varchar(100) DEFAULT NULL,
  `Induk_Laktasi_Bunting_rumatan` varchar(100) DEFAULT NULL,
  `Induk_Laktasi_Tidak_Bunting_milik_sendiri` varchar(100) DEFAULT NULL,
  `Induk_Laktasi_Tidak_Bunting_rumatan` varchar(100) DEFAULT NULL,
  `Induk_Kering_Bunting_milik_sendiri` varchar(100) DEFAULT NULL,
  `Induk_Kering_Bunting_rumatan` varchar(100) DEFAULT NULL,
  `Induk_Kering_Tidak_Bunting_milik_sendiri` varchar(100) DEFAULT NULL,
  `Induk_Kering_Tidak_Bunting_rumatan` varchar(100) DEFAULT NULL,
  `Dara_Bunting_milik_sendiri` varchar(100) DEFAULT NULL,
  `Dara_Bunting_rumatan` varchar(100) DEFAULT NULL,
  `Dara_Tidak_Bunting_milik_sendiri` varchar(100) DEFAULT NULL,
  `Dara_Tidak_Bunting_rumatan` varchar(100) DEFAULT NULL,
  `Pedet_Jantan_milik_sendiri` varchar(100) DEFAULT NULL,
  `Pedet_Jantan_rumatan` varchar(100) DEFAULT NULL,
  `Pedet_Betina_milik_sendiri` varchar(100) DEFAULT NULL,
  `Pedet_Betina_rumatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_sapi_anggota
-- ----------------------------
INSERT INTO `opsi_sapi_anggota` VALUES ('1', 'TR_161203145711   ', '3', 'tidak_ada', '', '', '', '', '', '', '', '', '', '', '2', '', '1', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('2', 'TR_161203145844 ', '1', 'ada_sekat', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('3', 'TR_161205145828 ', '2', 'ada_sekat', '', '', '', '', '', '', '', '', '', '', '2', '', '', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('4', 'TR_161210105424 ', '6', 'ada_sekat', '3', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('5', 'TR_161210110507  ', '6', 'ada_sekat', '', '', '', '', '', '', '', '', '', '', '3', '', '2', '', '1', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('6', 'TR_161210112535    ', '3', 'tidak_ada', '1', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('7', 'TR_161210112612  ', '8', 'tidak_ada', '4', '', '2', '', '2', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('8', 'TR_161221152501', '3', 'ada_sekat', '1', '', '', '', '', '', '2', '', '', '', '', '', '', '', '', '');
INSERT INTO `opsi_sapi_anggota` VALUES ('9', 'TR_161222104122  ', '5', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('10', 'TR_161223105141', '2', 'ada_sekat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('11', 'TR_161223112209 ', '2', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('12', 'TR_161223142116 ', '2', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('13', 'TR_161223144313 ', '5', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('14', 'TR_161223145503', '2', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('15', 'TR_170111093426 ', '2', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('16', 'TR_170127085814', '1', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('17', 'TR_170127091842 ', '1', 'tidak_ada', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('18', 'TR_170127092805 ', '1', 'ada_sekat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('19', 'TR_170127101027', '0', 'ada_sekat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `opsi_sapi_anggota` VALUES ('20', 'TR_170127101123 ', '1', 'ada_sekat', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for opsi_transaksi_kasir_pusat
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_kasir_pusat`;
CREATE TABLE `opsi_transaksi_kasir_pusat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_potongan` varchar(255) DEFAULT NULL,
  `nama_potongan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nominal_hutang` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_kasir_pusat
-- ----------------------------
INSERT INTO `opsi_transaksi_kasir_pusat` VALUES ('1', 'KAS_2017_000001', '362', 'Simpanan Pokok', 'Potongan', '10000', '2017-01-31');
INSERT INTO `opsi_transaksi_kasir_pusat` VALUES ('2', 'KAS_2017_000001', '222', 'Simpanan Sukarela', 'Potongan', '5000', '2017-01-31');
INSERT INTO `opsi_transaksi_kasir_pusat` VALUES ('3', 'KAS_2017_000001', null, 'Hutang', 'Hutang Beli tali sapi', '4058', '2017-01-31');

-- ----------------------------
-- Table structure for opsi_transaksi_kasir_pusat_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_kasir_pusat_temp`;
CREATE TABLE `opsi_transaksi_kasir_pusat_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_potongan` varchar(255) DEFAULT NULL,
  `nama_potongan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nominal_hutang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_kasir_pusat_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_kasir_pusat_temp` VALUES ('4', 'KAS_2017_000001', '362', 'Simpanan Pokok', 'Potongan', '0');
INSERT INTO `opsi_transaksi_kasir_pusat_temp` VALUES ('5', 'KAS_2017_000001', '222', 'Simpanan Sukarela', 'Potongan', '0');

-- ----------------------------
-- Table structure for opsi_transaksi_mutasi
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_mutasi`;
CREATE TABLE `opsi_transaksi_mutasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_mutasi
-- ----------------------------
INSERT INTO `opsi_transaksi_mutasi` VALUES ('1', 'MUT_031216151529_1', 'O001', 'Obat A', null, '50', null, '2016-12-03 15:15:39', 'U002', 'Petugas');
INSERT INTO `opsi_transaksi_mutasi` VALUES ('2', 'MUT_031216151557_2', 'O001', 'Obat A', null, '10', null, '2016-12-03 15:16:14', 'U001', 'Gudang');

-- ----------------------------
-- Table structure for opsi_transaksi_mutasi_temp
-- ----------------------------
DROP TABLE IF EXISTS `opsi_transaksi_mutasi_temp`;
CREATE TABLE `opsi_transaksi_mutasi_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_bahan` varchar(255) DEFAULT NULL,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  `kode_bahan` varchar(255) DEFAULT NULL,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_mutasi_temp
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_opname
-- ----------------------------
INSERT INTO `opsi_transaksi_opname` VALUES ('1', 'OP_031216151518_1', 'O001', 'Obat A', null, 'U001', 'Gudang', null, null, '900', '950', '50', 'lebih', null, '2016-12-03 15:15:24');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_opname_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_opname_temp` VALUES ('1', null, 'O0021', 'Obat B', null, 'U001', 'Gudang', null, null, '10', null, null, null, null, '2016-12-15 16:33:31');
INSERT INTO `opsi_transaksi_opname_temp` VALUES ('2', null, 'O0013', 'Obat C', null, 'U001', 'Gudang', null, null, '5', null, null, null, null, '2016-12-15 16:33:31');

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
  `diskon_item` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_pembelian
-- ----------------------------
INSERT INTO `opsi_transaksi_pembelian` VALUES ('1', 'PEM_031216151419_1', 'PO_031216151413_U005_1', '', 'O001', 'Obat A', '1000', '', '', '5000', null, '', null, '5000000', 'gudang');
INSERT INTO `opsi_transaksi_pembelian` VALUES ('2', 'PEM_061216103128_1', 'PO_061216103055_U005_1', null, 'O0021', 'Obat B', '10', null, null, null, null, 'SP001', 'Supplier A', '0', 'gudang');
INSERT INTO `opsi_transaksi_pembelian` VALUES ('3', 'PEM_061216103128_1', 'PO_061216103055_U005_1', null, 'O0013', 'Obat C', '5', null, null, null, null, 'SP001', 'Supplier A', '0', 'gudang');

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
  `diskon_item` varchar(255) DEFAULT NULL,
  `kode_supplier` varchar(255) DEFAULT NULL,
  `nama_supplier` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_pembelian_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_pembelian_temp` VALUES ('1', 'PEM_061216102705_1', null, 'O001', 'Obat A', '1000', null, null, null, null, null, null, '0', null);
INSERT INTO `opsi_transaksi_pembelian_temp` VALUES ('2', 'PEM_061216103110_1', null, 'O001', 'Obat A', '1000', null, null, null, null, null, null, '0', null);
INSERT INTO `opsi_transaksi_pembelian_temp` VALUES ('12', 'PEM_061216114003_2', null, 'O0021', 'Obat B', '10', null, null, null, null, null, null, '0', null);
INSERT INTO `opsi_transaksi_pembelian_temp` VALUES ('13', 'PEM_061216114003_2', null, 'O0013', 'Obat C', '5', null, null, null, null, null, null, '0', null);
INSERT INTO `opsi_transaksi_pembelian_temp` VALUES ('15', 'PEM_061216114251_2', null, 'O0021', 'Obat B', '10', null, null, null, null, null, null, '0', null);
INSERT INTO `opsi_transaksi_pembelian_temp` VALUES ('16', 'PEM_061216114251_2', null, 'O0013', 'Obat C', '5', null, null, null, null, null, null, '0', null);

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
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_satuan` varchar(255) DEFAULT NULL,
  `nama_satuan` varchar(255) DEFAULT NULL,
  `harga_satuan` varchar(255) DEFAULT NULL,
  `diskon_item` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `waiter` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_menu` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` varchar(255) DEFAULT NULL,
  `status_penjualan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_penjualan
-- ----------------------------

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
  `diskon_item` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `hpp` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `status_menu` varchar(255) DEFAULT NULL,
  `status_penjualan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_penjualan_temp
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
  `jumlah` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nama_bahan` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_po
-- ----------------------------
INSERT INTO `opsi_transaksi_po` VALUES ('1', 'PO_031216151413_U005_1', null, 'O001', '1000', '', '2016-12-03 15:14:13', 'Obat A', 'U005');
INSERT INTO `opsi_transaksi_po` VALUES ('2', 'PO_061216103055_U005_1', null, 'O0021', '10', '', '2016-12-06 10:30:55', 'Obat B', 'U005');
INSERT INTO `opsi_transaksi_po` VALUES ('3', 'PO_061216103055_U005_1', null, 'O0013', '5', '', '2016-12-06 10:30:55', 'Obat C', 'U005');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_po_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_po_temp` VALUES ('1', 'PO_071216_U005_1', null, 'O001', '2', 's', '2016-12-07 11:07:02', 'Obat A', 'U005');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_spoil
-- ----------------------------
INSERT INTO `opsi_transaksi_spoil` VALUES ('1', 'SP_031216151500_1', 'O001', 'Obat A', 'obat', 'U001', 'Gudang', null, null, '100', null, '2016-12-03 15:15:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of opsi_transaksi_spoil_temp
-- ----------------------------
INSERT INTO `opsi_transaksi_spoil_temp` VALUES ('1', 'SP_151216163320_1', 'O0021', 'Obat B', 'obat', 'U001', 'Gudang', null, null, null, null, '2016-12-15 16:33:25');
INSERT INTO `opsi_transaksi_spoil_temp` VALUES ('2', 'SP_151216163320_1', 'O0013', 'Obat C', 'obat', 'U001', 'Gudang', null, null, null, null, '2016-12-15 16:33:25');

-- ----------------------------
-- Table structure for pelayanan_ib
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan_ib`;
CREATE TABLE `pelayanan_ib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_ib` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `n_birahi` varchar(255) DEFAULT NULL,
  `k_semen` varchar(255) DEFAULT NULL,
  `no_batch` varchar(255) DEFAULT NULL,
  `nama_pjt` varchar(255) DEFAULT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `ib_ke` varchar(255) DEFAULT NULL,
  `metoda` varchar(255) DEFAULT NULL,
  `status_reproduksi` varchar(255) DEFAULT NULL,
  `laktasi_ke` varchar(255) DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelayanan_ib
-- ----------------------------
INSERT INTO `pelayanan_ib` VALUES ('5', 'IB_30122016105335', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', '11:00 AM', '2016-03-30', '1200000', '1', '1001', null, 'Michel', '', '3', null, '1', null, '0.5', '2016-12-30 11:12:46', '', 'PE001', 'Ryan');
INSERT INTO `pelayanan_ib` VALUES ('6', 'IB_30122016105335', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', '11:00 AM', '2017-02-15', '1200000', '1', '1001', '', 'Michel', '', '3', '', '1', '', '0.5', '2016-12-30 11:20:29', '', 'PE001', 'Ryan');
INSERT INTO `pelayanan_ib` VALUES ('7', 'IB_05012017095006', 'E901', 'D', 'TR_161203145711   ', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '10:00 AM', '2017-01-05', '', '', '1002', null, 'Sapi Lanang', '1', '1', null, '1', null, '1.5', '2017-01-05 09:51:22', 'Gagal', 'Pilih Petugas', null);
INSERT INTO `pelayanan_ib` VALUES ('8', 'IB_05012017095122', 'E901', 'D', 'TR_161203145711   ', 'Asa', 'Malang kab', 'KL001', 'Kelompok 1', '10:00 AM', '2017-01-05', '12', '1', '1001', null, 'Michel', '1', '2', null, '1', null, '1', '2017-01-05 09:51:22', '', 'PE001', 'Ryan');

-- ----------------------------
-- Table structure for pelayanan_info_kelahiran
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan_info_kelahiran`;
CREATE TABLE `pelayanan_info_kelahiran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_kelahiran` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `tanggal_kelahiran` date DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `jumlah_pedet` varchar(255) DEFAULT NULL,
  `no_pedet` varchar(255) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `kode_strow` varchar(255) DEFAULT NULL,
  `nama_pejantan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelayanan_info_kelahiran
-- ----------------------------
INSERT INTO `pelayanan_info_kelahiran` VALUES ('27', 'PIK_161230105716', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', null, '2016-12-30', '3.5', '12', '2016-12-30', 'Betina', '1', 'E0099', '2016-12-30 10:58:16', null, 'PE001', 'Ryan', '1001', 'Michel');

-- ----------------------------
-- Table structure for pelayanan_keswan
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan_keswan`;
CREATE TABLE `pelayanan_keswan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_keswan` varchar(255) DEFAULT NULL,
  `nama_pelayanan` varchar(50) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelayanan_keswan
-- ----------------------------
INSERT INTO `pelayanan_keswan` VALUES ('28', 'PK_161230105840', 'Pelayanan Keswan', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', '00:12', '2016-12-30', '4.5', '12', '2016-12-30 10:59:14', 'sudah tertangani', 'PE001', 'Ryan');

-- ----------------------------
-- Table structure for pelayanan_keswan_temp
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan_keswan_temp`;
CREATE TABLE `pelayanan_keswan_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_keswan` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `nama_obat` varchar(255) DEFAULT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `metode_pemberian` varchar(255) DEFAULT NULL,
  `keterangan_abortus` varchar(50) DEFAULT NULL,
  `umur` varchar(50) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kode_kelompok` varchar(50) DEFAULT NULL,
  `nama_kelompok` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelayanan_keswan_temp
-- ----------------------------

-- ----------------------------
-- Table structure for pelayanan_pkb
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan_pkb`;
CREATE TABLE `pelayanan_pkb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_pkb` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `pelayanan_pkb` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `umur_bunting` varchar(255) DEFAULT NULL,
  `tanggal_ib` date DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelayanan_pkb
-- ----------------------------
INSERT INTO `pelayanan_pkb` VALUES ('5', 'PKB_161230105533', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', '00:12', '2016-12-30', 'Bunting', '-', '120', '2016-12-30', '1', '12', '2016-12-30 10:56:08', null, 'P002', 'Petugas B');

-- ----------------------------
-- Table structure for pelayanan_potong_kuku
-- ----------------------------
DROP TABLE IF EXISTS `pelayanan_potong_kuku`;
CREATE TABLE `pelayanan_potong_kuku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan_potong_kuku` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `tanggal_updatae` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelayanan_potong_kuku
-- ----------------------------
INSERT INTO `pelayanan_potong_kuku` VALUES ('4', 'PPK_161230105633', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', '00:12', '2016-12-30', '2', '12', '2016-12-30 10:56:48', null, 'PE001', 'Ryan');

-- ----------------------------
-- Table structure for pengajuan_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_transaksi`;
CREATE TABLE `pengajuan_transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pengajuan_transaksi` varchar(255) DEFAULT NULL,
  `nomor_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tps` varchar(255) DEFAULT NULL,
  `status_keanggotaan` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `tanggal_lahir_sapi` varchar(255) DEFAULT NULL,
  `id_pejantan` varchar(255) DEFAULT NULL,
  `umur_sapi` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_kepemilikan` varchar(255) DEFAULT NULL,
  `status_bunting` varchar(255) DEFAULT NULL,
  `umur_bunting` varchar(255) DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `kondisi_sapi` varchar(255) DEFAULT NULL,
  `lampiran` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pengajuan_transaksi
-- ----------------------------
INSERT INTO `pengajuan_transaksi` VALUES ('1', 'PJ_05122016023047', '-- Pilih --', 'Asa', 'Malang', '', 'calon_anggota', 'E900', '2016-12-03', '2321323', '360', 'diterima', 'Milik Sendiri', 'Tidak Bunting', '', null, 'sehat', null);
INSERT INTO `pengajuan_transaksi` VALUES ('2', 'PJ_15122016031837', 'TR_161205145828  ', 'Anggi', 'Malang', 'Kelompok 1', 'calon_anggota', 'E555', '2016-12-06', 'S12', '365', 'ditolak', 'Milik Sendiri', 'Tidak Bunting', '', null, 'tidak sehat', null);
INSERT INTO `pengajuan_transaksi` VALUES ('3', 'PJ_27012017085404', 'TR_161203145711 ', 'Asa', 'Malang kab', 'Kelompok 1', 'calon_anggota', 'E901', '2016-12-03', '226', '400', 'diterima', 'Milik Sendiri', 'Tidak Bunting', '', null, 'sehat', null);
INSERT INTO `pengajuan_transaksi` VALUES ('4', 'PJ_27012017091252', 'TR_161203145711 ', 'Asa', 'Malang kab', 'Kelompok 1', 'calon_anggota', 'E901', '2016-12-03', '54874', '356', 'diterima', 'Rumatan', 'Tidak Bunting', '', null, 'sehat', null);
INSERT INTO `pengajuan_transaksi` VALUES ('5', 'PJ_27012017111541', 'TR_161203145711 ', 'Asa', 'Malang kab', 'Kelompok 1', 'calon_anggota', 'E901', '2016-12-03', '', '400', 'diterima', 'Milik Sendiri', 'Tidak Bunting', '', null, 'sehat', '170127090819.zip');

-- ----------------------------
-- Table structure for program_bagi_hasil
-- ----------------------------
DROP TABLE IF EXISTS `program_bagi_hasil`;
CREATE TABLE `program_bagi_hasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_program_bagi_hasil` varchar(255) DEFAULT NULL,
  `tanggal_program` date DEFAULT NULL,
  `no_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tps` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `tanggal_lahir_sapi` varchar(255) DEFAULT NULL,
  `umur_sapi` varchar(255) DEFAULT NULL,
  `id_pejantan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of program_bagi_hasil
-- ----------------------------
INSERT INTO `program_bagi_hasil` VALUES ('1', 'PSB_161215033956', '2016-12-15', 'TR_161203145711   ', 'Asa', 'Malang kab', 'Kelompok 1', 'E555', '2016-12-06', '365', 'S12');

-- ----------------------------
-- Table structure for ptpp
-- ----------------------------
DROP TABLE IF EXISTS `ptpp`;
CREATE TABLE `ptpp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_audit` varchar(255) DEFAULT NULL,
  `tanggal_audit` varchar(255) DEFAULT NULL,
  `kode_bagian` varchar(255) DEFAULT NULL,
  `nama_bagian` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kode_lead_auditor` varchar(255) DEFAULT NULL,
  `nama_lead_auditor` varchar(255) DEFAULT NULL,
  `no_ptpp` varchar(255) DEFAULT NULL,
  `temuan` varchar(255) DEFAULT NULL,
  `rincian_temuan` varchar(255) DEFAULT NULL,
  `batas_penyelesaian` date DEFAULT NULL,
  `identifikasi_penyebab` text,
  `tindakan_perbaikan` text,
  `tindakan_pencegahan` text,
  `dokumen_terkait` text,
  `verifikasi_tindakan` text,
  `keputusan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_verifikasi` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ptpp
-- ----------------------------

-- ----------------------------
-- Table structure for record_data
-- ----------------------------
DROP TABLE IF EXISTS `record_data`;
CREATE TABLE `record_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pelayanan` varchar(255) DEFAULT NULL,
  `nama_pelayanan` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `bcs` varchar(255) DEFAULT NULL,
  `diagnosa` varchar(255) DEFAULT NULL,
  `nama_obat` varchar(255) DEFAULT NULL,
  `dosis` varchar(255) DEFAULT NULL,
  `metode_pemberian` varchar(255) DEFAULT NULL,
  `pelayanan_pkb` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `umur_bunting` varchar(255) DEFAULT NULL,
  `tanggal_ib` varchar(255) DEFAULT NULL,
  `n_birahi` varchar(255) DEFAULT NULL,
  `k_semen` varchar(255) DEFAULT NULL,
  `no_batch` varchar(255) DEFAULT NULL,
  `nama_pjt` varchar(255) DEFAULT NULL,
  `ib_ke` varchar(255) DEFAULT NULL,
  `metoda_pemberian` varchar(255) DEFAULT NULL,
  `status_reproduksi` varchar(255) DEFAULT NULL,
  `laktasi_ke` varchar(255) DEFAULT NULL,
  `tanggal_kelahiran` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `jumlah_pedet` varchar(255) DEFAULT NULL,
  `no_pedet` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_data
-- ----------------------------
INSERT INTO `record_data` VALUES ('1', 'IB_15122016041258', 'Pelayanan IB', 'E900', 'Jesika', 'TR_161203145711', 'Asa', '', '', 'Malang', '3:15 PM', '2016-12-03', '2', null, null, '2', null, null, null, null, null, '1', '2', '2', '2', '1', '2', '2', '', null, null, null, null);
INSERT INTO `record_data` VALUES ('2', 'PKB_161203031035', 'Pelayanan PKB', 'E900', 'Jesika', 'TR_161203145711', 'Asa', '', '', 'Malang', '13:00', '2016-12-03', '2', null, null, null, null, 'Bunting', 'w', '10', '2016-12-03', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('6', 'IB_05122016050815', 'Pelayanan IB', 'E21', 'Sea', 'TR_161205145828', 'Anggi', '', '', 'Malang', '5:15 PM', '2016-12-05', '2', null, null, '1', null, null, null, null, null, '543', 'STR002', 'TA001', 'Tara', '1', 'Metoda A', 'Status Repro', '0', null, null, null, null);
INSERT INTO `record_data` VALUES ('8', 'PK_161206102023', 'Pelayanan Keswan', 'E555', 'Dahlia', 'TR_161205145828 ', 'Anggi', 'KL001', 'Kelompok 1', 'Malang', '12:12', '2016-12-06', 'Pilih BCS', 'DP001', 'Obat A', '10', 'Minum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('9', 'PK_161206102124', 'Pelayanan Keswan', 'E231', 'Melati', 'TR_161203145844 ', 'Aca', 'KL002', 'Kelompok 2', 'Malang', '13:22', '2016-12-06', 'Pilih BCS', 'DP002', 'Obat A', '100', 'Minum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('10', 'PK_161206102213', 'Pelayanan Keswan', 'E231', 'Melati', 'TR_161203145844 ', 'Aca', 'KL002', 'Kelompok 2', 'Malang', '15:33', '2016-12-06', 'Pilih BCS', 'DP001', 'Obat A', '5', 'Minum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('11', 'PK_161206102336', 'Pelayanan Keswan', 'E231', 'Melati', 'TR_161203145844 ', 'Aca', 'KL002', 'Kelompok 2', 'Malang', '14:32', '2016-12-05', 'Pilih BCS', 'DP001', 'Obat A', '5', 'Minum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('12', 'PK_161206102451', 'Pelayanan Keswan', 'E555', 'Dahlia', 'TR_161205145828 ', 'Anggi', 'KL001', 'Kelompok 1', 'Malang', '09:34', '2016-12-07', '2', 'DP001', 'Obat A', '10', 'Minum', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('13', 'PKB_161216093750', 'Pelayanan PKB', 'E912', 'S', 'TR_161205145828', 'Anggi', '', '', 'Malang', '00:12', '0121-12-12', '3.5', null, null, null, null, 'Bunting', '1', '12', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('14', 'PKB_161221032909', 'Pelayanan PKB', 'E900', 'Jesika', 'TR_161205145828', 'Dion', 'KL001', 'Kelompok 1', 'Malang', '00:12', '1212-12-12', 'Pilih BCS', null, null, null, null, 'Bunting', '1', '10', '2016-12-21', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('15', 'PKB_161228033947', 'Pelayanan PKB', 'E21', 'Sea', 'TR_161223142116', 'rahmat', '', '', 'jalan mawar', '14:01', '2016-12-28', '1', null, null, null, null, 'Ragu', 'raguan', '1', '', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('16', 'PKB_161229014629', 'Pelayanan PKB', 'E124', 'Esa', 'TR_161223112209', 'Kris', '', '', 'jl. Dan', '15:02', '2016-12-01', '1', null, null, null, null, 'Bunting', 'Keluhan A', '2', '2016-12-29', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `record_data` VALUES ('17', 'PKB_161230105533', 'Pelayanan PKB', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'KL001', 'Kelompok 1', 'jl. Dan', '00:12', '2016-12-12', '1', null, null, null, null, 'Bunting', '-', '120', '2016-12-30', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for record_kepemilikan
-- ----------------------------
DROP TABLE IF EXISTS `record_kepemilikan`;
CREATE TABLE `record_kepemilikan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `nomor_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tanggal_mutasi` varchar(255) DEFAULT NULL,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_kepemilikan
-- ----------------------------
INSERT INTO `record_kepemilikan` VALUES ('1', 'E901', 'D', '', 'Asa', 'Malang', '2016-12-03', 'MUT_03122016030003');
INSERT INTO `record_kepemilikan` VALUES ('2', 'E912', 'S', 'TR_161205145828', 'Anggi', 'Malang', '2016-12-05', 'MUT_05122016043812');
INSERT INTO `record_kepemilikan` VALUES ('5', 'E919', 'Angel', 'TR_161205145828', 'Anggi', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('6', 'E657', 'Andi a', 'TR_161203145844', 'Aca', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('7', 'E555', 'Dahlia', 'TR_161205145828 ', 'Anggi', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('8', 'E231', 'Melati', 'TR_161203145844 ', 'Aca', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('9', 'E900', 'Jesika', '', '', '', '2016-12-06', 'MUT_06122016111535');
INSERT INTO `record_kepemilikan` VALUES ('10', 'E900', 'Jesika', '', '', '', '2016-12-06', 'MUT_06122016112020');
INSERT INTO `record_kepemilikan` VALUES ('11', 'E900', 'Jesika', '', '', '', '2016-12-06', 'MUT_06122016112245');
INSERT INTO `record_kepemilikan` VALUES ('12', 'E901', 'D', 'TR_161203145711', 'Asa', 'Malang', '2016-12-06', 'MUT_06122016112629');
INSERT INTO `record_kepemilikan` VALUES ('13', 'E901', 'D', 'TR_161203145711', 'Asa', 'Malang', '2016-12-06', 'MUT_06122016113008');
INSERT INTO `record_kepemilikan` VALUES ('14', 'E901', 'D', 'TR_161203145711', 'Asa', 'Malang', '2016-12-06', 'MUT_06122016113239');
INSERT INTO `record_kepemilikan` VALUES ('15', 'E22', 'Sinyo', 'TR_161203145844 ', 'Aca', 'Malang', '2016-12-06', 'MUT_06122016113909');
INSERT INTO `record_kepemilikan` VALUES ('16', 'E22', 'Sinyo', '', '', '', '2016-12-06', 'MUT_06122016113933');
INSERT INTO `record_kepemilikan` VALUES ('17', 'E231', 'Melati', null, 'Kan Jabung', null, null, null);
INSERT INTO `record_kepemilikan` VALUES ('18', 'E5321', 'Kikin', 'TR_161210112535 ', 'khoirudin', 'Malang kab', null, null);
INSERT INTO `record_kepemilikan` VALUES ('19', '1111', 'Dion', 'TR_161203145711  ', 'asas', 'as', null, null);
INSERT INTO `record_kepemilikan` VALUES ('20', '0000', 'Dion', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-20', 'MUT_20122016120430');
INSERT INTO `record_kepemilikan` VALUES ('21', '1111', 'Dion', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-20', 'MUT_20122016020751');
INSERT INTO `record_kepemilikan` VALUES ('22', 'Ear Tag Sapi', 'Dion', 'TR_161205145828 ', 'Anggi', 'Malang', '2016-12-22', 'MUT_22122016091339');
INSERT INTO `record_kepemilikan` VALUES ('23', '1', '1', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016094810');
INSERT INTO `record_kepemilikan` VALUES ('24', 'E9005', 'Dion BAru', 'TR_161205145828 ', 'Anggi', 'Malang', '2016-12-22', 'MUT_22122016025105');
INSERT INTO `record_kepemilikan` VALUES ('25', 'E9004', 'Dion', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016034154');
INSERT INTO `record_kepemilikan` VALUES ('26', 'E9004', 'Dion', 'TR_161203145844 ', 'Aca', 'Malang', '2016-12-22', 'MUT_22122016034248');
INSERT INTO `record_kepemilikan` VALUES ('27', '1001', '1', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016035320');
INSERT INTO `record_kepemilikan` VALUES ('28', 'Ear Tag Sapi', 'Dion Coy', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016035729');
INSERT INTO `record_kepemilikan` VALUES ('29', 'E9003', 'Bayu', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016040015');
INSERT INTO `record_kepemilikan` VALUES ('30', 'E9003', 'Bayu', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016040034');
INSERT INTO `record_kepemilikan` VALUES ('31', 'DION  EAr', 'Dion Sapi', 'TR_161203145844 ', 'Aca', 'Malang', '2016-12-22', 'MUT_22122016040140');
INSERT INTO `record_kepemilikan` VALUES ('32', '', '', '', '', '', '2016-12-22', 'MUT_22122016040627');
INSERT INTO `record_kepemilikan` VALUES ('33', '', '', '', '', '', '2016-12-22', 'MUT_22122016040727');
INSERT INTO `record_kepemilikan` VALUES ('34', 'E9002', 'Alun', 'TR_161203145711  ', 'Asa', 'Malang kab', '2016-12-22', 'MUT_22122016041022');
INSERT INTO `record_kepemilikan` VALUES ('35', '', '', '', '', '', '2016-12-22', 'MUT_22122016041316');
INSERT INTO `record_kepemilikan` VALUES ('36', '', '', '', '', '', '2016-12-22', 'MUT_22122016041347');
INSERT INTO `record_kepemilikan` VALUES ('37', '', '', '', '', '', '2016-12-22', 'MUT_22122016041402');
INSERT INTO `record_kepemilikan` VALUES ('52', 'E123', 'Shinta', 'TR_161223112209', 'Kris', 'jl. Dan', null, null);
INSERT INTO `record_kepemilikan` VALUES ('53', 'E124', 'Esa', 'TR_161223112209', 'Kris', 'jl. Dan', null, null);
INSERT INTO `record_kepemilikan` VALUES ('54', 'E123', 'Shinta', 'TR_161223112209', 'Kris', 'jl. Dan', null, null);
INSERT INTO `record_kepemilikan` VALUES ('55', 'E124', 'Esa', 'TR_161223112209', 'Kris', 'jl. Dan', null, null);
INSERT INTO `record_kepemilikan` VALUES ('56', 'E123', 'Shinta', 'TR_161223112209', 'Kris', 'jl. Dan', null, null);
INSERT INTO `record_kepemilikan` VALUES ('57', 'E124', 'Esa', 'TR_161223112209', 'Kris', 'jl. Dan', null, null);
INSERT INTO `record_kepemilikan` VALUES ('58', 'E21', 'Sea', 'TR_161223142116', 'rahmat', 'jalan mawar', null, null);
INSERT INTO `record_kepemilikan` VALUES ('59', 'E111', 'Desi', 'TR_161223142116', 'rahmat', 'jalan mawar', null, null);
INSERT INTO `record_kepemilikan` VALUES ('60', 'E555', 'Dahlia', 'TR_161223144313', 'milika', 'jl kemarin', null, null);
INSERT INTO `record_kepemilikan` VALUES ('61', 'E22', 'Sinyo', 'TR_161223144313', 'milika', 'jl kemarin', null, null);
INSERT INTO `record_kepemilikan` VALUES ('62', 'E919', 'Angel', 'TR_161223144313', 'milika', 'jl kemarin', null, null);
INSERT INTO `record_kepemilikan` VALUES ('63', 'E1235', 'Sia', 'TR_161223144313', 'milika', 'jl kemarin', null, null);
INSERT INTO `record_kepemilikan` VALUES ('64', 'E231', 'Melati', 'TR_161223144313', 'milika', 'jl kemarin', null, null);
INSERT INTO `record_kepemilikan` VALUES ('65', 'E901', 'D', 'TR_161203145711   ', 'Asa', 'Malang kab', '2017-01-05', 'MUT_05012017091128');
INSERT INTO `record_kepemilikan` VALUES ('66', 'E124', 'Esa', 'TR_161222104122  ', 'Wahyu Kristin', 'Jl. Danau', '2017-01-05', 'MUT_05012017091340');
INSERT INTO `record_kepemilikan` VALUES ('67', 'E0001', 'Dion', 'TR_161205145828 ', 'Anggi', 'Malang', '2017-01-05', 'MUT_05012017091811');
INSERT INTO `record_kepemilikan` VALUES ('68', 'E0001', 'Dion', 'TR_161223112209 ', 'Kristina', 'jl. Danau', '2017-01-05', 'MUT_05012017091958');
INSERT INTO `record_kepemilikan` VALUES ('69', '100000001', 'Dion New', 'TR_170127085814', 'Anggota Baru', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('70', '1001', '1', 'TR_170127091842', 'Anggota Dion', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('71', '200000', 'Sapi 20000', 'TR_170127092805', '2000000', 'Malang', null, null);
INSERT INTO `record_kepemilikan` VALUES ('72', '100001', 'Sapi 100001', 'TR_170127101123', 'News Anggota', 'Malang', null, null);

-- ----------------------------
-- Table structure for record_komposit
-- ----------------------------
DROP TABLE IF EXISTS `record_komposit`;
CREATE TABLE `record_komposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_komposit` varchar(255) DEFAULT NULL,
  `kode_referensi` varchar(255) DEFAULT NULL,
  `tanggal_pengambilan` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `hari` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `waktu_pengambilan` varchar(255) DEFAULT NULL,
  `nama_pengambil` varchar(255) DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL,
  `sample_selesai` varchar(255) DEFAULT NULL,
  `hasil_uji` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_uji` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_komposit
-- ----------------------------
INSERT INTO `record_komposit` VALUES ('1', 'KM_300117_1', null, '2017-01-30', '2017-01-30', 'Senin', '09.51', 'Pagi', 'astro', 'Sinta', '1001|1', '1001|1', 'Positif AB', '1', 'selesai', '-', '1');
INSERT INTO `record_komposit` VALUES ('2', 'KM_300117_1_1', 'KM_300117_1', '2017-01-30', '2017-01-30', 'Senin', '09.51', 'Pagi', 'astro', 'Sinta', '1001', null, 'Negatif AB', '1', 'selesai', '-', '1');
INSERT INTO `record_komposit` VALUES ('3', 'KM_300117_1_2', 'KM_300117_1', '2017-01-30', '2017-01-30', 'Senin', '09.51', 'Pagi', 'astro', 'Sinta', '1', null, 'Positif AB', '1', 'selesai', '-', '1');

-- ----------------------------
-- Table structure for record_komposit_anggota
-- ----------------------------
DROP TABLE IF EXISTS `record_komposit_anggota`;
CREATE TABLE `record_komposit_anggota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_komposit` varchar(255) DEFAULT NULL,
  `kode_referensi` varchar(255) DEFAULT NULL,
  `tanggal_pengambilan` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `hari` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `waktu_pengambilan` varchar(255) DEFAULT NULL,
  `nama_pengambil` varchar(255) DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `kode_pps` varchar(255) DEFAULT NULL,
  `nama_pps` varchar(255) DEFAULT NULL,
  `sample` varchar(255) DEFAULT NULL,
  `sample_selesai` varchar(255) DEFAULT NULL,
  `hasil_uji` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_uji` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_komposit_anggota
-- ----------------------------

-- ----------------------------
-- Table structure for record_mitra_bagi_hasil
-- ----------------------------
DROP TABLE IF EXISTS `record_mitra_bagi_hasil`;
CREATE TABLE `record_mitra_bagi_hasil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mitra_bagi_hasil` varchar(255) DEFAULT NULL,
  `no_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `status_keanggotaan` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tps` varchar(255) DEFAULT NULL,
  `jumlah_sapi_sendiri` varchar(255) DEFAULT NULL,
  `jumlah_sapi_rumatan` int(11) DEFAULT NULL,
  `kondisi_kandang` varchar(255) DEFAULT NULL,
  `kondisi_palungan` varchar(255) DEFAULT NULL,
  `lahan_rumput` varchar(255) DEFAULT NULL,
  `luas_lahan_rumput` varchar(255) DEFAULT NULL,
  `kapasitas_kandang` varchar(255) DEFAULT NULL,
  `pemberian_pakan` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_mitra_bagi_hasil
-- ----------------------------
INSERT INTO `record_mitra_bagi_hasil` VALUES ('1', 'MBH_15122016030655', 'TR_161203145711  ', 'Asa', 'calon_anggota', 'Malang kab', 'Kelompok 1', '3', '1', 'Bersih', 'Ada', 'Milik sendiri', '100', 'Cukup', 'Cukup', 'diterima');
INSERT INTO `record_mitra_bagi_hasil` VALUES ('3', 'MBH_15122016031238', 'TR_161205145828 ', 'Anggi', 'calon_anggota', 'Malang', 'Kelompok 1', '2', null, 'Bersih', 'Ada', 'Tidak Punya', '', 'Cukup', 'Kurang', 'ditolak');
INSERT INTO `record_mitra_bagi_hasil` VALUES ('4', 'MBH_27012017084942', 'TR_161203145711', 'Asa', 'calon_anggota', 'Malang kab', 'Kelompok 1', '3', null, 'Bersih', 'Ada', 'Sewa', '10', 'Cukup', 'Cukup', 'menunggu');
INSERT INTO `record_mitra_bagi_hasil` VALUES ('5', 'MBH_27012017034105', 'TR_161210112612', 'Intan', 'calon_anggota', 'Malang', '', '8', null, null, 'Ada', 'Milik sendiri', '10', null, null, 'daftar');

-- ----------------------------
-- Table structure for record_overdue
-- ----------------------------
DROP TABLE IF EXISTS `record_overdue`;
CREATE TABLE `record_overdue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_keluhan` varchar(255) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_overdue
-- ----------------------------
INSERT INTO `record_overdue` VALUES ('14', 'KNT_23012017092319_1', 'Manajer Umum', 'Overdue Ini', '2017-01-23 10:01');

-- ----------------------------
-- Table structure for record_sample_lab
-- ----------------------------
DROP TABLE IF EXISTS `record_sample_lab`;
CREATE TABLE `record_sample_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_pengambilan` varchar(255) DEFAULT NULL,
  `tanggal_selesai` varchar(255) DEFAULT NULL,
  `hari` varchar(255) DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `waktu_pengambilan_sample` varchar(255) DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `nama_pengambil_sample` varchar(255) DEFAULT NULL,
  `nama_penerima_sample` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `kode_botol` varchar(255) DEFAULT NULL,
  `jenis_sample` varchar(255) DEFAULT NULL,
  `no_transaksi` varchar(255) DEFAULT NULL,
  `nama_peternak` varchar(255) DEFAULT NULL,
  `kode_pps` varchar(255) DEFAULT NULL,
  `kode_cooling_unit` varchar(255) DEFAULT NULL,
  `kode_do` varchar(255) DEFAULT NULL,
  `nama_sopir` varchar(255) DEFAULT NULL,
  `nomor_polisi` varchar(255) DEFAULT NULL,
  `uji` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_sample_lab
-- ----------------------------
INSERT INTO `record_sample_lab` VALUES ('1', '2017-02-03', '2017-02-03', 'Kamis', '11.06', 'Pagi', 'I', 'Astroboy', 'andi', '2', 'KB_030217_1', 'Peternak', 'TR_161203145711', 'Asa', '', '', '', '0', '', '|Fat|Reduktase|||||||||||||||||', '-\r\n', '1');
INSERT INTO `record_sample_lab` VALUES ('2', '2017-01-26', '2017-01-26', 'Kamis', '14.19', 'Sore', 'III', 'Astroboy', 'nisa', '1', 'KB_260117_2', 'Peternak', 'TR_161203145711', 'Asa', '', '', '', '0', '', '|Fat||||||||||||||||||', '-', '1');
INSERT INTO `record_sample_lab` VALUES ('3', '2017-01-26', '2017-01-26', 'Kamis', '14.19', 'Sore', 'III', 'Astroboy', 'ANITA', '1', 'KB_260117_3', 'Peternak', 'TR_161203145711', 'Asa', '', '', '', '0', '', '||Reduktase|||||||||||||||||', '', '1');
INSERT INTO `record_sample_lab` VALUES ('4', '2017-01-27', '2017-01-27', 'Jum\'at', '15.18', 'Sore', 'III', 'Astroboy', 'tesa', '1', 'KB_270117_4', 'Peternak', 'TR_161203145844', 'Aca', '', '', '', '0', '', '|Fat|Reduktase|||||||||||||||||', '-', '1');

-- ----------------------------
-- Table structure for record_sapi_kasus
-- ----------------------------
DROP TABLE IF EXISTS `record_sapi_kasus`;
CREATE TABLE `record_sapi_kasus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kode_kelompok` varchar(255) DEFAULT NULL,
  `nama_kelompok` varchar(255) DEFAULT NULL,
  `ib_berulang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of record_sapi_kasus
-- ----------------------------
INSERT INTO `record_sapi_kasus` VALUES ('1', 'E9003', 'Bayu', 'TR_161205145828', 'Dion', 'Malang', 'KL001', 'Kelompok 1', '4');
INSERT INTO `record_sapi_kasus` VALUES ('2', 'E9004', 'Dion', 'TR_161223112209', 'Kris', 'jl. Dan', 'KL001', 'Kelompok 1', '4');

-- ----------------------------
-- Table structure for rencana_hapus
-- ----------------------------
DROP TABLE IF EXISTS `rencana_hapus`;
CREATE TABLE `rencana_hapus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_audit` varchar(255) DEFAULT NULL,
  `tanggal_audit` date DEFAULT NULL,
  `jam_mulai` varchar(255) DEFAULT NULL,
  `jam_selesai` varchar(255) DEFAULT NULL,
  `kode_bagian` varchar(255) DEFAULT NULL,
  `nama_bagian` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `kode_lead_auditor` varchar(255) DEFAULT NULL,
  `nama_lead_auditor` varchar(255) DEFAULT NULL,
  `kode_auditor` varchar(255) DEFAULT NULL,
  `nama_auditor` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rencana_hapus
-- ----------------------------
INSERT INTO `rencana_hapus` VALUES ('1', 'KA_161207103708', '2016-12-07', '10:12', '10:12', '002', 'Ketua II', 'Wardoyo Suseno', '1', 'Astroboy', '11', 'Joko Swasembada', 'verified');

-- ----------------------------
-- Table structure for setting_admin
-- ----------------------------
DROP TABLE IF EXISTS `setting_admin`;
CREATE TABLE `setting_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_unit` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `printer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of setting_admin
-- ----------------------------
INSERT INTO `setting_admin` VALUES ('1', 'U005', '192.168.100.42', 'asjanj');

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
-- Table structure for transaksi_audit_internal
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_audit_internal`;
CREATE TABLE `transaksi_audit_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_audit` varchar(255) DEFAULT NULL,
  `tanggal_audit` date DEFAULT NULL,
  `urutan_audit` varchar(255) DEFAULT NULL,
  `tahun_audit` varchar(255) DEFAULT NULL,
  `kode_bagian` varchar(255) DEFAULT NULL,
  `nama_bagian` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jam_mulai` varchar(255) DEFAULT NULL,
  `jam_selesai` varchar(255) DEFAULT NULL,
  `proses` varchar(255) DEFAULT NULL,
  `kode_lead_auditor` varchar(255) DEFAULT NULL,
  `nama_lead_auditor` varchar(255) DEFAULT NULL,
  `kode_auditor1` varchar(255) DEFAULT NULL,
  `nama_auditor1` varchar(255) DEFAULT NULL,
  `kode_auditor2` varchar(255) DEFAULT NULL,
  `nama_auditor2` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `kode_mr` varchar(255) DEFAULT NULL,
  `nama_mr` varchar(255) DEFAULT NULL,
  `status_checklist` varchar(255) DEFAULT '',
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  `status_jadwal_audit` varchar(255) DEFAULT '',
  `rekomendasi` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_audit_internal
-- ----------------------------
INSERT INTO `transaksi_audit_internal` VALUES ('1', 'KA_170113103836_1', '2017-01-13', '1', '2017', '004', 'Bendahara', 'Waluyo', '10:40', '11:40', 'Keamanan', '40', 'Laluna', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', 'verified', '22', 'Wahyu Kris', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('2', 'KA_170120094139_1', '2017-01-06', '1', '2017', '008', 'Pengadaan', 'Mawar Citra', '9:40', '10:40', 'Prosedur Pengadaan', '41', 'Mayangsari', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', 'verified', '22', 'Wahyu Kris', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('3', 'KA_170116082853_1', '2017-01-16', '1', '2017', '002', 'Ketua II', 'Wardoyo Suseno', '9:00', '9:00', 'a', '40', 'Laluna', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '1', 'Astroboy', 'verified', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('4', 'KA_170116100930_1', '2017-01-16', '1', '2017', '001', 'Ketua I & MU', 'Wardoyo Suseno', '10:30', '11:30', 'Jadwal KErja', '', 'asas', '22', 'Wahyu Kris', '14', 'Rani Dyah', '', '15', 'Sammy Simorangking satu', '', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('5', 'KA_170116105748_1', '2017-01-16', '1', '2017', '001', 'Ketua I & MU', 'Waluyo', '10:50', '10:50', 'Baru', '36', 'non', '42', 'auditor', '10', 'Joko Swasembada', '', '15', 'Sammy Simorangking satu', '', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('6', 'KA_170116101449_2', '2017-01-16', '1', '2017', '003', 'Ketua III', 'Waluyo', '10:50', '10:50', '1', '40', 'Laluna', '42', 'auditor', '47', 'Budi', '', null, null, '', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('7', 'KA_170116112147_1', '2017-01-16', '2', '2017', '001', 'Ketua I & MU', 'Waluyo', '11:50', '11:50', 'Seru', '36', 'non', '14', 'Rani Dyah', '22', 'Wahyu Kris', 'terima', '15', 'Sammy Simorangking satu', '', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('8', 'KA_170116010216_1', '2017-01-16', '1', '2017', '001', 'Ketua I & MU', 'Waluyo', '13:10', '15:10', 'Kinerja', '36', 'non', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', 'verified', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('9', 'KA_170116010035_1', '2017-01-16', '1', '2017', '012', 'Keswan', 'Wardoyo Suseno|Waluyo', '13:40', '14:40', 'Kesehatan Sapi', '41', 'Mayangsari', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', 'verified', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('10', 'KA_170116015144_1', '2017-01-16', '1', '2017', '005', 'Pengawas', 'Waluyo', '13:50', '13:50', 'Kerjaan', '40', 'Laluna', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', '', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('11', 'KA_170116011050_1', '2017-01-16', '1', '2017', '001', 'Ketua I & MU', 'Waluyo', '13:50', '16:50', 'Proses Audit', '36', 'non', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', 'verified', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('12', 'KA_170116024751_1', '2017-01-16', '', '2017', '004', 'Bendahara', 'Rani|Mawar Citra', '14:50', '14:50', 'Proses', '40', 'Laluna', '10', 'Joko Swasembada', '14', 'Rani Dyah', '', null, null, '', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('13', 'KA_170116031658_1', '2017-01-16', '1', '2017', '004', 'Bendahara', 'Rani', '16:00', '16:00', 'Proses Kerjanya ', '40', 'Laluna', '14', 'Rani Dyah', '22', 'Wahyu Kris', 'terima', '15', 'Sammy Simorangking satu', 'verified', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('14', 'KA_170119095637_1', '2017-01-19', '1', '2017', '013', 'Susu Olahan', 'Wardoyo Suseno', '9:40', '9:40', 'Manajemen mutu susu', '41', 'Mayangsari', '10', 'Joko Swasembada', '14', 'Rani Dyah', 'terima', '15', 'Sammy Simorangking satu', 'verified', '1', 'Astroboy', 'close', null);
INSERT INTO `transaksi_audit_internal` VALUES ('15', 'KA_170120085953_1', '2017-01-20', '1', '2017', '013', 'Susu Olahan', 'Wardoyo Suseno', '9:00', '10:00', 'Kebenaran Susu', '41', 'Mayangsari', '14', 'Rani Dyah', '10', 'Joko Swasembada', 'terima', '15', 'Sammy Simorangking satu', 'verified', '1', 'Astroboy', '', null);

-- ----------------------------
-- Table structure for transaksi_audit_internal_temp
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_audit_internal_temp`;
CREATE TABLE `transaksi_audit_internal_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_audit` varchar(255) DEFAULT NULL,
  `tanggal_audit` date DEFAULT NULL,
  `urutan_audit` varchar(255) DEFAULT NULL,
  `tahun_audit` varchar(255) DEFAULT NULL,
  `kode_bagian` varchar(255) DEFAULT NULL,
  `nama_bagian` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jam_mulai` varchar(255) DEFAULT NULL,
  `jam_selesai` varchar(255) DEFAULT NULL,
  `proses` varchar(255) DEFAULT NULL,
  `kode_lead_auditor` varchar(255) DEFAULT NULL,
  `nama_lead_auditor` varchar(255) DEFAULT NULL,
  `kode_auditor1` varchar(255) DEFAULT NULL,
  `nama_auditor1` varchar(255) DEFAULT NULL,
  `kode_auditor2` varchar(255) DEFAULT NULL,
  `nama_auditor2` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `kode_mr` varchar(255) DEFAULT NULL,
  `nama_mr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_audit_internal_temp
-- ----------------------------

-- ----------------------------
-- Table structure for transaksi_bayaran_susu
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_bayaran_susu`;
CREATE TABLE `transaksi_bayaran_susu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `pps` varchar(255) DEFAULT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `bulan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `jumlah_setoran` varchar(255) DEFAULT NULL,
  `rata_volume` varchar(255) DEFAULT NULL,
  `rata_harian` varchar(255) DEFAULT NULL,
  `lemak` varchar(255) DEFAULT NULL,
  `reduktase` varchar(255) DEFAULT NULL,
  `rata_bj` varchar(255) DEFAULT NULL,
  `snf` varchar(255) DEFAULT NULL,
  `ts` varchar(255) DEFAULT NULL,
  `harga_susu` varchar(255) DEFAULT NULL,
  `premi_produksi` varchar(255) DEFAULT NULL,
  `insentif_operasional` varchar(255) DEFAULT NULL,
  `insentif_ramadan` varchar(255) DEFAULT NULL,
  `harga_dasar_susu` varchar(255) DEFAULT NULL,
  `harga_sub_standart` varchar(255) DEFAULT NULL,
  `harga_ab` varchar(255) DEFAULT NULL,
  `total_bayaran` varchar(255) DEFAULT NULL,
  `tanggal_sinkron` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_bayaran_susu
-- ----------------------------
INSERT INTO `transaksi_bayaran_susu` VALUES ('1', 'TR_161203145711', 'Asa', null, 'III', '01', '2017', '253', '11.5', '23', '4.5', 'Grade 2', '1.0234', '7.705', '12.2', null, '159390', '50600', '0', '849068', '0', '20000', '1079058', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('2', 'TR_161203145844', 'Aca', null, 'III', '01', '2017', '140', '6.3636', '12.7273', '4.5', 'Grade 1', '1.0245', '7.98', '12.5', null, '82600', '28000', '0', '509600', '0', '40000', '660200', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('3', 'TR_161210112535', 'Khoirudin', null, 'III', '01', '2017', '10', '0.4545', '0.9091', null, null, '1.0233', '6.78', '6.8', null, '5500', '2000', '0', '0', '0', '0', '7500', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('4', 'TR_161223112209', 'Kristina', null, 'III', '01', '2017', '15', '0.6818', '1.3636', null, null, '1.0237', '6.88', '6.9', null, '8250', '3000', '0', '0', '0', '0', '11250', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('5', 'TR_161223142116 ', 'rahmat', null, 'III', '01', '2017', '30', '1.3636', '2.7273', null, null, '1.0236', '6.855', '6.9', null, '16500', '6000', null, '0', '0', '0', '22500', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('6', 'TR_161223144313', 'milika', null, 'III', '01', '2017', '0', '0', '0', null, null, '0', '-249.045', '-249', null, '0', '0', '0', '0', '0', '0', '0', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('7', 'TR_170127091842 ', 'Anggota Dion', null, 'III', '01', '2017', '0', '0', '0', null, null, '0', '-249.045', '-249', null, '0', '0', null, '0', '0', '0', '0', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('8', 'TR_170127092805 ', '2000000', null, 'III', '01', '2017', '0', '0', '0', null, null, '0', '-249.045', '-249', null, '0', '0', null, '0', '0', '0', '0', '2017-01-31');
INSERT INTO `transaksi_bayaran_susu` VALUES ('9', 'TR_170127101123 ', 'News Anggota', null, 'III', '01', '2017', '0', '0', '0', null, null, '0', '-249.045', '-249', null, '0', '0', null, '0', '0', '0', '0', '2017-01-31');

-- ----------------------------
-- Table structure for transaksi_kasir_pusat
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_kasir_pusat`;
CREATE TABLE `transaksi_kasir_pusat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kode_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `nominal_potongan` varchar(255) DEFAULT NULL,
  `total_bayaran` varchar(255) DEFAULT NULL,
  `grand_total_bayaran` varchar(255) DEFAULT NULL,
  `kode_petugas` varchar(255) DEFAULT NULL,
  `nama_petugas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_kasir_pusat
-- ----------------------------
INSERT INTO `transaksi_kasir_pusat` VALUES ('1', 'KAS_2017_000001', '2017-01-31', 'TR_161203145711', 'Asa', '19058', '1079058', '1060000', '1', 'Astroboy');

-- ----------------------------
-- Table structure for transaksi_mutasi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_mutasi`;
CREATE TABLE `transaksi_mutasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_transaksi` date DEFAULT NULL,
  `kode_mutasi` varchar(255) DEFAULT NULL,
  `kode_unit_asal` varchar(255) DEFAULT NULL,
  `nama_unit_asal` varchar(255) DEFAULT NULL,
  `kode_unit_tujuan` varchar(255) DEFAULT NULL,
  `nama_unit_tujuan` varchar(255) DEFAULT NULL,
  `kode_rak_asal` varchar(255) DEFAULT NULL,
  `nama_rak_asal` varchar(255) DEFAULT NULL,
  `kode_rak_tujuan` varchar(255) DEFAULT NULL,
  `nama_rak_tujuan` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_mutasi
-- ----------------------------
INSERT INTO `transaksi_mutasi` VALUES ('1', '2016-12-03', 'MUT_031216151529_1', 'U001', 'Gudang', 'U002', 'Petugas', '', '', '', '', null, 'mutasi', 'astro', '2016-12-03 00:00:00');
INSERT INTO `transaksi_mutasi` VALUES ('2', '2016-12-03', 'MUT_031216151557_2', 'U002', 'Petugas', 'U001', 'Gudang', '', '', '', '', null, 'mutasi', 'astro', '2016-12-03 00:00:00');

-- ----------------------------
-- Table structure for transaksi_opname
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_opname`;
CREATE TABLE `transaksi_opname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_opname` varchar(255) DEFAULT NULL,
  `tanggal_opname` date DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `validasi` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_opname
-- ----------------------------
INSERT INTO `transaksi_opname` VALUES ('1', 'OP_0001', 'OP_031216151518_1', '2016-12-03', '1', 'astro', null, 'U001', 'Gudang', 'confirmed', '2016-12-03 15:15:24', '0001');

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
  `urut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_pembelian
-- ----------------------------
INSERT INTO `transaksi_pembelian` VALUES ('1', 'PEM_031216151419_1', 'PO_031216151413_U005_1', 'PEM_03122016031439_0001', '2016-12-03', '', '', null, '5000000', '', '', '5000000', '1', 'astro', '', 'cash', '5000000', 'gudang', '0001');
INSERT INTO `transaksi_pembelian` VALUES ('2', 'PEM_061216103128_1', 'PO_061216103055_U005_1', 'PEM_06122016103316_0002', '2016-12-06', '3543', 'SP001', 'Supplier A', '0', '', '', '0', '1', 'astro', '', 'cash', '0', 'gudang', '0002');

-- ----------------------------
-- Table structure for transaksi_pengiriman
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_pengiriman`;
CREATE TABLE `transaksi_pengiriman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_do` varchar(255) DEFAULT NULL,
  `nomor_polisi` varchar(255) DEFAULT NULL,
  `nama_sopir` varchar(255) DEFAULT NULL,
  `diwakilkan` varchar(255) DEFAULT NULL,
  `supir_pengganti` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `kode_ips` varchar(255) DEFAULT NULL,
  `nama_ips` varchar(255) DEFAULT NULL,
  `qty_total` int(11) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `quality_susu` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `status_rilis` varchar(255) DEFAULT '',
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_pengiriman
-- ----------------------------
INSERT INTO `transaksi_pengiriman` VALUES ('1', 'DO_20170203113328', 'N 270', 'susiloe', 'Tidak', null, '2017-02-03', 'Pagi', '123456', 'IPS001', 'Nesle', '5', '1000', 'baik', 'selesai', '', '2017-02-03 11:38:00');
INSERT INTO `transaksi_pengiriman` VALUES ('2', 'DO_20170206023633', 'N 123 F', 'Suparman', 'Tidak', null, '2017-02-10', 'Sore', null, null, null, '150', null, null, '', '', '2017-02-06 14:47:16');
INSERT INTO `transaksi_pengiriman` VALUES ('3', 'DO_20170206033231', 'P 41 JO', 'Paijo', 'Tidak', null, '2017-02-06', 'Pagi', null, null, null, '110', null, null, '', '', '2017-02-06 15:33:20');
INSERT INTO `transaksi_pengiriman` VALUES ('4', 'DO_20170206033708', 'N 123 F', 'Suparman', 'Tidak', null, '2017-02-06', 'Sore', null, null, null, '50', null, null, '', '', '2017-02-06 15:37:19');
INSERT INTO `transaksi_pengiriman` VALUES ('5', 'DO_20170207013915', 'N 123 F', 'Suparman', 'Tidak', null, '2017-02-07', 'Sore', null, 'IPS001', 'Nesle', '10', null, null, 'belum divalidasi', '', '2017-02-07 13:42:09');
INSERT INTO `transaksi_pengiriman` VALUES ('6', 'DO_20170207031147', 'P 41 JO', 'Paijo', 'Tidak', null, '2017-02-07', 'Sore', null, null, null, '100', null, null, '', '', '2017-02-07 15:12:07');

-- ----------------------------
-- Table structure for transaksi_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_penjualan`;
CREATE TABLE `transaksi_penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_penjualan` varchar(255) DEFAULT NULL,
  `kode_kasir` varchar(255) DEFAULT NULL,
  `tanggal_penjualan` date DEFAULT NULL,
  `nomor_nota` varchar(255) DEFAULT NULL,
  `kode_meja` varchar(255) DEFAULT NULL,
  `kode_member` varchar(255) DEFAULT NULL,
  `nama_member` varchar(255) DEFAULT NULL,
  `total_nominal` varchar(255) DEFAULT NULL,
  `diskon_persen` varchar(255) DEFAULT NULL,
  `diskon_rupiah` varchar(255) DEFAULT NULL,
  `grand_total` varchar(255) DEFAULT NULL,
  `bayar` varchar(255) DEFAULT NULL,
  `kembalian` varchar(255) DEFAULT NULL,
  `hutang` varchar(255) DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `proses_pembayaran` varchar(255) DEFAULT NULL,
  `nominal_retur` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_penjualan
-- ----------------------------

-- ----------------------------
-- Table structure for transaksi_po
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_po`;
CREATE TABLE `transaksi_po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_po` varchar(255) DEFAULT NULL,
  `tanggal_input` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_po
-- ----------------------------
INSERT INTO `transaksi_po` VALUES ('1', 'PO_031216151413_U005_1', '2016-12-03', 'astro', '2016-12-03 15:14:13', null, 'U005', null);
INSERT INTO `transaksi_po` VALUES ('2', 'PO_061216103055_U005_1', '2016-12-06', 'astro', '2016-12-06 10:30:55', null, 'U005', null);

-- ----------------------------
-- Table structure for transaksi_sapi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_sapi`;
CREATE TABLE `transaksi_sapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pengajuan_transaksi` varchar(255) DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `nama_sapi` varchar(255) DEFAULT NULL,
  `tgl_lahir_sapi` varchar(255) DEFAULT NULL,
  `umur_sapi` varchar(255) DEFAULT NULL,
  `id_pejantan` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `status_pembayaran` varchar(255) DEFAULT NULL,
  `status_kepemilikan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_sapi
-- ----------------------------
INSERT INTO `transaksi_sapi` VALUES ('1', 'PJ_05122016023047', 'E900', 'Jesika', '2016-12-03', '3', '2321323', '10000', 'cash', 'Milik Kan Jabung');
INSERT INTO `transaksi_sapi` VALUES ('2', 'PJ_05122016023047', 'E900', 'Dion', '2016-12-03', '24', 'No Bapak', '15000000', 'cash', 'Milik Kan Jabung');
INSERT INTO `transaksi_sapi` VALUES ('3', 'PJ_05122016023047', 'E900', 'Dion', '2016-12-03', '24', 'No Bapak', '15000000', 'tranfer', 'Milik Kan Jabung');
INSERT INTO `transaksi_sapi` VALUES ('4', 'PJ_05122016023047', 'E900', 'Dion', '2016-12-03', '24', 'No Bapak', '15000000', 'cash', 'Milik Kan Jabung');

-- ----------------------------
-- Table structure for transaksi_sapi_rumatan
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_sapi_rumatan`;
CREATE TABLE `transaksi_sapi_rumatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `ear_tag` varchar(255) DEFAULT NULL,
  `tgl_lahir_sapi` date DEFAULT NULL,
  `nama_pemilik_sebelum` varchar(255) DEFAULT NULL,
  `kode_perumat` varchar(255) DEFAULT NULL,
  `nama_perumat` varchar(255) DEFAULT NULL,
  `kode_pemilik` varchar(255) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `harga_awal` varchar(255) DEFAULT NULL,
  `harga_jual` varchar(255) DEFAULT NULL,
  `keuntungan` varchar(255) DEFAULT NULL,
  `bagi_hasil` varchar(255) DEFAULT NULL,
  `nilai_transaksi` varchar(255) DEFAULT NULL,
  `status_pembayaran` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `status_kepemilikan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_sapi_rumatan
-- ----------------------------
INSERT INTO `transaksi_sapi_rumatan` VALUES ('1', 'TSP_15122016033540', '2016-12-15', 'E231', '2016-12-06', 'Milik Kan Jabung', 'TR_161203145844 ', 'Aca', null, 'Milik Kan Jabung', '10000000', '15000000', '5000000', '2500000', '2500000', 'cash', '-', 'kanjabung');

-- ----------------------------
-- Table structure for transaksi_setoran_susu
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_setoran_susu`;
CREATE TABLE `transaksi_setoran_susu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `no_transaksi` varchar(255) DEFAULT NULL,
  `nomor_anggota` varchar(255) DEFAULT NULL,
  `nama_anggota` varchar(255) DEFAULT NULL,
  `kode_cooling_unit` varchar(255) DEFAULT NULL,
  `kode_pps` varchar(255) DEFAULT NULL,
  `alamat_anggota` varchar(255) DEFAULT NULL,
  `status_penerimaan` varchar(255) DEFAULT NULL,
  `status_kualitas` varchar(255) DEFAULT NULL,
  `bj` varchar(255) DEFAULT NULL,
  `jumlah_liter` varchar(255) DEFAULT NULL,
  `status_susu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_setoran_susu
-- ----------------------------
INSERT INTO `transaksi_setoran_susu` VALUES ('1', '2017-02-06', 'Pagi', 'TR_161203145711', 'TR_161203145711', 'Asa', 'CU001', '1001', 'Malang kab', 'Diterima', 'Standart', '1,024', '123', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('2', '2017-02-06', 'Pagi', 'TR_161203145844', 'TR_161203145844', 'Aca', 'CU002', '1', 'Malang', 'Diterima', 'Standart', '1,023', '55', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('3', '2017-02-06', 'Pagi', 'TR_161210112535', 'TR_161210112535', 'Khoirudin', 'CU002', '1001', 'Malang ', 'Diterima', 'Standart', '1,025', '40', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('5', '2017-02-06', 'Pagi', 'TR_161223112209', 'TR_161223112209', 'Kristina', 'CU001', '1', 'jl. Danau', 'Diterima', 'Standart', '1,026', '16', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('6', '2017-02-06', 'Pagi', 'TR_170127101123', 'TR_170127101123 ', 'News Anggota', 'CU001', '1001', 'Malang', 'Diterima', 'Standart', '1,026', '56', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('7', '2017-02-06', 'Sore', 'TR_161203145711', 'TR_161203145711', 'Asa', 'CU001', '1001', 'Malang kab', 'Diterima', 'Standart', '1,024', '123', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('8', '2017-02-06', 'Sore', 'TR_161203145844', 'TR_161203145844', 'Aca', 'CU002', '1', 'Malang', 'Diterima', 'Standart', '1,023', '55', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('9', '2017-02-06', 'Sore', 'TR_161210112535', 'TR_161210112535', 'Khoirudin', 'CU001', '1001', 'Malang ', 'Diterima', 'Standart', '1,025', '45', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('10', '2017-02-06', 'Sore', 'TR_161223112209', 'TR_161223112209', 'Kristina', 'CU001', '1', 'jl. Danau', 'Diterima', 'Standart', '1,024', '123', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('11', '2017-02-06', 'Sore', 'TR_170127101123', 'TR_170127101123 ', 'News Anggota', 'CU001', '1001', 'Malang', 'Diterima', 'Standart', '1,024', '84', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('12', '2017-02-06', 'Pagi', 'TR_170127091842', 'TR_170127091842 ', 'Anggota Dion', 'CU001', '1001', 'Malang', 'Diterima', 'Standart', '1,024', '67', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('13', '2017-02-06', 'Sore', 'TR_170127092805', 'TR_170127092805 ', '2000000', 'CU001', '1001', 'Malang', 'Diterima', 'Standart', '1,024', '196', 'Standart');
INSERT INTO `transaksi_setoran_susu` VALUES ('14', '2017-02-07', 'Sore', 'TR_161203145711', 'TR_161203145711', 'Asa', 'CU001', '1001', 'Malang kab', 'Diterima', 'Standart', '1,024', '123', 'Standart');

-- ----------------------------
-- Table structure for transaksi_spoil
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_spoil`;
CREATE TABLE `transaksi_spoil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(255) DEFAULT NULL,
  `kode_spoil` varchar(255) DEFAULT NULL,
  `tanggal_spoil` date DEFAULT NULL,
  `id_petugas` varchar(255) DEFAULT NULL,
  `petugas` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_unit` varchar(255) DEFAULT NULL,
  `nama_unit` varchar(255) DEFAULT NULL,
  `urut` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_spoil
-- ----------------------------
INSERT INTO `transaksi_spoil` VALUES ('1', 'SP_0001', 'SP_031216151500_1', '2016-12-03', '1', 'astro', null, 'U001', 'Gudang', '0001', '2016-12-03 15:15:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_stok
-- ----------------------------
INSERT INTO `transaksi_stok` VALUES ('1', 'pembelian', 'PEM_031216151419_1', '', 'O001', 'Obat A', '', '1000', '5000', '1000', '1', 'astro', '2016-12-03', 'supplier', null, null, null, null, 'gudang', 'U001', 'Gudang', null, null, null);
INSERT INTO `transaksi_stok` VALUES ('2', 'spoil', 'SP_031216151500_1', 'obat', 'O001', 'Obat A', '100', '', '5000', null, '1', 'astro', '2016-12-03', 'gudang', 'U001', 'Gudang', null, null, '', null, null, null, null, null);
INSERT INTO `transaksi_stok` VALUES ('3', 'opname', 'OP_031216151518_1', null, 'O001', 'Obat A', '0', '50', '5000', null, '1', 'astro', '2016-12-03', 'gudang', 'U001', 'Gudang', null, null, '', null, null, null, null, null);
INSERT INTO `transaksi_stok` VALUES ('4', 'mutasi', 'MUT_031216151529_1', null, 'O001', 'Obat A', '50', '', null, null, '1', 'astro', '2016-12-03', 'Gudang', 'U001', 'Gudang', '', '', 'Petugas', 'U002', 'Petugas', '', '', null);
INSERT INTO `transaksi_stok` VALUES ('5', 'mutasi', 'MUT_031216151529_1', null, 'O001', 'Obat A', '', '50', null, '50', '1', 'astro', '2016-12-03', 'Gudang', 'U001', 'Gudang', '', '', 'Petugas', 'U002', 'Petugas', '', '', null);
INSERT INTO `transaksi_stok` VALUES ('6', 'mutasi', 'MUT_031216151557_2', null, 'O001', 'Obat A', '10', '', null, null, '1', 'astro', '2016-12-03', 'Petugas', 'U002', 'Petugas', '', '', 'Gudang', 'U001', 'Gudang', '', '', null);
INSERT INTO `transaksi_stok` VALUES ('7', 'mutasi', 'MUT_031216151557_2', null, 'O001', 'Obat A', '', '10', null, '10', '1', 'astro', '2016-12-03', 'Petugas', 'U002', 'Petugas', '', '', 'Gudang', 'U001', 'Gudang', '', '', null);
INSERT INTO `transaksi_stok` VALUES ('8', 'pembelian', 'PEM_061216103128_1', null, 'O0021', 'Obat B', '', '10', null, '10', '1', 'astro', '2016-12-06', 'supplier', null, null, null, null, 'gudang', 'U001', 'Gudang', null, null, null);
INSERT INTO `transaksi_stok` VALUES ('9', 'pembelian', 'PEM_061216103128_1', null, 'O0013', 'Obat C', '', '5', null, '5', '1', 'astro', '2016-12-06', 'supplier', null, null, null, null, 'gudang', 'U001', 'Gudang', null, null, null);

-- ----------------------------
-- Table structure for transaksi_stok_susu
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_stok_susu`;
CREATE TABLE `transaksi_stok_susu` (
  `id` int(11) DEFAULT NULL,
  `kode_referensi` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `kode_cu` varchar(255) DEFAULT NULL,
  `nama_cu` varchar(255) DEFAULT NULL,
  `stok_masuk` varchar(255) DEFAULT NULL,
  `stok_keluar` varchar(255) DEFAULT NULL,
  `saldo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_stok_susu
-- ----------------------------

-- ----------------------------
-- Table structure for transaksi_uji_lab
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_uji_lab`;
CREATE TABLE `transaksi_uji_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_botol` varchar(255) DEFAULT NULL,
  `Fat` varchar(100) DEFAULT NULL,
  `metode_Fat` varchar(100) DEFAULT NULL,
  `Reduktase` varchar(100) DEFAULT NULL,
  `metode_Reduktase` varchar(100) DEFAULT NULL,
  `AB` varchar(100) DEFAULT NULL,
  `metode_AB` varchar(100) DEFAULT NULL,
  `BJ` varchar(100) DEFAULT NULL,
  `metode_BJ` varchar(100) DEFAULT NULL,
  `PH` varchar(100) DEFAULT NULL,
  `metode_PH` varchar(100) DEFAULT NULL,
  `Protein` varchar(100) DEFAULT NULL,
  `metode_Protein` varchar(100) DEFAULT NULL,
  `SNF` varchar(100) DEFAULT NULL,
  `metode_SNF` varchar(100) DEFAULT NULL,
  `Lactosa` varchar(100) DEFAULT NULL,
  `metode_Lactosa` varchar(100) DEFAULT NULL,
  `Add_water` varchar(100) DEFAULT NULL,
  `metode_Add_water` varchar(100) DEFAULT NULL,
  `TPC` varchar(100) DEFAULT NULL,
  `metode_TPC` varchar(100) DEFAULT NULL,
  `TCC` varchar(100) DEFAULT NULL,
  `metode_TCC` varchar(100) DEFAULT NULL,
  `Gula` varchar(100) DEFAULT NULL,
  `metode_Gula` varchar(100) DEFAULT NULL,
  `Borak` varchar(100) DEFAULT NULL,
  `metode_Borak` varchar(100) DEFAULT NULL,
  `Formalin` varchar(100) DEFAULT NULL,
  `metode_Formalin` varchar(100) DEFAULT NULL,
  `Susu_Masak` varchar(100) DEFAULT NULL,
  `metode_Susu_Masak` varchar(100) DEFAULT NULL,
  `Penambahan_Santan` varchar(100) DEFAULT NULL,
  `metode_Penambahan_Santan` varchar(100) DEFAULT NULL,
  `Air_Beras` varchar(100) DEFAULT NULL,
  `metode_Air_Beras` varchar(100) DEFAULT NULL,
  `Urea` varchar(100) DEFAULT NULL,
  `metode_Urea` varchar(100) DEFAULT NULL,
  `ORGANOLEPTIK` varchar(100) DEFAULT NULL,
  `metode_ORGANOLEPTIK` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_uji_lab
-- ----------------------------
INSERT INTO `transaksi_uji_lab` VALUES ('1', 'KB_030217_1', '3', 'GERBER', 'Grade 2', 'MBRT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `transaksi_uji_lab` VALUES ('2', 'KB_260117_2', '4.5', 'GERBER', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `transaksi_uji_lab` VALUES ('3', 'KB_260117_3', null, null, 'Grade 2', 'MBRT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `transaksi_uji_lab` VALUES ('4', 'KB_270117_4', '4.5', 'GERBER', 'Grade 1', 'MBRT', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
