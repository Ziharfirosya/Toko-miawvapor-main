<div class="container">
	<div class="row mt-4">
		<div class="col">
			<div class="card">
				<h5 class="card-header">Pesanan Berhasil</h5>	
				<div class="card-body">
					<h4><strong>No Pesanan : <?= $content['invoice'] ?></strong></h4>
					<p>Terimakasih telah berbelanja.</p>
					<br>
					<p>Silakan lewati pembayaran dengan prosedur berikut:</p>
					<ol>
						<li>Transfer ke rekening berikut <strong>PERMATA 123456789</strong> An. Miaw Vapor</li>
						<li>Sertakan informasi dengan nomor pesanan <strong><?= $content['invoice'] ?></strong></li>
						<li>Total pembayaran <strong>Rp. <?= number_format($content['total'], 0, ',', '.') ?></strong></li>
					</ol>
					<p>Jika Anda sudah melakukan pembayaran, silakan kirimkan bukti transfernya<a href="<?= base_url('myorder/detail/' . $content['invoice']) ?>"> to this link</a></p>
					<a href="<?= base_url('home') ?>" class="btn btn-primary btn-sm">Kembali</a>
				</div>
			</div>
		</div>
	</div>
</div>
