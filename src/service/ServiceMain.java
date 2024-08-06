package service;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class ServiceMain {
	public static void main(String[] args) {
		
		WeatherService ws = new WeatherService();
		JSONArray jAry = ws.openWeatherRequestList(37.469, 126.45);
		JSONObject jObj = ws.openWeatherRequestCity(37.469, 126.45);
		// System.out.println(jAry.toString());
		
	}
	
	
}
