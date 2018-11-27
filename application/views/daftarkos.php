<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
	<div class="widget-box">
		<div class="widget-title"> 
			<span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Daftar Pinjaman</h5>
		</div>
		<a href="Cdaftarkos/tambahdatakos">
		<button type="button" class="btn btn-success" >Tambah Data Kos</button>
		</a>
		<form method="post" action="<?php echo site_url('Cpinjaman/index'); ?>">
			<div class="row">
				<div class="col-md-3 pull-right">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Cari" name="cari" >
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" name="submit"value='submit'>
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</div>
				
			</div>
		</form>
		<div class="widget-content nopadding">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>ID Kos</th>
						<th>nama_pemilik</th>
						<th>Nama Kos</th>
						<th>Alamat Kos</th>
						<th>Rentang harga</th>
						<th>Deskripsi</th>
						<th>Foto Kos</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($daftar as $get){
						?>
						<form>
							<td><?php echo $get->id_kos; ?></td>
							<td><?php echo $get->id_akun; ?></td>
							<td><?php echo $get->nama_kos; ?></td>
							<td><?php echo $get->alamat_kos; ?></td>
							
							<td><?php echo $get->harga_bawah.'-';echo $get->harga_atas; ?></td>
							<td><?php echo $get->deskripsi; ?></td>	
							<td>
								<a target="_blank" rel="noopener noreferrer" href="<?php echo $get->foto_kos; ?>"><img src="<?php echo site_url($get->foto_kos); ?>" height='30'></a>
							</td>
							<td>
								<a href="Cpinjaman/detail/<?php echo $get->id_kos; ?>">
									<button type="button" class="btn btn-primary btn-block"><span class="fa fa-file-text-o"> Detail</span></button>
								</a>
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