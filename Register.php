<?php
require("./core/system/functions.php");
require("./core/system/config.php");
if(isset($_SESSION['id_ctv'])){
    echo "<script>window.location='/index.php?action=trang-loi';</script>";
}
?>
<?php $titles='ĐĂNG KÝ TÀI KHOẢN';?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Dịch vụ Facebook">
        <meta name="author" content="0858 743 369">
        <title><?=$titles;?> - <?=$setting['tile'];?></title>
        <link rel="shortcut icon" href="<?=$setting['logo'];?>">
        <!-- Base Css Files -->
        <link href="<?=$domain;?>/css/bootstrap.min.css" rel="stylesheet" />
        <link href="<?=$domain;?>/assets/sweet-alert/sweet-alert.min.css" rel="stylesheet">
        <!-- Font Icons -->
        <link href="<?=$domain;?>/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="<?=$domain;?>/assets/ionicon/css/ionicons.min.css" rel="stylesheet" />
        <link href="<?=$domain;?>/css/material-design-iconic-font.min.css" rel="stylesheet">
        <!-- animate css -->
        <link href="<?=$domain;?>/css/animate.css" rel="stylesheet" />
        <!-- Waves-effect -->
        <link href="<?=$domain;?>/css/waves-effect.css" rel="stylesheet">
        <link href="<?=$domain;?>/css/helper.css" rel="stylesheet" type="text/css" />
        <link href="<?=$domain;?>/css/style.css" rel="stylesheet" type="text/css" />
        <!-- Custom Files -->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script src="<?=$domain;?>/js/jquery.min.js"></script>
        <script src="<?=$domain;?>/js/modernizr.min.js"></script>
        <script src='https://www.google.com/recaptcha/api.js?hl=vi'></script>
        <script src="<?=$domain;?>/js/jickme.js"></script>
        <script src="<?=$domain;?>/assets/sweet-alert/sweet-alert.min.js"></script>
        <script src="<?=$domain;?>/assets/sweet-alert/sweet-alert.init.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
        <script>
             (adsbygoogle = window.adsbygoogle || []).push({
                  google_ad_client: "ca-pub-9484633495941539",
                  enable_page_level_ads: true
             });
        </script>
    </head>
    <body>
        <div class="wrapper-page">
            <div class="panel panel-color panel-primary panel-pages">
                <div class="panel-heading bg-img" style="background: url('https://i.imgur.com/PYFUZgz.jpg') center center;">
                    <h3 class="text-center m-t-10 text-white"><?=$titles;?></h3>
                    <p class="text-center text-white">Liên hệ: <a href="#" style="color: white;">0858 743 369</a></p>
                    <p class="text-center text-white">IP của bạn là: <?=$remoteip?></p>
                </div> 
                <div class="panel-body">
                    <form class="form-horizontal m-t-20" method="post">
<?php
    if (isset($_POST['submit'])){
    /*    $captcha;
        if(isset($_POST['g-recaptcha-response'])){
            $captcha = $_POST['g-recaptcha-response'];
        }
        $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=".$captcha."&remoteip=".$_SERVER['REMOTE_ADDR']);*/
        $username = htmlspecialchars(addslashes($_POST['username']));
        $password = htmlspecialchars(addslashes($_POST['password']));
        $password2 = htmlspecialchars(addslashes($_POST['password2']));
        $email = $_POST['email'];
        $sdt = $_POST['sdt'];
        $idfb = $_POST['idfb'];
        $code = randma(20);
        $today = date('Y-m-d');
		$time = time();
        
		$check_email = mysqli_query($conn, "SELECT COUNT(*) FROM member WHERE email='$email'");
		$getcheck_email = mysqli_fetch_assoc($check_email);
        $checkemail = $getcheck_email['COUNT(*)'];
        
		$check_sdt = mysqli_query($conn, "SELECT COUNT(*) FROM member WHERE sdt='$sdt'");
		$getcheck_sdt = mysqli_fetch_assoc($check_sdt);
        $checksdt = $getcheck_sdt['COUNT(*)'];
        
		$check_idfb = mysqli_query($conn, "SELECT COUNT(*) FROM member WHERE idfb='$idfb'");
		$getcheckidfb = mysqli_fetch_assoc($check_idfb);
        $checkidfb = $getcheckidfb['COUNT(*)'];
        
        $check = mysqli_query($conn, "SELECT COUNT(*) FROM member WHERE username='$username'");
        $getcheck = mysqli_fetch_assoc($check);
        $res = $getcheck['COUNT(*)'];
        
        if(!$username || !$password || !$password2){
			echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Vui lòng điền đầy đủ thông tin.</font></h4></div>';
        }else if(!$password){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Vui lòng nhập mật khẩu.</font></h4></div>';
        }else if(!$password2){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Vui lòng nhập lại mật khẩu.</font></h4></div>';
        }else if($password < 6){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Mật khẩu phải hơn 5 ký tự.</font></h4></div>';
        }/*else if(!$captcha){
             echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Vui lòng xác nhận mã Captcha.</font></h4></div>';
        }*/else if($response.success == false){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Bạn đang cố ý Spam hệ thống.</font></h4></div>';
        }else if(strlen($username) > 20 || strlen($username) < 5){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Tên đăng nhập phải lớn hơn 4 ký tự.<br>- Tên đăng nhập không vượt quá 20 ký tự.</font></h4></div>';
        }else if($res > 0){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Tên đăng nhập này đã tồn tại.<br>- Vui lòng chọn tên khác.</font></h4></div>';
        }else if($checkemail > 0){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Email này đã tồn tại.<br>- Vui lòng chọn Email khác.</font></h4></div>';
        }else if($checksdt > 0){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Số điện thoại này đã tồn tại.<br>- Vui lòng chọn số điện thoại khác.</font></h4></font></div>';
        }else if(strlen($sdt) != 10){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Số điện thoại không đúng dạng.<br>- Vui lòng kiểm tra lại.</font></h4></font></div>';
        }else if($checkidfb > 0){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- UID này đã tồn tại.<br>- Vui lòng chọn UID khác.</font></h4></div>';
        }else if($password != $password2){
            echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Mật khẩu điền lại không trùng nhau.<br>- Vui lòng kiểm tra lại.</font></h4></div>';
        }else{
            mysqli_query($conn, "INSERT INTO member(username, password, level, bill, macode, status, email, sdt, idfb, time, ip, diachi) VALUES ('$username', '$password', '1', '0', '$code', '0', '$email', '$sdt', '$idfb', $time, '$remoteip', 'VietNam')");
            echo '<div class="panel-footer"><h4><font color=green>* Thông báo:<br>- Đăng ký tài khoản thành công.<br>- Nhấn <a href="/Login.php">Vào Đây</a> để đăng nhập.<br>- Hoặc hệ thống sẽ tự chuyển hướng...</font></h4></div>';
			echo '<meta http-equiv=refresh content="2; URL=/">';
        }
    }
    function randma($length) {
        $characters = '104106862';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < 6; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }
?>
    <?php
    $check = mysqli_fetch_assoc(mysqli_query($conn, "SELECT dangky FROM setting"));
    if($check['dangky'] == 1){
?>
                <div class="form-group">
                    <div class="col-xs-12">
                        <label class="text-center" for="username">Tên đăng nhập</label>
                        <input type="text" class="form-control input-lg" name="username" value="<?php echo isset($_POST['username']) ? $_POST['username'] : ''; ?>" placeholder="Tên đăng nhập không chứa khoảng trắng...">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <label class="text-center" for="sdt">Email( định dạng xxx@gmail.com)</label>
                        <input type="email" class="form-control input-lg" value="<?php echo isset($_POST['email']) ? $_POST['email'] : ''; ?>" placeholder="Nếu không có, điền gì cũng được..." name="email" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <label class="text-center" for="sdt">Số điện thoại</label>
                        <input type="number" class="form-control input-lg" value="<?php echo isset($_POST['sdt']) ? $_POST['sdt'] : ''; ?>" placeholder="Nhập số điện thoại..." name="sdt" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <label class="text-center" for="idfb">UID Facebook</label>
                        <input type="number" class="form-control input-lg" value="<?php echo isset($_POST['idfb']) ? $_POST['idfb'] : ''; ?>" placeholder="Nếu không biết, điền gì cũng được..." name="idfb" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <label class="text-center" for="password">Nhập mật khẩu</label>
                        <input type="text" class="form-control input-lg" placeholder="Nhập mật khẩu..." value="<?php echo isset($_POST['password']) ? $_POST['password'] : ''; ?>" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12">
                        <label class="text-center" for="password2">Nhập lại mật khẩu 1 lần nữa</label>
                        <input type="text" class="form-control input-lg" placeholder="Nhập lại mật khẩu 1 lần nữa..." name="password2">
                    </div>
                </div>
         <!--       <div class="form-group">
                    <center><div class="g-recaptcha" data-sitekey="6Ld_bA0aAAAAAJU3fuKMbkmIC0wojAwAdXdFj2wL"></div>
                </div> -->
                <div class="form-group text-center m-t-40">
                    <div class="col-xs-6">
                        <button class="btn btn-purple waves-effect waves-light btn-block" name="submit">Đăng ký</button>
                    </div>
                    <div class="col-xs-6">
                        <a href="<?=$domain;?>/Login.php" class="btn btn-block btn-default">Đăng nhập</a>
                    </div>
                </div>
<?php }else{ ?>
        <b>TẠM THỜI ĐÓNG CỬA CHỨC NĂNG ĐĂNG KÝ THÀNH VIÊN MỚI.</b>
    <?php } ?>
                    </form> 
                </div>
            </div>
        </div>
        <script>
            var resizefunc = [];
        </script>
        <script src="<?=$domain;?>/assets/datatables/jquery.dataTables.min.js"></script>
        <script src="<?=$domain;?>/assets/datatables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function() {
                $('.data_table').dataTable();
            });
        </script>
        <script src="<?=$domain;?>/js/bootstrap.min.js"></script>
        <script src="<?=$domain;?>/js/waves.js"></script>
        <script src="<?=$domain;?>/js/wow.min.js"></script>
        <script src="<?=$domain;?>/<?=$domain;?>/js/jquery.nicescroll.js" type="text/javascript"></script>
        <script src="<?=$domain;?>/js/jquery.scrollTo.min.js"></script>
        <script src="<?=$domain;?>/assets/jquery-detectmobile/detect.js"></script>
        <script src="<?=$domain;?>/assets/fastclick/fastclick.js"></script>
        <script src="<?=$domain;?>/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
        <script src="<?=$domain;?>/assets/jquery-blockui/jquery.blockUI.js"></script>
        <script src="<?=$domain;?>/assets/sweet-alert/sweet-alert.min.js"></script>
        <script src="<?=$domain;?>/assets/sweet-alert/sweet-alert.init.js"></script>
        <!-- CUSTOM JS -->
        <script src="<?=$domain;?>/js/jquery.app.js"></script>
    </body>
</html>