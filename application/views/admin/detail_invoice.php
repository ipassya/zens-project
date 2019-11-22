<div class="container-fluid">
	<div class="card shadow mb-4">
	    <div class="card-header py-3">
			<h4>Detail Pesanan <div class="btn btn-sm btn-success">No. Invoice: <?php echo $invoice->id; ?></div></h4>
		</div>
		<div class="card-body">
	      <div class="table-responsive">
			<table class="table table-bordered table-hover table-striped" width="100%" cellspacing="0">
				<thead>
					<tr class="text-center">
						<th>ID Barang</th>
						<th>Nama Produk</th>
						<th>Jumlah Pesanan</th>
						<th>Harga Satuan</th>
						<th>Sub Total</th>
					</tr>
				</thead>
				
				<tbody>
					<?php 
					$total = 0;
					foreach ($pesanan as $psn) :
						$subtotal = $psn->jumlah * $psn->harga;
						$total += $subtotal;
					?>

					<tr class="text-center">
						<td><?= $psn->id_brg; ?></td>
						<td><?= $psn->nama_brg; ?></td>
						<td><?= $psn->jumlah; ?></td>
						<td>Rp. <?= number_format($psn->harga, '0','','.'); ?></td>
						<td>Rp. <?= number_format($subtotal, '0','','.'); ?></td>
					</tr>

					<?php endforeach; ?>

					<tr>
						<td colspan="4" align="right">Grand Total</td>
						<td class="text-center">Rp. <?= number_format($total, '0','','.');  ?></td>
					</tr>
				</tbody>
			</table>

			<a href="<?php echo base_url('admin/invoice/index') ?>"><div class="btn btn-sm btn-primary">Kembali</div></a>
		  </div>
	    </div>
      </div>
</div>