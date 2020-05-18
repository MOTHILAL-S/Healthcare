<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="Connection.jsp" %>

<!DOCTYPE html>
<html>
    <head>
    <!-- Required meta tags-->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
   <title>Doctor Emergency Appointments</title>

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
        
        <!-- Menu Bar -->
        <div class="Menu-Bar">
            <ul>
                <li class="active"><a href="Doctor_Home_Page.jsp"><i class="fa fa-home"></i>Dashboard</a></li>
                <li><a href="Doctor_Patient_Details.jsp"><i class="fa fa-user"></i>Patient Details</a></li>
                <li><a href="#"><i class="fa fa-user"></i>Appointment</a>
					<div class="Sub-Menu-1">
						<ul>
							<li><a href="Doctor_Appointment_Emergency.jsp">Emergency</a></li>
							<li><a href="Doctor_Appointment_Regular.jsp">Regular</a></li>
						</ul>
					</div>
				</li>
                <li><a href="index.html"><i class="fa fa-users"></i>Logout</a></li>
            </ul>
        </div>
        
        <!-- Patient Details -->
        <%
            String p_email=request.getParameter("pemail");
            String Specalization=(String)session.getAttribute("Specalization");
            String p_name=null;
            
            String p_location=null;
            String p_age=null;
            String p_disease=null;
            String p_status=null;
            
            try {
                    PreparedStatement ps=connection.prepareStatement("SELECT * FROM patient WHERE email=?");
                    ps.setString(1,p_email);
                    ResultSet rs=ps.executeQuery();
                    while(rs.next()) {
                        p_name=rs.getString("name");
                        p_age=rs.getString("age");
                        p_location=rs.getString("location");
                        p_disease=rs.getString("disease");
                        p_status=rs.getString("status");
                    }
            }catch(Exception e) {
                JOptionPane.showMessageDialog(null,"Exception : "+e);
            }
            if(Specalization.equals("Cardiovascular")) {
                try {
                    PreparedStatement ps=connection.prepareStatement("SELECT * FROM cardio WHERE email=?");
                    ps.setString(1,p_email);
                    ResultSet rs=ps.executeQuery();
                    float c_bodytemp=0;
                    int c_pulse=0;
                    int c_systolic=0;
                    int c_diastolic=0;
                    String c_bp=null;
                    String c_cholestrol=null;
                    int c_cholestrolvalue=0;    
                    String c_glucose=null;
                    int c_glucosevalue=0;
                    while(rs.next()) {
                        c_bodytemp=rs.getFloat("bodytemp");
                        c_pulse=rs.getInt("pulse");
                        c_systolic=rs.getInt("systolic");
                        c_diastolic=rs.getInt("diastolic");
                        c_bp=rs.getString("bp");
                        c_cholestrol=rs.getString("cholesterol");
                        c_cholestrolvalue=rs.getInt("cholesterolvalue");
                        c_glucose=rs.getString("glucose");
                        c_glucosevalue=rs.getInt("glucosevalue");
                    }
        %>
        <!-- Cardio Report -->
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Report Details</h2>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">name</label>
                                    <label class="input--style-4"><%=p_name%></label>
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <label class="input--style-4"><%=p_email%></label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Age</label>
                                    <label class="input--style-4"><%=p_age%></label>
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Disease</label>
                                    <label class="input--style-4"><%=p_disease%></label>
                                    
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Location</label>
                                    <label class="input--style-4"><%=p_location%></label>
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Health Status</label>
                                    <label class="input--style-4"><%=p_status%></label>
                                    
                                </div>
                            </div>
                        </div>
                                    
                       
                        <div class="input-group">
                            <label class="label">Pulse</label>
                            <label class="input--style-4"><%=c_pulse%></label>
                        </div>
                            
                        <div class="row row-space">
                            <div class="col-2"> 
                        <div class="input-group">
                            <label class="label">Body Temperature</label>
                            <label class="input--style-4"><%=c_bodytemp%></label>
                        </div>
                                    
                       <div class="input-group">
                            <label class="label">BP</label>
                            <label class="input--style-4"><%=c_bp%></label>
                        </div>
                        </div> 
                        </div> 
           
                                    
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Systolic</label>
                                    <label class="input--style-4"><%=c_systolic%></label>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Diastolic</label>
                                    <label class="input--style-4"><%=c_diastolic%></label>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Cholestrol</label>
                                    <label class="input--style-4"><%=c_cholestrol%></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Cholestrol Value</label>
                                    <label class="input--style-4"><%=c_cholestrolvalue%></label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Glucose</label>
                                    <label class="input--style-4"><%=c_glucose%></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Glucose Value</label>
                                    <label class="input--style-4"><%=c_glucosevalue%></label>
                                    
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        
        <%
                }catch(Exception e) {
                    JOptionPane.showMessageDialog(null,"Exception : "+e);
                }
            }
            else if(Specalization.equals("Diabetics")) {
                try {
                    PreparedStatement ps=connection.prepareStatement("SELECT * FROM diabetics WHERE email=?");
                    ps.setString(1,p_email);
                    ResultSet rs=ps.executeQuery();
                    String nname=null;
                    String eemail=null;
                    float d_bodytemp=0;
                    int d_pulse=0;
                    int d_systolic=0;
                    int d_diastolic=0;
                    String d_bp=null;
                    String d_A1cstatus=null;
                    int d_A1c=0;    
                    String d_OGTstatus=null;
                    int d_OGT=0;
                    String d_FPGstatus=null;
                    int d_FPG=0;
                    while(rs.next()) {
                        d_bodytemp=rs.getFloat("bodytemp");
                        d_pulse=rs.getInt("pulse");
                        d_systolic=rs.getInt("systolic");
                        d_diastolic=rs.getInt("diastolic");
                        d_bp=rs.getString("bp");
                        d_A1cstatus=rs.getString("A1cstatus");
                        d_A1c=rs.getInt("A1c");
                        d_OGTstatus=rs.getString("OGTstatus");
                        d_OGT=rs.getInt("OGT");
                        d_FPGstatus=rs.getString("FPGstatus");
                        d_FPG=rs.getInt("FPG");
                    }
        %>            
        <!-- Diabetics Report -->
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Report Details</h2>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">name</label>
                                    <label class="input--style-4"><%=p_name%></label>
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <label class="input--style-4"><%=p_email%></label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Age</label>
                                    <label class="input--style-4"><%=p_age%></label>
                                   
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Location</label>
                                    <label class="input--style-4"><%=p_location%></label>
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Disease</label>
                                    <label class="input--style-4"><%=p_disease%></label>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Health Status</label>
                                    <label class="input--style-4"><%=p_status%></label>
                                    
                                </div>
                            </div>
                        </div>
                         
                       <div class="input-group">
                                    <label class="label">Pulse</label>
                                    <label class="input--style-4"><%=d_pulse%></label>
                                </div>            
                       
           
                                    
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                            <label class="label">Body Temperature</label>
                            <label class="input--style-4"><%=d_bodytemp%></label>
                        </div>

                            </div>
                            <div class="col-2">
                                <div class="input-group">
                            <label class="label">BP</label>
                            <label class="input--style-4"><%=d_bp%> %</label>
                        </div>
                            </div>
                        </div>               
              
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Systolic</label>
                                    <label class="input--style-4"><%=d_systolic%></label>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Diastolic</label>
                                    <label class="input--style-4"><%=d_diastolic%></label>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">A1c status</label>
                                    <label class="input--style-4"><%=d_A1cstatus%></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">A1c</label>
                                    <label class="input--style-4"><%=d_A1c%></label>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">OGTstatus</label>
                                    <label class="input--style-4"><%=d_OGTstatus%></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">OGT</label>
                                    <label class="input--style-4"><%=d_OGT%></label>
                                    
                                </div>
                            </div>
                        </div>
                         
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">FPG</label>
                                    <label class="input--style-4"><%=d_FPGstatus%></label>
                                    
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">FPG</label>
                                    <label class="input--style-4"><%=d_FPG%></label>
                                    
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        
        
        
        <%            
                }catch(Exception e) {
                    JOptionPane.showMessageDialog(null,"Exception : "+e);
                }
            }
            else {
                
            }
        %>       
        
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

