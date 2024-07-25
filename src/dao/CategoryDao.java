package dao;

import java.sql.*;
import java.util.ArrayList;

import dto.*;

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
	
	// 출발지 선택 
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
	
	// 카테고리 나라만 선택된 상태의 나열  > ★ 바뀌는 상태에 대한 문이 한개씩 있어야 하나? if문으로 바꿔야 할까
	public void show_category() throws Exception {
		Connection conn = getConnection();
		
		String sql = "SELECT DISTINCT c.category_idx, " + 
				"c.hanapack, " + 
				"c.category_name,  " + 
				"c.category_ex, " + 
				"c.country_city_row,  " + 
				"c.travel_period, " + 
				"c.review_avg, " + 
				"c.comment_amount, " + 
				"c.price,  " + 
				"c.img_url  " + 
				"FROM package p   " + 
				"LEFT JOIN category c ON p.category_idx = c.category_idx " + 
				"LEFT JOIN package_flight pf ON pf.package_idx = p.package_idx " + 
				"LEFT JOIN airline_ticket at ON pf.ticket_idx = at.ticket_idx " + 
				"LEFT JOIN airport ap ON ap.iata = at.departure_iata " + 
				"LEFT JOIN category_tag ct ON c.category_idx = ct.category_idx " + 
				"ORDER BY c.category_idx";
	}
	
	// 카테고리 날짜 선택 
	public void choiceDateShowCategroy(String departure_date, String arrival_date) throws Exception {
	    Connection conn = getConnection();
	    // PreparedStatement
	    String sql = "SELECT DISTINCT c.hanapack, " + 
	            "c.category_name, " + 
	            "c.category_ex, " + 
	            "c.country_city_row, " + 
	            "c.travel_period, " + 
	            "c.review_avg, " + 
	            "c.comment_amount, " + 
	            "c.price, " + 
	            "c.img_url " + 
	            "FROM package p " + 
	            "LEFT JOIN category c ON p.category_idx = c.category_idx " + 
	            "LEFT JOIN package_flight pf ON pf.package_idx = p.package_idx " + 
	            "LEFT JOIN airline_ticket at ON pf.ticket_idx = at.ticket_idx " + 
	            "LEFT JOIN airport ap ON ap.iata = at.departure_iata " + 
	            "WHERE pf.departure_date BETWEEN ? AND ?";
	    
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, departure_date);
	    pstmt.setString(2, arrival_date);
	    ResultSet rs = pstmt.executeQuery();
	    while (rs.next()) {
	        String hanapack = rs.getString("hanapack");
	        String category_name = rs.getString("category_name");
	        String category_ex = rs.getString("category_ex");
	        String travel_period = rs.getString("travel_period");
	        String country_city_row = rs.getString("country_city_row");
	        String review_avg = rs.getString("review_avg");
	        String comment_amount = rs.getString("comment_amount");
	        String price = rs.getString("price");
	        String img_url = rs.getString("img_url");
	        System.out.println(hanapack + " / "
	                + category_name + " / "
	                + category_ex + " / "
	                + travel_period + " / "
	                + country_city_row + " / "
	                + review_avg + " / "
	                + comment_amount + " / "
	                + price + " / "
	                + img_url);
	    }
	    rs.close();
	    pstmt.close();
	    conn.close();
	}

	
	
	
	
// 카테고리 한줄 뿌리 (이름, 설명, 가격, 별점, 댓글 수, 기간 )
	public ArrayList<ShowCategoryOneLineInfoDto> showCategoryOneLineInfo(String countryCity) throws Exception {
	    ArrayList<ShowCategoryOneLineInfoDto> listRet = new ArrayList<ShowCategoryOneLineInfoDto>();    
	    String sql = "SELECT  c.category_name, " + 
	    		"        c.category_idx, " + 
	            "        c.category_ex, " + 
	            "        c.travel_period, " + 
	            "        avg(tr.review_star) as review, " + 
	            "        count(tr.review_idx) as comment_amount, " + 
	            "        c.price, " + 
	            "        c.img_url, " + 
	            "        c.hanapack, " + 
	            "        c.package_tag, " + 
	            "        c.local_departure_tag " + 
	            "FROM category c " + 
	            "LEFT JOIN package p ON c.category_idx = p.category_idx " + 
	            "LEFT JOIN travel_review tr ON tr.package_idx = p.package_idx " + 
	            "LEFT JOIN category_region cr ON c.category_idx = cr.category_idx " + 
	            "LEFT JOIN city ci ON cr.city_idx = ci.city_idx " + 
	            "LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
	            "WHERE (ci.city_name = ? OR co.country_name = ?)  " + 
	            "GROUP BY c.category_name, c.category_idx, c.category_ex, c.travel_period, c.price, c.img_url, c.hanapack, c.package_tag, c.local_departure_tag";
	    
	    Connection conn = getConnection();
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, countryCity);
	    pstmt.setString(2, countryCity);
	    ResultSet rs = pstmt.executeQuery();
	    
	    while(rs.next()) {
	        String categoryName = rs.getString("category_name");
	        int categoryIdx = rs.getInt("category_idx");
	        String categoryEx = rs.getString("category_ex");
	        String travelPeriod = rs.getString("travel_period");
	        double reviewStar = rs.getDouble("review");
	        int commentAmount = rs.getInt("comment_amount");
	        int price = rs.getInt("price");
	        String imgUrl = rs.getString("img_url");
	        String hanapack = rs.getString("hanapack");
	        String packageTag = rs.getString("package_tag");
	        String localDepartureTag = rs.getString("local_departure_tag");
	        
	        ShowCategoryOneLineInfoDto dto = new ShowCategoryOneLineInfoDto(categoryName, categoryIdx, categoryEx, travelPeriod, reviewStar, commentAmount, price, imgUrl, hanapack, packageTag, localDepartureTag);
	        listRet.add(dto);
	    }
	    
	    rs.close();
	    pstmt.close();
	    conn.close();
	    
	    return listRet;
	}
	
// 태그 정보 넣기 
	public ArrayList<CategoryTagDto> categoryTag(String countryCity) throws Exception {
		ArrayList<CategoryTagDto> listRet = new ArrayList<CategoryTagDto>();
		String sql = "SELECT  c.category_idx, " + 
				"        ci.city_name   " + 
				"FROM category c " + 
				"LEFT JOIN category_region cr ON c.category_idx = cr.category_idx " + 
				"LEFT JOIN city ci ON ci.city_idx = cr.city_idx " + 
				"LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
				"WHERE ci.city_name = ? OR co.country_name = ? ";
		Connection conn = getConnection();
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, countryCity);
	    pstmt.setString(2, countryCity);
	    ResultSet rs = pstmt.executeQuery();
	    while(rs.next()) {
	    	String cityName = rs.getString("city_name");
	    	int categoryIdx = rs.getInt("category_idx");
	    	CategoryTagDto dto = new CategoryTagDto(cityName, categoryIdx);
	    	listRet.add(dto);
	    }
	    rs.close();
	    pstmt.close();
	    conn.close();
	    return listRet;
		    
	}
	
//	하단 태그 뿌리기. 여래개의 정보 
	public ArrayList<CategoryBottomTagDto> categoryBottomTag(String countryCity) throws Exception {
		ArrayList<CategoryBottomTagDto> listRet = new ArrayList<CategoryBottomTagDto>();
		String sql = " SELECT DISTINCT c.category_idx, " + 
				"        ct.tag " + 
				" FROM category c " + 
				" LEFT JOIN category_tag ct ON c.category_idx = ct.category_idx " + 
				"LEFT JOIN category_region cr ON c.category_idx = cr.category_idx " + 
				"LEFT JOIN city ci ON ci.city_idx = cr.city_idx " + 
				"LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
				"WHERE ci.city_name = ? OR co.country_name = ? " ;
		
		Connection conn = getConnection();
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, countryCity);
	    pstmt.setString(2, countryCity);
	    ResultSet rs = pstmt.executeQuery();
	    while(rs.next()) {
	    	int categoryIdx = rs.getInt("category_idx");
	    	String tag = rs.getString("tag");
	    	CategoryBottomTagDto dto = new CategoryBottomTagDto(categoryIdx , tag);
	    	listRet.add(dto);
	    }
	    rs.close();
	    pstmt.close();
	    conn.close();
	    return listRet;
	}

// 카테고리 패키지 정보
	public ArrayList<CategoryPackageInfoDto> cetegoryPackageInfo(String departureDate) throws Exception {
		ArrayList<CategoryPackageInfoDto> listRet = new ArrayList<CategoryPackageInfoDto>();
		String sql = "SELECT c.category_idx, " + 
				"       p.package_idx, " + 
				"       p.package_name, " + 
				"       p.travel_period, " + 
				"       p.shopping, " + 
				"       p.shopping_times, " + 
				"       p.guide, " + 
				"       pp.adult, " + 
				"       MAX(i.star) AS max_star, " + 
				"       a.logo, " + 
				"       a.name, " + 
				"       MIN(pf.departure_date) AS departure_date, " + 
				"       pi.inn " + 
				"FROM package p " + 
				"LEFT JOIN category c ON c.category_idx = p.category_idx " + 
				"LEFT JOIN package_price pp ON pp.package_idx = p.package_idx " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"LEFT JOIN package_inn pi ON p.package_idx = pi.package_idx " + 
				"LEFT JOIN inn i ON i.inn_idx = pi.inn_idx " + 
				"LEFT JOIN airline_ticket at ON at.ticket_idx = pf.ticket_idx " + 
				"LEFT JOIN airline a ON a.iata = at.airline_iata " + 
				"GROUP BY c.category_idx, p.package_idx, p.package_name, p.travel_period, p.shopping, p.shopping_times, p.guide, pp.adult, a.logo, a.name,pi.inn " + 
				"HAVING TO_CHAR(MIN(pf.departure_date), 'YYYY-MM-DD') = ? ";
				
		Connection conn = getConnection();
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, departureDate);
	    ResultSet rs = pstmt.executeQuery();
	    while(rs.next()) {
	    	int categoryIdx = rs.getInt("category_idx");
	    	int packageIdx = rs.getInt("package_idx");
	    	String pacakgeName = rs.getString("package_name");
	    	String travelPeriod = rs.getString("travel_period");
	    	String shopping = rs.getString("shopping");
	    	String shoppingTimes = rs.getString("shopping_times");
	    	String guide = rs.getString("guide");
	    	int adult = rs.getInt("adult");
	    	int maxStar = rs.getInt("max_star");
	    	String logo = rs.getString("logo");
	    	String name = rs.getString("name");
	    	String inn = rs.getString("inn");
	    	CategoryPackageInfoDto dto = new CategoryPackageInfoDto(categoryIdx, packageIdx, pacakgeName, travelPeriod, shopping, shoppingTimes, guide, adult, maxStar, logo, name, inn) ;
	    	listRet.add(dto);
	    }
	    rs.close();
	    pstmt.close();
	    conn.close();
	    return listRet;
	}
	
// 카테고리 패키지 항공정보 	
	public ArrayList<CategoryPackageFlightInfoDto> categoryPackageFligthInfo() throws Exception {
		ArrayList<CategoryPackageFlightInfoDto> listRet = new ArrayList<CategoryPackageFlightInfoDto>();
		String sql = "SELECT  p.package_idx, " + 
				"        TO_CHAR(MIN(pf.departure_date), 'MM/DD Day HH24:MI') as departure_time, " + 
				"        TO_CHAR(MAX(pf.arrival_date), 'MM/DD Day HH24:MI') as arrival_time " + 
				"FROM package p " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"LEFT JOIN airline_ticket at ON at.ticket_idx = pf.ticket_idx " + 
				"LEFT JOIN airline al ON al.iata = at.airline_iata " + 
				"LEFT JOIN airport dep ON dep.iata = at.departure_iata " + 
				"LEFT JOIN airport arr ON arr.iata = at.arrival_iata " + 
				"GROUP BY p.package_idx";
		Connection conn = getConnection();
	    PreparedStatement pstmt = conn.prepareStatement(sql);
	    ResultSet rs = pstmt.executeQuery();
	    while(rs.next()) {
	    	int packageIdx = rs.getInt("package_idx");
	    	String departureTime = rs.getString("departure_time");
	    	String arrivalTime = rs.getString("arrival_time");
	    	CategoryPackageFlightInfoDto dto = new CategoryPackageFlightInfoDto(packageIdx, departureTime, arrivalTime);
	    	listRet.add(dto);
	    }
	    rs.close();
	    pstmt.close();
	    conn.close();
	    return listRet;
	}

}
