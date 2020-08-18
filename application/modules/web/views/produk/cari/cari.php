   <div class="box_ajax">
   <div class="agile_top_brands_grids" id="posts">
    <?php

    $data=$this->input->post();
    $key=$data['key'];
    $filter=$data['filter'];


    if($key){
      $this->db->like('nama_bahan_baku',$key,'both');
    }
    if($filter){
      $this->db->where('kode_kategori_produk',$filter);
    }

    $ambil_data = $this->db->get('master_bahan_baku');

    $hasil_ambil_data = $ambil_data->result_array();


    foreach ($hasil_ambil_data as $item) {
      ?> 
            <div class="tab-1 content" >
              <div class="col-md-3 product-men">
                <div class="men-pro-item simpleCart_shelfItem">
                  <div class="men-thumb-item">
                    <img src="<?php echo base_url() . 'component/template/images/g1.png'?>" alt="" class="pro-image-front">
                    <img src="<?php echo base_url() . 'component/template/images/g1.png'?>" alt="" class="pro-image-back">
                    <div class="men-cart-pro">
                      <div class="inner-men-cart-pro">
                        <a href="<?php echo base_url() . 'component/template/single.html'?>" class="link-product-add-cart">Quick View</a>
                      </div>
                    </div>
                    <span class="product-new-top">New</span>
                    
                  </div>
                  <div class="item-info-product ">
                  <h4><a href="<?php echo base_url() . 'component/template/single.html'?>"> <?php echo substr($item['nama_bahan_baku'],0,20); ?></a></h4>
                    <div class="info-product-price">
                      <span class="item_price" value=""><?php echo format_rupiah($item['harga_jual_1']); ?></span>
                    </div>
                    <a href="" class="item_add single-item hvr-outline-out button2">Add to cart</a>                  
                  </div>
                </div>
              </div>
            </div>  
            <?php } ?>
                                  


           
          </div>
        </div>
        