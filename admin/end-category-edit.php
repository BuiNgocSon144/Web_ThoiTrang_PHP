<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['tcat_id'])) {
        $valid = 0;
        $error_message .= "Bạn phải chọn danh mục cấp cao nhất<br>";
    }

    if(empty($_POST['mcat_id'])) {
        $valid = 0;
        $error_message .= "Bạn phải chọn một danh mục cấp trung<br>";
    }

    if(empty($_POST['ecat_name'])) {
        $valid = 0;
        $error_message .= "Tên danh mục cấp cuối không được để trống<br>";
    }

    if($valid == 1) {    	
		// updating into the database
		$statement = $pdo->prepare("UPDATE tbl_end_category SET ecat_name=?,mcat_id=? WHERE ecat_id=?");
		$statement->execute(array($_POST['ecat_name'],$_POST['mcat_id'],$_REQUEST['id']));

    	$success_message = 'Danh mục cấp độ cuối được cập nhật thành công.';
    }
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * 
                            FROM tbl_end_category t1
                            JOIN tbl_mid_category t2
                            ON t1.mcat_id = t2.mcat_id
                            JOIN tbl_top_category t3
                            ON t2.tcat_id = t3.tcat_id
                            WHERE t1.ecat_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Chỉnh sửa danh mục cấp độ cuối</h1>
	</div>
	<div class="content-header-right">
		<a href="end-category.php" class="btn btn-primary btn-sm">Xem tất cả</a>
	</div>
</section>


<?php							
foreach ($result as $row) {
	$ecat_name = $row['ecat_name'];
    $mcat_id = $row['mcat_id'];
    $tcat_id = $row['tcat_id'];
}
?>

<section class="content">

  <div class="row">
    <div class="col-md-12">

		<?php if($error_message): ?>
		<div class="callout callout-danger">
		
		<p>
		<?php echo $error_message; ?>
		</p>
		</div>
		<?php endif; ?>

		<?php if($success_message): ?>
		<div class="callout callout-success">
		
		<p><?php echo $success_message; ?></p>
		</div>
		<?php endif; ?>

        <form class="form-horizontal" action="" method="post">

        <div class="box box-info">

            <div class="box-body">
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tên danh mục cấp cao nhất <span>*</span></label>
                    <div class="col-sm-4">
                        <select name="tcat_id" class="form-control select2 top-cat">
                            <option value="">Chọn danh mục cấp cao nhất</option>
                            <?php
                            $statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_name ASC");
                            $statement->execute();
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);   
                            foreach ($result as $row) {
                                ?>
                                <option value="<?php echo $row['tcat_id']; ?>" <?php if($row['tcat_id'] == $tcat_id){echo 'selected';} ?>><?php echo $row['tcat_name']; ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tên danh mục cấp trung <span>*</span></label>
                    <div class="col-sm-4">
                        <select name="mcat_id" class="form-control select2 mid-cat">
                            <option value="">Chọn danh mục cấp trung</option>
                            <?php
                            $statement = $pdo->prepare("SELECT * FROM tbl_mid_category WHERE tcat_id = ? ORDER BY mcat_name ASC");
                            $statement->execute(array($tcat_id));
                            $result = $statement->fetchAll(PDO::FETCH_ASSOC);   
                            foreach ($result as $row) {
                                ?>
                                <option value="<?php echo $row['mcat_id']; ?>" <?php if($row['mcat_id'] == $mcat_id){echo 'selected';} ?>><?php echo $row['mcat_name']; ?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-3 control-label">Tên danh mục cấp độ cuối<span>*</span></label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" name="ecat_name" value="<?php echo $ecat_name; ?>">
                    </div>
                </div>
                
                <div class="form-group">
                	<label for="" class="col-sm-3 control-label"></label>
                    <div class="col-sm-6">
                      <button type="submit" class="btn btn-success pull-left" name="form1">Cập nhật</button>
                    </div>
                </div>

            </div>

        </div>

        </form>



    </div>
  </div>

</section>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Xác nhận xóa</h4>
            </div>
            <div class="modal-body">
            Bạn có chắc chắn muốn xóa mục này?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Xác nhận</button>
                <a class="btn btn-danger btn-ok">Xóa</a>
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>