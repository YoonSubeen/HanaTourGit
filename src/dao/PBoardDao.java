package dao;

import java.sql.*;
import java.util.ArrayList;
import dto.PBoardDto;


public class PBoardDao {
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "user0416";
		String pw = "pass1234";
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		
		return conn;
	}
	
	//ArrayList<BoardDto> 객체의 참조값을 리턴하는 메소드 
	public ArrayList<PBoardDto> getBoardListAll() throws Exception {
		ArrayList<PBoardDto> listAll = new ArrayList<PBoardDto>();
		
		String sql = "SELECT * FROM board1 ORDER BY bno DESC";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int bno = rs.getInt("bno");
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			String writedate = rs.getString("writedate");
			
			PBoardDto dto = new PBoardDto(bno, title, content, writer, writedate);
			listAll.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listAll;
	}
	
	// 게시글 번호에 해당하는 게시글 dto 리턴
	public PBoardDto getBoardByBno(int bno) throws Exception {
		String sql = "SELECT * FROM board1 WHERE bno=?";
		
		Connection conn = getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bno);
		
		ResultSet rs = pstmt.executeQuery();
		
		PBoardDto dto = null;
		if(rs.next()) {
			String title = rs.getString("title");
			String content = rs.getString("content");
			String writer = rs.getString("writer");
			String writedate = rs.getString("writedate");
			
			dto = new PBoardDto(bno, title, content, writer, writedate);
		}
		return dto;
		
	}

}
