<?php

public function cetak_pembayaran()
    {
        $kode_meja = $this->input->post('kode_meja');
        $kode_penjualan = $this->input->post('kode_penjualan_baru');
        $jenis_bayar = $this->input->post('jenis_transaksi');
        $setting = $this->db->get('master_setting');
        $hasil_setting = $setting->row();
        $pesanan = $this->db->get_where('opsi_transaksi_penjualan', array('kode_meja' =>
            $kode_meja, 'kode_penjualan' => $kode_penjualan));
        //$pesanan = $this->db->get_where('opsi_transaksi_penjualan', array('kode_penjualan' =>
        //                $kode_penjualan));
        $hasil_pesanan = $pesanan->row();

        #$nama = $this->db->query("select * from atombizz_employee WHERE id='".$hasil[0]->user_id."'")->row();

        /* text */
        $printTestText = bill_php_middle($hasil_setting->nama_resto, 40) . "\n";
        $printTestText .= bill_php_middle_alamat($hasil_setting->alamat_resto, 40) . "\n";
        // $printTestText .= "      TOKO BASMALAH CAB. WONOREJO      \n";
        $printTestText .= bill_php_middle($hasil_setting->telp_resto, 40) . "\n";
        $printTestText .= "----------------------------------------\n";
        $printTestText .= "Inv. ID       : " . $kode_penjualan . "\n";
        $printTestText .= "Tanggal       : " . TanggalIndo(date('Y-m-d')) . "\n";
        $printTestText .= "Payment       : " . $jenis_bayar . "\n";
        $get_id_petugas = $this->session->userdata('astrosession');
        $id_petugas = $get_id_petugas->id;
        $nama_petugas = $get_id_petugas->uname;
        $printTestText .= "Kasir         : " . $nama_petugas . "\n";
        if ($jenis_bayar == 'kredit') {
            $member = $this->db->get_where('opsi_transaksi_penjualan_temp', array('kode_penjualan' => $kode_penjualan));
            $hasil_member = $member->row();
            $printTestText .= "Kode Member  : " . $hasil_member->kode_member . "\n";
            $printTestText .= "Nama Member  : " . $hasil_member->nama_member . "\n";

        }
        $printTestText .= "----------------------------------------\n";
        $printTestText .= "Harga        Jml    Diskon      Subtotal\n";
        $printTestText .= "----------------------------------------\n";

        $menu = $this->db->get_where('opsi_transaksi_penjualan', array('kode_penjualan' =>
            $kode_penjualan));
        //$menu = $this->db->get_where('opsi_transaksi_penjualan', array('kode_penjualan' =>
        //                $kode_penjualan));
        $hasil_menu = $menu->result();

        foreach ($hasil_menu as $daftar) {

            $lenset = 12;
            $lennama_produk = strlen($daftar->nama_menu);
            $len = $lenset <= $lennama_produk ? $lenset : $lennama_produk;
            $lenspace = 12 - $len;
            $nama_produk = substr($daftar->nama_menu, 0, $lenset);
            $space = "";
            for ($i = 0; $i < $lenspace; $i++) {
                $space .= ' ';
            }
            //System.out.printf("%10s (%10s) @%10s  %10s,\n",product_name,qty,price,subtotal).toString();
            //$printTestText .= sprintf("%18s %4s %10s  %10s,\n",$nama_produk,$value->qty,$value->price,$value->discount_sub);

            if($daftar->jenis_diskon=='persen'){
                $diskon = @$daftar->diskon_item.' %';
            } else {
                $diskon = @$daftar->diskon_rupiah;
            }

            $printTestText .= bill_php_Left($daftar->nama_menu, 40) . "\n" . bill_php_Left($daftar->
                harga_satuan, 12) . bill_php_right($daftar->jumlah, 4) . bill_php_right($diskon, 9) . bill_php_right($daftar->subtotal, 14) . "\n";
        }

        //$printTestText .= "----------------------------------------\n";
        //$printTestText .= "Detail Pembayaran\n";
        //$penjualan = $this->db->get_where('transaksi_penjualan', array('kode_penjualan' =>
        //$kode_penjualan));  
            //$hasil_penjualan = $penjualan->row();
            //$printTestText .= "Total           : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
                //total_nominal), 20) . "\n";
            //$printTestText .= "Diskon          : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
                //diskon_rupiah), 20) . "\n";
            //$printTestText .= "Ongkos Kirim    : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
                //ongkos_kirim), 20) . "\n";
            //$printTestText .= "Grand Total  : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
                //grand_total), 20) . "\n";
            
            //$printTestText .= "Bayar        : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
                //bayar), 20) . "\n";
            //if ($jenis_bayar == 'kredit') {
                //$hasil = "Sisa   ";
            //} else {
                //$hasil = "Kembali";
            //}
        $printTestText .= "$hasil   : Rp" . bill_php_right(format_rupiah_norp(abs($hasil_penjualan->
            kembalian)), 20) . "\n";
        $printTestText .= "----------------------------------------\n";
        $printTestText .= "              Terima Kasih             \n";
        $printTestText .= "         Barang yang sudah dibeli      \n";
        $printTestText .= "    Tidak dapat ditukar/dikembalikan   \n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        /*  $printTestText .= "Bayar    : Rp. ".$hasil[0]->pay.",-\n";
        $printTestText .= "Kembali: Rp. ".$hasil[0]->pay_back.",-\n";
        // $printTestText .= "    Harga sudah termasuk PPN 10%\n";
        
        $printTestText .= "               Terima Kasih             \n";
        $printTestText .= "        Barang yang sudah dibeli        \n";
        $printTestText .= "    Tidak dapat ditukar/dikembalikan    \n";
        // $printTestText .= " ".$footer."    \n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";
        $printTestText .= "\n";*/


        // /* tulis dan buka koneksi ke printer */
        // $printer = printer_open("SP-POS76II");
        // /* write the text to the print job */
        // printer_set_option($handle, PRINTER_MODE, "RAW");
        // printer_write($printer, $printTestText);
        // /* close the connection */
        // printer_close($printer);
        //$handle = printer_open("canon_ip2700_series");

        $handle = printer_open($hasil_setting->printer);
        printer_set_option($handle, PRINTER_MODE, "RAW");
        #$font = printer_create_font("Arial", 72, 48, 400, false, false, false, 0);
        #printer_select_font($handle, $font);
        printer_write($handle, $printTestText);
        printer_close($handle);
        // print_r($printTestText);exit;

$get = $this->db->query("SELECT * FROM master_user where id='$id'");
        $hasil = $get->row();
        $nama = $this->db->querry("SELECT * FROM master_user where id='$id'"');

    }

?>