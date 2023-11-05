<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/10e174ecbc.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <%
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");
            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT * FROM register WHERE email='" + email + "' AND password='" + password + "'");

            if (rs.next()) {
                // Successful login, redirect to home.html
                RequestDispatcher rd= request.getRequestDispatcher("home.jsp");
                rd.forward(request, response);
                
            } else {
                // Invalid credentials, you may want to display an error message
                out.println("Invalid email or password.");
            }

            con.close();
        } catch (Exception e) {
            out.println(e);
        }
    %>
</body>
</html>
