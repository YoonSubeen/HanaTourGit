package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;


@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		HttpSession session = request.getSession();
		
		LoginDao lDao = new LoginDao();
		
		if ( lDao.loginCheck(id, pw) ) {
			session.setAttribute("header1_logout", "header1_hidden");
			session.setAttribute("header1_login", "header1_active");
			
			session.setAttribute("login_id", id);
			session.setAttribute("login_pw", pw);
			session.setAttribute("login_name", lDao.getLoginUserName(id, pw));
			
			request.getRequestDispatcher("hanatour/jsp/main1_home/main1_1.jsp").forward(request, response);
		} else {
			session.setAttribute("header1_logout", "header1_active");
			session.setAttribute("header1_login", "header1_hidden");
			request.getRequestDispatcher("hanatour/jsp/main1_home/main1_login.jsp").forward(request, response);
		}

		
	}
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
