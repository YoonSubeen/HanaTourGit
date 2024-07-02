package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MainTourDao {
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
	
//유형1
	public void showtype1(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		//PreparedStatement
		String sql ="SELECT  mt1.img_url, " + 
				"        mt1.promotion_idx " + 
				"FROM main_type1 mt1 " + 
				"LEFT JOIN main_order mo ON mt1.order_idx = mo.order_idx " + 
				"LEFT JOIN main_classification mc ON mc.classification_idx = mo.classification_idx " + 
				"WHERE mo.classification_idx = ? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,order_idx);
		
		//Result
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String img_url = rs.getString("img_url");
			int promotion_idx = rs.getInt("promotion_idx");
			System.out.println(img_url + " | " + promotion_idx);
		}
		rs.close();
		pstmt.close();
		conn.close(); 
	}
	
//유형4 
	public void showtype4(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT title  " + 
				"FROM main_type4 " + 
				"WHERE order_idx = ? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String title = rs.getString("title");
			System.out.print(title);
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
	
//유형5	
	public void showtype5(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT title  " + 
				"FROM main_type5 " + 
				"WHERE order_idx = ? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);
		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String title = rs.getString("title");
			
			System.out.println(title);
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
	
//유형6
	public void showtype6(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT img_url " + 
				"FROM main_type6 " + 
				"WHERE order_idx = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);
		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String img_url = rs.getString("img_url");
			
			System.out.println(img_url);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
	}
	
	
// 유형7 
	public void showtype7(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT  title,  " + 
				"        subtitle,  " + 
				"        img_url " + 
				"FROM main_type7 " + 
				"WHERE order_idx = ? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String title = rs.getString("title");
			String subtitle = rs.getString("subtitle");
			String img_url = rs.getString("img_url");
			
			System.out.println(title + " / " + subtitle + " / " + img_url);
		}   
		rs.close();
		pstmt.close();
		conn.close();
	}
	
/// 유형8
	public void showtype8(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT  img_url,  " + 
				"        tag_top,  " + 
				"        product_name,  " + 
				"        tag_bottom,  " + 
				"        price,  " + 
				"        category_idx " + 
				"FROM main_type8 " + 
				"WHERE order_idx = ? " + 
				"ORDER BY main_type9_idx ASC";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);
		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String img_url = rs.getString("img_url");
			String tag_top = rs.getString("tag_top");
			String product_name = rs.getString("product_name");
			String tag_bottom = rs.getString("tag_bottom");
			int price = rs.getInt("price");
			int category_idx = rs.getInt("category_idx");
			
			System.out.println(img_url + " / " 
								+ tag_top + " / " 
								+ product_name + " / " 
								+ tag_bottom + " / " 
								+ price + " / " 
								+ category_idx);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		
	}
	
//유형9
	public void showtype9(int order_idx) throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT country_classification " + 
				"FROM main_type9 " + 
				"WHERE order_idx = ? " + 
				"ORDER BY main_type9_idx ASC";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);
		
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String country_classification = rs.getString("country_classification");
			
			System.out.println(country_classification);
		}
		rs.close();
		pstmt.close();
		conn.close();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	//main의 검색창 (여행지, 출발지, 날짜 선택)
	public void search_country(String arrival, String departure, String start_date, String end_date) throws Exception {
		Connection conn = getConnection();
		
		//PreparedStatement
		String sql="SELECT DISTINCT c.hanapack, " + 
				"        c.category_name, " + 
				"        c.category_ex, " + 
				"        co.country_name, " + 
				"        c.travel_period, " + 
				"        c.review_avg, " + 
				"        c.comment_amount, " + 
				"        ct.tag, " + 
				"        c.price, " + 
				"		 c.img_url " +
				"FROM category c   " + 
				"LEFT JOIN package p ON c.category_idx = p.category_idx  " + 
				"LEFT JOIN package_city pc ON pc.package_idx = p.package_idx  " + 
				"LEFT JOIN city ci ON ci.city_idx   = pc.city_idx  " + 
				"LEFT JOIN country co ON co.country_idx = ci.country_idx  " + 
				"LEFT JOIN package_flight pf ON pf.package_idx = p.package_idx  " + 
				"LEFT JOIN category_tag ct ON c.category_idx = ct.category_idx " + 
				"WHERE (ci.city_name = ?  " + 
				"        OR co.country_name = ? ) ";
		
		if(departure != null) {
				sql += " AND pf.departure = '" + departure + "' ";
		}
		
		if(start_date != null || end_date != null) {
			sql += "AND pf.departure_date BETWEEN TO_DATE( '"+ start_date +"' ,'YY-MM-DD')  " + 
					"AND TO_DATE('"+ end_date +"' , 'YY-MM-DD')";
		}
                      
//				"AND pf.departure_date BETWEEN TO_DATE(? ,'YY-MM-DD')  " + 
//				"AND TO_DATE(? , 'YY-MM-DD')";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,arrival);
		pstmt.setString(2, arrival);
		
	
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String hanapack = rs.getString("hanapack");
			String category_name = rs.getString("category_name");
			String category_ex = rs.getString("category_ex");
			String country_name = rs.getString("country_name");
			String travel_period = rs.getString("travel_period");
			String review_avg = rs.getString("review_avg");
			String comment_amount = rs.getString("comment_amount");
			String tag = rs.getString("tag");
			String price = rs.getString("price");
			String img_url = rs.getString("img_url");
			System.out.println(hanapack +"/"
								+ category_name + " / "
								+ category_name + " / "
								+ category_ex + " / "
								+ country_name + " / "
								+ travel_period + " / "
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

	
