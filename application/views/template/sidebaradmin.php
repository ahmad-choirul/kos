<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="<?php echo base_url($_SESSION['foto_profil']) ?>?=<?php echo filemtime($_SESSION['foto_profil'])?>" class="img-circle" alt="User Image" />
      </div>
      <div class="pull-left info">
        <p><?php echo $this->session->userdata('nama') ?></p>

      </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu tree" data-widget="tree">
      <li class="header">MENU UTAMA</li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-laptop"></i>
          <span>Akun</span>
          <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
        </a>
        <ul class="treeview-menu">
          <li><a href="<?php echo site_url('Cpendaftaran') ?>"><i class="fa fa-circle-o"></i>Pendaftaran</a></li>
          <li><a href="<?php echo site_url('Cdaftarakun') ?>"><i class="fa fa-circle-o"></i>Daftar Akun</a></li>
        </ul>
      </li>
      <!-- <li class="treeview">
        <a href="#">
          <i class="fa fa-laptop"></i>
          <span>Pinjaman</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="<?php echo site_url('Cpengajuan') ?>"><i class="fa fa-circle-o"></i>Pengajuan Pinjaman</a></li>
          <li><a href="<?php echo site_url('Cpinjaman') ?>"><i class="fa fa-circle-o"></i>Pinjaman</a></li>
        </ul>
      </li>
      <li class="treeview">
        <a href="#">
          <i class="fa fa-laptop"></i>
          <span>Simpanan</span>
          <span class="pull-right-container">
            <i class="fa fa-angle-left pull-right"></i>
          </span>
        </a>
        <ul class="treeview-menu">
          <li><a href="<?php echo site_url('Csimpanan/pembuatan/r') ?>"><i class="fa fa-circle-o"></i>Pengajuan Simpanan</a></li>
          <li><a href="<?php echo site_url('Csimpanan/transaksi/r') ?>"><i class="fa fa-circle-o"></i>Transaksi Simpanan</a></li>
          <li><a href="<?php echo site_url('Csimpanan/jenis/pokok/r') ?>"><i class="fa fa-circle-o"></i>Simpanan Pokok</a></li>
          <li><a href="<?php echo site_url('Csimpanan/jenis/wajib/r') ?>"><i class="fa fa-circle-o"></i>Simpanan Wajib</a></li>
          <li><a href="<?php echo site_url('Csimpanan/jenis/sukarela/r') ?>"><i class="fa fa-circle-o"></i>Simpanan Sukarela</a></li>
          <li><a href="<?php echo site_url('Csimpanan/jenis/hariraya/r') ?>"><i class="fa fa-circle-o"></i>Simpanan Hari Raya</a></li>
        </ul>
      </li> -->
    </ul>
  </section>
  <!-- /.sidebar -->
</aside>

<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">