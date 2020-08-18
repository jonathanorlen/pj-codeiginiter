<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
	<title>Patriot Jaya</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
		<script>
$(document).ready(function(){
    $("#show").click(function(){
        $(".oke").show();
    });
    $("#hide").click(function(){
        $(".oke").hide();
    });
});
</script>
<style>
.button {
    border: none;
    color: white;
    padding: 11px 28px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius:10px;
}

.button2{
	background-color:#008CBA;
}

.button1{
	background-color:#4CAF50;	
}
</style>
	</head>
	<body>

		<!-- header-bot -->
		<div class="header-bot">
			<div class="container">
				<div class="col-md-3 header-left">
					<h1><a href="<?php echo base_url() . '#'?>"><img src="<?php echo base_url() . 'component/template/images/logo3.jpg'?>"></a></h1>
				</div>
				<div class="col-md-6 header-middle">
					<form>
						<div class="search">
							<input type="search" id="input_konten">
							<div class="search1" style="z-index:9999999999999999; background:rgba(51, 50, 50, 0.8); width:100%; height:100%; position:fixed; top:0; left:0; text-align:center; padding-top:25%; display: none;" >
								<img src="<?php echo base_url() . 'component\template\images\kuning.gif' ?>" style="width:300px; height: 300px;"/>
							</div>
						</div>
						<div class="section_room">
							<select id="filter" name="filt" class="frm-field required" required>
								<option value="">-PILIH KATEGORI-</option >
									<?php
									$this->db->group_by('nama_kategori_menu');
									$get_project = $this->db->get_where('master_kategori_menu');
									$hasil_project = $get_project->result();

									foreach ($hasil_project as $item) {
										echo '<option value="'.$item->kode_kategori_menu.'">'.$item->nama_kategori_menu.'</option>';
									}
									?>
								</select>
							</div>

							<div class="sear-sub">
								<input type="submit" id="btncari" value=" ">
							</div>

						</form>

					</div>


					<div class="top_nav_right">
						<div class="cart box_1">
							<a href="<?php echo base_url() . 'web/cart'?>">
								<h3> <div class="total">
									<i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
									<?php $ambil_data = $this->db->query("SELECT * FROM opsi_taking_order_temp");
									$hasil_ambil_data = $ambil_data->result_array();
									?>
									<span class="simpleCart_total"></span> (<span ><?php echo count($hasil_ambil_data);?></span> items)</div>

								</h3>
							</a>
							<p><a href="<?php echo base_url() . 'component/template/javascript:;'?>" class="simpleCart_empty">Empty Cart</a></p>

						</div>
						<div>
						<button type="button" class="button button1" id="show">Custom</button>
					</div>

					</div>

					
					
					<div class="clearfix"></div>
				</div>
			</div>
			<center style="display:none;" class="oke">  
			<div style="width:550px;height:70px;background-color:grey;border-radius:10px;" class="muncul">
				<div style="float:left;margin-left:20px;margin-top:20px;" >
					<div>
						<select placeholder="Nama Barang" name="nama_bahan_baku" style="width:125px;height:30px;border-style:none" >
							<option disabled="">PILIH BARANG</option>
							<option value="semen">SEMEN</option>
						</select>
					</div>
				</div>
				<div style="float:left;margin-left:20px;margin-top:10px;margin-top:20px;">
					<div>
						<input type="text" placeholder="QTY" style="width:125px;height:30px;border-style:none;" name="qty_grosir" >
					</div>
				</div>
				<div style="float:left;margin-left:20px;margin-top:10px;;margin-top:20px;">
					<div>
						<input type="text" placeholder="Harga" style="width:125px;height:30px;border-style:none;" name="harga_jual_1">
					</div>
				</div>
				<div style="float:left;margin-left:20px;margin-top:13px">
					<div>
						<button type="submit" value="submit" id="hide" class="button button2">add</button>
					</div>
				</div>
			</div>

			</center>
			<!-- //header-bot -->
		
			<script>
				$(function () {


					$("#btncari").click(function()



						{var parameter = $('#input_konten').val();
						var filter = $('#filter').val();
						$.ajax( {  
							type :"POST",  
							url : "<?php echo base_url() . 'web/cari' ?>",  
							cache :false,  
							data :({key:parameter,filter:filter}),
							beforeSend: function(){
								$(".search1").show()
							},
							success : function(data) {  
								$(".box_ajax").html(data);
								$(".search1").hide();                     
							},  
							error : function() {  
								alert("Data gagal dimasukkan.");  
							}  
						});

						return false;   


					});

				});
			</script>
			<!-- //banner-top -->
}
<!-- banner 
<div class="banner-grid">
	<div id="visual">
			<div class="slide-visual">
				
				<ul class="slide-group">
					<li><img class="img-responsive" src="<?php echo base_url() . 'component/template/images/ba1.jpg'?>" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="<?php echo base_url() . 'component/template/images/ba2.jpg'?>" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="<?php echo base_url() . 'component/template/images/ba3.jpg'?>" alt="Dummy Image" /></li>
				</ul>

				
				<div class="script-wrap">
					<ul class="script-group">
						<li><div class="inner-script"><img class="img-responsive" src="<?php echo base_url() . 'component/template/images/baa1.jpg'?>" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="<?php echo base_url() . 'component/template/images/baa2.jpg'?>" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="<?php echo base_url() . 'component/template/images/baa3.jpg'?>" alt="Dummy Image" /></div></li>
					</ul>
					<div class="slide-controller">
						<a href="#" class="btn-prev"><img src="<?php echo base_url() . 'component/template/images/btn_prev.png'?>" alt="Prev Slide" /></a>
						<a href="#" class="btn-play"><img src="<?php echo base_url() . 'component/template/images/btn_play.png'?>" alt="Start Slide" /></a>
						<a href="#" class="btn-pause"><img src="<?php echo base_url() . 'component/template/images/btn_pause.png'?>" alt="Pause Slide" /></a>
						<a href="#" class="btn-next"><img src="<?php echo base_url() . 'component/template/images/btn_next.png'?>" alt="Next Slide" /></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<script type="text/javascript" src="<?php echo base_url() . 'component/template/js/pignose.layerslider.js'?>"></script>
	<script type="text/javascript">
	//<![CDATA[
		$(window).load(function() {
			$('#visual').pignoseLayerSlider({
				play    : '.btn-play',
				pause   : '.btn-pause',
				next    : '.btn-next',
				prev    : '.btn-prev'
			});
		});
	//]]>
	</script>

</div>
//banner -->