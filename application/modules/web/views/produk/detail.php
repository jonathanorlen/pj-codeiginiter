<?php

                          $parameter = $_GET['id'];
                          $ambil_data = $this->db->query(" SELECT * FROM master_bahan_baku where id= '$parameter' ");
                          $hasil_ambil_data = $ambil_data->row();

                      ?>
<div class="single">
	<div class="container">
		<div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
			<div class="grid images_3_of_2">
				<div class="flexslider">
					<!-- FlexSlider -->
						<script>
						// Can also be used with $(document).ready()
							$(window).load(function() {
								$('.flexslider').flexslider({
								animation: "slide",
								controlNav: "thumbnails"
								});
							});
						</script>
					<!-- //FlexSlider-->
					<ul class="slides">
						<li data-thumb="images/d2.jpg">
							<div class="thumb-image"> <img src="images/d2.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li>
						<li data-thumb="images/d1.jpg">
							<div class="thumb-image"> <img src="images/d1.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li>	
						<li data-thumb="images/d3.jpg">
							<div class="thumb-image"> <img src="images/d3.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li>
						<li data-thumb="images/d4.jpg">
							<div class="thumb-image"> <img src="images/d4.jpg" data-imagezoom="true" class="img-responsive"> </div>
						</li>	
					</ul>
					<div class="clearfix"></div>
				</div>	
			</div>
		</div>
		<div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
					<h3><?php echo $hasil_ambil_data->nama_bahan_baku;?></h3>
					<p><span class="item_price"><?php echo format_rupiah($hasil_ambil_data->harga_jual_1);?></span></p>
					<div class="occasion-cart">
						<a href="#" class="item_add hvr-outline-out button2">Add to cart</a>
					</div>
					
		</div>
				<div class="clearfix"> </div>

				<div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
						</ul>
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
							<p><?php echo $hasil_ambil_data->keterangan;?></p>
							</div>
						</div>
					</div>
				</div>
	</div>
</div>