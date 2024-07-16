package dao;
import java.sql.*;
import java.util.ArrayList;
import dto.*;

public class PackageDao {
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
	
	// package_top 부분 한줄 정보 
	public ArrayList<PackageTopOneLineInfoDto> packageTopOneLineInfo(int packageIdx) throws Exception {
		ArrayList<PackageTopOneLineInfoDto> ptoliDto = new ArrayList<PackageTopOneLineInfoDto>();
		Connection conn = getConnection();
		String sql = "SELECT p.package_number, " + 
				"        p.package_name, " + 
				"        p.package_ex, " + 
				"        p.travel_period, " + 
				"        p.flight, " + 
				"        p.airline, " + 
				"        p.free_tour, " + 
				"        p.shopping, " + 
				"        p.shopping_times, " + 
				"        p.group_travel, " + 
				"        p.leader,  " + 
				"        p.guide, " + 
				"        p.guide_fee, " + 
				"        p.optional_tour, " + 
				"        p.review_star, " + 
				"        p.review_comment, " + 
				"        pp.adult " + 
				" FROM package p " + 
				" LEFT JOIN package_price pp ON pp.package_idx = p.package_idx " + 
				" WHERE p.package_idx = ? ";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			String packageNumber = rs.getString("package_number");
			String packageName = rs.getString("package_name");
			String packageEx = rs.getString("package_ex");
			String travelPeriod = rs.getString("travel_period");
			String flight = rs.getNString("flight");
			String airline  = rs.getString("airline");
			String freeTour = rs.getString("free_tour");
			String shopping = rs.getString("shopping");
			String shoppingTimes = rs.getString("shopping_times");
			String groupTravel = rs.getString("group_travel");
			String leader = rs.getString("leader");
			String guide = rs.getString("guide");
			String guideFee = rs.getString("guide_fee");
			String optionalTour = rs.getString("optional_tour");
			String reviewStar = rs.getString("review_star");
			String reviewComment = rs.getString("review_comment");
			String adult = rs.getString("adult");
			PackageTopOneLineInfoDto dto = new PackageTopOneLineInfoDto(packageNumber, packageName, packageEx, travelPeriod, flight, airline, freeTour, shopping, shoppingTimes, groupTravel, leader, guide, guideFee, optionalTour, reviewStar, reviewComment, adult); 
			ptoliDto.add(dto);

		}
		rs.close();
		pstmt.close();
		conn.close();
		return ptoliDto;
	}
	
// package_top 이미지 
	public ArrayList<String> packageTopImg(int packageIdx) throws Exception {
		ArrayList<String> listRet = new ArrayList<String>();
		String sql = "SELECT pt.img_url " + 
				"FROM package p " + 
				"LEFT JOIN package_thumbnail pt ON p.package_idx = pt.package_idx " + 
				"WHERE p.package_idx = ? " + 
				"ORDER BY pt.img_order ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String imgUrl = rs.getString("img_url");
			listRet.add(imgUrl);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// package 상단 tag 글자 
	public ArrayList<String> packageTopTag(int packageIdx) throws Exception {
		ArrayList<String> listRet = new ArrayList<String>();
		String sql = "SELECT pt.tag " + 
				"FROM package p " + 
				"LEFT JOIN package_tag pt ON p.package_idx = pt.package_idx " + 
				"WHERE p.package_idx = ? " ;
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String tag = rs.getString("Tag");
			listRet.add(tag);
		}
		rs.close();
		pstmt.close();
		conn.close(); 
		return listRet;
	}
	
// 패키지 항공 두줄 정보 
	public ArrayList<PackageTwoFlightInfoDto> packageTwoFlightInfo(int packageIdx) throws Exception {
		ArrayList<PackageTwoFlightInfoDto> listRet = new ArrayList<PackageTwoFlightInfoDto>();
		String sql = "SELECT " + 
				"    TO_CHAR(MAX(pf.departure_date), 'YYYY.MM.DD (DY) HH24:MI') AS departure_date, " + 
				"    TO_CHAR(MAX(pf.arrival_date), 'YYYY.MM.DD (DY) HH24:MI') AS arrival_date, " + 
				"    at.flight_number, " + 
				"    TRUNC((MAX(pf.arrival_date) - MIN(pf.departure_date)) * 24) || ' 시간 ' || " + 
				"    TRUNC( " + 
				"        (MAX(pf.arrival_date) - MIN(pf.departure_date)) * 24 * 60 - " + 
				"        TRUNC((MAX(pf.arrival_date) - MIN(pf.departure_date)) * 24) * 60 " + 
				"    ) || '분' AS period " + 
				"FROM package p " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"LEFT JOIN airline_ticket at ON at.ticket_idx = pf.ticket_idx " + 
				"LEFT JOIN airline a ON a.iata = at.departure_iata  " + 
				"WHERE p.package_idx = ? " + 
				"GROUP BY at.flight_number " +
				"ORDER BY departure_date ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			 String departureDate = rs.getString("departure_date");
			 String arrivalDate = rs.getString("arrival_date");
			 String flightNumber = rs.getString("flight_number");
			 String period = rs.getString("period");
			 PackageTwoFlightInfoDto dto = new PackageTwoFlightInfoDto(departureDate, arrivalDate, flightNumber, period);
			 listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 패키지 항공 한줄 정보 
	public ArrayList<PackageOneFlightInfoDto> packageOneFlightInfo(int packageIdx) throws Exception {
		ArrayList<PackageOneFlightInfoDto> listRet = new ArrayList<PackageOneFlightInfoDto>();
		String sql = "SELECT  TRUNC( MAX(pf.arrival_date) - MIN(pf.departure_date)) AS period, " + 
				"        al.logo, " + 
				"        al.name " + 
				"FROM package p " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"LEFT JOIN airline_ticket at ON pf.ticket_idx = at.ticket_idx " + 
				"LEFT JOIN airline al ON al.iata = at.airline_iata " + 
				"WHERE p.package_idx = ? " + 
				"GROUP BY al.logo, al.name ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			int period = rs.getInt("period");
			String logo = rs.getString("logo");
			String name = rs.getString("name");
			PackageOneFlightInfoDto dto = new PackageOneFlightInfoDto(period, logo, name);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 여행지역과 예약현황
	public ArrayList<PackageReservationInfoDto> packageReservationInfo(int packageIdx) throws Exception {
		ArrayList<PackageReservationInfoDto> listRet = new ArrayList<PackageReservationInfoDto>();
		String sql = "SELECT  p.travel_city, " + 
				"        p.total_seat, " + 
				"        p.minimum_number, " + 
				"        COUNT(CASE WHEN p.package_idx = 1 THEN 1 END) AS reservation_count " + 
				"FROM package p " + 
				"LEFT JOIN travel_reservation pr ON p.package_idx = pr.package_idx " + 
				"WHERE p.package_idx = ? " + 
				"GROUP BY p.travel_city, p.total_seat, p.minimum_number ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			String travelCity = rs.getString("travel_city");
			int totalSeat = rs.getInt("total_seat");
			int minimumNumber = rs.getInt("minimum_number");
			int reservationCount = rs.getInt("reservation_count");
			PackageReservationInfoDto dto = new PackageReservationInfoDto(travelCity, totalSeat, minimumNumber, reservationCount);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 패키지 가격 
	public ArrayList<PackagePriceDto> packagePrice(int packageIdx) throws Exception {
		ArrayList<PackagePriceDto> listRet = new ArrayList<PackagePriceDto>();
		String sql = "SELECT  pp.adult,  " + 
				"        pp.child,  " + 
				"        pp.infant " + 
				"FROM package_price pp  " + 
				"INNER JOIN package p ON pp.package_idx = p.package_idx  " + 
				" WHERE pp.package_idx = ? ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			int adult = rs.getInt("adult");
			int child = rs.getInt("child");
			int infant = rs.getInt("infant");
			PackagePriceDto dto = new PackagePriceDto(adult, child, infant);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 패키지 정보 
	public ArrayList<PackageInfoDto> packageInfo(int packageIdx) throws Exception {
		ArrayList<PackageInfoDto> listRet = new ArrayList<PackageInfoDto>();
		String sql = "SELECT  package_idx, " + 
				"        contain, " + 
				"        bold_text, " + 
				"        thin_text         " + 
				"FROM package_info " + 
				"WHERE package_idx = ? " + 
				"ORDER BY info_order";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			//int packageIdx = rs.getInt("package_idx");
			String contain = rs.getString("contain");
			String boldText = rs.getString("bold_text");
			String thinText = rs.getString("thin_text");
			PackageInfoDto dto = new PackageInfoDto(contain, boldText, thinText);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
		
	}
	
// 	패키지 경비 
	public ArrayList<PackageContainInfoDto> packageContainInfo(int packageIdx) throws Exception {
		ArrayList<PackageContainInfoDto> listRet = new ArrayList<PackageContainInfoDto>();
		String sql = "SELECT  package_idx, " + 
				"        contain, " + 
				"        non_contain, " + 
				"        choice_price " + 
				"FROM package  " + 
				"WHERE package_idx = ? " ;
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String contain = rs.getString("contain");
			String nonContain = rs.getString("non_contain");
			String choicePrice = rs.getString("choice_price");      
			PackageContainInfoDto dto = new PackageContainInfoDto(contain, nonContain, choicePrice);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
//	패키지 예약 유의사항 
	public ArrayList<PackageReservationNoticeDto> packageReservationNotice(int packageIdx) throws Exception {
		ArrayList<PackageReservationNoticeDto> listRet = new ArrayList<PackageReservationNoticeDto>();
		String sql = "SELECT  rn.package_idx, " + 
				"        rnt2.bold_text, " + 
				"        rnt2.thin_text " + 
				"FROM reservation_notice rn " + 
				"LEFT JOIN reservation_notice_type2 rnt2 ON rn.notice_type2_idx = rnt2.notice_type2_idx " + 
				"WHERE rn.package_idx = ? " + 
				"ORDER BY rn.notice_order";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String boldText = rs.getString("bold_text");
			String thinText = rs.getString("thin_text");
			PackageReservationNoticeDto dto = new PackageReservationNoticeDto(boldText, thinText);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
//	패키지 미팅 정보 
	public ArrayList<PackageMeetingInfoDto> packageMeetingInfo(int packageIdx) throws Exception {
		ArrayList<PackageMeetingInfoDto> listRet = new ArrayList<PackageMeetingInfoDto>();
		String sql = "SELECT p.leader, " + 
				"       p.guide, " + 
				"       TO_CHAR(pmi.info_date, 'MM\"월\" DD\"일\" AM HH24:MI') AS info_date, " + 
				"       pmi.location, " + 
				"       pmi.map_url, " + 
				"       pmi.purple_info, " + 
				"       pmi.thin_info " + 
				"FROM package p " + 
				"LEFT JOIN package_meeting_info pmi ON p.package_idx = pmi.package_idx " + 
				"WHERE p.package_idx = ? ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String leader = rs.getString("leader");
			String guide = rs.getString("guide");
			String infoDate = rs.getString("info_date");
			String location = rs.getString("location");
			String mapUrl = rs.getString("map_url");
			String purpleInfo = rs.getString("purple_info");
			String thinInfo = rs.getString("thin_info");
			PackageMeetingInfoDto dto = new PackageMeetingInfoDto(leader, guide, infoDate, location, mapUrl, purpleInfo, thinInfo);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 탭 호텔&관광지 속 관광지 정보 
	public ArrayList<HotelAttractionAttractionDto> HotelAttractionAttraction(int packageIdx) throws Exception {
		ArrayList<HotelAttractionAttractionDto> listRet = new ArrayList<HotelAttractionAttractionDto>();
		String sql = "SELECT  DISTINCT tp.day, " + 
				"        att.attraction_kor, " + 
				"        atti.img_url, " + 
				"        att.detailed_ex, " + 
				"        MIN(TO_CHAR(pf.departure_date,'YYYY.MM.DD\"(\"DY\")\"')) as attraction_date " + 
				"FROM package p " + 
				"LEFT JOIN package_flight pf ON p.package_idx = pf.package_idx " + 
				"LEFT JOIN travel_plan_detail tpd ON tpd.package_idx = p.package_idx " + 
				"LEFT JOIN travel_plan tp ON tp.travel_plan_idx = tpd.travel_plan_idx " + 
				"LEFT JOIN plan_type5 pt5 ON pt5.plan_type5_idx = tpd.plan_type5_idx " + 
				"LEFT JOIN plan_type5_detail ptd5 ON  ptd5.plan_type5_idx = pt5.plan_type5_idx " + 
				"LEFT JOIN attraction att ON att.attraction_idx = ptd5.attraction_idx " + 
				"LEFT JOIN attraction_img atti ON atti.attraction_idx = att.attraction_idx " + 
				"WHERE p.package_idx = ? " + 
				"AND atti.img_order = 1 " + 
				"AND att.attraction_kor IS NOT NULL " + 
				"GROUP BY tp.day, att.attraction_kor, atti.img_url, att.detailed_ex " + 
				"ORDER BY tp.day";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int day = rs.getInt("day");
			String attractionKor = rs.getString("attraction_kor");
			String imgUrl = rs.getString("img_url");
			String detailedEx = rs.getString("detailed_ex");
			String attractionDate = rs.getString("attraction_date");
			HotelAttractionAttractionDto dto = new HotelAttractionAttractionDto(day, attractionKor, imgUrl, detailedEx, attractionDate);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
// 탭 호텔&관광지 호텔 작은 상자 정보 
	public ArrayList<TabSmallHotelBoxDto> tabSmallHotelBox(int packageIdx) throws Exception {
		ArrayList<TabSmallHotelBoxDto> listRet = new ArrayList<TabSmallHotelBoxDto>();
		String sql = "SELECT  co.country_name || '('|| ci.city_name || ')' as location, " + 
				"        i.inn_kor " + 
				"FROM package_inn pi  " + 
				"LEFT JOIN inn i ON pi.inn_idx = i.inn_idx " + 
				"LEFT JOIN city ci ON ci.city_idx = i.city_idx " + 
				"LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
				"WHERE package_idx = ? " + 
				"AND ci.city_name IS NOT NULL ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String location = rs.getString("location");
			String innKor = rs.getString("inn_kor");
			TabSmallHotelBoxDto dto = new TabSmallHotelBoxDto(location, innKor);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}

// 	탭 호텔&관광지 호텔 전체 정보 
	public ArrayList<TabHotelInfoDto> tabHotelInfo(int packageIdx) throws Exception {
		ArrayList<TabHotelInfoDto> listRet = new ArrayList<TabHotelInfoDto>();
		String sql = "SELECT  co.country_name || ','|| ci.city_name  as location, " + 
				"        i.inn_kor, " + 
				"        i.inn_eng, " + 
				"        i.address, " + 
				"        i.phone, " + 
				"        i.homepage_url, " + 
				"        i.famous_spot, " + 
				"        i.floors, " + 
				"        i.room_num, " + 
				"        i.checkin_checkout, " + 
				"        ii.img_url " + 
				"FROM package_inn pi  " + 
				"LEFT JOIN inn i ON pi.inn_idx = i.inn_idx " + 
				"LEFT JOIN city ci ON ci.city_idx = i.city_idx " + 
				"LEFT JOIN country co ON co.country_idx = ci.country_idx " + 
				"LEFT JOIN inn_img ii ON ii.inn_idx = i.inn_idx " + 
				"WHERE package_idx = ? " + 
				"AND ci.city_name IS NOT NULL " + 
				"AND ii.num = 1 ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, packageIdx);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			String location = rs.getString("location");
			String innKor = rs.getString("inn_kor");
			String innEng = rs.getString("inn_eng");
			String address = rs.getString("address");
			String phone = rs.getString("phone");
			String homepageUrl = rs.getString("homepage_url");
			String famousSpot = rs.getString("famous_spot");
			String floors = rs.getString("floors");
			String roomNum = rs.getString("room_num");
			String checkInCheckOut = rs.getString("checkin_checkout");
			String imgUrl = rs.getString("img_url");
			TabHotelInfoDto dto = new TabHotelInfoDto(location, innKor, innEng, address, phone, homepageUrl, famousSpot, floors, roomNum, checkInCheckOut, imgUrl);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
}
