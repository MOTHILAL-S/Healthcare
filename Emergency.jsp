<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="Connection.jsp" %>

<%
    String email=request.getParameter("pemail");
    PreparedStatement ps=connection.prepareStatement("update patient set appointment=? where email=?");
    ps.setString(1,"EMERGENCY");
    ps.setString(2,email);
    ps.executeUpdate();
    
    JOptionPane.showMessageDialog(null, "Intimation sent to \n DOCTOR \n AMBULANCE");
    response.sendRedirect("Admin_Patient_Emergency_Page.jsp");
    
%>
