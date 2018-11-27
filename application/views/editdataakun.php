  <link href="<?php echo base_url('assets/adminlte/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
  <section class="content-header">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <h1>Edit Akun</h1>
      </div>
    </div>
  </section>

  <!-- Main content -->
  <section class="content">
   <form role="form" enctype="multipart/form-data" action="<?php echo site_url('Ceditdataakun/updatedata'); ?>" method="post">
    <input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>" style="display: none">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="box box-primary row">
          <div class="col-sm-10 col-sm-offset-1">
            <div class="box-header with-border">
              <h3 class="box-title">Form Edit Akun</h3>
            </div>
            <div class="box-body">
              <?php foreach($akun as $u){ ?>
                <div class="form-group">
                  <label for="KTA">KTA</label>
                  <input class="form-control" id="KTA" name="KTA" type="text" readonly value="<?php echo $u->kta ?>">
                  <b><?php echo form_error('KTA'); ?></b>
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input class="form-control" id="password" name="password" type="text" readonly value="<?php echo $u->password ?>">
                  <button type="button" class="btn btn-success btn" onclick="generator()">Ganti Password</button>
                  <b><?php echo form_error('password'); ?></b>
                </div>
                <div class="form-group">
                  <label>Status Pegawai</label>
                  <select class="form-control" name="pilstatuspegawai" id="foo" onclick="check()">
                    <option value="PNS" <?php echo set_select('pilstatuspegawai', 'PNS', TRUE); 
                    if ($u->pilstatuspegawai == 'PNS') {
                      echo "selected";
                    }
                    ?> id="opPns">PNS</option>
                    <option value="Honorer" <?php echo set_select('pilstatuspegawai', 'Honorer'); 
                    if ($u->pilstatuspegawai == 'Honorer') {
                      echo "selected";
                    }
                    ?>>Honorer</option>
                    <option value="Pensiunan" <?php echo set_select('pilstatuspegawai', 'Pensiunan');
                    if ($u->pilstatuspegawai == 'Pensiunan') {
                      echo "selected";
                    } 
                    ?>>Pensiunan</option>
                    <option value="Karyawan" <?php echo set_select('pilstatuspegawai', 'Karyawan'); 
                    if ($u->pilstatuspegawai == 'Karyawan') {
                      echo "selected";
                    }
                    ?>>Karyawan</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="NIP">NIP</label>
                  <input class="form-control" id="NIP" name="NIP" placeholder="Masukan NIP" type="text" value="<?php echo $u->NIP ?>" minlength="18" maxlength="18">
                  <b><?php echo form_error('NIP'); ?></b>
                </div>
                <div class="form-group">
                  <label for="nama">Nama</label>
                  <input class="form-control" id="nama" name="nama" placeholder="Masukan Nama" type="text" value="<?php echo $u->nama ?>">
                  <b><?php echo form_error('nama'); ?></b>
                </div>
                <div class="form-group">
                  <label for="no_hp">No HP</label>
                  <input class="form-control" id="no_hp" name="no_hp" placeholder="Masukan no HP" type="text" value="<?php echo $u->no_hp ?>" minlength="10" maxlength="12">
                  <b><?php echo form_error('no_hp'); ?></b>
                </div>
                <div class="form-group">
                  <label for="no_wa">No WA</label>
                  <input class="form-control" id="no_wa" name="no_wa" placeholder="Masukan no WA" type="text" value="<?php echo $u->no_wa ?>" minlength="10" maxlength="12">
                  <b><?php echo form_error('no_wa'); ?></b>
                </div>
                <div class="form-group">
                  <label for="email">EMAIL</label>
                  <input class="form-control" id="email" name="email" placeholder="Masukan Email" type="text" value="<?php echo $u->email;?>">
                  <b><?php echo form_error('email'); ?></b>
                </div>

                <div class="form-group">
                  <label>KPA</label>
                  <select class="selections form-control" name="pilkpa" style="width: 100%;">
                    <?php 
                    foreach($listkpa as $row)
                    { 
                      echo '<option value="'.$row->nama_kpa.'"';
                      echo set_select("pilkpa", $row->nama_kpa);
                      if ($row->nama_kpa == $u->pilkpa) {
                        echo "selected";
                      }
                      echo '>'.$row->nama_kpa.'</option>';
                    }
                    ?>
                  </select>

                </div>
                <div class="form-group">
                  <label for="tempat_tugas">Tempat Tugas</label>
                  <input class="form-control" id="tempat_tugas" name="tempat_tugas" placeholder="Masukan Tempat Tugas" type="text" value="<?php echo $u->tempat_tugas ?>">
                  <b><?php echo form_error('tempat_tugas'); ?></b>
                </div>
                <div class="form-group">
                  <label for="tempat_tugas">Tempat Lahir</label>
                  <input class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Masukan Tempat Lahir" type="text" value="<?php echo $u->tempat_lahir ?>">
                  <b><?php echo form_error('tempat_lahir'); ?></b>
                </div>
                <div class="form-group">
                  <label for="tgl_lahir">Tanggal Lahir</label>
                  <input class="form-control" id="tgl_lahir" name="tgl_lahir" type="date" value="<?php echo $u->tgl_lahir ?>">
                  <b><?php echo form_error('tgl_lahir'); ?></b>
                </div>
                <div class="form-group">
                  <label>Masa Pensiun</label>
                  <div class="radio">
                    <label>
                      <input type="radio" name="pilpensiun" id="pilpensiun1" value="58" <?php echo set_radio('pilpensiun', '58'); 
                      if ($u->pilpensiun == '58') {
                        echo "checked";
                      }
                      ?> >
                      58 Tahun
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="pilpensiun" id="pilpensiun1" value="60" <?php echo set_radio('pilpensiun', '60'); 
                      if ($u->pilpensiun == '60') {
                        echo "checked";
                      }
                      ?> >
                      60 Tahun
                    </label>
                  </div>
                  <b><?php echo form_error('pilpensiun'); ?></b>
                </div>
                <div class="form-group row">
                  <div class="col-sm-3">
                    <a target="_blank" rel="noopener noreferrer" href="<?php echo site_url().$u->scan_ktp ?>"><img src="<?php echo site_url().$u->scan_ktp ?>?=<?php echo filemtime($u->scan_ktp)?>" height='100px'></a>
                  </div>
                  <div class="col-sm-2">
                    <label for="ktp">File Scan KTP</label>
                    <input type="file" name="ktp" accept=".jpg, .jpeg"/>
                    <small>(max 2mb)</small>
                    <b><p class="text-danger" size="20"><?php echo $errorfile; ?></p></b>
                  </div>
                  <div class="col-sm-offset-1 col-sm-3">
                    <a target="_blank" rel="noopener noreferrer" href="<?php echo site_url().$u->gambar_profil ?>"><img src="<?php echo site_url().$u->gambar_profil ?>?=<?php echo filemtime($_SESSION['gambar_profil'])?>" height='100px'></a>
                  </div>
                  <div class="col-sm-2">
                    <label for="ktp">Foto Profil</label>
                    <input type="file" name="profil" accept=".jpg, .jpeg"/>
                    <small>(max 2mb)</small>
                    <b><p class="text-danger" size="20"><?php echo $errorfile2; ?></p></b>
                  </div>
                </div>
                <!-- /.box-body -->

                <div class="form-group" style="background: transparent;">
                  <button type="submit" class="btn btn-primary btn-block">Simpan</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    <?php } ?>
  </section><!-- /.content -->
  <script>
    function check(){
      var select = document.getElementById("foo");
      var value = select.options[select.selectedIndex].value;
      if (value == "PNS") {
        document.getElementById("NIP").disabled = false;
      } else {
        document.getElementById("NIP").disabled = true;
        document.getElementById("NIP").value = null;
      }
    }

    function generator(){
      var randomstring = Math.random().toString(36).slice(-6);
      document.getElementById('password').value = randomstring;
    }
    check();
  </script>