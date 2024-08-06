package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import dto.WeatherDto;
import service.WeatherService;

public class WeatherDao {

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
	
	
	
	
	public void truncateWeatherInfo() {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "TRUNCATE TABLE weather";
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
		
	}
	
	

	public void insertWeatehrInfo(String iata) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		AirlineDao aDao = new AirlineDao();
		double[] airportLatLon = aDao.getAirportLatLonByIATA(iata);
		double lat = airportLatLon[0];
		double lon = airportLatLon[1];
		
		WeatherService wService = new WeatherService();
		JSONArray jAry =  wService.openWeatherRequestList(lat, lon);
		JSONObject jObj = wService.openWeatherRequestCity(lat, lon);
		

		String city = (String)jObj.get("name");
		String country = (String)jObj.get("country");
		Number timezone = (Number)jObj.get("timezone");
		Number sunrise = (Number)jObj.get("sunrise");
		Number sunset = (Number)jObj.get("sunset");
		
		String weatherDate = "";
		String weather = "";
		Number temp = 0;
		Number pressure = 0;
		Number humidity = 0;
		Number wind = 0;
		Number clouds = 0;
		Number rain = 0;
		Number snow = 0;
		String iconURL = "";
		
		// System.out.println(jAry.size());
		
		// table 비우기
		truncateWeatherInfo();
		
		try {
			
			conn = getConnection();
		
			if(jAry.size() > 0) {
				for(int i = 0; i < jAry.size(); i++) {
					JSONObject jsonObj = (JSONObject)jAry.get(i);
					
					weatherDate = (String)jsonObj.get("dt_txt");
					JSONObject jsonWeatherMain = (JSONObject)jsonObj.get("main");
					temp = (Number)jsonWeatherMain.get("temp");
					pressure = (Number)jsonWeatherMain.get("pressure");
					humidity = (Number)jsonWeatherMain.get("humidity");
					
					JSONObject windObj = (JSONObject)jsonObj.get("wind");
					wind = (Number)windObj.get("speed");
					
					JSONObject cloudObj = (JSONObject)jsonObj.get("clouds");
					clouds = (Number)cloudObj.get("all");
					
					JSONObject rainObj = (JSONObject)jsonObj.get("rain");
					
					if(rainObj != null) {
						rain = (Number)rainObj.get("3h");
					} else {
						 rain = 0;
					}
					
					JSONObject snowObj = (JSONObject)jsonObj.get("snow");
					
					if(snowObj != null) {
						snow = (Number)snowObj.get("3h");
					} else {
						snow = 0;
					}
					
					
					JSONArray weatherArr = (JSONArray)jsonObj.get("weather");
					JSONObject weatherObj = (JSONObject)weatherArr.get(0);
					
					weather = (String)weatherObj.get("main");
					String icon = (String)weatherObj.get("icon");
					iconURL = 
							"https://openweathermap.org/img/wn/" 
							+ icon + "@2x.png";
					

					String sql =
							"INSERT INTO weather ( " + 
							"    weather_idx, " + 
							"    lat, " + 
							"    lon, " + 
							"    weather_date, " + 
							"    weather, " + 
							"    temp, " + 
							"    pressure, " + 
							"    humidity, " + 
							"    clouds, " + 
							"    wind, " + 
							"    rain, " + 
							"    snow, " + 
							"    city, " + 
							"    country, " + 
							"    timezone, " + 
							"    sunrise, " + 
							"    sunset, " + 
							"    icon_url " + 
							") " + 
							"VALUES  ( " + 
							"    SEQ_WEATHER.nextval, " + 
							"    ?, " + 
							"    ?, " + 
							"    TO_DATE(?, 'YYYY-MM-DD HH24:MI:SS'), " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ?, " + 
							"    ? " + 
							")";
							
					pstmt = conn.prepareStatement(sql);
					
					pstmt.setObject(1, lat);
					pstmt.setObject(2, lon);
					pstmt.setString(3, weatherDate);
					pstmt.setString(4, weather);
					pstmt.setObject(5, temp);
					pstmt.setObject(6, pressure);
					pstmt.setObject(7, humidity);
					pstmt.setObject(8, clouds);
					pstmt.setObject(9, wind);
					pstmt.setObject(10, rain);
					pstmt.setObject(11, snow);
					pstmt.setString(12, city);
					pstmt.setString(13, country);
					pstmt.setObject(14, timezone);
					pstmt.setObject(15, sunrise);
					pstmt.setObject(16, sunset);
					pstmt.setObject(17, iconURL);
					
					pstmt.executeUpdate();
				}
			}	
			
		}  catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
	}
	
	
	
	
	
	
	
	
	
	
	
	public ArrayList<WeatherDto> getWeatehrListByIata(String iata) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<WeatherDto> weatherList = new ArrayList<WeatherDto>();
		
		insertWeatehrInfo(iata);
		
		try {
			conn = getConnection();
			String sql = 
					"SELECT  weather_date, " + 
					"        weather, " + 
					"        temp, " + 
					"        pressure, " + 
					"        humidity, " + 
					"        clouds, " + 
					"        wind, " + 
					"        rain, " + 
					"        snow, " + 
					"        city, " + 
					"        country, " + 
					"        timezone, " + 
					"        sunrise, " + 
					"        sunset, " + 
					"        icon_url " + 
					"FROM    weather " +
					"ORDER BY weather_date ASC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while( rs.next() ) {
				WeatherDto wDto = new WeatherDto();
				wDto.setIata(iata);
				wDto.setWeatherDate( rs.getString("weather_date") );
				wDto.setWeather( rs.getString("weather") );
				wDto.setTemp( rs.getDouble("temp") );
				wDto.setPressure( rs.getDouble("pressure") );
				wDto.setHumidity( rs.getInt("humidity") );
				wDto.setClouds( rs.getInt("clouds") );
				wDto.setWind( rs.getDouble("wind") );
				wDto.setRain( rs.getInt("rain") );
				wDto.setSnow( rs.getDouble("snow") );
				wDto.setCity( rs.getString("city") );
				wDto.setCountry( rs.getString("country") );
				wDto.setTimeZone( rs.getInt("timezone") );
				wDto.setSunRise( rs.getInt("sunrise") );
				wDto.setSunSet( rs.getInt("sunset") );
				wDto.setIconUrl( rs.getString("icon_url") );
				
				weatherList.add(wDto);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
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
		
		
		return weatherList;
	}
	
	
	
	
	
	
	
	
	
}
