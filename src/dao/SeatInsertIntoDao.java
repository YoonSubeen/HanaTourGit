package dao;

import java.sql.*;

public class SeatInsertIntoDao {
	
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
	
	
	
	
	public void SeatInsertInto() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		char ch = 'A';
		
		try {
			conn = getConnection();

			for(int i = 28; i <= 48; i++ ) {
				for(int j = 1; j <= 6; j++) {
					if(j == 1) {
						ch = 'A';
					} else if(j == 2) {
						ch = 'B';
					} else if(j == 3) {
						ch = 'C';
					} else if(j == 4 ) {
						ch = 'D';
					} else if (j == 5) {
						ch = 'E';
					} else {
						ch = 'F';
					}
			
					
					String sql = 
							"INSERT INTO seat(seat_idx, model_idx, seat_row, seat_column, reservation_state, class, pet, disabled, price) " + 
							"VALUES  (SEQ_SEAT.nextval, 2, ?, ?, 'F', '일반석', 'F', 'F', 400000) " + 
							"";
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setString(1, String.valueOf(i));
					pstmt.setString(2, String.valueOf(ch));
					
					
					
					pstmt.executeUpdate();
					
				}
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
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}
	
	
	
	public void insertSeatReservation() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			
			conn = getConnection();
			
			// 14 ~ 146
			for(int i = 14; i <= 146; i++) {
				String sql = 
						"INSERT INTO seat_reservation_status " + 
						"VALUES      (SEQ_SEAT_RESERVATION_STATUS.nextval, 56, ?, 'T') " + 
						"";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i);
				pstmt.executeUpdate();
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
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
	
	}
	
	
	
	
	
	
	
	
	
	
}	
