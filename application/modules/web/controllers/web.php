<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class web extends MY_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	public function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('astrosession') == FALSE) {
			redirect(base_url('authenticate'));			
    } 
  }

  public function index()
  {
    $data['konten'] =  $this->load->view ('general/content' , NULL, TRUE);
    $this->load->view ('general/main',$data);
    
  }
  

  public function cari()
  {
    $data['parameter'] = $this->input->post("key");	
    $data['filter'] = $this->input->post("filter");	
    $this->load->view ('produk/cari/cari');
  }	
  
  public function cart()
  {
    $data['konten'] =  $this->load->view ('general/content' , NULL, TRUE) ;	
    $this->load->view ('produk/cart');
  }	
  public function hapuscart(){
    //$kode = $this->input->post("id_po");

    $key = $_GET['id'];
    $this->db->delete('opsi_taking_order_temp', array('id' => $key) );
    $this->load->view ('produk/cart');
    


  }
  public function item_tambah(){

    $kode = $this->input->post("kode_menu");


    $ambil_data = $this->db->query(" SELECT * FROM opsi_taking_order_temp where id = '$kode' ");
    $hasil_ambil_data = $ambil_data->row();
    $qty = $hasil_ambil_data->jumlah;
    

    $kali= $qty + 1;
    $sub = $hasil_ambil_data->harga_satuan * $kali;

    $data['jumlah'] = $kali;
    $data['subtotal'] = $sub;



   

    
    $this->db->update( "opsi_taking_order_temp", $data, array('id' => $kode) );

    }
    public function item_kurang(){

    $kode = $this->input->post("kode_menu");


    $ambil_data = $this->db->query(" SELECT * FROM opsi_taking_order_temp where id = '$kode' ");
    $hasil_ambil_data = $ambil_data->row();
    $qty = $hasil_ambil_data->jumlah;   
   

    $kali= $qty - 1;
    $sub = $hasil_ambil_data->harga_satuan * $kali;

    $data['jumlah'] = $kali;
    $data['subtotal'] = $sub;
    

    
    $this->db->update( "opsi_taking_order_temp", $data, array('id' => $kode) );

    }
  public function simpan_pesanan_temp()
  {

   $kode_produk = $_GET['id'];
   $kode_penjualan = $_GET['kode_penjualan'];

   $get_menu = $this->db->get_where('master_bahan_baku', array('kode_bahan_baku' =>
    $kode_produk));
   $hasil_getmenu = $get_menu->row();        

   $cek_menu = $this->db->get_where('opsi_taking_order_temp', array(
    'kode_penjualan' => $kode_penjualan,
    'kode_menu' => $kode_produk

    ));


   $hasil_cek_menu = $cek_menu->row();

   

   $cek_item_keranjang = count($hasil_cek_menu);

   

   if ( $cek_item_keranjang < 1) {

    $masukan['kode_penjualan'] = $kode_penjualan;
    $masukan['nama_menu'] = $hasil_getmenu->nama_bahan_baku;
    $masukan['jumlah'] = 1;
    $masukan['kode_satuan'] = $hasil_getmenu->satuan_stok;
    $masukan['kode_menu'] = $hasil_getmenu->kode_bahan_baku;
    $masukan['subtotal'] = $hasil_getmenu->harga_jual_1;           

    $masukan['harga_satuan'] = $hasil_getmenu->harga_jual_1;
    $this->db->insert('opsi_taking_order_temp', $masukan);
  }


  $this->load->view ('produk/cart') ;
  




}
 public function simpan_taking_order(){
        $data = $this->input->post();
        $tgl = date("Y-m-d");
        $this->db->select_max('urut');
        $result = $this->db->get_where('taking_order');
        $hasil = @$result->result();
        if($result->num_rows()) $no = ($hasil[0]->urut)+1;
        else $no = 1;

        if($no<10)$no = '000'.$no;
        else if($no<100)$no = '00'.$no;
        else if($no<1000)$no = '0'.$no;
        else if($no<10000)$no = ''.$no;
                  //else if($no<100000)$no = $no;
        $code = $no;

        $this->db->select_max('id');
        $get_max_po = $this->db->get('taking_order');
        $max_po = $get_max_po->row();

        $this->db->where('id', $max_po->id);
        $get_po = $this->db->get('taking_order');
        $po = $get_po->row();
        $tahun = substr(@$po->kode_transaksi, 3,4);
        if(date('Y')==$tahun){
          $nomor = substr(@$po->kode_transaksi, 8);
          $nomor = $nomor + 1;
          $string = strlen($nomor);
          if($string == 1){
            $kode_trans = 'TO_'.date('Y').'_00000'.$nomor;
          } else if($string == 2){
            $kode_trans = 'TO_'.date('Y').'_0000'.$nomor;
          } else if($string == 3){
            $kode_trans = 'TO_'.date('Y').'_000'.$nomor;
          } else if($string == 4){
            $kode_trans = 'TO_'.date('Y').'_00'.$nomor;
          } else if($string == 5){
            $kode_trans = 'TO_'.date('Y').'_0'.$nomor;
          } else if($string == 6){
            $kode_trans = 'TO_'.date('Y').'_'.$nomor;
          }
        } else {
          $kode_trans = 'TO_'.date('Y').'_000001';
        }

        $opsi_order = $this->db->get_where('opsi_taking_order_temp',array('kode_kasir'=>$data['kode_kasir']));
        $hasil_opsi = $opsi_order->result();
        foreach($hasil_opsi as $daftar){
            $masukkan['kode_kasir'] = $daftar->kode_kasir;
            $masukkan['kode_transaksi'] = $kode_trans;
            $masukkan['kategori_menu'] = $daftar->kategori_menu;
            $masukkan['kode_menu'] = $daftar->kode_menu;
            $masukkan['nama_menu'] = $daftar->nama_menu;
            $masukkan['jumlah'] = $daftar->jumlah;
            $masukkan['kode_satuan'] = $daftar->kode_satuan;
            $masukkan['nama_satuan'] = $daftar->nama_satuan;
            $masukkan['harga_satuan'] = $daftar->harga_satuan;
            $masukkan['jenis_diskon'] = @$daftar->jenis_diskon;
            $masukkan['diskon_item'] = @$daftar->diskon_item;
            $masukkan['diskon_rupiah'] = @$daftar->diskon_rupiah;
            $masukkan['subtotal'] = $daftar->subtotal;
            $masukkan['status_menu'] = $daftar->status_menu;
            $this->db->insert('opsi_taking_order', $masukkan);
        }
        $this->db->delete('opsi_taking_order_temp',array('kode_kasir'=>$data['kode_kasir']));
        
        $taking_order['kode_kasir'] = $data['kode_kasir'];
        $taking_order['kode_transaksi'] = $kode_trans;
        $taking_order['nama_penerima'] = $data['penerima'];
        $taking_order['no_telp'] = $data['no_telp'];
        $taking_order['alamat'] = $data['alamat'];
        $taking_order['waktu_pengiriman'] = $data['jam_kirim'];
        $taking_order['tanggal_pengiriman'] = $data['tgl_kirim'];
        $taking_order['tanggal_transaksi'] = date("Y-m-d");
        $taking_order['status_penerimaan'] = $data['jenis_pengiriman'];
        $taking_order['urut'] = $no;
        $this->db->insert('taking_order',$taking_order);
    }
    




	/*public function filter()
	{
		$this->load->view ('filter/filter');
		
	}

	public function link()
	{
		$data['parameter'] = $this->input->post("key");
		$this->load->view ('link/link',$data);
		
	}
	public function detail()
	{
		$data['parameter'] = $this->input->post("key");
		$this->load->view ('detail/detail',$data);
		
	}
	*/
	public function get_table()
	{
		
		$start = (12*$this->input->post('page'));
		$this->db->limit(12, $start);
		
		
		$ambil_data = $this->db->get("master_bahan_baku");
		$hasil_ambil_data = $ambil_data->result_array();
		$nomor = $start+1;
		foreach ($hasil_ambil_data as $item) {
			?>   
			
      <div class="col-md-3 product-men yes-marg">
        <div class="men-pro-item simpleCart_shelfItem">
          <div class="men-thumb-item">
            <img src="<?php echo base_url() . 'component/template/images/mw2.png'?>" alt="" class="pro-image-front">
            <img src="<?php echo base_url() . 'component/template/images/mw2.png'?>" alt="" class="pro-image-back">
            <div class="men-cart-pro">
              <div class="inner-men-cart-pro">
                <a href="<?php echo base_url() . 'web/detail?id='.$item['id'] ?>" class="link-product-add-cart">Quick View</a>
              </div>
            </div>
            <span class="product-new-top">New</span>
            
          </div>
          <div class="item-info-product ">
            <h4><a href="<?php echo base_url() . 'web/detail?id='.$item['id'] ?>"><?php echo substr($item['nama_bahan_baku'],0,20); ?></a></h4>
            <div class="info-product-price">
              <span class="item_price"><?php echo format_rupiah($item['harga_jual_1']); ?></span>
              
            </div>
            <a href="" class="item_add single-item hvr-outline-out button2">Add to cart</a>                  
          </div>
        </div>
      </div>


      <?php 
      $nomor++;
    }
  }

  public function simpan_bahan()
    {
        $data['nama_bahan_baku']= $this->input->post('nama_bahan_baku');
        $data['qty_grosir'] = $this->input->post('qty_grosir');
        $data['harga_jual_1'] = $this->input->post('harga_jual_1'); 
        $insert = $this->db->insert("master_bahan_baku", $data); 
    }   

  public function detail()
  {
    $data['konten']=$this->load->view ('produk/detail' , NULL, TRUE);
    $this->load->view ('general/main',$data);

  }

  public function cetak_pembayaran()
  {   
    $user = $this->session->userdata('astrosession');

    $id  = $user[0]->id;


    $get = $this->db->query("SELECT * FROM master_user where id='$id'");
    $hasil = $get->row();

    $get_penjualan = $this->db->query("SELECT * FROM opsi_transaksi_penjualan_temp");
    $hasil_penjualan = $get_penjualan->row();
    $kode_meja = $this->input->post('kode_meja');
    $kode_penjualan = $this->input->post('kode_penjualan_baru');
    $setting = $this->db->get('master_setting');
    $hasil_setting = $setting->row();
    $pesanan = $this->db->get_where('opsi_transaksi_penjualan', array('kode_meja' =>
      $kode_meja, 'kode_penjualan' => $kode_penjualan));
        //$pesanan = $this->db->get_where('opsi_transaksi_penjualan', array('kode_penjualan' =>
        //                $kode_penjualan));
    $hasil_pesanan = $pesanan->row();

        #$nama = $this->db->query("select * from atombizz_employee WHERE id='".$hasil[0]->user_id."'")->row();

    /* text */
    $printTestText ="";
    $printTestText .= "Patriot Jaya\n";
    $printTestText .= "Taking Order\n";
    $printTestText .= "----------------------------------------\n";
    $printTestText .= "Petugas  : " .$user[0]->nama . "\n";        
    $printTestText .= "kode     : " .$hasil_penjualan->kode_penjualan ."\n";
    $printTestText .= "----------------------------------------\n";
    $printTestText .= "" . Date("d/m/Y-H:i:s") . "\n"; 
    $printTestText .= "\n";
    $printTestText .= "\n";
    $printTestText .= "\n";
    $printTestText .= "\n";       
    $printTestText .= "\n";
    $printTestText .= "\n";
    $printTestText .= "\n";
    $printTestText .= "\n";
    $printTestText .= "\n";
    $printTestText .= "\n";

        //$menu = $this->db->get_where('opsi_transaksi_penjualan', array('kode_penjualan' =>
        //$kode_penjualan));
        //$menu = $this->db->get_where('opsi_transaksi_penjualan', array('kode_penjualan' =>
        //                $kode_penjualan));
        //$hasil_menu = $menu->result();
        //$ambil_data = $this->db->get_where('opsi_transaksi_penjualan_temp',array('id'  =>  $kode));
        //$hasil_ambil_data = $ambil_data->row();
        // /foreach ($hasil_menu as $daftar) {

        //     $lenset = 12;
        //     $lennama_produk = strlen($daftar->nama_menu);
        //     $len = $lenset <= $lennama_produk ? $lenset : $lennama_produk;
        //     $lenspace = 12 - $len;
        //     $nama_produk = substr($daftar->nama_menu, 0, $lenset);
        //     $space = "";
        //     for ($i = 0; $i < $lenspace; $i++) {
        //         $space .= ' ';
        //     }
        //     //System.out.printf("%10s (%10s) @%10s  %10s,\n",product_name,qty,price,subtotal).toString();
        //     //$printTestText .= sprintf("%18s %4s %10s  %10s,\n",$nama_produk,$value->qty,$value->price,$value->discount_sub);

        //     if($daftar->jenis_diskon=='persen'){
        //         $diskon = @$daftar->diskon_item.' %';
        //     } else {
        //         $diskon = @$daftar->diskon_rupiah;
        //     }

        //     $printTestText .= bill_php_Left($daftar->nama_menu, 40) . "\n" . bill_php_Left($daftar->
        //         harga_satuan, 12) . bill_php_right($daftar->jumlah, 4) . bill_php_right($diskon, 9) . bill_php_right($daftar->subtotal, 14) . "\n";
        // }

        // $printTestText .= "----------------------------------------\n";
        // $printTestText .= "Detail Pembayaran\n";
        // $penjualan = $this->db->get_where('transaksi_penjualan', array('kode_penjualan' =>
        //     $kode_penjualan));  
        // $hasil_penjualan = $penjualan->row();
        // $printTestText .= "Total           : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
        //     total_nominal), 20) . "\n";
        // $printTestText .= "Diskon          : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
        //     diskon_rupiah), 20) . "\n";
        // $printTestText .= "Ongkos Kirim    : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
        //     ongkos_kirim), 20) . "\n";
        // $printTestText .= "Grand Total  : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
        //     grand_total), 20) . "\n";

        // $printTestText .= "Bayar        : Rp" . bill_php_right(format_rupiah_norp($hasil_penjualan->
        //     bayar), 20) . "\n";
        // if ($jenis_bayar == 'kredit') {
        //     $hasil = "Sisa   ";
        // } else {
        //     $hasil = "Kembali";
        // }
        // $printTestText .= "$hasil   : Rp" . bill_php_right(format_rupiah_norp(abs($hasil_penjualan->
        //     kembalian)), 20) . "\n";
        // $printTestText .= "----------------------------------------\n";
        // $printTestText .= "              Terima Kasih             \n";
        // $printTestText .= "         Barang yang sudah dibeli      \n";
        // $printTestText .= "    Tidak dapat ditukar/dikembalikan   \n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
        // $printTestText .= "\n";
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

        $handle = printer_open('\\\192.168.100.111\wien'); 
        printer_set_option($handle, PRINTER_MODE, "RAW");
        printer_write($handle, $printTestText); 
        printer_close($handle);

        echo $printTestText;
      }

    }
