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


@WebServlet("/MypageEditPersonalInfoPassportInfoUpdateServlet")
public class MypageEditPersonalInfoPassportInfoUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String loginId = (String)session.getAttribute("loginId");
		
		String lastName = (String)request.getParameter("user_last_name");
		String firstName = (String)request.getParameter("user_first_name");
		String passportNumber = (String)request.getParameter("user_passport_number");
		String passportExpirationDate = (String)request.getParameter("user_expiration_date");
		
		String nationality = (String)request.getParameter("user_nationality");
		if( nationality.equals("kr") ) {
			nationality = "대한민국";
		} else if( nationality.equals("jp") ) {
			nationality = "일본";
		} else if( nationality.equals("cn") ) {
			nationality = "중국";
		} else if( nationality.equals("us") ) {
			nationality = "미국";
		}
		
		String authority = (String)request.getParameter("user_authority");
		if( authority.equals("kr") ) {
			authority = "대한민국";
		} else if( authority.equals("jp") ) {
			authority = "일본";
		} else if( authority.equals("cn") ) {
			authority = "중국";
		} else if( authority.equals("us") ) {
			authority = "미국";
		}
		
		
		UpdateUserInfoDao uDao = new UpdateUserInfoDao();
		uDao.passportUpdate(loginId, lastName, firstName, passportNumber, passportExpirationDate, nationality, authority);
		
		request.getRequestDispatcher("MypageEditPersonalInfo2EntranceServlet").forward(request, response);
	}


}
