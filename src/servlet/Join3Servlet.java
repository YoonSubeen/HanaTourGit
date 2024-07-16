package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.JoinDao;


@WebServlet("/Join3Servlet")
public class Join3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("join_name");
		String gender = request.getParameter("join_gender");
		String birth = request.getParameter("join_birth");
		String email = request.getParameter("join_mail");
		
		request.setAttribute("joinName", name);
		request.setAttribute("joinBirth", birth);
	
		if( gender.equals("male") ) {
			gender = "M";
			request.setAttribute("joinGenderMale", "main1_join4_inner4_gender_active");
			request.setAttribute("joinGenderFemale", "");
		} else if ( gender.equals("female")) {
			gender = "F";
			request.setAttribute("joinGenderMale", "");
			request.setAttribute("joinGenderFemale", "main1_join4_inner4_gender_active");
		} else {
			request.setAttribute("joinGenderMale", "");
			request.setAttribute("joinGenderFemale", "");
		}
		
		JoinDao jDao = new JoinDao();
		jDao.joinVerification(name, gender, birth, email);
		
		
		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_join4.jsp").forward(request, response);
	}



}
