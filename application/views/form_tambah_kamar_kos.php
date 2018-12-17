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
						<h3 class="box-title">Form Tamnah Data Kamar Kos</h3>
					</div>
					<!-- /.box-header -->
					<!-- form start -->
									<?php foreach($datakos as $u){ ?>

					<form role="form" method="post" enctype="multipart/form-data" class="form-horizontal" action="<?php echo site_url('Cdaftarkos/datakamarkosbaru'); ?>">
						<div class="box-body">
							<div class="form-group">
											<label for="nama_kos" class="col-sm-2 control-label">Nama Kos</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" placeholder="Masukkan Nama Kamar Kos" name="nama_kos" id="nama_kos" value="<?php echo $u->nama_kos?>">
												<b><?php echo form_error('$nama_kos'); ?></b>
											</div>
										</div>
										<div class="form-group">
											<label for="id_kos" class="col-sm-2 control-label">id Kos</label>
											<div class="col-sm-10">
												<input type="text" class="form-control" placeholder="Masukkan Nama Kamar Kos" name="id_kos" id="id_kos" value="<?php echo $u->id_kos?>">
												<b><?php echo form_error('$id_kos'); ?></b>
											</div>
										</div>
							<div class="form-group">
								<label for="nama_kamar" class="col-sm-2 control-label">Nama Kamar Kos</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Nama Kamar Kos" name="nama_kamar" id="nama_kamar" value="<?php echo set_value('nama_kamar');?>">
									<b><?php echo form_error('nama_kamar'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="luas_kamar" class="col-sm-2 control-label">Luas Kamar Kos</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Luas Kamar Kos" name="luas_kamar" id="luas_kamar" value="<?php echo set_value('luas_kamar');?>">
									<b><?php echo form_error('luas_kamar'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="harga" class="col-sm-2 control-label">Harga</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Harga Kamar Kos" name="harga" id="harga" value="<?php echo set_value('harga');?>">
									<b><?php echo form_error('harga'); ?></b>
								</div>
							</div>
							<div class="form-group">
								<label for="deskripsi_kamar" class="col-sm-2 control-label">Deskripsi</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" placeholder="Masukkan Deskripsi Kos anda" name="deskripsi_kamar" id="deskripsi_kamar" value="<?php echo set_value('deskripsi');?>">
									<b><?php echo form_error('deskripsi_kamar'); ?></b>
								</div>
							</div>
							
							<div class="form-group">
								<label for="foto_kamar_kos" class="col-sm-2 control-label">Foto Kamar Kos</label>
								<div class="col-sm-10">
									<input type="file" name="foto_kamar_kos" id="foto_kamar_kos" accept=".jpg, .jpeg">
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