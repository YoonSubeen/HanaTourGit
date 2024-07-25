package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.InnDto;

public class InnDao {
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
	      String url = "jdbc:oracle:thin:@localhost:1521:xe";
	      String dbId = "project";
	      String dbPw = "pass1234";
	      
	      Class.forName(driver);
	      Connection conn = DriverManager.getConnection(url, dbId, dbPw);

	      return conn;
	}
	
	public ArrayList<InnDto> getBoardListAll() throws Exception {
	      ArrayList<InnDto> listInn = new ArrayList<InnDto>();
	      
	      String sql = "SELECT * FROM board1 ORDER BY bno DESC";
	      Connection conn = getConnection();
	      
	      PreparedStatement pstmt = conn.prepareStatement(sql);
	      ResultSet rs = pstmt.executeQuery();
	      while(rs.next()) {
	    	  int inn_idx = rs.getInt("inn_idx");
	    	  String inn_kor = rs.getString("inn_kor");
	    	  String inn_eng = rs.getString("inn_eng");
	    	  InnDto dto = new InnDto(inn_idx, inn_kor, inn_eng);
	    	  listInn.add(dto); //게시글 하나
	      }
	      rs.close();
	      pstmt.close();
	      conn.close();
	      
	      return listInn;
	   }
}
