<?php
	session_start();
	$id = $_SESSION["id"];
	$email = $_SESSION["email"];
	$name = $_SESSION["name"];
	$last_name = $_SESSION["last_name"];
	$role = $_SESSION["role"];
?>
<!-- ========== TOP NAVBAR ========== -->
<nav class="navbar top-navbar bg-white box-shadow">
	<div class="container-fluid">
		<div class="row">
			<div class="navbar-header no-padding">
				<a class="navbar-brand" href="index.php">
					<img src="images/logo-dark.svg" alt="Options - Admin Template" class="logo">
				</a>
				<span class="small-nav-handle hidden-sm hidden-xs"><i class="fa fa-outdent"></i></span>
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<i class="fa fa-ellipsis-v"></i>
				</button>
				<button type="button" class="navbar-toggle mobile-nav-toggle" >
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<!-- /.navbar-header -->

			<div class="collapse navbar-collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
					<li class="hidden-sm hidden-xs"><a href="#" class="user-info-handle"><i class="fa fa-user"></i></a></li>
					<li class="hidden-sm hidden-xs"><a href="#" class="full-screen-handle"><i class="fa fa-arrows-alt"></i></a></li>
					<li class="hidden-sm hidden-xs"><a href="#"><i class="fa fa-search"></i></a></li>
					<li class="hidden-xs hidden-xs"><!-- <a href="#">My Tasks</a> --></li>
				</ul>
				<!-- /.nav navbar-nav -->

				<ul class="nav navbar-nav navbar-right" data-dropdown-in="fadeIn" data-dropdown-out="fadeOut">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle bg-primary tour-one" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-plus-circle"></i> Actions <span class="caret"></span></a>
						<ul class="dropdown-menu" >
							<li role="separator" class="divider"></li>
							<li><a href="#">Create Order</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Generate Report</a></li>
						</ul>
					</li>
					<!-- /.dropdown -->
					<li class="dropdown tour-two">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo "$email" ?> <span class="caret"></span></a>
						<ul class="dropdown-menu profile-dropdown">
							<li class="profile-menu bg-gray">
								<div class="">

									<img src="http://placehold.it/60/c2c2c2?text=User"  class="img-circle profile-img">
									<div class="profile-name">
										<h6><?php echo "$name". " ".$last_name ?></h6>
										<a href="pages-profile.html">View Profile</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</li>
							<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
							<li><a href="#"><i class="fa fa-sliders"></i> Account Details</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="logout_code.php" class="color-danger text-center"><i class="fa fa-sign-out"></i> Logout</a></li>
						</ul>
					</li>
					<!-- /.dropdown -->
					
				</ul>
				<!-- /.nav navbar-nav navbar-right -->
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</nav>