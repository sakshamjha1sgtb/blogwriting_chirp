package com.chirp.dao;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.annotation.*;
import com.chirp.helper.*;
@MultipartConfig
/**
 * Servlet implementation class editprofile
 */
@WebServlet("/editprofile")
public class editprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editprofile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String dob = request.getParameter("dob");
		String about = request.getParameter("about");
		Part image = request.getPart("profile-pic");
		HttpSession session=request.getSession(); 
		String email = String.valueOf(session.getAttribute("useremail"));
	    String img = image.getSubmittedFileName();
	    
		Connection con = ConnectionProvider.getconnection();
		String path = request.getRealPath("/")+"img"+File.separator+img;
			
			try {
				if(img.isEmpty()) {
					img=String.valueOf(session.getAttribute("pimage"));
					String sql = "update users set fname='"+fname+"' ,lname='"+lname+"', dob='"+dob+"', pic='"+img+"' ,uinfo='"+about+"' where email='"+email+"'";
				PreparedStatement st = con.prepareStatement(sql);
				st.executeUpdate();
				store.saveFile(image.getInputStream(), path);
				response.sendRedirect("profile.jsp");
				}
				else {
					String sql = "update users set fname='"+fname+"' ,lname='"+lname+"', dob='"+dob+"', pic='"+img+"' ,uinfo='"+about+"' where email='"+email+"'";
					PreparedStatement st = con.prepareStatement(sql);
					st.executeUpdate();
					store.saveFile(image.getInputStream(), path);
					response.sendRedirect("profile.jsp");
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			 
	}
	
}