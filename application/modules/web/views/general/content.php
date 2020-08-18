
<div class="product-easy">
	<div class="container">
		<div class="box_ajax" >

			<script type="text/javascript" src="<?php echo base_url() . 'component/popup/lib/jquery-1.10.2.min.js'?>"></script>

			<!-- Add mousewheel plugin (this is optional) -->
			<script type="text/javascript" src="<?php echo base_url() . 'component/popup/lib/jquery.mousewheel.pack.js?v=3.1.3'?>"></script>

			<!-- Add fancyBox main JS and CSS files -->
			<script type="text/javascript" src="<?php echo base_url() . 'component/popup/source/jquery.fancybox.pack.js?v=2.1.5'?>"></script>
			<link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'component/popup/source/jquery.fancybox.css?v=2.1.5'?>" media="screen" />


			<script type="text/javascript">
				$(document).ready(function() {
					$('.fancybox').fancybox();
				});
			</script>
			<script src="<?php echo base_url() . 'component/template/js/easyResponsiveTabs.js'?>" type="text/javascript"></script>
			<script type="text/javascript">
				$(document).ready(function () {
					$('#horizontalTab').easyResponsiveTabs({
									type: 'default', //Types: default, vertical, accordion           
									width: 'auto', //auto or any width like 600px
									fit: true   // 100% fit in a container
								});
				});

			</script>
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Latest Designs</span></li> 

					</ul>				  	 
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content scroll" aria-labelledby="tab_item-0" id="posts">
							<?php
							if (getenv('HTTP_CLIENT_IP'))
								$ipaddress = getenv('HTTP_CLIENT_IP');
							else if(getenv('HTTP_X_FORWARDED_FOR'))
								$ipaddress = getenv('HTTP_X_FORWARDED_FOR');
							else if(getenv('HTTP_X_FORWARDED'))
								$ipaddress = getenv('HTTP_X_FORWARDED');
							else if(getenv('HTTP_FORWARDED_FOR'))
								$ipaddress = getenv('HTTP_FORWARDED_FOR');
							else if(getenv('HTTP_FORWARDED'))
								$ipaddress = getenv('HTTP_FORWARDED');
							else if(getenv('REMOTE_ADDR'))
								$ipaddress = getenv('REMOTE_ADDR');
							else
								$ipaddress = 'UNKNOWN';

# echo $ipaddress;

							$get_kasir = $this->db->get_where('master_kasir',array('ip'=>$ipaddress));
							$hasil_kasir = $get_kasir->row();
#echo $this->db->last_query();
							$nomor_kasir = $hasil_kasir->kode_kasir;

							$user = $this->session->userdata('astrosession');
							$tgl = date("Y-m-d");
							$no_belakang = 0;
							$this->db->select_max('kode_penjualan');
							$kode = $this->db->get_where('transaksi_penjualan',array('tanggal_penjualan'=>$tgl));
							$hasil_kode = $kode->row();
#$pecah_kode = explode("_",$hasil_kode_pembelian->kode_pembelian);
#echo $pecah_kode[0];
#echo $pecah_kode[2];
							$this->db->select('kode_penjualan');
							$kode_penjualan = $this->db->get('master_setting');
							$hasil_kode_penjualan = $kode_penjualan->row();
							if(count($hasil_kode)==0){
								$no_belakang = 1;
							}
							else{
								$pecah_kode = explode("_",$hasil_kode->kode_penjualan);
								$no_belakang = @$pecah_kode[4]+1;
							}
							$this->db->select_max('kode_transaksi');
							$kasir = $this->db->get_where('transaksi_kasir',array('tanggal'=>$tgl,'status'=>"open",
								'kode_kasir'=>$nomor_kasir));
							$hasil_cek_kasir = $kasir->row();
#echo $this->db->last_query();

							$ipaddress = '';

#echo $this->db->last_query();

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
							?>
							<?php

							$this->db->limit(12);

							$ambil_data = $this->db->get("master_bahan_baku");
							$hasil_ambil_data = $ambil_data->result_array();
							$no = 1;
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
											<a href="http://192.168.100.17/pj/web/simpan_pesanan_temp?id=<?php echo $item['kode_bahan_baku'] ?>&kode_penjualan=<?php echo $kode_trans?><?php echo base_url(). 'http://192.168.100.17/pj/web/cart'?>" class="item_add single-item hvr-outline-out button2 fancybox fancybox.iframe ">Add to cart</a>		

										</div>
									</div>
								</div>
								<?php 
								$no++;
							} ?>
							<?php 
							$get_jumlah =  $this->db->get("master_bahan_baku");
							$jumlah = $get_jumlah->num_rows();
							$jumlah = floor($jumlah/12); 

							?>


							<div class="clearfix"></div>
							<div class="tunggu" style="z-index:9999999999999999; background:rgba(51, 50, 50, 0.8); width:100%; height:100%; position:fixed; top:0; left:0; text-align:center; padding-top:25%; display: none;" >
								<img src="<?php echo base_url() . 'component\template\images\kuning.gif' ?>" style="width:300px; height: 300px;"/>
							</div>
							<input type="hidden" class="form-control rowcount" value="<?php echo $jumlah ?>">
							<input type="hidden" class="form-control pagenum" value="0">
						</div>				

					</div>	
				</div>
			</div>
		</div>

	</div>
</div>
<!-- //product-nav -->


<script type="text/javascript">
	$(document).ready(function() {

		$(window).scroll(function(){


var docElement = $(document)[0].documentElement;
         var winElement = $(window)[0];

         if ((docElement.scrollHeight - winElement.innerHeight) == winElement.pageYOffset) {
       if(parseInt($(".pagenum").val()) <= parseInt($(".rowcount").val())) {
					var pagenum = parseInt($(".pagenum").val()) + 1;
					$(".pagenum").val(pagenum);
					load_table(pagenum);
				}

  
   }

     
		});

	});
</script>

<script type="text/javascript">
	$('.scroll').jscroll();
	function load_table(page){
		$.ajax({
			type: "POST",
			url: "<?php echo base_url() . 'web/get_table' ?>",
			data: ({page:$(".pagenum").val()}),
			beforeSend: function(){
				$(".tunggu").show();  
			},
			success: function(msg)
			{
				$(".tunggu").hide();
				$("#posts").append(msg);

			}
		});
	}
</script>