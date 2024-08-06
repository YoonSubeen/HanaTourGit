package garbage;

import java.sql.*;


public class FindIdDao {

	
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "project";
		String dbPw = "pass1234";
		
		Class.forName(driver);
		DriverManager.getConnection(url, dbId, dbPw);
		
		Connection conn = DriverManager.getConnection(url, dbId, dbPw);
		return conn;
	}
	
	
	
	
	// 아이디 찾기
	public String findId(String name, String gender, 
						String birth, String email) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = "";
		
		try {
			
			conn = getConnection();
			
			String sql = 
					"SELECT  user_id " + 
					"FROM    user_info " + 
					"WHERE   name = ? " + 
					"        AND " + 
					"        gender = ? " + 
					"        AND " + 
					"        birth = TO_DATE(?, 'YYYY-MM-DD') " + 
					"        AND  " + 
					"        email = ? " + 
					"";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, gender);
			pstmt.setString(3, birth);
			pstmt.setString(4, email);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString("user_id");
			} else {
				id= "일치하는 아이디를 찾을 수 없습니다.";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			try {
				
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		return id;
	}
	
	
	
	
}
