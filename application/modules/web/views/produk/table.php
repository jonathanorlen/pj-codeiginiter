<div class="w3l_banner">
	<!-- mail -->
	<div class="mail">
		<h3>Cart</h3>
		<div class="col-md-6 agileinfo_mail_grid_right">
			
			<div class="col-md-12 agileinfo_mail_grid_left">
				<center>
					<ul>
						<li>pict</li>
						<li>Item</li>
						<li>qty</span></li>
						<li>action</li>
					</ul>
					
					<?php
					
					
					$ambil_data = $this->db->query('SELECT * FROM opsi_taking_order_temp');
					$hasil_ambil_data = $ambil_data->result_array();
					

					foreach ($hasil_ambil_data as $item) { 



						?>
						<ul>
							<li><img style="width:50px;height:50px;" src="<?php echo base_url() . 'component/template/images/1.png'?>" alt=" " class="img-responsive" /></li>
							<li><?php echo $item['nama_menu'];?><span><?php echo $item['harga_satuan'];?></span></li>
							<li><input style="width:50px; text-align: center;" type="text" name="Telephone" value="1" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '1';}" required=""></span></li>
							<li><a  href="<?php echo base_url() . 'web/hapuscart?id='.$item['id'] ?>"> <i class="fa fa-trash-o" aria-hidden="true"></i></a></li>
						</ul>

						<?php } ?>
						
						<div>
							<input style=" background:#ffaa00;" type="submit" value="Tambah item">

							<input type="submit" value="Selesai">
						</div>
					</center>

				</div>
			<!--
				<div class="col-md-8 agileinfo_mail_grid_right">
					<form action="#" method="post">
						<div class="col-md-6 wthree_contact_left_grid">
							<input type="text" name="Name" value="Name*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}" required="">
							<input type="email" name="Email" value="Email*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email*';}" required="">
						</div>
						<div class="col-md-6 wthree_contact_left_grid">
							<input type="text" name="Telephone" value="Telephone*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone*';}" required="">
							<input type="text" name="Subject" value="Subject*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject*';}" required="">
						</div>
						<div class="clearfix"> </div>
						<textarea  name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
						<input type="submit" value="Submit">
						<input type="reset" value="Clear">
					</form>
				</div>-->

				<div class="clearfix"> </div>
			</div>
		</div>
		<!-- //mail -->
	</div>