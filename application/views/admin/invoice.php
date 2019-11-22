<div class="container-fluid">
	<div class="card shadow mb-4">
	    <div class="card-header py-3">
		    <h4 class="m-0 font-weight-bold text-primary">Invoice Pemesanan</h4>
	    </div>
	    <div class="card-body">
	      <div class="table-responsive">
			<table class="table table-bordered table-hover table-striped" id="dataTable" width="100%" cellspacing="0">
				<thead>
					<tr class="text-center">
						<th>Id Invoice</th>
						<th>Nama Pemesan</th>
						<th>Alamat Pengiriman</th>
						<th>Tanggal Pemesan</th>
						<th>Batas Pembayaran</th>
						<th>Aksi</th>
					</tr>
				</thead>
				
				<tbody>
					<?php foreach ($invoice as $inv) : ?>
					<tr>
						<td><?= $inv->id; ?></td>
						<td><?= $inv->nama; ?></td>
						<td><?= $inv->alamat; ?></td>
						<td><?= $inv->tgl_pesan; ?></td>
						<td><?= $inv->batas_bayar; ?></td>
						<td><?php echo anchor('admin/invoice/detail/'.$inv->id, '<div class="btn btn-sm btn-primary">Detail</div>') ?></td>
					</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		  </div>
	    </div>
    </div>
</div>