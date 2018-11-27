<section class="content-header">
</section>

<!-- Main content -->
<section class="content">
 <form role="form" enctype="multipart/form-data" action="<?php echo site_url('Cpengajuan/updateverifikasipinjaman'); ?>" method="post">
  <div class="row">
    <div class="col-md-10 col-md-offset-1">
      <div class="box box-primary row">
        <div class="col-sm-10 col-sm-offset-1">
          <div class="box-header with-border">
            <h3 class="box-title">Daftar Pengajuan Pinjaman</h3>
          </div>
          <div class="box-body">
            <?php foreach($daftar as $u){ ?>
              <div class="form-group">
                <label for="id_pinjaman">ID Pinjaman</label>
                <input class="form-control" id="id_pinjaman" name="id_pinjaman" type="text" readonly value="<?php echo $u->id_pinjaman ?>">
                <b><?php echo form_error('id_pinjaman'); ?></b>
              </div>
              <div class="form-group">
                <label for="kta">KTA</label>
                <input class="form-control" id="kta" name="kta" type="text" readonly value="<?php echo $u->kta ?>">
                <b><?php echo form_error('kta'); ?></b>
              </div>
                <div class="form-group">
                  <label for="unit">Unit Pinjaman</label>
                  <input class="form-control" id="unit" name="unit" readonly type="text" value="<?php echo $u->unit ?>">
                  <b><?php echo form_error('unit'); ?></b>
                </div>
              <div class="form-group">
                <label for="jumlah_pinjaman">Jumlah Pinjaman</label>
                <input class="form-control" id="jumlah_pinjaman" name="jumlah_pinjaman" type="text" value="<?php echo $u->jumlah_pinjaman ?>">
                <b><?php echo form_error('jumlah_pinjaman'); ?></b>
              </div>
              <div class="form-group">
                <label for="total_angsuran">Total Angsuran</label>
                <input class="form-control" id="total_angsuran" name="total_angsuran" readonly type="text" value="<?php echo $u->angsuran ?>" >
                <b><?php echo form_error('NIP'); ?></b>
              </div>
              <div class="form-group">
                <label for="metode_pencairan">Metode Pencairan</label>
                <input class="form-control" id="metode_pencairan" name="metode_pencairan" type="text" readonly value="<?php echo $u->metode_pencairan ?>" >
                <b><?php echo form_error('metode_pencairan'); ?></b>
              </div>
              <?php 
              if ($u->metode_pencairan == 'transfer') {
                ?>
                <div class="form-group">
                  <label for="nama_bank">Nama Bank</label>
                  <input class="form-control" id="nama_bank" name="nama_bank" type="text" readonly value="<?php echo $u->nama_bank ?>" >
                  <b><?php echo form_error('nama_bank'); ?></b>
                </div>
                <div class="form-group">
                  <label for="no_rekening">Nomor Rekening</label>
                  <input class="form-control" id="no_rekening" name="no_rekening" type="text" readonly value="<?php echo $u->no_rekening ?>" >
                  <b><?php echo form_error('no_rekening'); ?></b>
                </div>
                <div class="form-group">
                  <label for="tanggal_pinjaman">Tanggal Pinjaman</label>
                  <input class="form-control" id="tanggal_pinjaman" name="tanggal_pinjaman" type="text" readonly value="<?php echo $u->tanggal_pinjaman ?>" >
                  <b><?php echo form_error('tanggal_pinjaman'); ?></b>
                </div>
                <?php 
              }
              ?>
              <div class="form-group row">
                <div class="col-sm-6">
                  <label for="scan_slipgaji">Slip Gaji</label><br>
                  <a target="_blank" rel="noopener noreferrer" href="<?php echo site_url().$u->scan_slipgaji ?>"><img src="<?php echo site_url().$u->scan_slipgaji ?>" height='100px'></a>
                </div>
                <?php 
                if ($u->metode_pencairan == 'transfer') {
                  ?>
                  <div class="col-sm-6">
                    <label for="nama_dibank">Scan Buku Tabungan</label><br>
                    <a target="_blank" rel="noopener noreferrer" href="<?php echo site_url().$u->nama_dibank ?>"><img src="<?php echo site_url().$u->nama_dibank ?>" height='100px'></a>
                  </div>
                  <?php 
                }
                ?>
              </div>
              <!-- /.box-body -->

              <div class="form-group row" style="background: transparent;">
                <div class="col-sm-4">
                  <a href="<?php echo site_url('Cpengajuan') ?>" class="btn btn-default btn-block"><i class="fa fa-arrow-circle-left"></i> Kembali</a>
                </div>
                <div class="col-sm-4">
                  <button type="submit" value="tolak" name="submit" class="btn btn-danger btn-block"><i class="fa fa-remove"></i> Tolak</button>
                </div>
                <div class="col-sm-4">
                  <button type="submit" value="terima" name="submit" class="btn btn-success btn-block"><i class="fa fa-check-square-o"></i> Verifikasi</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
<?php } ?>
  </section><!-- /.content -->