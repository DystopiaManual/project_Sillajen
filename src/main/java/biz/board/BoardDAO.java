package biz.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import biz.common.JDBCConnection;
import biz.user.UserVO;

public class BoardDAO {

	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	public int getAllCount() {
		
		int count = 0;
		
		try {
			conn = JDBCConnection.getConnection();
			
			String sql = "select COUNT(seq) from silla_boards";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(rs, stmt,conn);
	    }		
		return count;
	}
	
	public ArrayList<BoardVO> getAllBoard(int startRow, int endRow) {
		// 글 10개씩 가져오는 메서드
		ArrayList<BoardVO> v = new ArrayList<>();
		
		
		try {
			conn = JDBCConnection.getConnection();
			
			String sql = "select * from (select rownum as rn, seq, title, content, regdate, writer, readcount from silla_boards order by seq asc ) where rn >= ? and rn <= ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, startRow);
			stmt.setInt(2, endRow);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				BoardVO bean = new BoardVO();
				bean.setSeq(rs.getInt(2));
				bean.setTitle(rs.getString(3));
				bean.setContent(rs.getString(4));
				bean.setRegdate(rs.getDate(5));
				bean.setWriter(rs.getString(6));
				bean.setReadcount(rs.getInt(7));
				v.add(bean);
			}
						
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(rs, stmt,conn);
	    }	
		return v;
	}
	public void addBoard(BoardVO bean) {
		/* 게시물작성 메서드 */
		try {
			conn = JDBCConnection.getConnection();
			
			String sql = "insert into silla_boards VALUES (SILLA_TEST.nextval, ?, ? ,sysdate, ?, 0)";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, bean.getTitle());
			stmt.setString(2, bean.getContent());
			stmt.setString(3, bean.getWriter());
			stmt.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(stmt,conn);
	    }	
	}
	
	public BoardVO boardInfo(int num) {
		BoardVO bean = new BoardVO();
		
		try {
			conn = JDBCConnection.getConnection();
			
			String sql = "select * from silla_boards where seq = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			rs = stmt.executeQuery();
			while(rs.next()){
				bean.setSeq(rs.getInt(1));
				bean.setTitle(rs.getString(2));
				bean.setContent(rs.getString(3));
				bean.setRegdate(rs.getDate(4));
				bean.setWriter(rs.getString(5));
				bean.setReadcount(rs.getInt(6));
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(rs, stmt,conn);
	    }	
		
		return bean;
	}
	public void deleteBoard(int num) {
		
		try {
			conn = JDBCConnection.getConnection();
			
			String sql = "delete silla_boards where seq = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, num);
			stmt.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(stmt,conn);
	    }	
		
	}
	public void updateBoard(String title, String content, int num) {
		
		try {
			conn = JDBCConnection.getConnection();
			String sql = "Update silla_boards set title = ? , content = ? where seq = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, content);
			stmt.setInt(3, num);
			
			stmt.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {	
			e.printStackTrace();
		} finally {
	         JDBCConnection.close(stmt,conn);
	    }	
		
	}
	
}
