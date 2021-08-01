package com.chirp.servelet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chirp.dao.*;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		PrintWriter out = response.getWriter();
		logindob dao = new logindob();
		if(dao.log(email,pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("useremail", email);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			 out.println("<script type=\"text/javascript\">");
			   out.println("alert('Email or password incorrect');");
			   out.println("location='homepage.jsp';");
			   out.println("</script>");
		}
	}



}
