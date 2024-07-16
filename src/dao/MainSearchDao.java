package dao;

import java.sql.*;
import java.util.ArrayList;
import dto.*;

public class MainSearchDao {
// 	Connection 객체 
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "project";
		String pw = "pass1222";
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		
		return conn;
	}	
// 해외여행 추천 한줄정보 (다음달의 가까운 순으로 나열)	
	public ArrayList<RecommendPackageOneInfoDto> recommendPackageOneInfo(String countryCity) throws Exception {
		ArrayList<RecommendPackageOneInfoDto> listRet = new ArrayList<RecommendPackageOneInfoDto>();
		String sql = "SELECT * " + 
				"FROM ( " + 
				"    SELECT * " + 
				"    FROM ( " + 
				"        SELECT p.package_idx, " + 
				"               p.package_name, " + 
				"               p.travel_period, " + 
				"               p.shopping, " + 
				"               p.shopping_times, " + 
				"               p.guide, " + 
				"               pp.adult, " + 
				"               a.logo, " + 
				"               a.name, " + 
				"               MIN(pf.departure_date) AS departure_date, " + 
				"               p.brand, " + 
				"               p.group_travel, " + 
				"               p.review_star, " + 
				"               p.review_comment, " + 
				"               pth.img_url, " + 
				"               ROW_NUMBER() OVER (PARTITION BY p.package_idx ORDER BY MIN(pf.departure_date)) AS rn " + 
				"        FROM package p " + 
				"        LEFT JOIN category c ON c.category_idx = p.category_idx " + 
				"        LEFT JOIN package_price pp ON pp.package_idx = p.package_idx " + 
				"        LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"        LEFT JOIN airline_ticket at ON at.ticket_idx = pf.ticket_idx " + 
				"        LEFT JOIN airline a ON a.iata = at.airline_iata " + 
				"        LEFT JOIN package_city pr ON pr.package_idx = p.package_idx " + 
				"        LEFT JOIN city ci ON ci.city_idx = pr.city_idx " + 
				"        LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
				"        LEFT JOIN package_thumbnail pth ON pth.package_idx = p.package_idx " + 
				"        WHERE (co.country_name = ? OR ci.city_name = ? ) " + 
				"          AND pth.img_order = 1 " + 
				"        GROUP BY c.category_idx, p.package_idx, p.package_name, p.travel_period, p.shopping, p.shopping_times, p.guide, pp.adult, a.logo, a.name, p.brand, p.group_travel, p.review_star, p.review_comment, pth.img_url " + 
				"        HAVING MIN(pf.departure_date) >= TRUNC(ADD_MONTHS(SYSDATE, 1), 'MM') " + 
				"           AND MIN(pf.departure_date) < TRUNC(ADD_MONTHS(SYSDATE, 2), 'MM') " + 
				"    ) " + 
				"    WHERE rn = 1 " + 
				"    ORDER BY departure_date " + 
				") " + 
				"WHERE ROWNUM <= 5 " + 
				"ORDER BY package_idx " + 
				"";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,countryCity);
		pstmt.setString(2,countryCity);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int packageIdx = rs.getInt("package_idx");
			String packageName = rs.getString("package_name");
			String travelPeriod = rs.getString("travel_period");
			String shopping = rs.getString("shopping");
			String shoppingTimes = rs.getString("shopping_times");
			String guide = rs.getString("guide");
			int adult = rs.getInt("adult");
			String logo = rs.getString("logo");
			String name = rs.getString("name");
			String departureDate = rs.getString("departure_date");
			String brand = rs.getString("brand");
			String groupTravel = rs.getString("group_travel");
			double reviewStar = rs.getDouble("review_star");
			int reviewComment = rs.getInt("review_comment");
			String imgUrl = rs.getString("img_url");
			RecommendPackageOneInfoDto dto = new RecommendPackageOneInfoDto(packageIdx, packageName, travelPeriod, shopping, shoppingTimes, guide, adult, logo, name, departureDate, brand, groupTravel, reviewStar, reviewComment, imgUrl);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 추천 해외여행 출발일 도착일 
	public ArrayList<RecommendPackageDateDto> recommendPackageDate() throws Exception {
		ArrayList<RecommendPackageDateDto> listRet = new ArrayList<RecommendPackageDateDto>();
		String sql = "SELECT  p.package_idx,  " + 
				"        TO_CHAR(MIN(pf.departure_date),'MM.DD DY HH:MI')as departure_date,  " + 
				"        TO_CHAR(MAX(pf.arrival_date),'MM.DD DY HH:MI') as arrival_date  " + 
				"FROM package p  " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx  " + 
				"GROUP BY p.package_idx ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int packageIdx = rs.getInt("package_idx");
			String departureDate = rs.getString("departure_date");
			String arrivalDate = rs.getString("arrival_date");
			RecommendPackageDateDto dto = new RecommendPackageDateDto(packageIdx, departureDate, arrivalDate);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 추천 해외여행 지역 
	public ArrayList<RecommendPackageCityDto> recommendPackageCity() throws Exception {
		ArrayList<RecommendPackageCityDto> listRet = new ArrayList<RecommendPackageCityDto>();
		String sql = "SELECT  p.package_idx, " + 
				"        ci.city_name " + 
				"FROM package p " + 
				"LEFT JOIN package_city pc ON p.package_idx = pc.package_idx " + 
				"LEFT JOIN city ci ON ci.city_idx = pc.city_idx " ;
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int packageIdx = rs.getInt("package_idx");
			String cityName = rs.getString("city_name");
			RecommendPackageCityDto dto = new RecommendPackageCityDto(packageIdx, cityName);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	} 
	
// 추천 여행지 top부분
	public ArrayList<RecommendAttractionTopDto> recommendAttractionTop(String countryCity) throws Exception {
		ArrayList<RecommendAttractionTopDto> listRet = new ArrayList<RecommendAttractionTopDto>();
		String sql = "SELECT * " + 
				"FROM ( " + 
				"    SELECT at.attraction_idx, " + 
				"           at.attraction_kor, " + 
				"           at.detailed_ex, " + 
				"           ati.img_url, " + 
				"           ROWNUM AS rn " + 
				"    FROM attraction at " + 
				"    LEFT JOIN attraction_img ati ON at.attraction_idx = ati.attraction_idx " + 
				"    LEFT JOIN city ci ON ci.city_idx = at.city_idx " + 
				"    LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
				"    WHERE ati.img_order = 1 " + 
				"    AND (co.country_name = ? OR ci.city_name = ? ) " + 
				") " + 
				"WHERE rn <= 8";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,countryCity);
		pstmt.setString(2,countryCity);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int attractionIdx = rs.getInt("attraction_idx");
			String attractionKor = rs.getString("attraction_kor");
			String detailedEx = rs.getString("detailed_Ex");
			String imgUrl = rs.getString("img_url");
			RecommendAttractionTopDto dto = new RecommendAttractionTopDto(attractionIdx, attractionKor, detailedEx, imgUrl);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	

}
