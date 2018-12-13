<section class="content-header">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<h1>Edit Data Kos</h1>
		</div>
	</div>
</section>

<!-- Main content -->
<section class="content">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<div class="box box-primary row">
				<div class="col-md-10 col-md-offset-1">
					<div class="box-header with-border">
						<h3 class="box-title">Form Edit Data kamar Kos</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<h3><?php echo($error1);  ?></h3>
					<form role="form" method="post" enctype="multipart/form-data" class="form-horizontal" action="<?php echo site_url('Cdaftarkos/updatedatakamarkos'); ?>">
						<div class="box-body">
							<?php foreach($datakos as $u){ ?>
								<div class="form-group">
									<label for="id_kos" class="col-sm-2 control-label">Id Kamar Kos</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Masukkan Nama Kos" name="id_kos" id="id_kos" readonly value="<?php echo $u->id_kos;?>">
										<b><?php echo form_error('nama_kos'); ?></b>
									</div>
								</div>
								<div class="form-group">
									<label for="nama_kos" class="col-sm-2 control-label">Nama Kamar Kos</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Masukkan Nama Kamar Kos" name="nama_kamar" id="nama_kamar" value="<?php echo $u->nama_kamar;?>">
										<b><?php echo form_error('nama_kamar'); ?></b>
									</div>
								</div>
								<div class="form-group">
									<label for="harga" class="col-sm-2 control-label">Harga</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Masukkan Harga Kamar Kos" name="harga" id="harga" value="<?php echo $u->harga;?>">
										<b><?php echo form_error('harga'); ?></b>
									</div>
								</div>
								<div class="form-group">
									<label for="deskripsi" class="col-sm-2 control-label">Deskripsi</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="Masukkan Deskripsi Kos anda" name="deskripsi" id="deskripsi" value="<?php echo $u->deskripsi;?>">
										<b><?php echo form_error('deskripsi'); ?></b>
									</div>
								</div>

								<div class="form-group">

									<label for="foto" class="col-sm-2 control-label">Foto Kamar Kos</label>
									<div class="col-sm-3">
										<a target="_blank" rel="noopener noreferrer" href="<?php echo site_url().$u->foto ?>"><img src="<?php echo site_url().$u->foto ?>?=<?php echo filemtime($u->foto)?>" height='100px'></a>
										<input type="file" name="foto" id="foto" accept=".jpg, .jpeg">
										<small>(max 2mb)</small>
										<br>
										<small>foto kamar kos anda dengan jelas</small>
									</div>
								</div>
							<?php } ?>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-success pull-right">Save</button>
						</div>
					</div>
					<!-- /.box-footer -->
				</form>
			</div>
		</div>
	</div>
</section>