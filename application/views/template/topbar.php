</head>
<body class="hold-transition skin-blue sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

        <header class="main-header">
            <a href="#" class="logo"><b>NAMA</b> APLIKASI</a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<?php echo base_url($_SESSION['foto_profil']) ?>?=<?php echo filemtime($_SESSION['foto_profil'])?>" class="user-image" alt="User Image"/>
                                <span class="hidden-xs"><?php echo $this->session->userdata('nama') ?></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="<?php echo base_url($_SESSION['foto_profil']) ?>?=<?php echo filemtime($_SESSION['foto_profil'])?>" class="img-circle" alt="User Image" />
                                    <p>
                                        <?php echo $this->session->userdata('nama') ?> / <?php echo $this->session->userdata('level') ?>
                                        <small><?php echo 'text 1' ?> , <?php echo 'text 2' ?> </small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="<?php echo site_url('Ceditdataakun') ?>"  class="btn btn-success btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="<?php echo site_url('Auth/logout') ?>" class="btn btn-danger btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- =============================================== --> 