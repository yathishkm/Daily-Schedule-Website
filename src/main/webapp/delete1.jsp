<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">
<head>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #800000; /* Maroon background */
        }

        .form-container {
            background-color: #fff; /* White box */
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            max-width: 400px;
            width: 100%;
            box-sizing: border-box;
        }

        form {
            margin-top: 20px;
        }

        input, button {
            margin: 10px 0;
            padding: 10px;
            width: calc(100% - 20px);
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #800000;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #600000;
        }
    </style>
</head>
<body>
<%
String email = request.getParameter("email");
%>
    <div class="form-container">
        <h2 style="color: #800000;">DELETE FROM LIST</h2>
        <form action="delete.jsp" method="post"> <!-- Empty action submits to the same page -->
            <input type="hidden" name="email" value="<%= email %>">
            <input type="date" name="date" placeholder="Enter date">
            <input type="time" name="time" placeholder="Worktime">
            <input type="submit" name="delToDB" value="Tap to Delete">
        </form>
    </div>
</body>
</html>
