package biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import biz.common.JDBCConnection;

public class UserDAO {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	
	
	public UserVO checkId(String id, String password) {
		/*로그인메서드*/
		UserVO bean = new UserVO();
		try {
			// DB
			conn = JDBCConnection.getConnection();
			
			// SQL
			String sql = "select * from silla_users where id = ? and password = ?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, password);
			
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				// 빈에 값세팅
				bean.setId(rs.getString(1));
				bean.setPassword(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setRole(rs.getString(4));
			}		
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(rs, stmt,conn);
	    }	
		return bean;
	}
	
	
	public void joinMember(UserVO bean) {
		/*회원가입 메서드*/
		
		try {
			conn = JDBCConnection.getConnection();
			
			String sql = "Insert into silla_users Values(?,?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, bean.getId());
			stmt.setString(2, bean.getPassword());
			stmt.setString(3, bean.getName());
			stmt.setString(4, bean.getRole());
			
			stmt.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(stmt,conn);
	    }	

		
	}
	
	
	
	
	
	
	
}

