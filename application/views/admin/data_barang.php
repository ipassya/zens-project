<div class="container-fluid">
  <!-- Page Heading -->
  <!-- <h1 class="h3 mb-2 text-gray-800">Data Barang</h1> -->

  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h4 class="m-0 font-weight-bold text-primary"  style="display: inline-block;">Data Barang</h4>
	    <button style="float: right;" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#tambah_barang"><i class="fas fa-plus fa-sm"></i> Tambah Barang</button>
    </div>
    <div class="card-body">
      <div class="table-responsive">
      	<table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
          <thead>
        		<tr class="text-center">
        			<th>No.</th>
        			<th>Nama Barang</th>
        			<th>Keterangan</th>
        			<th>Kategori</th>
        			<th>Harga</th>
        			<th>Stok</th>
              <!-- Detail belum jadi colspan 2-->
        			<th>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Aksi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </th>
        		</tr>
          </thead>
      		
          <tbody>
        		<?php
        		$no = 1;
        		foreach ($barang as $brg) : ?>
        		<tr>
        			<td><?= $no++; ?></td>
        			<td><?= $brg->nama_brg; ?></td>
        			<td><?= $brg->keterangan; ?></td>
        			<td><?= $brg->kategori; ?></td>
        			<td><?= number_format($brg->harga, '0','','.'); ?></td>
        			<td><?= $brg->stok; ?></td>
        			<td style="display: inline-block;">
                 <?php echo anchor('admin/data_barang/detail/'.$brg->id_brg, '<div class="btn btn-success btn-sm"><i class="fas fa-search-plus"></i></div>') ?>&nbsp;
        			   <?php echo anchor('admin/data_barang/edit/'.$brg->id_brg, '<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>') ?>&nbsp;
        			<!-- <td><?php //echo anchor('admin/data_barang/hapus/'.$brg->id_brg, '<div class="btn btn-danger btn-sm data-toggle="modal" data-target="#logoutModal""><i class="fa fa-trash"></i></div>') ?></td> -->
                 <a href="#" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#hapusModal"><i class="fa fa-trash"></i></a>
              </td>
        		</tr>
        		<?php endforeach; ?>
          </tbody>
      	</table>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

<!-- Modal -->
<div class="modal fade" id="tambah_barang" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Form Input Produk</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url().'admin/data_barang/tambah_aksi' ?>" method="post" enctype="multipart/form-data">
        	
        	<div class="form-group">
        		<label>Nama Barang</label>
        		<input type="text" name="nama_brg" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>Keterangan</label>
        		<input type="text" name="keterangan" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>Kategori</label>
        		<select class="form-control" name="kategori">
              <option>Elektronik</option>
              <option>Pakaian Pria</option>
              <option>Pakaian Wanita</option>
              <option>Pakaian Anak-anak</option>
            </select>
        	</div>
        	<div class="form-group">
        		<label>Harga</label>
        		<input type="text" name="harga" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>Stok</label>
        		<input type="text" name="stok" class="form-control">
        	</div>
        	<div class="form-group">
        		<label>Gambar</label><br>
        		<input type="file" name="gambar" class="form-control">
        	</div>
      </div>
      <div class="modal-footer">
        <button type="reset" class="btn btn-danger" data-dismiss="modal">Reset</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Hapus Modal-->
        <div class="modal fade" id="hapusModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Yakin mau hapus?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">Pilih hapus kalo iya.</div>
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<?php echo base_url().'admin/data_barang/hapus/'.$brg->id_brg ?>">Hapus</a>
              </div>
            </div>
          </div>
        </div>