package dao;

import java.util.ArrayList;

import dto.AirlineTicketDto;

public class DaoMain {
	public static void main(String[] args) {
		
		AirlineTicketDao aDao = new AirlineTicketDao();
		
		ArrayList<AirlineTicketDto> roundTripDeparture = aDao.getRoundTripDirectFlightAirlineTicket("SEL", "TYO", "2024-10-08", "", 14, "일반석");
		for(AirlineTicketDto val : roundTripDeparture) {
			int ticketIdx = val.getTicketIdx();
			String departureDate = val.getDepartureTime();
			int leftSeats = val.getLeftSeats();
			
			System.out.println(ticketIdx);
			System.out.println(departureDate);
			System.out.println(leftSeats);
			System.out.println();
		}
		// System.out.println("개수 : " + roundTripDeparture.size());

		
	}
}
