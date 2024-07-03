package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.JoinDao;

@WebServlet("/Join4Servlet")
public class Join4Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("join_id");
		
		String phone = request.getParameter("join_phone");
		String pw = request.getParameter("join_pw");
		String foreigner = request.getParameter("join_foreigner");
		
		if( foreigner != null ) {
			foreigner = "T";
		} else {
			foreigner = "F";
		}
		
		JoinDao jDao = new JoinDao();
		jDao.joinInputPhoneNumberPassword(id ,phone, pw, foreigner);
		
		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_join5.jsp").forward(request, response);
		
	}
	
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

	
}
