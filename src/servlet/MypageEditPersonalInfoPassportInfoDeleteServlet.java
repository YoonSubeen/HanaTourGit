package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HideUserInfoDao;
import dao.LoginDao;
import dao.UpdateUserInfoDao;
import dto.UserInfoDto;


@WebServlet("/MypageEditPersonalInfoPassportInfoDeleteServlet")
public class MypageEditPersonalInfoPassportInfoDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

		String loginId = (String)session.getAttribute("loginId");
		
		UpdateUserInfoDao uDao = new UpdateUserInfoDao();
		uDao.passportDelete(loginId);
	
	
		request.getRequestDispatcher("MypageEditPersonalInfo2EntranceServlet").forward(request, response);
	}



}
