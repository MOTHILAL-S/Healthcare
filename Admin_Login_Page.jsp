<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Admin Login Page</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>

<body>
    
    
    <div class="Menu-Bar">
			<ul>
				<li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="#"><i class="fa fa-user"></i>Patient</a>
					<div class="Sub-Menu-1">
						<ul>
							<li><a href="Patient_Registration_Page.jsp">Register</a></li>
							<li><a href="Patient_Login_Page.jsp">Login</a></li>
						</ul>
					</div>
				</li>
				<li><a href="#"><i class="fa fa-user-plus"></i>Doctor</a>
					<div class="Sub-Menu-1">
						<ul>
							<li><a href="Doctor_Registration_Page.jsp">Register</a></li>
							<li><a href="Doctor_Login_Page.jsp">Login</a></li>
						</ul>
					</div>
				</li>
				<li class="active"><a href="Admin_Login_Page.jsp"><i class="fa fa-user-secret"></i>Admin</a></li>
				<li><a href="About_Us.html"><i class="fa fa-users"></i>About Us</a></li>
			</ul>
		</div>
    
    
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Admin Login Page</h2>
                    <form method="POST" action="Admin_Login.jsp">
                        <div class="input-group">
                            <label class="label">Admin ID</label>
                            <input class="input--style-4" type="text" name="admin_id">
                        </div>
                        <div class="input-group">
                            <label class="label">Password</label>
                            <input class="input--style-4" type="Password" name="password">
                        </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>

</html>
<!-- end document-->
