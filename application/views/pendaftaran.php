<section class="content-header">


</section>
<!-- Main content -->
<section class="content">
	<div class="widget-box">
		<div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Verifikasi Pendaftaran</h5>
			<span class="label label-info">KPRI AMAL BAKTI</span>
		</div>
		<div class="row">
			<div class="col-md-3 pull-right">
				<form method="get" action="<?php echo site_url('Cpendaftaran/index'); ?>">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Cari nama" name="cari" value="<?php echo $cari;?>">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" name="submit"value='submit'>
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="widget-content nopadding" style="overflow-x: auto;">
			<div class="table-responsive">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>NIK</th>
						<th>Nama</th>
						<th>NO WA</th>
						<th>Email</th>
						<th>Tempat Lahir</th>
						<th>Tgl Lahir</th>
						<th>KTP</th>
						<th>Verifikasi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($pendaftaran as $get){
						?>
						<tr>
							<td><?php echo $get->id_registrasi; ?></td>
							<td><?php echo $get->NIK; ?></td>
							<td><?php echo $get->nama; ?></td>
							<td><?php echo $get->no_wa; ?></td>
							<td><?php echo $get->email; ?></td>
							<td><?php echo $get->tempat_lahir; ?></td>
							<td><?php echo $get->tgl_lahir; ?></td>
							<td>
								<a target="_blank" rel="noopener noreferrer" href="<?php echo $get->scan_ktp; ?>"><img class="img-responsive" style="height: 20px;" src="<?php echo $get->scan_ktp; ?>"></a>
							</td>
							<td><a href="<?php echo site_url('Cpendaftaran/editstatus/'.$get->id_registrasi.'') ?>" class="btn btn-success btn-xs"><span class="glyphicon glyphicon-edit"></span> Verifikasi</a>
								
								<a href="<?php echo site_url('Cpendaftaran/hapuspendaftaran/'.$get->id_registrasi.'') ?>" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span> Hapus</a>
							</td>

						</tr>
						<?php
					}
					?>
				</tbody>
			</table>
		</div>
		</div>
		<?php 
		echo $this->pagination->create_links(); 
		?>
	</div>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<form id="ver" method="post">
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
									<td id="nama" name="nama"></td>
								</tr>
								<tr>
									<td>KTA</td>
									<td> : </td>
									<td id="kta2"></td>
								</tr>
								<tr>
									<td>PASSWORD</td>
									<td> : </td>
									<td id="pass2"></td>
								</tr>
							</table>
							<input type="password" id="pass" name="pass" hidden>
							<input type="text" id="kta" name="kta" hidden>
						</div>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-success">Verifikasi</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section><!-- /.content -->
<script type="text/javascript">
	function generator(nama, id, pilstatuspegawai){
		document.getElementById('nama').innerHTML = nama;
		var randomstring = Math.random().toString(36).slice(-6);
		var kta;
		if (pilstatuspegawai == "PNS") {
			kta = "1332.11.<?php echo($pns) ?>";
		} else if (pilstatuspegawai == "Honorer") {
			kta = "1332.22.<?php echo($honorer) ?>";
		} else if (pilstatuspegawai == "Pensiunan") {
			kta = "1332.23.<?php echo($pensiunan) ?>";
		} else if (pilstatuspegawai == "Karyawan") {
			kta = "1332.24.<?php echo($karyawan) ?>";
		}
		document.getElementById('kta2').innerHTML = kta;
		document.getElementById('kta').value = kta;
		document.getElementById('pass2').innerHTML = randomstring;
		document.getElementById('pass').value = randomstring;
		var url = "<?php echo site_url('Cpendaftaran/editstatus/') ?>" + id;
		document.getElementById('ver').action = url;
	}
</script>