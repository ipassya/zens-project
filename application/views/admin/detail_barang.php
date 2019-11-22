<div class="container-fluid">
	<div class="card">
	  <h5 class="card-header">Detail Produk</h5>
	  <div class="card-body">
	  	<?php foreach ($barang as $brg) : ?>
	    <div class="row">
	    	<div class="col-md-4">
	    		<div class="exzoom" id="exzoom">
	    			<div class="exzoom_img_box">
	    				<ul class="exzoom_img_ul">
	    					<li><img src="<?php echo base_url().'/uploads/'.$brg->gambar ?>" class="card-img-top"></li>
	    				</ul>
	    			</div>
	    		</div>
	    	</div>
	    	<div class="col-md-8">
	    		<table class="table">
	    			<tr>
	    				<td>Nama Produk</td>
	    				<td><strong><?= $brg->nama_brg; ?></strong></td>
	    			</tr>
	    			<tr>
	    				<td>Keterangan</td>
	    				<td><strong><?= $brg->keterangan; ?></strong></td>
	    			</tr>
	    			<tr>
	    				<td>Kategori</td>
	    				<td><strong><?= $brg->kategori; ?></strong></td>
	    			</tr>
	    			<tr>
	    				<td>Stok</td>
	    				<td><strong><?= $brg->stok; ?></strong></td>
	    			</tr>
	    			<tr>
	    				<td>Harga</td>
	    				<td><strong><div class="btn btn-sm btn-success">Rp. <?= number_format($brg->harga, '0','','.'); ?></div></strong></td>
	    			</tr>
	    		</table>

	    		<?php echo anchor('admin/data_barang/', '<div class="btn btn-sm btn-danger">Kembali</div>') ?>

	    	</div>
	    </div>
		<?php endforeach; ?>
	  </div>
	</div>
</div>