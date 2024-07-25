package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AirlineTicketDao;
import dto.AirlineTicketDto;


@WebServlet("/AirlineRoundtrip1Servlet")
public class AirlineRoundtrip1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// SEL 인천/김포
		String roundTripDepartureParam = request.getParameter("round_trip_departure_airport");
		String roundTripDepartureIata = roundTripDepartureParam.split(" ")[0];
		
		// NRT 나리타
		String roundTripArrivalParam = request.getParameter("round_trip_arrival_airport");
		String roundTripArrivalIata = roundTripArrivalParam.split(" ")[0];
		
		// 2024.10.08
		String roundTripDepartureDateParam = request.getParameter("round_trip_departure_date_calender");
		String roundTripDepartureDate = roundTripDepartureDateParam.replace(".", "-");
		
		// 2024.10.17
		String roundTripArrivaleDateParam = request.getParameter("round_trip_arrival_date_calender");
		String roundTripArrivaleDate = roundTripArrivaleDateParam.replace(".", "-");
		
		// 직항여부 (on or null)
		String roundTripDirectFlight = request.getParameter("round_trip_direct");
		if(roundTripDirectFlight == null) {
			roundTripDirectFlight = "";
		} 
		
		
		
		
		
		// 성인 1명  '  일반석
		// 성인 1명,소아 1명  '  프레스티지석
		// 성인 2명,소아 1명,유아 1명  ' 일반석
		String roundTripMemberSeatClass = request.getParameter("round_trip_member");
		
		String roundTripMember = roundTripMemberSeatClass.split("'")[0];
		
		// 좌석
		String roundTripSeatClass = roundTripMemberSeatClass.split("'")[1].trim();
		
		String[] roundTripMemberSplit = roundTripMember.split(",");
		int roundTripAdult = 1;
		int roundTripChild = 0;
		int roundTripInfant = 0;
		
		Pattern numPattern = Pattern.compile("\\d+");
		
		Matcher adultNumMatcher = numPattern.matcher(roundTripMemberSplit[0]);
		if( adultNumMatcher.find() ) {
			String adultNumber = adultNumMatcher.group();
			roundTripAdult = Integer.parseInt(adultNumber);
		}
 		
		
		if(roundTripMemberSplit.length == 2) {
			if( roundTripMemberSplit[1].contains("소아") ) {
				Matcher numMatcher = numPattern.matcher(roundTripMemberSplit[1]);
				if( numMatcher.find() ) {
					String childNumber = numMatcher.group();
					roundTripChild = Integer.parseInt(childNumber);
				}
			} else if( roundTripMemberSplit[1].contains("유아") ) {
				Matcher numMatcher = numPattern.matcher(roundTripMemberSplit[1]);
				if( numMatcher.find() ) {
					String infantNumber = numMatcher.group();
					roundTripInfant = Integer.parseInt(infantNumber);
				}
			}
		} else if(roundTripMemberSplit.length == 3) {
			Matcher childNumMatcher = numPattern.matcher(roundTripMemberSplit[1]);
			Matcher infantNumMatcher = numPattern.matcher(roundTripMemberSplit[2]);
			
			if(childNumMatcher.find() ) {
				String childNumber = childNumMatcher.group();
				roundTripChild = Integer.parseInt(childNumber);
			}
			
			if( infantNumMatcher.find() ) {
				String infantNumber = infantNumMatcher.group();
				roundTripInfant = Integer.parseInt(infantNumber);
			}
			
		}
		
		// System.out.println("성인 : " + roundTripAdult);
		// System.out.println("소아 : " + roundTripChild);
		// System.out.println("유아 : " + roundTripInfant);
		// System.out.println("좌석 : " + roundTripSeatClass);
		
		// 성인 + 소아
		int seatNumber = roundTripAdult + roundTripChild;

		
		AirlineTicketDao aDao = new AirlineTicketDao();
		ArrayList<AirlineTicketDto> ticketList = aDao.getRoundTripDirectFlightAirlineTicket(roundTripDepartureIata, roundTripArrivalIata, roundTripDepartureDate, roundTripDirectFlight, seatNumber, roundTripSeatClass);
		
		request.setAttribute("ticketList", ticketList);
		
		
		request.getRequestDispatcher("hanatour/jsp/main5_airline/main5_round_trip1.jsp").forward(request, response);
		
	}


}
