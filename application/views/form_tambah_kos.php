<section class="content-header">
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<h1>Data Kos</h1>
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
						<h3 class="box-title">Form Pengajuan</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
					<a href="<?= site_url('Cdaftarkos') ?>" style="color: white" class="btn btn-warning push-10 pull-right"><i
								class="fa fa-backward"></i> Kembali</a>
							<br>
									<?php foreach($datakos as $u){ ?>

					<form role="form" method="post" enctype="multipart/form-data" class="form-horizontal" action="<?php echo site_url('Cdaftarkos/datakosbaru'); ?>">
						<div class="box-body">
							<div class="form-group">
								<label for="nama_kos" class="col-sm-2 control-label">Nama Kos</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Nama Kos" name="nama_kos" id="nama_kos" value="<?php echo $u->nama_kos?>">
									<b><?php echo form_error('nama_kos'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="alamat_kos" class="col-sm-2 control-label">Alamat Kos</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Alamat Kos" name="alamat_kos" id="alamat_kos" value="<?php echo set_value('alamat_kos');?>">
									<b><?php echo form_error('alamat_kos'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="harga_bawah" class="col-sm-2 control-label">Harga Bawah</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Harga Kamar Kos Termurah" name="harga_bawah" id="harga_bawah" value="<?php echo set_value('harga_bawah');?>">
									<b><?php echo form_error('harga_bawah'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="harga_atas" class="col-sm-2 control-label">Harga Atas</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Harga Kamar Kos Termahal" name="harga_atas" id="harga_atas" value="<?php echo set_value('harga_atas');?>">
									<b><?php echo form_error('harga_atas'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="deskripsi" class="col-sm-2 control-label">Deskripsi</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Deskripsi Kos anda" name="deskripsi" id="deskripsi" value="<?php echo set_value('deskripsi');?>">
									<b><?php echo form_error('deskripsi'); ?></b>
								</div>
							</div>
							
							<div class="form-group">
								<label for="foto_kos" class="col-sm-2 control-label">Foto Kos</label>
								<div class="col-sm-10">
									<input type="file" name="foto_kos" id="foto_kos" accept=".jpg, .jpeg">
									<small>(max 2mb)</small>
									<br>
									<small>foto kos anda dengan jelas</small>
								</div>
							</div>
						</div>
						<!-- /.box-body -->
						<div class="box-footer">
							<button type="submit" class="btn btn-success pull-right">Save</button>
						</div>
					</div>
					<!-- /.box-footer -->
				</form>
			<?php } ?>
			</div>
		</div>
	</div>
</section>