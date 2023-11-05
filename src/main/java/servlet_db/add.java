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


@WebServlet("/adding")
public class add extends GenericServlet {
		
		@Override
		public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
		{
				
			
			String email=req.getParameter("email");
			String date = req.getParameter("date");
		    String time = req.getParameter("time");
		    String newEntry = req.getParameter("newEntry");
			
			
			//store the user given info into the DB
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");	
				PreparedStatement insertPs = con.prepareStatement("INSERT INTO applicantdiary1 (email, date, time, workforyou) VALUES (?, ?, ?, ?)");
			    insertPs.setString(1, email);
			    insertPs.setString(2, date);
			    insertPs.setString(3, time);
			    insertPs.setString(4, newEntry);
				
			    insertPs.executeUpdate();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			RequestDispatcher rd=req.getRequestDispatcher("home.html");
			rd.forward(req, res);
		
		}

}
