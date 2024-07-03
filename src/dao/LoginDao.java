package dao;

import java.sql.*;

import dto.UserInfoDto;

public class LoginDao {

	
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "project";
		String dbPw = "1234";
		
		Class.forName(driver);
		DriverManager.getConnection(url, dbId, dbPw);
		
		Connection conn = DriverManager.getConnection(url, dbId, dbPw);
		return conn;
	}
	
	
	// 로그인 체크
	public boolean loginCheck(String id, String pw) {
			
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		int result = 0;
		
		try {
			
			conn = getConnection();
			
			String sql = 
					"SELECT  count(*) " + 
					"FROM    user_info " + 
					"WHERE   user_id = ? " + 
					"        AND " + 
					"        user_pw = ? "
			;
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
		
		return result == 1;
		
	}
	
	
	// 이름 가져오기
	public String getLoginUserName(String id, String pw) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String name = "";
		
		try {
			
			conn = getConnection();
			
			String sql = 
					"SELECT  name " + 
					"FROM    user_info " + 
					"WHERE   user_id = ? " + 
					"        AND " + 
					"        user_pw = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				name = rs.getString("name");
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
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return name;
	}
	
	
	
	// 로그인 유저 정보 가져오기
	public UserInfoDto getUserInfo(String id, String pw) {
		UserInfoDto uiDto = new UserInfoDto();
		
		
		
		
		
		return uiDto;
	}
	
	
	
	

	
}
