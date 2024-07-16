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


@WebServlet("/MypageEditPersonalInfoPhoneUpdateServlet")
public class MypageEditPersonalInfoPhoneUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String loginId = (String)session.getAttribute("loginId");
		String changePhone = (String)request.getParameter("user_change_phone");
		
		UpdateUserInfoDao uDao = new UpdateUserInfoDao();
		uDao.phoneNumberUpdate(loginId, changePhone);
		
		
		request.getRequestDispatcher("MypageEditPersonalInfo2EntranceServlet").forward(request, response);
	}


//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
