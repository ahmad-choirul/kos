<section class="content-header">
</section>

<!-- Main content -->
<section class="content">
	<?php  
	if (isset($_SESSION['success'])) {
		?>
		<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<h4><i class="icon fa fa-check"></i> Success!</h4>
			<?php 
			echo $_SESSION['success']; 
			unset($_SESSION['success'])
			?>
		</div>
		<?php  
	} 
	if (isset($_SESSION['error'])) {
		?>
		<div class="alert alert-error alert-dismissible">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
			<h4><i class="icon fa fa-check"></i> Error!</h4>
			<?php 
			echo $_SESSION['error']; 
			unset($_SESSION['error'])
			?>
		</div>
		<?php  
	}
	?>
</section><!-- /.content -->