package demo22.hello;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;
//for login page
@WebServlet("/servlet1")
public class Democonn extends HttpServlet 
{
	@Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
    {
        try 
        {
        	response.setContentType("text/html");
        	PrintWriter out = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			int f=0;
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf8","root","rohith");
			String user=request.getParameter("username");
			String passd=request.getParameter("password");
			PreparedStatement stmt=conn.prepareStatement("select * from Registration where user_name=? and pass=?");
			stmt.setInt(1, 1);
			stmt.setString(1,user);
			stmt.setString(2, passd);
			java.sql.ResultSet res=stmt.executeQuery();
	       	if(res.next())
	       	{
	       		HttpSession session=request.getSession();
				session.setAttribute("welcome",user);
				f=1;
				response.sendRedirect("home1.jsp");
	       	}
	       	else
	       	{
	       		request.setAttribute("error"," Wrong User Name or Password !!!" );
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
				rd.include(request,response);
	       	}
			res.close();
            conn.close();
  
            // Get a writer pointer 
            // to display the successful result
            
		}
		catch(Exception e1)
		{
			System.out.println(e1);
		}
       

    }	
}