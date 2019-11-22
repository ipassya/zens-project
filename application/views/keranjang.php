<div class="container-fluid">
	<div class="card shadow mb-4">
    	<div class="card-header py-3">
		    <h4 class="m-0 font-weight-bold text-primary">Keranjang Belanja</h4>
		</div>
		<div class="card-body">
	      <div class="table-responsive">

			<table class="table table-bordered table-striped table-hover" width="100%" cellspacing="0">
				<tr>
					<th>No.</th>
					<th>Nama Produk</th>
					<th>Jumlah</th>
					<th>Harga</th>
					<th>Sub-Total</th>
				</tr>

				<?php 
				$no = 1;
				foreach ($this->cart->contents() as $items) : ?>
					<tr>
						<td><?= $no++; ?></td>
						<td><?= $items['name']; ?></td>
						<td><?= $items['qty']; ?></td>
						<td align="right">Rp. <?= number_format($items['price'], '0','','.'); ?></td>
						<td align="right">Rp. <?= number_format($items['subtotal'], '0','','.'); ?></td>
					</tr>
				<?php endforeach; ?>

				<tr>
					<td colspan="4"></td>
					<td align="right">Rp. <?= number_format($this->cart->total(), '0','','.'); ?></td>
				</tr>
			</table>
			<div align="right">
				<a href="<?php echo base_url('dashboard/hapus_keranjang') ?>"><div class="btn btn-sm btn-danger">Hapus Keranjang</div></a>
				<a href="<?php echo base_url('welcome') ?>"><div class="btn btn-sm btn-primary">Lanjutkan Belanja</div></a>
				<a href="<?php echo base_url('dashboard/pembayaran') ?>"><div class="btn btn-sm btn-success">Pembayaran</div></a>
			</div>
		  </div>
	    </div>
      </div>
</div>