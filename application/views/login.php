<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap-4.1.3/css/bootstrap.min.css'); ?>">
  <link rel="stylesheet" href="<?php echo base_url('assets/style.css'); ?>">
  <link href="<?php echo base_url('assets/iconic/font/css/open-iconic-bootstrap.css'); ?>" rel="stylesheet">
  <link href="<?php echo base_url('assets/font-awesome-4.3.0/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />

  <title>Welcome Page</title>
</head>
<body>
  <nav class="navbar sticky-top navbar-expand-lg navbar-custom bg-custom">
    <a class="navbar-brand logo" href="#">KOS<span class="oi oi-home"></span>N</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary offset-md-10" style="margin-right: 10px;" data-toggle="modal" data-target="#modalLogin">
        Masuk
      </button>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalDaftar">
        Daftar
      </button>

      <div class="row justify-content-end">

      </div>


    </div>
  </nav>
  <!-- Modal Login -->
  <div class="modal fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <form action="<?php echo site_url('Auth/proses'); ?>" method="post">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Masuk</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

            <?php
            if (isset($_SESSION['success'])) {
              ?>
              <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Success!</h4>
                Permohonan akun telah dikirim. silahkan verifikasi email anda
              </div>
              <?php
              unset($_SESSION['success']);
            }

            if (isset($_SESSION['error'])) {
              ?>
              <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
                username atau password salah!
              </div>
              <?php
              unset($_SESSION['error']);
            }
            if (isset($_SESSION['erroremail'])) {
              ?>
              <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4>
                Gagal mengirim email verifikasi!!!!!
              </div>
              <?php
              unset($_SESSION['erroremail']);
            }
            if (isset($_SESSION['succesemail'])) {
              ?>
              <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Success!</h4>
                Sukses Memverifikasi Email silahkan menunggu verifikasi dari admin, akun dan password akan di kirimkan melalui email anda. TERIMA KASIH
              </div>
              <?php
              unset($_SESSION['succesemail']);
            }
            ?>

            <div class="form-group">
              <label class="sr-only" for="password"></label>
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><span class="oi oi-person form-control-feedback"></span></span></div>
                </div>
                <input type="text" name="username" class="form-control" placeholder="Username atau Email"  id="username"/>
              </div>
            </div>
            <div class="form-group">
              <label class="sr-only" for="password"></label>
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><span class="oi oi-lock-locked form-control-feedback"></span></div>
                </div>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
            <button type="submit" class="btn btn-primary">Masuk</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Modal Daftar -->
  <div class="modal fade" id="modalDaftar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <form action="<?php echo site_url('Cregistrasi/registrasibaru'); ?>" method="post">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Daftar</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">

            <input type="hidden" name="<?=$this->security->get_csrf_token_name();?>" value="<?=$this->security->get_csrf_hash();?>" style="display: none">

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
              <b><p class="text-danger" size="20"></p></b>
            </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
              <button type="submit" class="btn btn-primary">Daftar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div id="carousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="content">
        <span class="judul"> Mau Cari Kos Kosan? <br></span>
        <span class="sub-judul">Dapatkan Info Kost Murah, Kost Harian,Kost Gratis, Kost Bebas dan Info Kosan lainnya di KOS-KOSAN! <br></span>
        <form class="" action="index.html" method="post">
          <div class="form-row justify-content-center" style="margin-top:20px;">
            <div class="col-lg-3">
              <input type="text" name="" value="" class="form-control" placeholder="Kecamatan">
            </div>
            <div class="col-lg-1">
              <input type="button" class="btn btn-primary" name="" value="Cari Sekarang">
            </div>
          </div>
        </form>
      </div>
      <div class="carousel-item active">
        <img class="d-block w-100" src="assets/img/kos/1.jpg" alt="First slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="assets/img/kos/2.jpg" alt="Second slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="assets/img/kos/4.jpg" alt="Third slide">
      </div>
    </div>
  </div>

  <div class="container container-card">
    <div class="row">
      <?php foreach ($kos as $row): ?>
      <?php
        echo '<div class="col-lg-3">';
        echo '<div class="card card-item">';
        echo '<img class="card-img-top" src="'.$row->foto_kos.'" alt="Card image cap">';
        echo '<div class="card-body">';
        echo '<h5 class="card-title">'.$row->nama_kos.'</h5>';
        echo '<p class="card-text"><span class="oi oi-map-marker"></span> '.$row->alamat_kos.' </p>';
        echo '<p class="card-text"> Rp. '.$row->harga_bawah.' - '.$row->harga_atas.' </p>';
        echo '<p class="card-text">'.$row->deskripsi.'</p>';
        echo '<a href="'. base_url('Ckos').'" class="btn btn-primary">Detail Kos</a>';
        echo '</div>';
        echo '</div>';
        echo '</div>';

       ?>
      <?php endforeach; ?>


    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="<?php echo base_url('assets/bootstrap-4.1.3/js/jquery-3.3.1.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/bootstrap-4.1.3/js/popper.min.js') ?>"></script>
  <script src="<?php echo base_url('assets/bootstrap-4.1.3/js/bootstrap.min.js') ?>"></script>
  <script>
  $('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })
  </script>
</body>
</html>
