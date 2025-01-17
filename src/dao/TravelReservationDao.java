package dao;

import java.sql.*;
import java.util.ArrayList;

import dto.GetUserInfoDto;
import dto.TravelReservationProductInfoDto;

public class TravelReservationDao {
//Connection 객체
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "project";
		String pw = "pass1234";

		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, id, pw);

		return conn;
	}
	
// 상품정보 가져오기 
	public ArrayList<TravelReservationProductInfoDto> reservationProductInfo(int packageIdx) throws Exception {
		ArrayList<TravelReservationProductInfoDto> trpiDto = new ArrayList<TravelReservationProductInfoDto>();
		String sql = "SELECT p.package_name, " + 
				"    pt.img_url, " + 
				"    TO_CHAR(MIN(pf.departure_date), 'YYYY-MM-DD Day') AS departure_date, " + 
				"    TO_CHAR(MAX(pf.arrival_date), 'YYYY-MM-DD Day') AS arrival_date, " + 
				"    TRUNC( MAX(pf.arrival_date) - MIN(pf.departure_date)) AS period " + 
				"FROM package p " + 
				"LEFT JOIN package_thumbnail pt ON p.package_idx = pt.package_idx " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"WHERE p.package_idx = ? " + 
				"AND img_order = 1 " + 
				"GROUP BY p.package_name, pt.img_url";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String packageName = rs.getString("package_name");
			String imgUrl = rs.getString("img_url");
			String departureDate = rs.getString("departure_date");
			String arrivalDate = rs.getString("arrival_date");
			int period = rs.getInt("period");	
			
			
			TravelReservationProductInfoDto dto = new TravelReservationProductInfoDto(packageName, imgUrl, departureDate, arrivalDate, period);
			trpiDto.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return trpiDto;
	}
	
// 해외여행 예약 항공 가져오기 



// 유저 아이디로 예약자 정보 가져오기 
	public ArrayList<GetUserInfoDto> getUserInfo(String userId) throws Exception {
		ArrayList<GetUserInfoDto> guiDto = new ArrayList<GetUserInfoDto>();
		String sql = "SELECT  ui.name, " + 
				"        ui. gender, " + 
				"        TO_CHAR(ui.birth, 'YYYY.MM.DD') as birth, " + 
				"        ui.phone " + 
				"FROM user_info ui " + 
				"where user_id = ? " ;
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userId);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			String name = rs.getString("name");
			String gender = rs.getString("gender");
			String birth = rs.getString("birth");
			String phone = rs.getString("phone");
			
			GetUserInfoDto dto = new GetUserInfoDto(name, gender, birth, phone);
			guiDto.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return guiDto;
	}	
}
