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
    
    
    PreparedStatement insertPs = con.prepareStatement("INSERT INTO applicantdiary1 (email, date, time, newEntry) VALUES (?, ?, ?, ?)");
    insertPs.setString(1, email);
    insertPs.setString(2, date);
    insertPs.setString(3, time);
    insertPs.setString(4, newEntry);
    try 
    {
        insertPs.executeUpdate();
        RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
    } 
    catch (Exception e) {
        e.printStackTrace(); 
        RequestDispatcher rd= request.getRequestDispatcher("add1.jsp");
        rd.forward(request, response);
    }
   %>
    
</body>
</html>
