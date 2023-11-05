<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete from List</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #8B0000; /* Maroon Background */
        }

        .form-box {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
<%
String email = request.getParameter("email");
%>
    <div class="form-box">
        <h2 style="color: #8B0000;">DISPLAY FROM LIST</h2>
        <form action="" method="post">
            <table border="1">
                <tr>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Work</th>
                    <th>Editing Column</th>
                    <th>Deleting Column</th>
                </tr>
                <%
                 
                    try {
                    	Class.forName("com.mysql.cj.jdbc.Driver");
                    	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
                    	PreparedStatement ps = con.prepareStatement("SELECT * FROM applicantdiary1 WHERE email=?");
                        ps.setString(1, email);
                        ResultSet rs = ps.executeQuery();

                        while (rs.next()) {
                %>
                            <tr>
                                <td><%= rs.getString("date") %></td>
                                <td><%= rs.getString("time") %></td>
                                <td><%= rs.getString("newEntry") %></td>
                                <td>
                                        <form action="displayUpdate.jsp" method="post">
                                    	<input type="hidden" name="email" value="<%= rs.getString("email") %>">
	                                    <input type="submit" name="updt" value="Update">
                                    </form>
                                </td>
                                <td>
                                    <form action="display.jsp" method="post">
                                    	<input type="hidden" name="email" value="<%= rs.getString("email") %>">
	                                    <input type="hidden" name="date" value="<%= rs.getString("date") %>">
	                                    <input type="hidden" name="time" value="<%= rs.getString("time") %>">
	                                    <input type="hidden" name="newEntry" value="<%= rs.getString("newEntry") %>">
	                                    <input type="submit" name="deldb" value="Delete">
                                    </form>
                                </td>
                            </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } 
    
                %>
            </table>
        </form>
    </div>
</body>
</html>
