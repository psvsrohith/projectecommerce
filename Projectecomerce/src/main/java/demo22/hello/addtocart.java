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
@WebServlet("/servlet4")
public class addtocart extends HttpServlet 
{
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
    {
        try 
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=utf8","root","rohith");
        	HttpSession session=request.getSession();
			String name=(String)session.getAttribute("welcome");
			String pro=(String)session.getAttribute("welcome2");
			PreparedStatement stmt=conn.prepareStatement("insert into Products_Ordered values(?,?)");
			stmt.setString(1,name);
			stmt.setString(2,pro);
			stmt.execute();
			stmt.close();
			conn.close();
			response.sendRedirect("redirect.jsp?id="+pro);
        }
        catch(Exception e1)
		{
			System.out.println(e1);
		}
    }
}
