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
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("join_name");
		String gender = request.getParameter("join_gender");
		String birth = request.getParameter("join_birth");
		String email = request.getParameter("join_mail");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("join_name", name);
		session.setAttribute("join_birth", birth);
		
		session.setAttribute("join_gender_male", "");
		session.setAttribute("join_gender_female", "");
		
		
		if( gender.equals("male") ) {
			gender = "M";
			session.setAttribute("join_gender_male", "main1_join4_inner4_gender_active");
			session.setAttribute("join_gender_female", "");
		} else if ( gender.equals("female")) {
			gender = "F";
			session.setAttribute("join_gender_male", "");
			session.setAttribute("join_gender_female", "main1_join4_inner4_gender_active");
		} else {
			gender = null;
		}
		
		JoinDao jDao = new JoinDao();
		jDao.joinVerification(name, gender, birth, email);
		
		
		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_join4.jsp").forward(request, response);
	}

	
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
