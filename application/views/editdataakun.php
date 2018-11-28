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
                  <label for="username">Username</label>
                  <input class="form-control" id="username" name="username" type="text" readonly value="<?php echo $u->username ?>">
                  <b><?php echo form_error('username'); ?></b>
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input class="form-control" id="password" name="password" type="text" value="<?php echo $u->password ?>">
                  <b><?php echo form_error('password'); ?></b>
                </div>
                <div class="form-group">
                  <label for="NIK">NIK</label>
                  <input class="form-control" id="NIK" name="NIK" placeholder="Masukan NIK" type="text" value="<?php echo $u->NIK ?>" minlength="16" maxlength="16">
                  <b><?php echo form_error('NIK'); ?></b>
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
                  <label for="tempat_tugas">Tempat Lahir</label>
                  <input class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Masukan Tempat Lahir" type="text" value="<?php echo $u->tempat_lahir ?>">
                  <b><?php echo form_error('tempat_lahir'); ?></b>
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
                    <a target="_blank" rel="noopener noreferrer" href="<?php echo site_url().$u->foto_profil ?>"><img src="<?php echo site_url().$u->foto_profil ?>?=<?php echo filemtime($_SESSION['foto_profil'])?>" height='100px'></a>
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