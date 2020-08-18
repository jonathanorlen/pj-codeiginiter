
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //for-mobile-apps -->
	<link href="<?php echo base_url() . 'component/template/css/bootstrap.css'?>" rel="stylesheet" type="text/css" media="all" />
	<!-- pignose css -->
	<link href="<?php echo base_url() . 'component/template/css/pignose.layerslider.css'?>" rel="stylesheet" type="text/css" media="all" />



	<!-- //pignose css -->
	<link href="<?php echo base_url() . 'component/template/css/style.css'?>" rel="stylesheet" type="text/css" media="all" />
	<!-- js -->
	<script type="text/javascript" src="<?php echo base_url() . 'component/template/js/jquery-2.1.4.min.js'?>"></script>
	<!-- //js -->
	<!-- cart -->
	<script src="<?php echo base_url() . 'component/template/js/simpleCart.min.js'?>"></script>
	<!-- cart -->
	<!-- for bootstrap working -->
	<script type="text/javascript" src="<?php echo base_url() . 'component/template/js/bootstrap-3.1.1.min.js'?>"></script>
	<!-- //for bootstrap working -->
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
	<script src="<?php echo base_url() . 'component/template/js/jquery.easing.min.js'?>"></script>

	<div class="checkout">
		<div class="container">
			<h3>My Shopping Bag</h3>
			<div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>Remove</th>
							<th>Product</th>
							<th>Quantity</th>
							<th>Product Name</th>
							<th>Price</th>
						</tr>
					</thead>
					<?php


					$ambil_data = $this->db->query('SELECT * FROM opsi_taking_order_temp');
					$hasil_ambil_data = $ambil_data->result_array();
					$totalbayar = 0;
					$no = 1;

					foreach ($hasil_ambil_data as $item) { 



						?>
						<tr class="rem1">
							<td class="invert-closeb" >
								<div class="rem">
									<a   href="<?php echo base_url() . 'web/hapuscart?id='.$item['id'] ?>" >

										<div class="close1" onclick="return confirm('Apakah Anda Yakin??')"> </div>
									</a>
								</div>
								
						</td>
						<td class="invert-image"><a href="single.html"><img src="images/w4.png" alt=" " class="img-responsive" /></a></td>
						<td class="invert">
							<div class="quantity"> 
								<div class="quantity-select">
									<input type="hidden" value="<?php echo $item['id']; ?>" placeholder="kodemenu" name="kode_menu" id="kode_menu_<?php echo $no ?>" />                           
									<div class="entry value-minus  " key="<?php echo $no;?>" >&nbsp;</div>
									<div class="entry value"><span><?php echo $item['jumlah']; ?></span></div>
									<div class="entry value-plus active" key="<?php echo $no;?>">&nbsp;</div>
								</div>
							</div>
						</td>
						<td class="invert"><?php echo $item['nama_menu'];?></td>
						<td class="invert"><?php echo format_rupiah($item['subtotal']); ?></td>
					</tr>
					<?php $totalbayar = $totalbayar + $item['subtotal']; ?>
					<?php
					$no++;
				} ?>
				<tr class="rem1" >




					<td class="invert" colspan="4"> Total</td>

					<td class="invert" > <?php echo format_rupiah($totalbayar);?></td>
				</tr>


				<!--quantity-->
				<script>
					$('.value-plus').on('click', function(){
						var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
						divUpd.text(newVal);

						
						var key = $(this).attr('key');
					
						var kode_menu = $("#kode_menu_"+key).val();

						$.ajax( {
							type:"POST", 
							url : "<?php echo base_url() . 'web/item_tambah' ?>",
							cache :false,
							data :({kode_menu:kode_menu}),
							beforeSend:function(){
								$(".loading").show();  
							},
							success : function(data) {
								$(".loading").hide();
								$(".sukses").html('<div style="font-size:1.5em" class="alert alert-success">Taking Order Produk Berhasil</div>');
								window.location = "<?php echo base_url() . 'web/cart' ?>"; 

							},  
							error : function(data) {  
								alert("gagal di masukan");  
							}  
						});
						return false;

					});

					$('.value-minus').on('click', function(){
						var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
						if(newVal>=1) divUpd.text(newVal);
						var key = $(this).attr('key');
					
						var kode_menu = $("#kode_menu_"+key).val();

						$.ajax( {
							type:"POST", 
							url : "<?php echo base_url() . 'web/item_kurang' ?>",
							cache :false,
							data :({kode_menu:kode_menu}),
							beforeSend:function(){
								$(".loading").show();  
							},
							success : function(data) {
								$(".loading").hide();
								$(".sukses").html('<div style="font-size:1.5em" class="alert alert-success">Taking Order Produk Berhasil</div>');
								window.location = "<?php echo base_url() . 'web/cart' ?>"; 

							},  
							error : function(data) {  
								alert("gagal di masukan");  
							}  
						});
						return false;

					
					});
				</script>
				<!--quantity-->
			</table>

		</div>
		<div class="checkout-left">	

			

			<div style="background:orange;border:none;" class="checkout-left-basket animated wow slideInLeft">
				<a id="simpan_to" style="text-decoration: none;"  >
					<center><i style="font-size:30px; font-weight: bold; "><i style="font-size: 30px;" class="fa fa-save"></i> Simpan</i></center>	
				</a>
			</div>



			<div class="clearfix"> </div>
		</div>

	</div>
</div>	

<script type="text/javascript">
	$("#simpan_to").click(function(){
		var kode_kasir = $("#kode_kasir").val();
		var jenis_pengiriman = $("#jenis_penerimaan").val();
		var penerima = $("#penerima").val();
		var no_telp = $("#no_telp").val();
		var alamat = $("#alamat").val();
		var jam_kirim = $("#jam_kirim").val();
		var tgl_kirim = $("#tgl_kirim").val();
		var url = "<?php echo base_url().'web/simpan_taking_order'; ?>";

		$.ajax( {
			type:"POST", 
			url : url,  
			cache :false,
			data :{kode_kasir:kode_kasir,penerima:penerima,no_telp:no_telp,alamat:alamat,
				jam_kirim:jam_kirim,tgl_kirim:tgl_kirim,jenis_pengiriman:jenis_pengiriman},
				beforeSend:function(){
					$(".loading").show();  
				},
				success : function(data) {
					$(".loading").hide();
					$(".sukses").html('<div style="font-size:1.5em" class="alert alert-success">Taking Order Produk Berhasil</div>');
					setTimeout(function(){$('.sukses').html('');window.location = "<?php echo base_url() . 'web/cart' ?>";},1000); 

				},  
				error : function(data) {  
					alert(data);  
				}  
			});
		return false;
  // $.ajax( {
  //   url: "http://admin-pj.cloud-astro.com/reloader/simpan_taking_order",
  //   url : url,  
  //   cache :false,
  //   data :{kode_kasir:kode_kasir,penerima:penerima,no_telp:no_telp,alamat:alamat,
  //     jam_kirim:jam_kirim,tgl_kirim:tgl_kirim,jenis_pengiriman:jenis_pengiriman},

  //     success : function(data) {

  //     },  
  //     error : function(data) {  
  //       alert(data);  
  //     }  
  //   });
});
</script>