<div class="container-fluid">
	<div class="card shadow mb-4">
    	<div class="card-header py-3">
			<h4 class="m-0 font-weight-bold text-primary"><i class="fas fa-edit"></i>&nbsp;Edit Data Barang</h4>
    	</div>
		<div class="card-body">
			<?php foreach ($barang as $brg) : ?>

				<form action="<?php echo base_url().'admin/data_barang/update' ?>" method="post">
					
					<div class="form-group">
						<label>Nama Barang</label>
						<input type="text" name="nama_brg" class="form-control" value="<?= $brg->nama_brg; ?>">
					</div>
					<div class="form-group">
						<label>Keterangan</label>
						<input type="hidden" name="id_brg" class="form-control" value="<?= $brg->id_brg; ?>">
						<input type="text" name="keterangan" class="form-control" value="<?= $brg->keterangan; ?>">
					</div>
					<div class="form-group">
						<label>Kategori</label>
						<input type="text" name="kategori" class="form-control" value="<?= $brg->kategori; ?>">
					</div>
					<div class="form-group">
						<label>Harga</label>
						<input type="text" name="harga" class="form-control" value="<?= $brg->harga; ?>">
					</div>
					<div class="form-group">
						<label>Stok</label>
						<input type="text" name="stok" class="form-control" value="<?= $brg->stok; ?>">
					</div>

					<button type="submit" class="btn btn-primary btn-sm">Simpan</button>

				</form>

			<?php endforeach; ?>
		</div>
	</div>
</div>