package demo22.hello;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/servlet3")
public class Logout extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
    {
		HttpSession session =request.getSession();
		session.removeAttribute("welcome");
		session.invalidate();
		response.sendRedirect("index.jsp");
    }
}

