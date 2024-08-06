package garbage;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import dto.AirlineTicketDto;
import dto.UserInfoDto;
import dto.WeatherDto;

public class DaoMain {
	public static void main(String[] args) {
		
		
		
		AirlineTicketDao aDao = new AirlineTicketDao();
		int[] arr = {60, 61, 59, 57};
		ArrayList<AirlineTicketDto> ticketList = aDao.getRoundTripAirlineTicket("SEL", "TYO", "2024-10-08", "", 1, "일반석");
		JSONArray jAry =  aDao.getRoundTripAirlineTicketJAry("SEL", "TYO", "2024-10-08", "", 1, "일반석", arr);
		
	}
}
