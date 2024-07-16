package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HideUserInfoDao;
import dao.UpdateUserInfoDao;
import dto.UserInfoDto;


@WebServlet("/MypageEditPersonalInfoEmailUpdateServlet")
public class MypageEditPersonalInfoEmailUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		String loginId = (String)session.getAttribute("loginId");
		String email = request.getParameter("user_email");
		
		UpdateUserInfoDao uDao = new UpdateUserInfoDao();
		uDao.emailUpdate(loginId, email);
		
		request.getRequestDispatcher("MypageEditPersonalInfo2EntranceServlet").forward(request, response);
	}



}
