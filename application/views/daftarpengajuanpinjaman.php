<section class="content-header">
<?php if (isset($_SESSION['error'])) {
		?>
		<div class="alert alert-error alert-dismissible">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<h4><i class="icon fa fa-check"></i> Error!</h4>
			<?php 
			echo $_SESSION['error']; 
			unset($_SESSION['error'])
			?>
		</div>
		<?php  
	}
 ?>
</section>

<!-- Main content -->
<section class="content">
	<div class="widget-box">
		<div class="widget-title"> 
			<span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Daftar Pengajuan</h5>
			<span class="label label-info">KPRI AMAL BAKTI</span> 
		</div>
		<div class="widget-content nopadding">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID Pinjaman</th>
						<th>KTA</th>
						<th>Nama</th>
						<th>Unit Pinjaman</th>
						<th>Jumlah Pinjaman</th>
						<th>Angsuran</th>
						<th>Metode Pencairan</th>
						<th>Tanggal Pinjam</th>
						<th>Slip Gaji</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($daftar as $get){
						?>
						<tr>
							<form>
								<td><?php echo $get->id_pinjaman; ?></td>
								<td><?php echo $get->kta; ?></td>
								<td><?php echo $get->nama; ?></td>
								<td><?php echo $get->unit; ?></td>
								<td><?php echo $get->jumlah_pinjaman; ?></td>
								<td><?php echo $get->angsuran; ?></td>
								<td><?php echo $get->metode_pencairan; ?></td>
								<td><?php echo $get->tanggal_pinjaman; ?></td>
								<td>
									<a target="_blank" rel="noopener noreferrer" href="<?php echo $get->scan_slipgaji; ?>"><img src="<?php echo site_url($get->scan_slipgaji); ?>" height='30'></a>
								</td>
								<td><a href="Cpengajuan/verifikasipinjaman/<?php echo $get->id_pinjaman; ?>"><button type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit" >Verifikasi</span></button>
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
		<div id="modaledit" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Data Akun</h4>
					</div>
					<div class="modal-body row">
						<div class="col-md-11">
							<table class="table">
								<tr>
									<td>NAMA</td>
									<td> : </td>
									<td>asfasg</td>
								</tr>
								<tr>
									<td>NAK</td>
									<td> : </td>
									<td>NAK</td>
								</tr>
								<tr>
									<td>PASSWORD</td>
									<td> : </td>
									<td>asfasf</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
					</div>
				</div>

			</div>
		</div>
</section><!-- /.content -->