<section class="content-header">
</section>

<!-- Main content -->
<section class="content">
	<div class="col-md-10 col-md-offset-1">
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Horizontal Form</h3>
			</div>
			<!-- /.box-header -->
			<!-- form start -->
			<form class="form-horizontal" method="post" role="form" enctype="multipart/form-data" action="<?php echo site_url('Csimpanan/savesimpanan'); ?>">
				<div class="box-body">
					<div class="form-group">
						<label for="KTA" class="col-sm-2 control-label">KTA</label>
						<div class="col-sm-10">
							<?php if ($status=="editlist") { ?>
								<input type="KTA" class="form-control" readonly name="KTA" id="KTA" placeholder="KTA" value="<?php echo $akun['KTA'] ?>">
							<?php } else{ ?>
								<input type="KTA" class="form-control" name="KTA" id="KTA" placeholder="KTA">
							<?php } ?>
						</div>
					</div>
					<div class="form-group">
						<label for="nama" class="col-sm-2 control-label">nama</label>
						<div class="col-sm-10">
							<?php if ($status=="editlist") { ?>
								<input type="nama" class="form-control" readonly id="nama" placeholder="nama" value="<?php echo $akun['nama'] ?>">
							<?php } else{ ?>
								<input type="nama" class="form-control" id="nama" placeholder="Masukkan nama" >
							<?php } ?>
						</div>
					</div>
					<div class="form-group">
						<label for="pilsimpanan" class="col-sm-2 control-label">Jenis Simpanan</label>
						<div class="col-sm-10">
							<select class="form-control" name="jenissimpanan" style="width: 100%;">
								<option value="2" selected="selected">Simpanan Pokok</option>
								<option value="1">Simpanan Wajib</option>
								<option value="3">Simpanan Sukarela</option>
								<option value="4">Simpanan Hari Raya</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="jumlah" class="col-sm-2 control-label">Jumlah (Rp)</label>
						<div class="col-sm-10">
							<input type="number" name="jumlah" class="form-control" id="jumlah" placeholder="Masukkan jumlah" minlength="0">
							<b><?php echo form_error('jumlah'); ?></b>
						</div>
					</div>
					<div class="form-group">
						<label for="tgl_simpanan" class="col-sm-2 control-label">Tanggal Simpanan</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="tgl_simpanan" placeholder="tgl_simpanan" value="<?php echo (date("Y-m-d")) ?>" readonly>
						</div>
					</div>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-default">Batal</button>
					<button type="submit" class="btn btn-success pull-right">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</section>