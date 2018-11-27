<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="<?php echo base_url('assets/adminlte/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="<?php echo base_url('assets/font-awesome-4.3.0/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<?php echo base_url('assets/adminlte/dist/css/AdminLTE.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="<?php echo base_url('assets/adminlte/plugins/iCheck/square/blue.css') ?>" rel="stylesheet" type="text/css" />

</head>
<body class="login-page" style="background-image: url(' <?php echo base_url('assets/img/bg.jpg')?>'); background-size: cover;">
    <div class="login-box" style="margin-top: 3%">
        <div class="login-logo">
            <img class="login-box" src="<?php echo base_url('assets/img/logo.png') ?>">
        </div><!-- /.login-logo -->
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
            KTA atau password salah!
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
    <div class="login-box-body" style="background-color: #ffffff7d">
        <p class="login-box-msg">selamat datang</p>
        <form action="<?php echo site_url('Auth/proses'); ?>" method="post">
            <div class="form-group has-feedback">
                <input type="text" name="username" class="form-control" placeholder="username" oninput="myFunction()" id="username"/>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="Password"/>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">                   
                </div><!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                </div><!-- /.col -->
            </div>
        </form>           
        <a href="#">Lupa Password</a><br>
        <a href="<?php echo base_url('Cregistrasi'); ?>" class="text-center">Belum Punya Akun</a>

    </div><!-- /.login-box-body -->
</div><!-- /.login-box -->
<!-- jQuery 2.1.3 -->
<script src="<?php echo base_url('assets/adminlte/plugins/jQuery/jQuery-2.1.3.min.js') ?>"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="<?php echo base_url('assets/adminlte/bootstrap/js/bootstrap.min.js') ?>" type="text/javascript"></script>
<!-- iCheck -->
<script src="<?php echo base_url('assets/adminlte/plugins/iCheck/icheck.min.js') ?>" type="text/javascript"></script>
</body>
</html>

