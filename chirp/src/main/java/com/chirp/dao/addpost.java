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
@WebServlet("/addpost")
public class addpost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addpost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ptitle = request.getParameter("ptitle");
		String pinfo = request.getParameter("pinfo");
		Part image = request.getPart("pimage");
		HttpSession session=request.getSession(); 
		String username = String.valueOf(session.getAttribute("username"));
	    String pimg = image.getSubmittedFileName();
		Connection con = ConnectionProvider.getconnection();
		String path = request.getRealPath("/")+"img"+File.separator+pimg;
		String sql = "insert into post(pimg,ptitle,pinfo,username) values ('"+pimg+"','"+ptitle+"','"+pinfo+"','"+username+"')";	
			try {
				
				PreparedStatement st = con.prepareStatement(sql);
				st.executeUpdate();
				store.saveFile(image.getInputStream(), path);
				response.sendRedirect("welcome.jsp");
				
			} catch (Exception e) {
				e.printStackTrace();
			}	 
	}
	
}