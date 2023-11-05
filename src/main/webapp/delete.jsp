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
    PreparedStatement insertPs = con.prepareStatement("DELETE FROM applicantdiary1 WHERE  email=? and date=? and time=? ");
    insertPs.setString(1, email);
    insertPs.setString(2, date);
    insertPs.setString(3, time);
   
    try 
    {
        insertPs.executeUpdate();
        RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
    } 
    catch (Exception e) {
        e.printStackTrace(); 
        RequestDispatcher rd= request.getRequestDispatcher("delete1.jsp");
        rd.forward(request, response);
    }
%>

</body>
</html>