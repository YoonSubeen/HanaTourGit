package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import dto.UserInfoDto;


@WebServlet("/MypageEditPersonalInfoEntranceServlet")
public class MypageEditPersonalInfoEntranceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		LoginDao lDao = new LoginDao();
		UserInfoDto uDto;
		
		String loginId = (String)session.getAttribute("loginId");
		uDto = lDao.getLoginUserDto(loginId);
		
		request.setAttribute("loginEmail",  uDto.getEmail() );
		
		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_mypage_personal_info.jsp").forward(request, response);
	}

	

}
