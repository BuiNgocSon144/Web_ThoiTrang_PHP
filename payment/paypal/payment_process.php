<?php
ob_start();
session_start();
require_once('../../admin/inc/config.php');

$error_message = '';

$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row) {
	$paypal_email = $row['paypal_email'];
}

$return_url = 'payment_success.php';
$cancel_url = 'payment.php';
$notify_url = 'payment/paypal/verify_process.php';

$item_name = 'Product Item(s)';
$item_amount = $_POST['final_total'];
$item_number = time();

$payment_date = date('Y-m-d H:i:s');

// Kiểm tra xem yêu cầu hoặc phản hồi của paypal
if (!isset($_POST["txn_id"]) && !isset($_POST["txn_type"])){
	$querystring = '';
	
	// Đầu tiên nối tài khoản paypal vào chuỗi truy vấn
	$querystring .= "?business=".urlencode($paypal_email)."&";
	
	// Nối số tiền và đơn vị tiền tệ (Đồng) vào quersytring để không thể chỉnh sửa nó trong html
	
	// Tên và số lượng mặt hàng có thể được đưa vào một cách linh hoạt bằng cách truy vấn biến $_POST['item_number'].
	$querystring .= "item_name=".urlencode($item_name)."&";
	$querystring .= "amount=".urlencode($item_amount)."&";
	$querystring .= "item_number=".urlencode($item_number)."&";
	
	// vòng lặp cho các giá trị đã đăng và nối vào chuỗi truy vấn
	foreach($_POST as $key => $value){
		$value = urlencode(stripslashes($value));
		$querystring .= "$key=$value&";
	}
	
	// Nối địa chỉ trả lại paypal
	$querystring .= "return=".urlencode(stripslashes($return_url))."&";
	$querystring .= "cancel_return=".urlencode(stripslashes($cancel_url))."&";
	$querystring .= "notify_url=".urlencode($notify_url);
	
	// Nối chuỗi truy vấn với trường tùy chỉnh
	//$querystring .= "&custom=".USERID;

	$statement = $pdo->prepare("INSERT INTO tbl_payment (
						customer_id,
						customer_name,
						customer_email,
						payment_date,
						txnid, 
						paid_amount,
						card_number,
                        card_cvv,
                        card_month,
                        card_year,
                        bank_transaction_info,
                        payment_method,
						payment_status,
						shipping_status,
						payment_id
						) 
						VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	$sql = $statement->execute(array(
						$_SESSION['customer']['cust_id'],
						$_SESSION['customer']['cust_name'],
						$_SESSION['customer']['cust_email'],
						$payment_date,
						'',
						$item_amount,
						'',
						'',
						'',
						'',
						'',
						'PayPal',
						'Pending',
						'Pending',
						$item_number
					));

	$i=0;
    foreach($_SESSION['cart_p_id'] as $key => $value) 
    {
        $i++;
        $arr_cart_p_id[$i] = $value;
    }

	$i=0;
    foreach($_SESSION['cart_p_name'] as $key => $value) 
    {
        $i++;
        $arr_cart_p_name[$i] = $value;
    }

    $i=0;
    foreach($_SESSION['cart_size_name'] as $key => $value) 
    {
        $i++;
        $arr_cart_size_name[$i] = $value;
    }

   	$i=0;
    foreach($_SESSION['cart_color_name'] as $key => $value) 
    {
        $i++;
        $arr_cart_color_name[$i] = $value;
    }

    $i=0;
    foreach($_SESSION['cart_p_qty'] as $key => $value) 
    {
        $i++;
        $arr_cart_p_qty[$i] = $value;
    }

    $i=0;
    foreach($_SESSION['cart_p_current_price'] as $key => $value) 
    {
        $i++;
        $arr_cart_p_current_price[$i] = $value;
    }


    $i=0;
    $statement = $pdo->prepare("SELECT * FROM tbl_product");
    $statement->execute();
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);							
    foreach ($result as $row) {
    	$i++;
    	$arr_p_id[$i] = $row['p_id'];
    	$arr_p_qty[$i] = $row['p_qty'];
    }


    for($i=1;$i<=count($arr_cart_p_name);$i++) {
    	$statement = $pdo->prepare("INSERT INTO tbl_order (
						product_id,
						product_name,
						size, 
						color,
						quantity, 
						unit_price, 
						payment_id
						) 
						VALUES (?,?,?,?,?,?,?)");
		$sql = $statement->execute(array(
						$arr_cart_p_id[$i],
						$arr_cart_p_name[$i],
						$arr_cart_size_name[$i],
						$arr_cart_color_name[$i],
						$arr_cart_p_qty[$i],
						$arr_cart_p_current_price[$i],
						$item_number
					));

		// Cập nhật hàng
		for($j=1;$j<=count($arr_p_id);$j++)
		{
			if($arr_p_id[$j] == $arr_cart_p_id[$i]) 
			{
				$current_qty = $arr_p_qty[$j];
				break;
			}
		}
		$final_quantity = $current_qty - $arr_cart_p_qty[$i];
		$statement = $pdo->prepare("UPDATE tbl_product SET p_qty=? WHERE p_id=?");
		$statement->execute(array($final_quantity,$arr_cart_p_id[$i]));

    }

	

    
    unset($_SESSION['cart_p_id']);
	unset($_SESSION['cart_size_id']);
	unset($_SESSION['cart_size_name']);
	unset($_SESSION['cart_color_id']);
	unset($_SESSION['cart_color_name']);
	unset($_SESSION['cart_p_qty']);
	unset($_SESSION['cart_p_current_price']);
	unset($_SESSION['cart_p_name']);
	unset($_SESSION['cart_p_featured_photo']);

	
	if($sql){
		// Chuyển hướng tới IPN paypal
		header('location:https://www.paypal.com/cgi-bin/webscr'.$querystring);
		exit();
	}
	
} else {

	// Phản hồi từ Paypal

	// đọc bài viết từ hệ thống PayPal và thêm 'cmd'
	$req = 'cmd=_notify-validate';
	foreach ($_POST as $key => $value) {
		$value = urlencode(stripslashes($value));
		$value = preg_replace('/(.*[^%^0^D])(%0A)(.*)/i','${1}%0D%0A${3}',$value);// IPN fix
		$req .= "&$key=$value";
	}
	
	// gán các biến đã đăng cho các biến cục bộ
	$data['item_name']			= $_POST['item_name'];
	$data['item_number'] 		= $_POST['item_number'];
	$data['payment_status'] 	= $_POST['payment_status'];
	$data['payment_amount'] 	= $_POST['mc_gross'];
	$data['payment_currency']	= $_POST['mc_currency'];
	$data['txn_id']			    = $_POST['txn_id'];
	$data['receiver_email'] 	= $_POST['receiver_email'];
	$data['payer_email'] 		= $_POST['payer_email'];
	$data['custom'] 			= $_POST['custom'];
		
	// gửi lại hệ thống PayPal để xác thực
	$header = "POST /cgi-bin/webscr HTTP/1.0\r\n";
	$header .= "Content-Type: application/x-www-form-urlencoded\r\n";
	$header .= "Content-Length: " . strlen($req) . "\r\n\r\n";
	
	$fp = fsockopen ('ssl://www.paypal.com', 443, $errno, $errstr, 30);
	
	if (!$fp) {
		// HTTP ERROR
		
	} else {
		fputs($fp, $header . $req);
		while (!feof($fp)) {
			$res = fgets ($fp, 1024);
			if (strcmp($res, "VERIFIED") == 0) {
				
				// Dùng để gỡ lỗi
				// mail('user@domain.com', 'PAYPAL POST - VERIFIED RESPONSE', print_r($post, true));
				
			
			} else if (strcmp ($res, "INVALID") == 0) {
			

				// THANH TOÁN KHÔNG HỢP LỆ & ĐIỀU TRA THỦ CÔNG!
				// Gửi email cho quản trị viên hoặc cảnh báo người dùng
				
				// Dùng để gỡ lỗi
				//@mail("user@domain.com", "PAYPAL DEBUGGING", "Invalid Response<br />data = <pre>".print_r($post, true)."</pre>");
			}
		}
	fclose ($fp);
	}
}