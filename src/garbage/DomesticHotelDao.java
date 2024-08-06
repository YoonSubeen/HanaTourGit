package garbage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import dto.DomesticHotelDto;
import dto.DomesticOptionDto;
import dto.DomesticReservPersonDto;
import dto.DomesticSearchDto;
import dto.InnReviewAvgDto;
import dto.InnReviewDto;
import dto.RoomDetailTypeDto;
import dto.RoomTypeDto;

public class DomesticHotelDao {
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
	      String url = "jdbc:oracle:thin:@localhost:1521:xe";
	      String dbId = "project";
	      String dbPw = "pass1234";
	      
	      Class.forName(driver);
	      Connection conn = DriverManager.getConnection(url, dbId, dbPw);

	      return conn;
	}
	public ArrayList<DomesticHotelDto> getHotelInfoListAll() throws Exception {
		ArrayList<DomesticHotelDto> listDomestic = new ArrayList<DomesticHotelDto>();
		
		String sql = "SELECT im.inn_img_url "
				+ ", i.star "
				+ ", i.inn_kor "
				+ ", i.domestic_info "
				+ ", i.address "
				+ ", i.phone "
				+ ", i.homepage_url "
				+ ", min(r.price) as min_price "
				+ "FROM inn i "
				+ "LEFT JOIN inn_img im ON im.inn_idx = i.inn_idx "
				+ "LEFT JOIN room r ON r.inn_idx = i.inn_idx "
				+ "WHERE i.inn_idx = 3 "
				+ "AND inn_img_idx = ( "
				+ "    SELECT min(inn_img_idx) "
				+ "    FROM inn_img im2 "
				+ "    WHERE i.inn_idx = im2.inn_idx "
				+ ") "
				+ " "
				+ "GROUP BY "
				+ "im.inn_img_url "
				+ ", i.star "
				+ ", i.inn_kor "
				+ ", i.domestic_info "
				+ ", i.address "
				+ ", i.phone "
				+ ", i.homepage_url";
		
		Connection conn = getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String inn_img_url = rs.getString("inn_img_url");
			int star = rs.getInt("star");
			String inn_kor = rs.getString("inn_kor");
			String domestic_info = rs.getString("domestic_info");
			String address = rs.getString("address");
			String phone = rs.getString("phone");
			String homepage_url = rs.getString("homepage_url");
			int min_price = rs.getInt("min_price");
			DomesticHotelDto info = new DomesticHotelDto(inn_img_url, star, inn_kor, domestic_info, address, phone, homepage_url, min_price);
			listDomestic.add(info);
			
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listDomestic;
	}
	public ArrayList<InnReviewDto> getDomesticReviewAll() throws Exception {
		ArrayList<InnReviewDto> listReview = new ArrayList<InnReviewDto>();
		
		String sql = "SELECT rv.review_rating, ui.name, rv.regist_date, rv.content, im.img_url"
				+ " FROM user_info ui"
				+ " LEFT JOIN inn_review rv ON ui.user_id = rv.user_id"
				+ " LEFT JOIN inn_review_img im ON rv.review_idx = im.review_idx "
				+ " WHERE rv.inn_idx=3"
				+ " AND rv.user_id = 'sy@ggmail.com'";
		
		Connection conn = getConnection();
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int review_rating = rs.getInt("review_rating");
			String name = rs.getString("name");
			String regist_date = rs.getString("regist_date");
			String content = rs.getString("content");
			String img_url = rs.getString("img_url");
			InnReviewDto review = new InnReviewDto(review_rating, name, regist_date, content, img_url);
			listReview.add(review);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listReview;
	}
	
	public ArrayList<InnReviewAvgDto> getReviewAvg() throws Exception {
		ArrayList<InnReviewAvgDto> listRet = new ArrayList<InnReviewAvgDto>();
		
		String sql = "SELECT count(*) as count_num, avg(review_rating) as review_avg"
				+ " FROM inn_review"
				+ " WHERE inn_idx = 3";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) { 
			int countNum = rs.getInt("count_num");
			double reviewRating = rs.getDouble("review_avg");
			InnReviewAvgDto reviewAvg = new InnReviewAvgDto(countNum, reviewRating);
			listRet.add(reviewAvg);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	public int getImgNum() throws Exception {
		
		String sql = "SELECT count(*) as count_img"
				+ " FROM inn_img"
				+ " WHERE inn_idx=3";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int countImg = 0;
		if(rs.next()) {
			countImg = rs.getInt("count_img");
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return countImg;
	}
	
	public ArrayList<RoomTypeDto> getRoomInfo(int innIdx) throws Exception {
		ArrayList<RoomTypeDto> listRet = new ArrayList<RoomTypeDto>();
		
		String sql = "SELECT DISTINCT r.room_type, rf.title, rf.info, im.img_url"
				+ " FROM room r"
				+ " LEFT JOIN room_info rf ON r.inn_idx = rf.inn_idx"
				+ " LEFT JOIN room_info_img im ON rf.room_info_idx = im.room_info_idx"
				+ " WHERE r.inn_idx=?";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, innIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String room_type = rs.getString("room_type");
			String title = rs.getString("title");
			String info = rs.getString("info");
			String img_url = rs.getString("img_url");
			RoomTypeDto roomType = new RoomTypeDto(room_type, title, info, img_url);
			listRet.add(roomType);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
	public ArrayList<RoomDetailTypeDto> getRommDetailInfo(int room_idx) throws Exception {
		ArrayList<RoomDetailTypeDto> listRet = new ArrayList<RoomDetailTypeDto>();
		
		String sql = "SELECT DISTINCT r.room_type, r.room_name, rf.title, r.personnel, r.max_personnel, r.checkin, r.price, r.max_days, r.max_room"
				+ " FROM room r"
				+ " LEFT JOIN room_info rf ON r.inn_idx = rf.inn_idx"
				+ " LEFT JOIN room_info_img im ON rf.room_info_idx = im.room_info_idx"
				+ " WHERE r.inn_idx=?";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, room_idx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String room_type = rs.getString("room_type");
			String room_name = rs.getString("room_name");
			String title = rs.getString("title");
			int personnel = rs.getInt("personnel");
			int max_personnel = rs.getInt("max_personnel");
			String checkin = rs.getString("checkin");
			int price = rs.getInt("price");
			int max_days = rs.getInt("max_days");
			int max_room = rs.getInt("max_room");
			RoomDetailTypeDto roomDetail = new RoomDetailTypeDto(room_type, room_name, title, personnel, max_personnel, checkin, price, max_days, max_room);
			listRet.add(roomDetail);
		}
		rs.close();
		pstmt.close();
		pstmt.close();
		
		return listRet;
		
	}
	
	public ArrayList<DomesticOptionDto> getRoomOption(int room_idx) throws Exception {
		ArrayList<DomesticOptionDto> listRet = new ArrayList<DomesticOptionDto>();
		
		String sql = "SELECT DISTINCT r.room_name, r.checkin, r.price, r.max_days, r.max_room"
				+ " FROM room r"
				+ " LEFT JOIN room_info rf ON r.inn_idx = rf.inn_idx"
				+ " WHERE r.room_idx=?";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, room_idx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String roomName = rs.getString("room_name");
			String checkIn = rs.getString("checkin");
			int price = rs.getInt("price");
			int maxDays = rs.getInt("max_days");
			int maxRoom = rs.getInt("max_room");
			DomesticOptionDto domesticOption = new DomesticOptionDto(roomName, checkIn, price, maxDays, maxRoom);
			listRet.add(domesticOption);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
	public ArrayList<DomesticReservPersonDto> getReservationPersonInfo(int room_idx) throws Exception {
		ArrayList<DomesticReservPersonDto> listRet = new ArrayList<DomesticReservPersonDto>();
		
		String sql = "SELECT DISTINCT uif.name, uif.gender, uif.birth, uif.phone, uif.email, rv.adult_num, rv.child_num, rv.infant_num"
				+ " FROM user_info uif "
				+ " LEFT JOIN inn_reservation rv ON uif.user_id = rv.user_id"
				+ " LEFT JOIN room r ON r.room_idx = rv.room_idx"
				+ " WHERE rv.room_idx = 1";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, room_idx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String name = rs.getString("name");
			String gender = rs.getString("gender");
			String birth = rs.getString("birth");
			String phone = rs.getString("birth");
			String email = rs.getString("email");
			int adultNum = rs.getInt("adult_num");
			int childNum = rs.getInt("child_num");
			int infantNum = rs.getInt("infant_num");
			DomesticReservPersonDto reservPerson = new DomesticReservPersonDto(name, gender, birth, phone, email, adultNum, childNum, infantNum);
			listRet.add(reservPerson);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	public static void main(String[] args) throws Exception {
		DomesticHotelDao dao = new DomesticHotelDao();
		dao.testYG();
	}
	public void testYG() throws Exception {
		String sql = "SELECT  "
				+ "    MIN(r.checkin) AS minCheckIn, "
				+ "    MIN(im.inn_img_url) KEEP (DENSE_RANK FIRST ORDER BY im.inn_img_idx) AS min_img_url, "
				+ "    i.inn_kor,  "
				+ "    i.inn_type,  "
				+ "    i.star,  "
				+ "    c.city_name,  "
				+ "    AVG(s.clean + s.employee + s.convenient_facility + s.inn_facility) / 4 AS review_avg, "
				+ "    COUNT(s.review_idx) AS review_num,  "
				+ "    r.price, "
				+ "    LISTAGG(r.checkin, ', ') WITHIN GROUP (ORDER BY r.checkin) AS checkin_dates "
				+ "FROM inn i "
				+ "LEFT JOIN inn_review rv ON i.inn_idx = rv.inn_idx "
				+ "LEFT JOIN (select * from room where checkin>=to_date(?, 'yyyymmdd') and checkin<to_date(?,'yyyymmdd')) r ON rv.inn_idx = r.inn_idx "
				+ "LEFT JOIN city c ON c.city_idx = i.city_idx "
				+ "LEFT JOIN inn_review_standard s ON s.review_idx = rv.review_idx "
				+ "LEFT JOIN inn_img im ON i.inn_idx = im.inn_idx "
				+ "WHERE r.price = ( "
				+ "        SELECT min(price) "
				+ "        FROM room r1 "
				+ "        WHERE i.inn_idx = r1.inn_idx "
				+ "        ) "
				+ "GROUP BY i.inn_kor, i.inn_type, i.star,  "
				+ "    c.city_name,  "
				+ "    r.price";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		Date dateMonthNext = new Date();
		Date dateMonthNNext = new Date();
		dateMonthNext.setMonth( dateMonthNext.getMonth() + 1 );
		dateMonthNext.setDate(1);
		dateMonthNNext.setMonth( dateMonthNNext.getMonth() + 2 );
		dateMonthNNext.setDate(1);
		String date1 = sdf.format(dateMonthNext);
		String date2 = sdf.format(dateMonthNNext);
		System.out.println(date1);
		System.out.println(date2);

		pstmt.setString(1, date1);
		pstmt.setString(2, date2);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String innKor = rs.getString("inn_kor");
			int price = rs.getInt("price");
			System.out.println(innKor + " / " + price);
		}
		rs.close();
		pstmt.close();
		conn.close();
	}

	
	
	public ArrayList<DomesticSearchDto>  searchHotel() throws Exception {
		ArrayList<DomesticSearchDto> listRet = new ArrayList<DomesticSearchDto>();
		String sql = "SELECT "
			+ "    im.inn_img_url, "
			+ "    i.inn_type, "
			+ "    i.domestic_info AS domestic_info, "
			+ "    i.inn_kor, "
			+ "    i.star, "
			+ "    i.address, "
			+ "    r.price "
			+ "FROM  "
			+ "    inn i "
			+ "LEFT JOIN  "
			+ "    inn_img im ON i.inn_idx = im.inn_idx "
			+ "LEFT JOIN  "
			+ "    inn_review rv ON rv.inn_idx = i.inn_idx "
			+ "LEFT JOIN  "
			+ "    inn_review_standard s ON s.review_idx = rv.review_idx "
			+ "LEFT JOIN  "
			+ "    room r ON i.inn_idx = r.inn_idx "
			+ "WHERE  "
			+ "    im.inn_img_idx = ( "
			+ "        SELECT MIN(inn_img_idx) "
			+ "        FROM inn_img i2 "
			+ "        WHERE i.inn_idx = i2.inn_idx "
			+ "    )  "
			+ "    AND r.price = ( "
			+ "        SELECT MIN(price) "
			+ "        FROM room r1 "
			+ "        WHERE i.inn_idx = r1.inn_idx "
			+ "    ) "
			+ "		AND i.inn_idx=3"
			+ "GROUP BY  "
			+ "    im.inn_img_url, "
			+ "    i.inn_type, "
			+ "    i.domestic_info,   "
			+ "    i.inn_kor,  "
			+ "    i.star,  "
			+ "    i.inn_eng,  "
			+ "    i.address,  "
			+ "    r.price";
	
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			//minCheckIn은 출력하는게 아니라서 따로 안적어도 되는건가? 뺄까 고민중
			String innImgUrl = rs.getString("inn_img_url");
			String innType = rs.getString("inn_type");
			String domesticInfo = rs.getString("domestic_info");
			String innKor = rs.getString("inn_kor");
			int star = rs.getInt("star");
			String address = rs.getString("address");
			int price = rs.getInt("price");
			DomesticSearchDto domesticSearch = new DomesticSearchDto(innImgUrl, innType, domesticInfo, innKor, star, address, price);
			listRet.add(domesticSearch);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	
	}
	
	public ArrayList<DomesticHotelDto> imgSlide(int innIdx) throws Exception {
		ArrayList<DomesticHotelDto> listRet = new ArrayList<DomesticHotelDto>();
		
		String sql = "SELECT inn_idx, inn_img_url "
				+ " FROM inn_img "
				+ " WHERE inn_idx=?";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String innImgUrl = rs.getString("inn_img_url");
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
	
	
	
	
	
	
//	public ReviewNum getAvg() throws Exception {
//		
//		String sql = "SELECT count(*), avg(review_rating)"
//				+ " FROM inn_review"
//				+ " WHERE inn_idx = 3";
//		
//		Connection conn = getConnection();
//		
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		ResultSet rs = pstmt.executeQuery();
//		ReviewNum review = new ReviewNum();
//		while(rs.next()) {
//			int review_count = rs.getInt("review_count");
//			int review_avg = rs.getInt(review_avg);
//		}
//		rs.close();
//		pstmt.close();
//		conn.close();
//		
//		return review;
//	}
	
	 
}
