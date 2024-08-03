package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;
import dto.ShowCategoryOneLineInfoDto;

@WebServlet("/TourCategoryFilterServlet")
public class TourCategoryFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get 요청");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 파라미터 받기
		String countryCity = request.getParameter("countryCity");
		String startDate = request.getParameter("startDate");
		String sortOrder = request.getParameter("sortOrder");
		String tour = request.getParameter("tour");
		
		System.out.println(countryCity);
		System.out.println(startDate);
		System.out.println(sortOrder);
		System.out.println(tour);
		
		// 객체 생성 
		CategoryDao cDao = new CategoryDao();
		ArrayList<ShowCategoryOneLineInfoDto> dto = null;
		try {
			dto = cDao.showCategoryOneLineInfo(countryCity, sortOrder,tour);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// 파라미터 보내기 
//		request.setAttribute("categoryOneLine", dto);
//		request.setAttribute("sortOrder", sortOrder);
//		request.setAttribute("startDate", startDate);
		request.getRequestDispatcher("/hanatour/jsp/tour/tour_category.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post 요청");
	}

}
