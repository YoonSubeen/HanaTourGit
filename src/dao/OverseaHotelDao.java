package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.HotelTagDto;
import dto.OverseaAdditionalInfoDto;
import dto.OverseaHotelDto;
import dto.OverseaHotelInfoDto;
import dto.OverseaRoomDto;
import dto.OverseaTotalRatingDto;
import dto.amenityDto;
import dto.amenitySubtDto;
import dto.facilityDto;
import dto.facilitySubtDto;
import dto.overseaHotelReviewDto;
import dto.OverseaReviewImgDto;
import dto.OverseaReviewOptionDto;

public class OverseaHotelDao {
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
	      String url = "jdbc:oracle:thin:@localhost:1521:xe";
	      String dbId = "project";
	      String dbPw = "pass1234";
	      
	      Class.forName(driver);
	      Connection conn = DriverManager.getConnection(url, dbId, dbPw);

	      return conn;
	}
	
	public ArrayList<OverseaHotelDto> getHotelInfo(int inn_idx) throws Exception {
		ArrayList<OverseaHotelDto> listRet = new ArrayList<OverseaHotelDto>();
		
		String sql = "SELECT DISTINCT  " + 
				"    i.star,   " + 
				"    i.inn_kor,   " + 
				"    i.inn_eng,   " + 
				"    i.purple_box,  " + 
				"    AVG(s.clean + s.employee + s.convenient_facility + s.inn_facility) / 4 AS review_avg,  " + 
				"    COUNT(DISTINCT s.review_idx) AS review_num,  " + 
				"    min(r.price) AS price " + 
				"FROM inn i  " + 
				"LEFT JOIN inn_review rv ON rv.inn_idx = i.inn_idx  " + 
				"LEFT JOIN inn_review_standard s ON s.review_idx = rv.review_idx  " + 
				"LEFT JOIN room r ON r.inn_idx = i.inn_idx AND r.checkin >= TO_DATE('20240801', 'yyyymmdd') AND r.checkin < TO_DATE('20240901', 'yyyymmdd')  " + 
				"WHERE i.inn_idx = ?  " + 
				"GROUP BY i.star, i.inn_kor, i.inn_eng, i.purple_box";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, inn_idx);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			int star = rs.getInt("star");
			String innKor = rs.getString("inn_kor");
			String innEng = rs.getString("inn_eng");
			String purpleBox = rs.getString("purple_box");
			int reviewAvg = rs.getInt("review_avg");
			int reviewNum = rs.getInt("review_num");
			int price = rs.getInt("price");
			OverseaHotelDto overseaHotelDetail = new OverseaHotelDto(star, innKor, innEng, purpleBox, reviewAvg, reviewNum, price);
			listRet.add(overseaHotelDetail);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
	public ArrayList<HotelTagDto> getTagList(int inn_idx) throws Exception {
		ArrayList<HotelTagDto> listRet = new ArrayList<HotelTagDto>();
		
		String sql = "SELECT it.tag, it.purple_tag  " + 
				"FROM inn_tag it  " + 
				"LEFT JOIN inn i ON it.inn_idx = i.inn_idx  " + 
				"WHERE i.inn_idx=? ";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, inn_idx);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String Tag = rs.getString("tag");
			String purpleTag = rs.getString("purple_tag");
			HotelTagDto overseaTag = new HotelTagDto(Tag, purpleTag);
			listRet.add(overseaTag);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
	public ArrayList<OverseaHotelInfoDto> getBottomHotelInfo(int inn_idx) throws Exception {
		ArrayList<OverseaHotelInfoDto> listRet = new ArrayList<OverseaHotelInfoDto>();
		
		String sql = "SELECT address_eng, "
				+ " checkin_checkout, "
				+ " floors, "
				+ " room_num, "
				+ " phone, "
				+ " fax " 
				+ " FROM inn"
				+ " WHERE inn_idx =?";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, inn_idx);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String addressEng = rs.getString("address_eng");
			String checkinCheckout = rs.getString("checkin_checkout");
			int floors = rs.getInt("floors");
			int roomNum = rs.getInt("room_num");
			String phone = rs.getString("phone");
			String fax = rs.getString("fax");
			OverseaHotelInfoDto bottomHotelInfo = new OverseaHotelInfoDto(addressEng, checkinCheckout, floors, roomNum, phone, fax);
			listRet.add(bottomHotelInfo);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	
	}
	
	
	 /* 다시 생각해보기(신중하게 고민하기) */
		public ArrayList<OverseaRoomDto> getRoomList(int inn_idx) throws Exception {
		ArrayList<OverseaRoomDto> listRet = new ArrayList<OverseaRoomDto>();
		
		String sql = "SELECT r.room_type,   " + 
				"    r.room_name,  " + 
				"    r.alarm,   " + 
				"    r.cancel_date,   " + 
				"    r.breakfast,   " + 
				"    r.price,   " + 
				"    r.checkin  " + 
				"FROM room r  " + 
				"LEFT JOIN inn i ON i.inn_idx = r.inn_idx  " + 
				"WHERE i.inn_idx = ?";
		
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, inn_idx);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String roomType = rs.getString("room_type");
			String roomName = rs.getString("room_name");
			String alarm = rs.getString("alarm");
			String cancelDate = rs.getString("cancel_date");
			String breakfast = rs.getString("breakfast");
			int price = rs.getInt("price");
			String checkin = rs.getString("checkin");
			OverseaRoomDto roomTypeList = new OverseaRoomDto(roomType, roomName, alarm, cancelDate, breakfast, price, checkin);
			listRet.add(roomTypeList);
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return listRet;
	}
	
		public ArrayList<OverseaAdditionalInfoDto> getAdditionalInfo(int inn_idx) throws Exception {
			ArrayList<OverseaAdditionalInfoDto> listRet = new ArrayList<OverseaAdditionalInfoDto>();
			
			String sql = "SELECT DISTINCT room_info, facilities, dining, near_entertain, hotel_info, construction_notice " + 
					"FROM inn " + 
					"WHERE inn_idx = ?";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inn_idx);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String roomInfo = rs.getString("room_info");
				String facilities = rs.getString("facilities");
				String dining = rs.getString("dining");
				String nearEntertain = rs.getString("near_entertain");
				String hotelInfo = rs.getString("hotel_info");
				String constructionNotice = rs.getString("construction_notice");
				OverseaAdditionalInfoDto additionalInfo = new OverseaAdditionalInfoDto(roomInfo, facilities, dining, nearEntertain, hotelInfo, constructionNotice);
				listRet.add(additionalInfo);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
		
		
		public ArrayList<amenityDto> getAmenity(int inn_idx) throws Exception {
			ArrayList<amenityDto> listRet = new ArrayList<amenityDto>();
			
			String sql = "SELECT DISTINCT amt.amenity_title_name,   " + 
					"    amt.amenity_img,  " + 
					"    amt.amenity_title_idx  " + 
					"FROM amenity am  " + 
					"LEFT JOIN amenity_subtitle ams ON am.amenity_subt_idx = ams.amenity_subt_idx  " + 
					"LEFT JOIN amenity_title amt ON amt.amenity_title_idx = ams.amenity_title_idx  " + 
					"WHERE am.inn_idx = ? " + 
					"ORDER BY amt.amenity_title_idx ASC";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inn_idx);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String amenityTitleName = rs.getString("amenity_title_name");
				String amenityImg = rs.getString("amenity_img");
				int amenityTitleIdx = rs.getInt("amenity_title_idx");
				amenityDto amenityTitle = new amenityDto(amenityTitleName, amenityImg, amenityTitleIdx);
				listRet.add(amenityTitle);
			}
			
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
					
		}
		
		public ArrayList<facilityDto> getFacility(int inn_idx) throws Exception {
			ArrayList<facilityDto> listRet = new ArrayList<facilityDto>();
			
			String sql = "SELECT DISTINCT ft.facility_title_name,   " + 
					"    ft.facility_img,  " + 
					"    ft.facility_title_idx  " + 
					"FROM facility f  " + 
					"LEFT JOIN facility_subtitle fs ON f.facility_subt_idx = fs.facility_subt_idx  " + 
					"LEFT JOIN facility_title ft ON ft.facility_title_idx = fs.facility_title_idx  " + 
					"WHERE f.inn_idx = ?  " + 
					"ORDER BY ft.facility_title_idx ASC";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inn_idx);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String facilityTitleName = rs.getString("facility_title_name");
				String facilityImg = rs.getString("facility_img");
				int facilityTitleImg = rs.getInt("facility_title_idx");
				facilityDto facility = new facilityDto(facilityTitleName, facilityImg, facilityTitleImg);
				listRet.add(facility);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
	
		public ArrayList<amenitySubtDto> getSubtAmenity(int inn_idx) throws Exception {
			ArrayList<amenitySubtDto> listRet = new ArrayList<amenitySubtDto>();
			
			String sql= "SELECT ams.amenity_subt_name,  " + 
					"    ams.amenity_title_idx  " + 
					"FROM inn i  " + 
					"LEFT JOIN amenity am ON i.inn_idx = am.inn_idx  " + 
					"LEFT JOIN amenity_subtitle ams ON am.amenity_subt_idx = ams.amenity_subt_idx  " + 
					"LEFT JOIN amenity_title amt ON amt.amenity_title_idx = ams.amenity_title_idx  " + 
					"WHERE ams.amenity_subt_name IS NOT NULL  " + 
					"AND i.inn_idx=?   " + 
					"ORDER BY ams.amenity_subt_idx ASC,   " + 
					"amenity_title_idx ASC";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inn_idx);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String amenitySubtName = rs.getString("amenity_subt_name");
				int amenityTitleIdx = rs.getInt("amenity_title_idx");
				amenitySubtDto amenitySubt = new amenitySubtDto(amenitySubtName, amenityTitleIdx);
				listRet.add(amenitySubt);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
		
		public ArrayList<facilitySubtDto> getSubtFacility(int inn_idx) throws Exception {
			ArrayList<facilitySubtDto> listRet = new ArrayList<facilitySubtDto>();
			
			String sql = "SELECT fs.facility_subt_name,  " + 
					"    fs.facility_title_idx  " + 
					"FROM inn i  " + 
					"LEFT JOIN facility f ON i.inn_idx = f.inn_idx  " + 
					"LEFT JOIN facility_subtitle fs ON f.facility_subt_idx = fs.facility_subt_idx  " + 
					"LEFT JOIN facility_title ft ON ft.facility_title_idx = fs.facility_title_idx  " + 
					"WHERE fs.facility_subt_name IS NOT NULL  " + 
					"AND i.inn_idx=?   " + 
					"ORDER BY fs.facility_subt_idx ASC,   " + 
					"facility_title_idx ASC";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inn_idx);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String facilitySubtName = rs.getString("facility_subt_name");
				int facilityTitleIdx = rs.getInt("facility_title_idx");
				facilitySubtDto facilitySubt = new facilitySubtDto(facilitySubtName, facilityTitleIdx);
				listRet.add(facilitySubt);
				
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
		
		public ArrayList<overseaHotelReviewDto> getOverseaReview(int innIdx) throws Exception {
			ArrayList<overseaHotelReviewDto> listRet = new ArrayList<overseaHotelReviewDto>();
			
			String sql = "SELECT DISTINCT rv.review_idx,  "
					+ "    ROUND(avg(s.clean + s.employee + s.convenient_facility + s.inn_facility)/4,0) as review_rating, "
					+ "    uf.user_id, "
					+ "    rvt.review_type, "
					+ "    rv.regist_date, "
					+ "    i.inn_kor, "
					+ "    rv.content "
					+ "FROM inn i "
					+ "LEFT JOIN room r ON i.inn_idx = r.inn_idx "
					+ "LEFT JOIN inn_review rv ON rv.inn_idx = i.inn_idx "
					+ "LEFT JOIN inn_review_standard s ON s.review_idx = rv.review_idx "
					+ "LEFT JOIN user_info uf ON uf.user_id = rv.user_id "
					+ "LEFT JOIN oversea_review orv ON orv.review_idx = rv.review_idx "
					+ "LEFT JOIN inn_review_type rvt ON rvt.review_type_idx = rv.review_type_idx "
					+ "LEFT JOIN oversea_review_option op ON op.review_option_idx = orv.review_option_idx "
					+ "WHERE i.inn_idx = ? "
					+ "GROUP BY rv.review_idx, uf.user_id, rvt.review_type, rv.regist_date, i.inn_kor, rv.content "
					+ "ORDER BY rv.review_idx";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, innIdx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next() ) {
				int reviewIdx = rs.getInt("review_idx");
				String reviewRating = rs.getString("review_rating");
				String userId = rs.getString("user_id");
				String reviewType = rs.getString("review_type");
				String registDate = rs.getString("regist_date");
				String innKor = rs.getString("inn_kor");
				String content = rs.getString("content");
				overseaHotelReviewDto overseaReview = new overseaHotelReviewDto(reviewIdx, reviewRating, userId, reviewType, registDate, innKor, content);
				listRet.add(overseaReview);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
			
		}
		
		public ArrayList<OverseaReviewImgDto> getReviewImg() throws Exception {
			ArrayList<OverseaReviewImgDto> listRet = new ArrayList<OverseaReviewImgDto>();
			
			String sql = "SELECT img_url, review_idx "
					+ "FROM inn_review_img";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String imgUrl = rs.getString("img_url");
				int reviewIdx = rs.getInt("review_idx");
				OverseaReviewImgDto reviewImg = new OverseaReviewImgDto(imgUrl, reviewIdx);		
				listRet.add(reviewImg);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
		
		public ArrayList<OverseaReviewOptionDto> getReviewOption() throws Exception {
			ArrayList<OverseaReviewOptionDto> listRet = new ArrayList<OverseaReviewOptionDto>();
			
			String sql = "SELECT rv.review_idx,  "
					+ "    op.title,  "
					+ "    op.option_img "
					+ "FROM oversea_review rv "
					+ "LEFT JOIN oversea_review_option op ON rv.review_option_idx = op.review_option_idx "
					+ "ORDER BY review_idx, op.review_option_idx";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int reviewIdx = rs.getInt("review_idx");
				String title = rs.getString("title");
				String optionImg = rs.getString("option_img");
				OverseaReviewOptionDto reviewOption = new OverseaReviewOptionDto(reviewIdx, title, optionImg);
				listRet.add(reviewOption);
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
		
		public ArrayList<Integer> getTotalRating(int innIdx) throws Exception {
			ArrayList<Integer> listRet = new ArrayList<Integer>();
			
			String sql = "SELECT ROUND(avg(s.clean + s.employee + s.convenient_facility + s.inn_facility)/4,1) AS total_avg, "
					+ "    ROUND(avg(s.clean),1) AS clean, "
					+ "    ROUND(avg(s.employee),1) AS emloyee, "
					+ "    ROUND(avg(s.convenient_facility),1) AS convenient_facility, "
					+ "    ROUND(avg(s.inn_facility),1) AS inn_facility, "
					+ "    COUNT(DISTINCT rv.review_idx) AS review_count "
					+ "FROM inn_review rv "
					+ "LEFT JOIN inn_review_standard s ON s.review_idx = rv.review_idx "
					+ "WHERE rv.inn_idx=? ";
			
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, innIdx);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				int totalAvg = rs.getInt("total_avg");
				int clean = rs.getInt("clean");
				int employee = rs.getInt("employee");
				int convenientFacility = rs.getInt("convenient_facility");
				int innFacility = rs.getInt("inn_facility");
				int reviewCount = rs.getInt("review_count");
			}
			rs.close();
			pstmt.close();
			conn.close();
			
			return listRet;
		}
		
}
