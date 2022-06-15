package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbutil.DBUtil;
import pojo.LoginInfo;

public class LoginDAO {

	public static boolean isUserValid(LoginInfo userDetails) {
		
		boolean isValid =  false;
		
//		we are gonna check in the database is the username that user has typed in exist in the database or not
//		how do we check, get connected with DB, run sql query , from result set will check exist or not
		
		try {
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from ProjectDB.login_info where User_name= '"+ userDetails.getUsername() +"' and password= '"+ userDetails.getPassword() +"';");
			while(rs.next()) {
				isValid = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return isValid;
		
	}
}
