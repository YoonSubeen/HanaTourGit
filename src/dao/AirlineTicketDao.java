package dao;

import java.sql.*;
import java.util.ArrayList;

import org.apache.catalina.webresources.DirResourceSet;

import dto.AirlineTicketDto;

public class AirlineTicketDao {

	Connection getConnection() throws Exception {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "project";
		String dbPw = "pass1234";
		
		Class.forName(driver);
		DriverManager.getConnection(url, dbId, dbPw);
		
		Connection conn = DriverManager.getConnection(url, dbId, dbPw);
		return conn;
	}
	
	
	
	public ArrayList<AirlineTicketDto> getRoundTripDirectFlightAirlineTicket( 
											String departureIATA, String arrivalIATA, String departureDate, 
											String directFlight, int memberNumber, String seatClass) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<AirlineTicketDto> aDtoList = new ArrayList<AirlineTicketDto>();
	

		String directFlightSqlInput;
		if(directFlight.equals("on")) {
			directFlightSqlInput = "AND at.stop = 0 ";
		} else {
			directFlightSqlInput = "";
		}
		
		
		
		
		try {
			conn = getConnection();
			
			String sql = 
					"WITH    seat_counts AS ( " + 
					"            SELECT  at.ticket_idx, " + 
					"                    at.model_idx, " + 
					"                    ( " + 
					"                        SELECT count(*) " + 
					"                        FROM seat s " + 
					"                        WHERE s.model_idx = at.model_idx " + 
					"                            AND s.class = ? " + 
					"                    )   AS total_seats, " + 
					"                    ( " + 
					"                        SELECT count(*) " + 
					"                        FROM seat_reservation_status sr " + 
					"                        LEFT JOIN seat s  " + 
					"                        ON s.seat_idx = sr.seat_idx " + 
					"                        WHERE sr.reservation_state = 'T' " + 
					"                            AND sr.ticket_idx = at.ticket_idx " + 
					"                            AND s.class = ? " + 
					"                    )   AS reserved_seats " + 
					"        FROM airline_ticket at " + 
					") " + 
					"SELECT  DISTINCT " + 
					"        at.ticket_idx AS ticket_idx, " + 
					"        at.departure_iata AS departure_iata, " + 
					"        at.arrival_iata AS arrival_iata, " + 
					"        at.airline_iata AS airline_iata, " + 
					"        al.logo AS airline_logo, " + 
					"        at.model_idx AS model_idx, " + 
					"        at.departure_time AS departure_time, " + 
					"        at.arrival_time AS arrival_time, " + 
					"        at.stop AS stop, " + 
					"        at.free_baggage AS free_baggage, " + 
					"        at.codeshare AS codeshare, " + 
					"		 at.codeshare_airline AS codeshare_airline, " +
					"        at.flight_number AS flight_number, " + 
					"        at.departure_terminal AS departure_terminal, " + 
					"        at.arrival_terminal AS arrival_terminal, " + 
					"        at.economy_class_price AS economy_class_price, " + 
					"        at.prestige_class_price AS prestige_class_price, " + 
					"        (sc.total_seats - sc.reserved_seats) AS left_seats     " + 
					"FROM    airline_ticket at " + 
					"        LEFT JOIN seat_counts sc  " + 
					"        ON at.ticket_idx = sc.ticket_idx " + 
					"        LEFT JOIN airline al " + 
					"        ON at.airline_iata = al.iata " + 
					"WHERE   at.departure_iata IN ( " + 
					"            SELECT ap.iata " + 
					"            FROM airport ap " + 
					"            WHERE ap.big_city_iata = ? " + 
					"            UNION " + 
					"            SELECT ap.iata " + 
					"            FROM airport ap " + 
					"            WHERE ap.iata = ? " + 
					"        ) " + 
					"        AND  " + 
					"        at.arrival_iata IN ( " + 
					"            SELECT ap.iata " + 
					"            FROM airport ap " + 
					"            WHERE ap.big_city_iata = ? " + 
					"            UNION " + 
					"            SELECT ap.iata " + 
					"            FROM airport ap " + 
					"            WHERE ap.iata = ? " + 
					"        ) " + 
					"        AND  " + 
					"        TRUNC(at.departure_time) = TO_DATE(?, 'YYYY-MM-DD') " + 
					"        AND  " + 
					"        (sc.total_seats - sc.reserved_seats) >= ?  " + 
					directFlightSqlInput + 
					"ORDER BY at.departure_time ASC";
					
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, seatClass);
			pstmt.setString(2, seatClass);
			
			pstmt.setString(3, departureIATA);
			pstmt.setString(4, departureIATA);
			
			pstmt.setString(5, arrivalIATA);
			pstmt.setString(6, arrivalIATA);
			
			pstmt.setString(7, departureDate);
			pstmt.setInt(8, memberNumber);
			
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				
				AirlineTicketDto aDto = new AirlineTicketDto();
				
				aDto.setTicketIdx( rs.getInt("ticket_idx") );
				aDto.setDepartureIATA( rs.getString("departure_iata") );
				aDto.setArrivalIATA( rs.getString("arrival_iata") );
				aDto.setAirlineIATA( rs.getString("airline_iata") );
				aDto.setModelIdx( Integer.parseInt( rs.getString("model_idx") ) );
				aDto.setDepartureTime( rs.getString("departure_time") );
				aDto.setArrivalTime( rs.getString("arrival_time") );
				aDto.setStop( Integer.parseInt( rs.getString("stop") ) );
				aDto.setFreeBaggage( rs.getString("free_baggage") );
				aDto.setCodeShare( rs.getString("codeshare") );
				aDto.setCodeShareAirline( rs.getString("codeshare_airline") );
				aDto.setFlightNumber( rs.getString("flight_number") );
				aDto.setDepartureTerminal( rs.getString("departure_terminal") );
				aDto.setArrivalTerminal( rs.getString("arrival_terminal") );
				aDto.setEconomyClassPrice( Integer.parseInt( rs.getString("economy_class_price") ) );
				aDto.setPrestigeClassPrice( Integer.parseInt( rs.getString("prestige_class_price") ) );
				aDto.setLeftSeats( Integer.parseInt( rs.getString("left_seats") ) );
				
				aDtoList.add(aDto);
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		

		
		return  aDtoList;
	}
	
	
	
	
	
	
	
}
