package servlet_db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/info")
public class servlet extends GenericServlet {
	
		@Override
		public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
		{
				
			String name=req.getParameter("uname");
			String email=req.getParameter("email");
			String password=req.getParameter("pass");
			
			//store the user given info into the DB
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");
				PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?)");
				
				ps.setString(1,name);
				ps.setString(2,email);
				ps.setString(3,password);
				
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.forward(req, res);
		
		}
				
		}

	
