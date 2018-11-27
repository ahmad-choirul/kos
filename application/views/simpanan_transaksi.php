<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
	<div class="widget-box">
		<div class="widget-title"> 
			<span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Daftar Transaksi Simpanan</h5>
			<span class="label label-info">KPRI AMAL BAKTI</span> 
		</div>
		<form method="get" action="<?php echo site_url('Csimpanan/transaksi'); ?>">
			<div class="row">
				<div class="col-md-3 pull-right">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Cari KTA" name="cari" value="<?php echo $cari;?>">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" name="submit"value='submit'>
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</div>
				<div class="col-md-2 pull-right">
					<div class="form-group">
						<select class="form-control" name="jenis">
							<option value="">Semua</option>
							<option value="1"
							<?php 
							if ($jenis == '1')
								echo 'selected'
							?>
							>Wajib</option>
							<option value="2"
							<?php 
							if ($jenis == '2')
								echo 'selected'
							?>
							>Pokok</option>
							<option value="3"
							<?php 
							if ($jenis == '3')
								echo 'selected'
							?>
							>Sukarela</option>
							<option value="4"
							<?php 
							if ($jenis == '4')
								echo 'selected'
							?>
							>Hari Raya</option>
						</select>
					</div>
				</div>
			</div>
		</form>
		<div class="widget-content nopadding">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID Transaksi</th>
						<th>ID Simpanan</th>
						<th>KTA</th>
						<th>Nama</th>
						<th>Jenis Transaksi</th>
						<th>Jumlah</th>
						<th>Jenis Simpanan</th>
						<th>Tanggal Transaksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($transaksi as $get){
						?>
						<tr>
							<td><?php echo $get->id_transaksi; ?></td>
							<td><?php echo $get->id_simpanan; ?></td>
							<td><?php echo $get->kta; ?></td>
							<td><?php echo $get->nama; ?></td>
							<td><?php
							if ($get->jenis_transaksi == 'tambah') {
								echo '<i class="fa fa-plus-square" id="icon"></i> ';
							} else if ($get->jenis_transaksi == 'kurang') {
								echo '<i class="fa fa-minus-square" id="icon"></i> ';
							}
							echo $get->jenis_transaksi;
							?></td>
							<td><?php echo $get->jumlah_transaksi; ?></td>
							<td><?php echo $get->jenis_simpanan; ?></td>
							<td><?php echo $get->tanggal_transaksi; ?></td>
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
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Angsuran</h4>
				</div>
				<div class="modal-body row">
					<div class="col-md-12">
						<table class="table">
							<tr>
								<td width="50%">Nama</td>
								<td> : </td>
								<td id="nama" name="nama"></td>
							</tr>
							<tr>
								<td width="50%">KTA</td>
								<td> : </td>
								<td id="KTA" name="KTA"></td>
							</tr>
							<tr>
								<td width="50%">Angsuran diperlukan</td>
								<td> : </td>
								<td id="angsuran_terbayar"></td>
							</tr>
							<tr>
								<td width="50%">Angsuran terbayar</td>
								<td> : </td>
								<td id="angsuran"></td>
							</tr>
						</table>
						<input type="password" id="pass" name="pass" hidden>
						<input type="text" id="kta" name="kta" hidden>
					</div>
				</div>
				<div class="modal-footer row">
					<div class="col-sm-12">
						<p align="center">Angsuran telah dibayar?</p>
					</div>
					<div class="col-sm-6">
						<a href="<?php echo site_url('Cpinjaman/angsur/'); ?>" class="btn btn-success btn-block" id ="angsur">IYA</a>
					</div>
					<div class="col-sm-6">
						<button type="button" class="btn btn-danger btn-block" data-dismiss="modal">TIDAK</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</section><!-- /.content -->
<script type="text/javascript">
	function angsur(id_pinjaman, KTA, nama, angsuran_terbayar, angsuran){
		$link = document.getElementById("angsur").href;
		document.getElementById("angsur").href = $link + id_pinjaman;
		document.getElementById('nama').innerHTML = nama;
		document.getElementById('KTA').innerHTML = KTA;
		document.getElementById('angsuran_terbayar').innerHTML = angsuran_terbayar;
		document.getElementById('angsuran').innerHTML = angsuran;
	}
</script>