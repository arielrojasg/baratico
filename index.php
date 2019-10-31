<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login - Baratico</title>

        <!-- ========== COMMON STYLES ========== -->
        <link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >

        <!-- ========== PAGE STYLES ========== -->
        <link rel="stylesheet" href="css/icheck/skins/flat/blue.css" >

        <!-- ========== THEME CSS ========== -->
        <link rel="stylesheet" href="css/main.css" media="screen" >

        <!-- ========== MODERNIZR ========== -->
        <script src="js/modernizr/modernizr.min.js"></script>
    </head>
    <body class="">
        <div class="main-wrapper">

            <div class="login-bg-color bg-black-300">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel login-box">
                            <div class="panel-heading text-center">
                            <img src="images/baratico-logo.png" class="login-logo">
                                <div class="panel-title text-center">
                                    <h4>Iniciar sesión</h4>
                                </div>
                            </div>
                            <div class="panel-body p-20">

                                <div class="section-title">
                                    <p class="sub-title text-muted">Bienvenido al Sistema de Baratico</p>
                                </div>

                                <form action="login_code.php" method="POST">
                                	<div class="form-group">
                                		<label for="exampleInputEmail1">Usuario</label>
                                        <input type="text" name="user" class="form-control" id="exampleInputEmail1" placeholder="Digite su usuario" autocomplete="off" >
                                    </div>
                                	<div class="form-group">
                                		<label for="exampleInputPassword1">Contraseña</label>
                                		<input type="password" name="passw" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                	</div>
                                    <div class="form-group mt-20">
                                        <div class="">
                                            <button type="submit" name="submit" class="btn btn-success btn-labeled pull-right">Iniciar Sesión<span class="btn-label btn-label-right"><i class="fa fa-check"></i></span></button>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </form>
                                
                                <?php
                                    if(@$_GET['fail']==true)
                                    {
                                ?>

                                    <div class="alert-light text-danger text-center">Usuario o password equivocados</div>
                                <?php
                                    }
                                ?>
                                <!-- /.text-center -->

                            </div>
                        </div>
                        <!-- /.panel -->
                        <p class="text-muted text-center"><small>Copyright © Baratico 2019</small></p>
                    </div>
                    <!-- /.col-md-6 col-md-offset-3 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /. -->

        </div>
        <!-- /.main-wrapper -->

        <!-- ========== COMMON JS FILES ========== -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/jquery-ui/jquery-ui.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/pace/pace.min.js"></script>
        <script src="js/lobipanel/lobipanel.min.js"></script>
        <script src="js/iscroll/iscroll.js"></script>

        <!-- ========== PAGE JS FILES ========== -->
        <script src="js/icheck/icheck.min.js"></script>

        <!-- ========== THEME JS ========== -->
        <script src="js/main.js"></script>
        <script>
            $(function(){
                $('input.flat-blue-style').iCheck({
                    checkboxClass: 'icheckbox_flat-blue'
                });
            });
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
    </body>
</html>
