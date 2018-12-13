<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
	<div class="widget-box">
		<div class="widget-title"> 
			<span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Daftar kamar kos</h5>
		</div>
		<a href="Cdaftarkos/tambahdatakos">
		<button type="button" class="btn btn-success" >Tambah Data kamar Kos</button>
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
					<th>ID kamar Kos</th>
						<th>Nama Kamar</th>
						<th>Harga</th>
						<th>Deskripsi</th>
						<th>foto</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($daftar as $get){
						?>
						<form>
							<td><?php echo $get->id_detail_kos; ?></td>
							<td><?php echo $get->nama_kamar; ?></td>
							<td><?php echo $get->harga; ?></td>
							<td><?php echo $get->deskripsi; ?></td>	
							<td>
								<a target="_blank" rel="noopener noreferrer" href="<?php echo $get->foto; ?>"><img src="<?php echo site_url($get->foto); ?>" height='30'></a>
							</td>
							<td>
								<a href="<?php echo site_url('Cdaftarkos/editdatakamarkos/'.$get->id_detail_kos.'') ?>">
									<button type="button" class="btn btn-success btn-block"><span class="fa fa-file-text-o"> Edit</span></button>
								</a>
								<a href="Cdaftarkos/hapuskamarkos/<?php echo $get->id_detail_kos; ?>">
									<button type="button" class="btn btn-primary btn-block"><span class="fa fa-file-text-o"> hapus</span></button>
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