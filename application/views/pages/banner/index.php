<<<<<<< HEAD
<div class="container">
	<div class="row mt-4 mb-3">
		<div class="col-11">
			<h2>List Banner</h2>
		</div>
		<div class="col float-right">
			<a href="<?= base_url('banner/add') ?>" class="btn btn-primary btn-sm">
				<i class="fas fa-plus"></i>
				Tambah Banner
			</a>
		</div>
	</div>

	<?php $this->load->view('layouts/_alert') ?>
	
	<div class="row mt-3">
		<div class="col">
			<table class="table table-bordered table-light text-center">
				<thead class="thead-dark">
					<tr>
						<th>#</th>
						<th>Banner</th>
						<th>Judul</th>
						<th width="300px">Deskripsi</th>
						<th>Warna Text</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php $no = 1; foreach($banners as $b) : ?>
						<tr>
							<td><?= $no++ ?></td>
							<td>
								<img src="<?= base_url('images/banner/' . $b['image']) ?>" style="width:300px">
							</td>
							<td><?= $b['head'] ?></td>
							<td><?= $b['content'] ?></td>
							<td>
								<?php if($b['text_color'] == 'text-light') : ?>
									Putih
								<?php else : ?>
									Hitam
								<?php endif ?>
							</td>
							<td>
								<a href="<?= base_url('banner/edit/' . $b['id']) ?>" class="btn btn-warning btn-sm">
									<i class="fas fa-edit text-light"></i>
								</a>
								<a href="<?= base_url('banner/delete/' . $b['id']) ?>" class="btn btn-danger btn-sm">
									<i class="fas fa-trash"></i>
								</a>
							</td>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
=======
<div class="container">
	<div class="row mt-4 mb-3">
		<div class="col-11">
			<h2>List Banner</h2>
		</div>
		<div class="col float-right">
			<a href="<?= base_url('banner/add') ?>" class="btn btn-primary btn-sm">
				<i class="fas fa-plus"></i>
				Tambah Banner
			</a>
		</div>
	</div>

	<?php $this->load->view('layouts/_alert') ?>
	
	<div class="row mt-3">
		<div class="col">
			<table class="table table-bordered table-light text-center">
				<thead class="thead-dark">
					<tr>
						<th>#</th>
						<th>Banner</th>
						<th>Judul</th>
						<th width="300px">Deskripsi</th>
						<th>Warna Text</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php $no = 1; foreach($banners as $b) : ?>
						<tr>
							<td><?= $no++ ?></td>
							<td>
								<img src="<?= base_url('images/banner/' . $b['image']) ?>" style="width:300px">
							</td>
							<td><?= $b['head'] ?></td>
							<td><?= $b['content'] ?></td>
							<td>
								<?php if($b['text_color'] == 'text-light') : ?>
									Putih
								<?php else : ?>
									Hitam
								<?php endif ?>
							</td>
							<td>
								<a href="<?= base_url('banner/edit/' . $b['id']) ?>" class="btn btn-warning btn-sm">
									<i class="fas fa-edit text-light"></i>
								</a>
								<a href="<?= base_url('banner/delete/' . $b['id']) ?>" class="btn btn-danger btn-sm">
									<i class="fas fa-trash"></i>
								</a>
							</td>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
>>>>>>> master
