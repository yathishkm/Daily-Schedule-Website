<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
    
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
	String email = request.getParameter("email");
	String date = request.getParameter("date");
    String time = request.getParameter("time");
    String newEntry = request.getParameter("newEntry");
    PreparedStatement insertPs = con.prepareStatement("UPDATE applicantdiary1 SET newEntry=? WHERE  email=? and date=? and time=? ");
    insertPs.setString(1, newEntry);
    insertPs.setString(2, email);
    insertPs.setString(3, date);
    insertPs.setString(4, time);
    
    

    try 
    {
        insertPs.executeUpdate();
        RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
    } 
    catch (Exception e) {
        e.printStackTrace(); 
        RequestDispatcher rd= request.getRequestDispatcher("update1.jsp");
        rd.forward(request, response);
    }
   %>

</body>
</html>