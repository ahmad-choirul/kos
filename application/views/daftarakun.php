<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
	<div class="widget-box">
		<div class="widget-title"> 
			<span class="icon"> <i class="icon-th"></i> </span>
			<h5>Tabel Akun</h5>
			<span class="label label-info">KPRI AMAL BAKTI</span> 
		</div>
		<div class="row">
			<div class="col-md-3 pull-right">
				<form method="get" action="<?php echo site_url('Cdaftarakun/index'); ?>">
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
						<th>username</th>
						<th>Password</th>
						<th>NIK</th>
						<th>nama</th>
						<th>no_wa</th>
						<th>ID email</th>
						<th>tempat_lahir</th>
						<th>KTP</th>
						<th>status</th>
						<th>Level</th>
						<th>foto profil</th>
						<th>Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php
					foreach($akun as $get){
						?>
						<tr>
							<form>
								<td><?php echo $get->id_akun; ?></td>
								<td><?php echo $get->username; ?></td>
								<td><?php echo $get->password; ?></td>
								<td><?php echo $get->NIK; ?></td>
								<td><?php echo $get->nama; ?></td>
								<td><?php echo $get->no_wa; ?></td>
								<td><?php echo $get->email; ?></td>
								<td><?php echo $get->tempat_lahir; ?></td>
								
								<td>
									<a target="_blank" rel="noopener noreferrer" href="<?php echo $get->scan_ktp; ?>"><img src="<?php echo site_url($get->scan_ktp); ?>" height='30'></a>
								</td>
								<td><?php echo $get->status; ?></td>
								<td><?php echo $get->level; ?></td>
								<td>
									<a target="_blank" rel="noopener noreferrer" href="<?php echo $get->foto_profil; ?>"><img src="<?php echo site_url($get->foto_profil); ?>" height='30'></a>
								</td>
								<td><a href="Ceditdataakun/edit/<?php echo $get->id_akun; ?>"><button type="button" class="btn btn-success"><span class="glyphicon glyphicon-edit" >edit</span></button>
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