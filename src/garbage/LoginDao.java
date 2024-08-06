package garbage;

import java.sql.*;

import dto.UserInfoDto;

public class LoginDao {

	
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
	
	
	
	
	// 로그인 유저 Dto return
	public UserInfoDto getLoginUserDto(String id) {
		UserInfoDto uiDto = new UserInfoDto();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = 
					"SELECT  user_id, " + 
					"		 user_pw,  " + 
					"		 name,  " + 
					"        gender, " + 
					"        birth,  " + 
					"		 phone, " + 
					"		 email, " + 
					"        last_name, " + 
					"        first_name, " + 
					"        passport_number, " + 
					"        TO_CHAR(expiration_date, 'YYYYMMDD') AS expiration_date, " + 
					"        nationality, " + 
					"        authority, " + 
					"        agree5 " + 
					"FROM    user_info " + 
					"WHERE   user_id = ? "  
					;
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				uiDto.setId(id);
				uiDto.setPw( rs.getString("user_pw") );
				uiDto.setName( rs.getString("name") );
				uiDto.setGender( rs.getString("gender") );
				uiDto.setBirth( rs.getString("birth") );
				uiDto.setPhone( rs.getString("phone") );
				uiDto.setEmail( rs.getString("email") );
				
				uiDto.setLastName( rs.getString("last_name") );
				uiDto.setFirstName( rs.getString("first_name") );
				uiDto.setPassportNumber( rs.getString("passport_number") );
				uiDto.setPassportExpirationDate( rs.getString("expiration_date") );
				uiDto.setNationality( rs.getString("nationality") );
				uiDto.setAuthority( rs.getString("authority") );
				
				uiDto.setAgreement5( rs.getString("agree5") );
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
		
		return uiDto;
	}
	
	
	
	
	
	

	
}
