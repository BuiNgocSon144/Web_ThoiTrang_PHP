<?php
require_once "../../admin/inc/config.php";

$raw_post_data = file_get_contents('php://input');
$raw_post_array = explode('&', $raw_post_data);
$myPost = array();
foreach ($raw_post_array as $keyval) {
    $keyval = explode ('=', $keyval);
    if (count($keyval) == 2)
        $myPost[$keyval[0]] = urldecode($keyval[1]);
}

// Đọc bài viết từ hệ thống PayPal và thêm 'cmd'
$req = 'cmd=_notify-validate';
if(function_exists('get_magic_quotes_gpc')) {
    $get_magic_quotes_exists = true;
}
foreach ($myPost as $key => $value) {
    if($get_magic_quotes_exists == true && get_magic_quotes_gpc() == 1) {
        $value = urlencode(stripslashes($value));
    } else {
        $value = urlencode($value);
    }
    $req .= "&$key=$value";
}

/*
* Đăng dữ liệu IPN trở lại PayPal để xác thực dữ liệu IPN là chính hãng
  * Nếu không có bước này, bất kỳ ai cũng có thể giả mạo dữ liệu IPN
 */
$paypalURL = "https://www.paypal.com/cgi-bin/webscr";
$ch = curl_init($paypalURL);
if ($ch == FALSE) {
    return FALSE;
}
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $req);
curl_setopt($ch, CURLOPT_SSLVERSION, 6);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2);
curl_setopt($ch, CURLOPT_FORBID_REUSE, 1);

// Đặt thời gian chờ TCP thành 30 giây
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Connection: Close', 'User-Agent: company-name'));
$res = curl_exec($ch);

/*
* Kiểm tra kết quả xác thực IPN và hành động tương ứng
  * Tách tiêu đề phản hồi và tải trọng, một cách tốt hơn cho strcmp
 */ 
$tokens = explode("\r\n\r\n", trim($res));
$res = trim(end($tokens));
if (strcmp($res, "VERIFIED") == 0 || strcasecmp($res, "VERIFIED") == 0) {

    $statement = $pdo->prepare("UPDATE tbl_payment SET 
                        txnid=?, 
                        payment_status=?
                        WHERE payment_id=?");
    $sql = $statement->execute(array(
                        $_POST['txn_id'],
                        $_POST['payment_status'],
                        $_POST['item_number']
                    ));

}else{
    $statement = $pdo->prepare("DELETE FROM tbl_payment WHERE payment_id=?");
    $sql = $statement->execute(array($_POST['item_number']));
}
?>