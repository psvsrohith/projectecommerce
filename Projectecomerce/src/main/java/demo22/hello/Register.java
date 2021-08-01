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
@WebServlet("/servlet2")
public class Register extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
    {
        try 
        {
        	response.setContentType("text/html");
        	PrintWriter out = response.getWriter();
        	
        	
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf8","root","rohith");
			PreparedStatement stmt=conn.prepareStatement("insert into Registration(user_name,Email,DOB,gender,city,adhar_no,pass) values (?,?,?,?,?,?,?)");
			String r,p;
			PreparedStatement stm=conn.prepareStatement("select user_name,pass from Registration");
			java.sql.ResultSet res=stm.executeQuery();
			String s,q;
			q=request.getParameter("name");
			int f=0;
			while(res.next())
			{
				s=res.getString("user_name");
				if(s.equals(q))
				{
					f=1;
					out.println("User Name Already Exist Please Re-enter username and re-register");
					RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
					rd.include(request,response);
					break;
				}
			}
			if(f==0)
			{

				stmt.setString(1,request.getParameter("name"));
				stmt.setString(2,request.getParameter("email"));
				stmt.setString(3,request.getParameter("dob"));
				stmt.setString(4,request.getParameter("gender"));
				stmt.setString(5,request.getParameter("city"));
				stmt.setString(6,request.getParameter("adhar"));
				stmt.setString(7,request.getParameter("rpassd"));
				int  x=stmt.executeUpdate();
				stmt.close();
				out.println("Registration done please login");
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
				rd.include(request,response);
			
				conn.close();
  
				// Get a writer pointer 
				// to display the successful result
			}
        }
		catch(Exception e1)
		{
			System.out.println(e1);
		}
    }
}
