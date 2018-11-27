<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
	<?php 
	if (isset($_SESSION['message'])) {
		if ($_SESSION['message'] == 'sukses') {
			?>
			<div class="alert alert-success alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
				<h4><i class="icon fa fa-check"></i> Sukses!</h4>
				Input berhasil!
			</div>
			<?php 
		}
		unset($_SESSION['message']);
	}
	?>
	<div class="widget-box">
		<div class="widget-title"> 
			<span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Akun</h5>
			<span class="label label-info">KPRI AMAL BAKTI</span> 
		</div>
		<div class="row">
			<div class="col-md-3 pull-right">
				<form method="get" action="<?php echo site_url('Csimpanan/pembuatan'); ?>">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Cari KTA atau nama" name="cari" value="<?php echo $cari;?>">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" name="submit"value='submit'>
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="widget-content nopadding">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>NO</th>
						<th>KTA</th>
						<th>Nama</th>
						<th>Status</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($akun as $get){
						?>
						<tr>
							<td><?php echo $get->id_akun; ?></td>
							<td><?php echo $get->kta; ?></td>
							<td><?php echo $get->nama; ?></td>
							<td><?php echo $get->pilstatuspegawai; ?></td>
							<td width="20%"><a href="<?php echo site_url('Csimpanan/addsimpanan/'.$get->kta); ?>"><button type="button" class="btn btn-primary"><span class="fa fa-check-square" > Buat Data Simpanan</span></button></a>
							</td>
						</tr>
						<?php
					}
					?>
				</tbody>
			</table>
		</div>
		<?php 
		echo $this->pagination->create_links(); 
		?>
	</div>
</section><!-- /.content -->