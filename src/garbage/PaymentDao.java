package garbage;

import java.sql.*;
import java.util.ArrayList;
import dto.*;

public class PaymentDao {
	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "project";
		String pw = "pass1234";
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,id,pw);
		
		return conn;
	}
	public ArrayList<PaymentPriceDto> paymentPrice(String userId) throws Exception  {
		ArrayList<PaymentPriceDto> listRet = new ArrayList<PaymentPriceDto>();
		String sql = "SELECT * " + 
				"FROM ( " + 
				"    SELECT  " + 
				"        sorted_results.*, " + 
				"        ROWNUM AS rnum " + 
				"    FROM ( " + 
				"        SELECT  " + 
				"            r.reservation_idx, " + 
				"            tr.price AS travel_price, " + 
				"            ar.price AS flight_price, " + 
				"            ir.price AS inn_price, " + 
				"            gr.price AS goods_price " + 
				"        FROM reservation r " + 
				"        LEFT JOIN travel_reservation tr ON tr.reservation_idx = r.travel_reservation_idx " + 
				"        LEFT JOIN airline_reservation ar ON ar.reservation_idx = r.airline_reservation_idx " + 
				"        LEFT JOIN inn_reservation ir ON ir.reservation_idx = r.inn_reservation_idx " + 
				"        LEFT JOIN goods_reservation gr ON gr.reservation_idx = r.goods_reservation_idx " + 
				"        LEFT JOIN goods_reservation_person grp ON gr.reservation_person_idx = grp.reservation_person_idx   " + 
				"        LEFT JOIN user_info ui ON (ui.user_id = tr.user_id OR ui.user_id = ar.user_id OR ui.user_id = ir.user_id OR ui.user_id = gr.user_id) " + 
				"        WHERE ui.user_id = ? " + 
				"        ORDER BY r.reservation_idx DESC " + 
				"    ) sorted_results " + 
				") " + 
				"WHERE rnum = 1 ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,userId);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			int reservationIdx = rs.getInt("reservation_idx");
			Integer travelPrice = (rs.getObject("travel_price") != null) ? rs.getInt("travel_price") : null; // null은 문자열이 아님
			Integer flightPrice = (rs.getObject("flight_price") != null) ? rs.getInt("flight_price") : null;
			Integer innPrice = (rs.getObject("inn_price") != null) ? rs.getInt("inn_price") : null;
			Integer goodsPrice = (rs.getObject("goods_price") != null) ? rs.getInt("goods_price") : null;
			PaymentPriceDto dto = new PaymentPriceDto(reservationIdx, travelPrice, flightPrice, innPrice, goodsPrice);
			listRet.add(dto);
		}
		rs.close();
		pstmt.close();
		conn.close();
		return listRet;
	}
	
	
// 결제 정보 담기  (payment_idx, reservation_idx, price, payment_date, user_id)
	public void InsertPayInfo(int reservationIdx, int price, String userId) throws Exception {
		// 예약페이지에 있는 정보를 어떻게 가져오지.
		
		String sql = "INSERT INTO payment (payment_idx, reservation_idx, price, payment_date, user_id )" + 
				"VALUES (SEQ_PAYMENT.nextval, ? , ? , sysdate, ? ) ";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, reservationIdx);
		pstmt.setInt(2, price);
		pstmt.setString(3, userId);
		
		
		
	}
}
