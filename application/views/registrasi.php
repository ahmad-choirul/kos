<!DOCTYPE html>
<html>
<head >
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Registrasi</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <!-- Font Awesome Icons -->
  <link href="<?php echo base_url('assets/font-awesome-4.3.0/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />
  <!-- Theme style -->
  <link href="<?php echo base_url('assets/adminlte/dist/css/AdminLTE.min.css') ?>" rel="stylesheet" type="text/css" />
  <!-- iCheck -->
  <link href="<?php echo base_url('assets/adminlte/plugins/iCheck/square/blue.css') ?>" rel="stylesheet" type="text/css" />

  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/adminlte/bower_components/select2/dist/css/select2.min.css') ?>">

  <link href="<?php echo base_url('assets/adminlte/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page" style="background-image: url(' <?php echo base_url('assets/img/bg.jpg')?>'); background-size: cover;">
  <div class="register-box" >
    <div class="register-logo">
      <a href="../../index2.html"><b style="color: white;">KOS</b> <b><i style="color: black;">KOSAN</i></b></a>
    </div>

    <div class="register-box-body">
      <p class="login-box-msg">Daftar Akun Baru</p>

      <form role="form" enctype="multipart/form-data" action="<?php echo site_url('Cregistrasi/registrasibaru'); ?>" method="post">
        <input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>" style="display: none">
        <div class="box-body">
          <div class="form-group">
            <label for="nip">NIK</label>
            <input class="form-control" id="nik" name="nik" placeholder="Masukan NIK" type="text" value="<?php echo set_value('nik');?>" minlength="16" maxlength="16">
            <b><?php echo form_error('nik'); ?></b>
          </div>
          <div class="form-group">
            <label for="nama">Nama</label>
            <input class="form-control" id="nama" name="nama" placeholder="Masukan Nama" type="text" value="<?php echo set_value('nama');?>">
            <b><?php echo form_error('nama'); ?></b>
          </div>
          <div class="form-group">
            <label for="nama">Password</label>
            <input class="form-control" id="password" name="password" placeholder="Masukan Password" type="password"  onkeyup='check();'>
            <b><?php echo form_error('password'); ?></b>
          </div>
          <div class="form-group">
            <label for="nama">Password lagi</label>
            <input class="form-control" id="password1" name="password1" placeholder="Masukan Password lagi" type="password" onkeyup='check();'>
            <b><?php echo form_error('password1'); ?></b>
              <span id='message'></span>
          </div>
          <div class="form-group">
            <label for="no_wa">No WA</label>
            <input class="form-control" id="no_wa" name="no_wa" placeholder="Masukan no WA" type="text" value="<?php echo set_value('no_wa');?>" minlength="10" maxlength="12">
            <b><?php echo form_error('no_wa'); ?></b>
          </div>
          <div class="form-group">
            <label for="email">EMAIL</label>
            <input class="form-control" id="email" name="email" placeholder="Masukan Email" type="text" value="<?php echo set_value('email');?>">
            <b><?php echo form_error('email'); ?></b>
          </div>
          <div class="form-group">
            <label for="tempat_tugas">Tempat Lahir</label>
            <input class="form-control" id="tempat_lahir" name="tempat_lahir" placeholder="Masukan Tempat Lahir" type="text" value="<?php echo set_value('tempat_lahir');?>">
            <b><?php echo form_error('tempat_lahir'); ?></b>
          </div>
          <div class="form-group">
            <label for="tgllahir">Tanggal Lahir</label>
            <input class="form-control" id="tgllahir" name="tgllahir" type="date" value="<?php echo set_value('tgllahir');?>">
            <b><?php echo form_error('tgllahir'); ?></b>
          </div>
          <div class="form-group">
            <label for="ktp">File Scan KTP</label>
            <input type="file" name="ktp" accept=".jpg, .jpeg"/>
            <small>(max 2mb)</small>
            <b><p class="text-danger" size="20"><?php echo $errorfile; ?></p></b>
          </div>
          <!-- /.box-body -->

          <div class="box-footer" style="background: transparent;">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
          </div>
        </form>

        <a href="<?php echo site_url('Auth'); ?>" class="text-center">saya sudah punya akun</a>
      </div>
      <!-- /.form-box -->
    </div>
    <!-- /.register-box -->

    <!-- jQuery 3 -->
    <script src="<?php echo base_url('assets/adminlte/plugins/jQuery/jQuery-2.1.3.min.js') ?>"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="<?php echo base_url('assets/adminlte/bootstrap/js/bootstrap.min.js') ?>" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="<?php echo base_url('assets/adminlte/plugins/iCheck/icheck.min.js') ?>" type="text/javascript"></script>

    <script src="<?php echo base_url('assets/adminlte/bower_components/jquery/dist/jquery.min.js') ?>"></script>

    <script src="<?php echo base_url('assets/adminlte/bower_components/select2/dist/js/select2.min.js') ?>"></script>
    <script type="text/javascript">
      var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('password1').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'password sesuai';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'password tidak sesuai';
  }
}
    </script>
    <script type="text/javascript">
      $(".selections").select2();
    </script>
  </body>
  </html>
