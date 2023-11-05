<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #800000; /* Maroon background color */
        }

        .form-box {
            background-color: #ffffff; /* White box background color */
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .form-box h1 {
            color: #800000; /* Maroon text color */
        }

        .form-box input {
            margin: 10px 0;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-box input[type="submit"] {
            background-color: #800000; /* Maroon submit button color */
            color: #fff;
            cursor: pointer;
        }
    </style>
</head>
<body>
<%
String email = request.getParameter("email");
%>
    <div class="form-box">
        <h1>Update List</h1>
        <form action="update.jsp" method="post">
            <!-- Empty action submits to the same page -->
            <input type="hidden" name="email" value="<%= email %>">
            <input type="date" name="date" placeholder="Enter date" required>
            <br>
            <input type="time" name="time" placeholder="Worktime" required>
            <br>
            <input type="text" name="newEntry" placeholder="New Entry" required>
            <br>
            <input type="submit" name="updToDB" value="Tap to Update">
        </form>
    </div>
</body>
</html>
