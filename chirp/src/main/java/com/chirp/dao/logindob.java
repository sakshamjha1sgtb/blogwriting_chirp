package com.chirp.dao;
import com.chirp.helper.*;
import java.sql.*;

public class logindob {
    String sql = "select * from users where email=? and pass=?";
	public boolean log(String email,String pass){
		try {
			Connection con = ConnectionProvider.getconnection();	    
			PreparedStatement st = con.prepareStatement(sql);
		    st.setString(1, email);
		    st.setString(2, pass);
		    ResultSet rs = st.executeQuery();
		    if(rs.next()){
		    	return true;
		    }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
		
	}
}
