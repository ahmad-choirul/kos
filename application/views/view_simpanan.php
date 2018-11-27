<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
  <?php 
  if (isset($_SESSION['message'])) {
    if ($_SESSION['message'] == 'gagal') {
      ?>
      <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-ban"></i> Gagal!</h4>
        Input gagal!
      </div>
      <?php 
    } else if ($_SESSION['message'] == 'sukses') {
      ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h4><i class="icon fa fa-check"></i> Sukses!</h4>
        Input berhasil!
      </div>
      <?php 
    }
    unset($_SESSION['message']);
  }
  ?>
  <div class="widget-box">
    <div class="widget-title"> 
      <span class="icon"> <i class="icon-th"></i> </span>
      <?php if ($this->uri->segment(3) == 'pokok') {
        ?>
        <h2>Simpanan Pokok</h2>
        <?php 
      } else if ($this->uri->segment(3) == 'wajib') {
        ?>
        <h2>Simpanan Wajib</h2>
        <?php 
      } else if ($this->uri->segment(3) == 'sukarela') {
        ?>
        <h2>Simpanan Sukarela</h2>
        <?php 
      } else if ($this->uri->segment(3) == 'hariraya') {
        ?>
        <h2>Simpanan Hari Raya</h2>
        <?php 
      } 
      ?>
      <span class="label label-info">KPRI AMAL BAKTI</span> 
    </div>
    <div class="row">
      <div class="col-md-3 pull-right">
        <form method="get" action="<?php echo site_url('Csimpanan/jenis/'.$this->uri->segment(3)); ?>">
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
            <th>ID Simpanan</th>
            <th>KTA</th>
            <th>Nama</th>
            <th>Simpanan Pokok (Rp)</th>
            <th>Tanggal Pembuatan</th>
            <th>Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php
          foreach($simpanan as $get){
            ?>
            <tr>
              <td><?php echo $get->id_simpanan; ?></td>
              <td><?php echo $get->kta; ?></td>
              <td><?php echo $get->nama; ?></td>
              <td><?php echo $get->jumlah; ?></td>
              <td><?php echo $get->tanggal; ?></td>
              <td>  
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" onclick="aksi(
                  '<?php echo $get->id_simpanan; ?>',
                  '<?php echo $get->kta; ?>',
                  '<?php echo $get->nama; ?>',
                  '<?php echo $get->jumlah; ?>',
                  'tambah'
                  )"><span class="fa fa-plus-square"> Tambah</span>
                </button>
                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal"  onclick="aksi(
                  '<?php echo $get->id_simpanan; ?>',
                  '<?php echo $get->kta; ?>',
                  '<?php echo $get->nama; ?>',
                  '<?php echo $get->jumlah; ?>',
                  'kurang'
                  )"><span class="fa fa-minus-square"> Kurang</span>
                </button>
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
  <div id="myModal" class="modal fade" role="dialog">
    <form method="post" role="form" enctype="multipart/form-data" action="" id="link">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Angsuran</h4>
          </div>
          <div class="modal-body row">
            <div class="col-md-12">
              <table class="table">
                <tr>
                  <td width="40%">ID Simpanan</td>
                  <td> : </td>
                  <td id="id_simpanan" name="id_simpanan"></td>
                </tr>
                <tr>
                  <td>Nama</td>
                  <td> : </td>
                  <td id="nama" name="nama"></td>
                </tr>
                <tr>
                  <td>KTA</td>
                  <td> : </td>
                  <td id="KTA" name="KTA"></td>
                </tr>
                <tr>
                  <td>Jumlah Simpanan</td>
                  <td> : </td>
                  <td id="simpanan"></td>
                </tr>
                <tr>
                  <td id="aksi"></td>
                  <td> : </td>
                  <td>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-plus-square" id="icon"></i>
                      </div>
                      <input type="number" class="form-control input-lg" name="jumlah">
                    </div>
                  </td>
                </tr>
              </table>
            </div>
          </div>
          <div class="modal-footer row">
            <div class="col-sm-6">
              <button type="submit" class="btn btn-success btn-block">OK</button>
            </div>
            <div class="col-sm-6">
              <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">BATAL</button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</section><!-- /.content -->
<script type="text/javascript">
  function aksi(id_simpanan, KTA, nama, simpanan, aksi){
    document.getElementById('id_simpanan').innerHTML = id_simpanan;
    document.getElementById('KTA').innerHTML = KTA;
    document.getElementById('nama').innerHTML = nama;
    document.getElementById('simpanan').innerHTML = simpanan;
    if (aksi == 'tambah') {
      document.getElementById('aksi').innerHTML = "Tambah";
      document.getElementById('icon').className = "fa fa-plus-square";
    } else if (aksi == 'kurang') {
      document.getElementById('aksi').innerHTML = "Kurang";
      document.getElementById('icon').className = "fa fa-minus-square";
    }
    document.getElementById("link").action = '<?php echo site_url('Csimpanan/'); ?>' + aksi + '/' + id_simpanan;
  }
</script>