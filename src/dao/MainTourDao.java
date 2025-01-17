package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.GetType3TitleDto;
import dto.*;

public class MainTourDao {
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

// (ex)해외여행 메인페이지 order dto list.
	// mainTypeName : (ex)"해외여행"
	public ArrayList<MainOrderDto> getListMainOrder(String mainTypeName) throws Exception {
		ArrayList<MainOrderDto> listRet = new ArrayList<MainOrderDto>();
		String sql = "SELECT order_idx, type " + " FROM main_order mo " + " INNER JOIN main_classification mc "
				+ " ON mo.classification_idx = mc.classification_idx " + " WHERE mc.main_name=?";

		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mainTypeName);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			int orderIdx = rs.getInt("order_idx");
			int type = rs.getInt("type");

			MainOrderDto dto = new MainOrderDto(orderIdx, type);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();

		return listRet;
	}

//유형1 
	public ArrayList<String> getListType1(int orderIdx) throws Exception {
		ArrayList<String> listRet = new ArrayList<String>();
		Connection conn = getConnection();
		String sql = "SELECT * FROM main_type1 " + " WHERE order_idx=?" + " ORDER BY main_type1_idx";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderIdx);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			String imgUrl = rs.getString("img_url");
			listRet.add(imgUrl);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
//	유형3 (타이틀)
	public ArrayList<GetType3TitleDto> getType3Title(int orderIdx) throws Exception {
		ArrayList<GetType3TitleDto> listRet = new ArrayList<GetType3TitleDto>();
		String sql = "SELECT  main_type3_idx, " + 
				"        order_idx, " + 
				"        title, " + 
				"        img_url, " + 
				"        tab_name " +
				"FROM main_type3 " + 
				"WHERE order_idx = ? " + 
				"ORDER BY main_type3_idx ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderIdx);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) { 
			int mainType3Idx = rs.getInt("main_type3_idx");
			String title = rs.getString("title");
			String imgUrl = rs.getString("img_url");
			String tabName = rs.getString("tab_name");
			GetType3TitleDto dto = new GetType3TitleDto(mainType3Idx, title, imgUrl, tabName);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
//	유형3 (상품)
	public ArrayList<GetType3ProductDto> getType3Product() throws Exception {
		ArrayList<GetType3ProductDto> listRet = new ArrayList<GetType3ProductDto>();
		String sql = "SELECT  m3.main_type3_idx, " + 
				"        m8.main_type8_idx, " + 
				"        m8.order_idx, " + 
				"        m8.img_url, " + 
				"        m8.tag_top, " + 
				"        m8.product_name, " + 
				"        m8.tag_bottom, " + 
				"        m8.price, " + 
				"        m8.category_idx " + 
				"FROM  main_type8 m8 " + 
				"RIGHT JOIN main_type3 m3 ON m3.main_type3_idx = m8.main_type3_idx " + 
				"ORDER BY title ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			int mainType3Idx = rs.getInt("main_type3_idx");
			int mainType8Idx = rs.getInt("main_type8_idx");
			String imgUrl = rs.getString("img_url");
			String tagTop = rs.getString("tag_top");
			String productName = rs.getString("product_name");
			String tagBottom = rs.getString("tag_bottom");
			String price = rs.getString("price");
			int categoryIdx = rs.getInt("category_idx");
			GetType3ProductDto dto = new GetType3ProductDto(mainType3Idx, mainType8Idx, imgUrl, tagTop, productName, tagBottom, price, categoryIdx);
			listRet.add(dto);		
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	

//유형4 
	public String getType4(int orderIdx) throws Exception {
		String strRet = null;
		String sql = "SELECT title  " + "FROM main_type4 " + "WHERE order_idx = ? ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderIdx);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			String title = rs.getString("title");
			strRet = title;
		}
		rs.close();
		pstmt.close();
		conn.close();
		return strRet;
	}

//유형5	
	public void gettype5(int orderIdx) throws Exception {
		Connection conn = getConnection();

		String sql = "SELECT title  " + "FROM main_type5 " + "WHERE order_idx = ? ";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderIdx);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			String title = rs.getString("title");

			System.out.println(title);
		}
		rs.close();
		pstmt.close();
		conn.close();
	}

//유형6
	public String getType6(int order_idx) throws Exception {
		String strRet = null;
		Connection conn = getConnection();

		String sql = "SELECT img_url " + "FROM main_type6 " + "WHERE order_idx = ?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			String imgUrl = rs.getString("img_url");
			strRet = imgUrl;
		}
		rs.close();
		pstmt.close();
		conn.close();
		return strRet;

	}

// 유형7
	public ArrayList<PromotionDto> getListType7(int orderIdx) throws Exception {
		ArrayList<PromotionDto> listRet = new ArrayList<PromotionDto>();
		Connection conn = getConnection();

		String sql = "SELECT  title,  " + "        subtitle,  " + "        img_url " + "FROM main_type7 "
				+ "WHERE order_idx = ? ";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderIdx);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			String title = rs.getString("title");
			String subtitle = rs.getString("subtitle");
			String imgUrl = rs.getString("img_url");
			listRet.add(new PromotionDto(title, subtitle, imgUrl));
		}
		rs.close();
		pstmt.close();
		conn.close();

		return listRet;
	}

/// 유형8
	public ArrayList<MainType8Dto> getListType8(int orderIdx) throws Exception {
		ArrayList<MainType8Dto> listRet = new ArrayList<MainType8Dto>();
		Connection conn = getConnection();

		String sql = "SELECT  img_url,  " + "        tag_top,  " + "        product_name,  " + "        tag_bottom,  "
				+ "        price,  " + "        category_idx " + "FROM main_type8 " + "WHERE order_idx = ? "
				+ "ORDER BY main_type9_idx ASC";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, orderIdx);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			String imgUrl = rs.getString("img_url");
			String tagTop = rs.getString("tag_top");
			String productName = rs.getString("product_name");
			String tagBottom = rs.getString("tag_bottom");
			String price = rs.getString("price");
			int categoryIdx = rs.getInt("category_idx");
			MainType8Dto dto = new MainType8Dto(imgUrl, tagTop, productName, tagBottom, price, categoryIdx);
			listRet.add(dto);
			
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}

//유형9
	public void showtype9(int order_idx) throws Exception {
		Connection conn = getConnection();

		String sql = "SELECT country_classification " + "FROM main_type9 " + "WHERE order_idx = ? "
				+ "ORDER BY main_type9_idx ASC";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, order_idx);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			String country_classification = rs.getString("country_classification");

			System.out.println(country_classification);
		}
		rs.close();
		pstmt.close();
		conn.close();
	}

// 유형대로 뿌려주기 

	// main의 검색창 (여행지, 출발지, 날짜 선택)
	public void search_country(String arrival, String departure, String start_date, String end_date) throws Exception {
		Connection conn = getConnection();

		// PreparedStatement
		String sql = "SELECT DISTINCT c.hanapack, " + "        c.category_name, " + "        c.category_ex, "
				+ "        co.country_name, " + "        c.travel_period, " + "        c.review_avg, "
				+ "        c.comment_amount, " + "        ct.tag, " + "        c.price, " + "		 c.img_url "
				+ "FROM category c   " + "LEFT JOIN package p ON c.category_idx = p.category_idx  "
				+ "LEFT JOIN package_city pc ON pc.package_idx = p.package_idx  "
				+ "LEFT JOIN city ci ON ci.city_idx   = pc.city_idx  "
				+ "LEFT JOIN country co ON co.country_idx = ci.country_idx  "
				+ "LEFT JOIN package_flight pf ON pf.package_idx = p.package_idx  "
				+ "LEFT JOIN category_tag ct ON c.category_idx = ct.category_idx " + "WHERE (ci.city_name = ?  "
				+ "        OR co.country_name = ? ) ";

		if (departure != null) {
			sql += " AND pf.departure = '" + departure + "' ";
		}

		if (start_date != null || end_date != null) {
			sql += "AND pf.departure_date BETWEEN TO_DATE( '" + start_date + "' ,'YY-MM-DD')  " + "AND TO_DATE('"
					+ end_date + "' , 'YY-MM-DD')";
		}

//				"AND pf.departure_date BETWEEN TO_DATE(? ,'YY-MM-DD')  " + 
//				"AND TO_DATE(? , 'YY-MM-DD')";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, arrival);
		pstmt.setString(2, arrival);

		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
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
			System.out.println(hanapack + "/" + category_name + " / " + category_name + " / " + category_ex + " / "
					+ country_name + " / " + travel_period + " / " + review_avg + " / " + comment_amount + " / " + tag
					+ " / " + price + " / " + img_url);
		}
		rs.close();
		pstmt.close();
		conn.close();

	}

	// ★ main 대륙/도시/나라 순서대로 정보 가져오기 (이거 각각 해야 하는건지 한번에 정보를 가져와야하는건지 모르겠음)

}
