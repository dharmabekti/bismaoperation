<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bisma | Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<?php echo base_url();?>template/login/images//icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>template/login/css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-43">BISMA OPERATION SCHOOL</span>					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="username" id="username">
						<span class="focus-input100"></span>
						<span class="label-input100">Username</span>
					</div>					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password" id="password">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>			

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">Login</button>
					</div>
					
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2">@Copyright 2018 - Anom Digital V.1.0</span>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('<?php echo base_url();?>template/login/images/bg-01.jpg');">
				</div>
			</div>
		</div>
	</div>
</body>
</html>