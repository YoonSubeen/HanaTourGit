package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.WeatherDao;
import dto.WeatherDto;


@WebServlet("/AirportWeatherServlet")
public class AirportWeatherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String iata = request.getParameter("weather_iata_real");
		
		WeatherDao wDao = new WeatherDao();
		ArrayList<WeatherDto> weatherList = wDao.getWeatehrListByIata(iata);
		request.setAttribute("weatherList", weatherList);
		
		
		request.getRequestDispatcher("hanatour/jsp/main5_airline/main5_1.jsp").forward(request, response);
	}


}
