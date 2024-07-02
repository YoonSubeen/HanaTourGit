package dao;

import java.sql.*;

public class CategoryDao {
	//Connection 객체
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "project";
		String pw = "pass1222";
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		
		return conn;
	}
	
	//
	public void choice_departure(String departure) throws Exception {
		Connection conn = getConnection();
		
		//preparedStatement
		String sql = "SELECT DISTINCT c.hanapack, " + 
				"        c.category_name, " + 
				"        c.category_ex, " + 
				"        c.country_city_row, " + 
 				"        c.travel_period, " + 
				"        c.review_avg, " + 
				"        c.comment_amount, " + 
				"        ct.tag, " + 
				"        c.price, " + 
				"		 c.img_url " +
				"FROM package p  " + 
				"LEFT JOIN category c ON p.category_idx = c.category_idx " + 
				"LEFT JOIN package_flight pf ON pf.package_idx = p.package_idx " + 
				"LEFT JOIN airline_ticket at ON pf.ticket_idx = at.ticket_idx " + 
				"LEFT JOIN airport ap ON ap.iata = at.departure_iata " + 
				"LEFT JOIN category_tag ct ON c.category_idx = ct.category_idx " + 
				"WHERE ap.city_kor = ? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, departure);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String hanapack = rs.getString("hanapack");
			String category_name = rs.getString("category_name");
			String category_ex = rs.getString("category_ex");
			String travel_period = rs.getString("travel_period");
			String country_city_row = rs.getString("country_city_row");
			String review_avg = rs.getString("review_avg");
			String comment_amount = rs.getString("comment_amount");
			String tag = rs.getString("tag");
			String price = rs.getString("price");
			String img_url = rs.getString("img_url");
			System.out.println(hanapack +"/"
								+ category_name + " / "
								+ category_name + " / "
								+ category_ex + " / "
								+ travel_period + " / "
								+ country_city_row + " / "
								+ review_avg + " / "
								+ comment_amount + " / "
								+ tag + " / "
								+ price + " / "
								+ img_url) ;
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
	


}
