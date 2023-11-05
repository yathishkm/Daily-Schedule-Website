<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">
<head>
    <link rel="stylesheet" href="./home.css">

    <style>
        /* Add your existing CSS styles here */
        /* ... */

        /* Corrected dropdown styles */
        .dropdown-list {
            display: none;
            position: absolute;
            background-color: purple;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-link {
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        
        .topbar li {
            list-style: none;
            display: inline;
            margin-right: 30px;
            justify-content: space-around;
            float: left;
            font-family: sans-serif;
            font-size: larger;
            position: relative; /* Added to make the dropdown position correctly */
        }

        .topbar .xyz {
            display: flex;
            list-style: none;
        }

        .topbar .xyz li {
            position: relative;
        }

        .topbar .xyz li:hover .dropdown-list {
            display: block;
        }

        .a {
            background-image:url(./images/wp8185079-aesthetic-jdm-computer-wallpapers.png);
            width: 100%;
            height: 100vh;
            background-size: cover;    
        }
    </style>

</head>
<body>
    <div class="topbar">
        <ul class="xyz">
            <li><a href="">Home</a></li>
            <li>
                <a href="#">
                    <span>Services</span>
                    <img src="./images/icon-arrow-down.svg" alt="arrow down" class="arrow-down">
                </a>
                <form action="" method="post">
                	<ul class="dropdown-list" >
                    <li class="dropdown-link">
                        <a href="">
                        <button name="action" value="Add to List" type="submit" class="abc">
                        <span>Add</span>
                        </button>
                        </a>
                    </li>
                    <li class="dropdown-link">
	                   	 <a href="" >
	                   	 <button name="action" value="Delete From List" type="submit">
	                     <span>Delete</span>
	                     </button>
	                      </a>
                    </li>
                    <li class="dropdown-link">
                    	<a href="" >
                    	<button name="action" value="Update data in List" type="submit">
                        <span>Update</span>
                        </button>
                        </a>     
                    </li>
                    <li class="dropdown-link">
                    	<a href="" >
                    	<button name="action" value="Display List" type="submit">
                        <span>Display</span>
                        </button>
                        </a>
                    </li>
                </ul>
                
                </form>
            </li>
            <li><a href="">About US</a></li>
            <li><a href="">Contact Us</a></li>
        </ul>
    </div>

    <div class="a"></div>
    
    <%
	 String action = request.getParameter("action");
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
     Statement stmt = con.createStatement();
	    
	    if (action != null) 
	    {
	        if (action.equals("Add to List")) 
	        {
	        	RequestDispatcher rd= request.getRequestDispatcher("add1.jsp");
                rd.forward(request, response);
			}
			else if (action.equals("Delete From List")) 
			{
				RequestDispatcher rd= request.getRequestDispatcher("delete1.jsp");
                rd.forward(request, response);
			}
			else if (action.equals("Update data in List")) 
			{
				RequestDispatcher rd= request.getRequestDispatcher("update1.jsp");
                rd.forward(request, response);
			}
			else if (action.equals("Display List")) 
			{
				RequestDispatcher rd= request.getRequestDispatcher("display1.jsp");
                rd.forward(request, response);		
			}
	    }
		    
    %>
</body>
</html>
