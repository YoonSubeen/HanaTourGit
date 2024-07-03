package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FindPwDao;


@WebServlet("/FindPwServlet")
public class FindPwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("find_pw_id");
		String name = request.getParameter("find_pw_name");
		
		String gender = request.getParameter("find_pw_gender");
		if( gender.equals("male") ) {
			gender = "M";
		} else if ( gender.equals("female") ) {
			gender = "F";
		} else {
			gender = "";
		}
		
		String birth = request.getParameter("find_pw_birth");
		String email = request.getParameter("find_pw_mail");
		
		FindPwDao fpDao = new FindPwDao();
		
		
		HttpSession session = request.getSession();
		session.setAttribute("findPw", fpDao.findPw(id, name, gender, birth, email));
		
		
		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_find_pw_result.jsp").forward(request, response);
	}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
