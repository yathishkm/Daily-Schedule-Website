<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #7B1113; /* Maroon background */
            margin: 0;
        }

        .form-container {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        form input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        form input[type="submit"] {
            background-color: #7B1113; /* Maroon button color */
            color: #FFFFFF;
            border: none;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #54090E; /* Darker maroon on hover */
        }
    </style>
</head>
<body>
<%
String email = request.getParameter("email");
%>
    <div class="form-container" >
        <h1 style="color: #7B1113; text-transform: uppercase;">Add the task</h1>
        <form action="add.jsp" >
            <input type="hidden" name="email" value="<%= email %>">
            <input type="date" name="date" placeholder="Enter date">
            <input type="time" name="time" placeholder="Worktime">
            <input type="text" name="newEntry" placeholder="New Entry">
            <input type="submit" name="addToDB" value="Tap to Add">
        </form>
    </div>
    
    
</body>
</html>
