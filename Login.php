<?php
require("./core/system/functions.php");
if(isset($_SESSION['id_ctv'])){
    echo "<script>window.location='/index.php?action=trang-loi';</script>";
}
?>
<?php $titles='ĐĂNG NHẬP HỆ THỐNG';?>
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
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/sweet-alert/sweet-alert.min.css" rel="stylesheet">
        <!-- Font Icons -->
        <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
        <link href="assets/ionicon/css/ionicons.min.css" rel="stylesheet" />
        <link href="css/material-design-iconic-font.min.css" rel="stylesheet">
        <!-- animate css -->
        <link href="css/animate.css" rel="stylesheet" />
        <!-- Waves-effect -->
        <link href="css/waves-effect.css" rel="stylesheet">
        <link href="css/helper.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <!-- Custom Files -->
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script src="js/jquery.min.js"></script>
        <script src="js/modernizr.min.js"></script>
        <script src="js/jickme.js"></script>
        <script src="assets/sweet-alert/sweet-alert.min.js"></script>
        <script src="assets/sweet-alert/sweet-alert.init.js"></script>
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
					<p class="text-center text-white">Trân trọng tuyển Đại lý và Cộng tác viên</p>
					<p class="text-center text-white">Tài khoản vào tham quan hệ thống:</p>
					<p class="text-center text-white">Tên đăng nhập: test123 Mật khẩu: test123</p>
                    <p class="text-center text-white">Liên hệ: <a href="#" style="color: white;">0858 743 369</a></p>
                    <p class="text-center text-white">IP của bạn là: <?=$remoteip?></p>
                </div> 
                <div class="panel-body">
                    <form class="form-horizontal m-t-20" method="post">
<?php
if (isset($_POST['submit'])) {
    $username = htmlspecialchars(addslashes(strip_tags($_POST['username'])));
    $password = htmlspecialchars(addslashes(strip_tags($_POST['password'])));
    $sql = "SELECT * FROM member WHERE username='$username'";
    $c = mysqli_query($conn, $sql);
    $check = mysqli_fetch_assoc($c);
    if(!$username){
		echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Vui lòng điền tên đăng nhập.</font></h4></div>';
    }else if(!$password){
		echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Vui lòng điền mật khẩu.</font></h4></div>';
    }else if($check == 0){
		echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Tên đăng nhập không tồn tại trong hệ thống.<br>- <a href="/Register.php">Đăng ký</a> nếu bạn chưa có tài khoản?</font></h4></div>';
    }else if($check['password'] != $_POST['password']){
		echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Tên đăng nhập hoặc mật khẩu không đúng.<br>- Liên hệ Admin nếu bạn quên?</h5></div>';
    }else if($check['status'] == -1){
		echo '<div class="panel-footer"><h4><font color=red>* Thông báo:<br>- Tài khoản của bạn đã bị khoá.<br>- Nếu bạn cho rằng chúng tôi nhầm lẫn, vui lòng cho chúng tôi biết!</font></h4></div>';
    }else{
        $id_ctv = $check['id_ctv'];
        $_SESSION['login'] = 'ok';
        $_SESSION['id_ctv'] = $id_ctv;
		echo '<div class="panel-footer"><h4><font color=green>* Thông báo:<br>- Bạn đã đăng nhập thành công.<br>- Nhấn <a href="/index.php">Vào Đây</a> để tiếp tục...<br>- Hoặc hệ thống sẽ tự chuyển hướng...</font></h4></div>';
		echo '<meta http-equiv=refresh content="2; URL=/">';
    }
}
?>
                        <div class="form-group">
                            <div class="col-xs-12">
                            <label class="text-center">Tên đăng nhập:</label>
                                <input class="form-control input-lg" type="text" required value="<?php echo isset($_POST['username']) ? $_POST['username'] : ''; ?>" placeholder="Tên đăng nhập..." name="username">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                            <label class="text-center">Mật khẩu:</label>
                                <input type="password" class="form-control input-lg" type="text" required="" placeholder="Mật khẩu..." name="password" required="">
                            </div>
                        </div>
                        <div class="form-group text-center m-t-40">
                            <div class="col-xs-6">
                                <button class="btn btn-purple waves-effect waves-light btn-block" name="submit">Đăng nhập</button>
                            </div>
                            <div class="col-xs-6">
                                <a href="<?=$domain;?>/Register.php" class="btn btn-block btn-default">Đăng ký</a>
                            </div>
							<hr>
							<br>
						<a href="#"><u>Quên mật khẩu?</u></a>
                        </div>
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