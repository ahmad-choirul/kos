<!DOCTYPE html>
<html lang="en">
<head>
<title>Permohonan Pi njaman</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<section class="content-header">

</section>

<!-- Main content -->
<section class="content">
          <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>Form Pengajuan Pinjaman</h5>
        </div>
        <div class="widget-content nopadding">
          <form action="#" method="get" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Nama</label>
              <div class="controls">
                <input type="text" maxlength="50" placeholder="" class="span5" >
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">NIP</label>
              <div class="controls">
                <input type="text" maxlength="18" minlength="18" placeholder="" class="span5">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Unit pinjaman</label>
              <div class="controls" >
                <select>
                  <option>Unit Toko</option>
                  <option>Unit Simpan Pinjam</option>
                  <option>Unit Jasa</option>
                </select>
              </div>
            </div>
             <div class="control-group">
              <label class="control-label">Jumlah Pinjaman</label>
              <div class="controls">
                <input type="text" maxlength="12" placeholder=""  class="span5">
              </div>
            </div>
             <div class="control-group">
              <label class="control-label">Gaji</label>
              <div class="controls">
                <input type="text" maxlength="12" minlength="5" placeholder="" class="span5" >
              </div>
            </div>
             <div class="control-group">
              <label class="control-label">Upload Slip gaji</label>
              <div class="controls">
                <input type="file" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Angsuran</label>
              <div class="controls" >
                 <input type="number"  placeholder=""  class="span5" class="validity" min="2" max="60"> 
              </div><!-- sesuai inputan tapi tidak boleh lebih dari total bulan sebelum pensiun -->
            </div>
            <div class="control-group">
              <label class="control-label">Pokok Pinjaman</label>
                <input type="text" maxlength="12" placeholder=""  class="span5">  
                 <!-- (nilai pinjaman / lama angsuran)+1% jumlah pinjaman -->
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Metode Pencairan</label>
              <div class="controls" >
                <select>
                  <option>Tunai</option>
                  <option>Transfer</option> 
                    <!-- /.jika pilih ini muncul form nama dan norekening -->
                </select>
              </div>
            </div>
            <div class="form-actions">
              <button type="submit" class="btn btn-success">Save</button>
            </div>
          </form>
        </div>
      </div>
   
</section><!-- /.content -->
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>
</body>
</html>