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
import dto.UserInfoDto;


@WebServlet("/MypageEditPersonalInfoServlet")
public class MypageEditPersonalInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		LoginDao lDao = new LoginDao();
		
		if ( lDao.loginCheck(id, pw) ) {
			
			HideUserInfoDao hDao = new HideUserInfoDao();
			
			String hideName = hDao.hideName(id);
			request.setAttribute("hideName", hideName);
			
			String hidePhoneNumber = hDao.hidePhone(id);
			request.setAttribute("hidePhone", hidePhoneNumber);
			
			String hideBirth = hDao.hideBirthGender(id);
			request.setAttribute("hideBirth", hideBirth);
			
			String hideEmail = hDao.hideEmail(id);
			request.setAttribute("hideEmail", hideEmail);
					
			request.getRequestDispatcher("MypageEditPersonalInfo2EntranceServlet").forward(request, response);
			
		}  else {
			request.getRequestDispatcher("hanatour/jsp/main1_home/main1_mypage_edit_personal_info_fail.jsp").forward(request, response);
		}
		
		
		
	}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
