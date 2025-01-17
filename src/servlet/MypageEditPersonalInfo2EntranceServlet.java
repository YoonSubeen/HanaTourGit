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


@WebServlet("/MypageEditPersonalInfo2EntranceServlet")
public class MypageEditPersonalInfo2EntranceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		LoginDao lDao = new LoginDao();
		UserInfoDto uDto;
		
		String loginId = (String)session.getAttribute("loginId");
		uDto = lDao.getLoginUserDto(loginId);
		
		
		HideUserInfoDao hDao = new HideUserInfoDao();
		
		String hideName = hDao.hideName(loginId);
		request.setAttribute("hideName", hideName);
		
		String hidePhoneNumber = hDao.hidePhone(loginId);
		request.setAttribute("hidePhone", hidePhoneNumber);
		
		String hideBirth = hDao.hideBirthGender(loginId);
		request.setAttribute("hideBirth", hideBirth);
		
		String hideEmail = hDao.hideEmail(loginId);
		request.setAttribute("hideEmail", hideEmail);
		
		
		if(uDto.getLastName() != null) {
			request.setAttribute("deletePassportInfoActive", "delete_passport_info_active");
			request.setAttribute("lastName", uDto.getLastName() );
			request.setAttribute("firstName", uDto.getFirstName() );
			request.setAttribute("passportNumber", uDto.getPassportNumber() );
			request.setAttribute("passportExpirationDate", uDto.getPassportExpirationDate() );
			request.setAttribute("nationality", uDto.getNationality() );
			request.setAttribute("authority", uDto.getAuthority() );
		} else {
			request.setAttribute("deletePassportInfoActive", null);
			request.setAttribute("lastName", "여권 상의 영문 성(ex.HONG)");
			request.setAttribute("firstName", "여권 상의 영문 이름(ex.GIL DONG");
			request.setAttribute("passportNumber", "여권 번호(ex.M70689068)");
			request.setAttribute("passportExpirationDate", "여권 만료일(ex.20140415)");
			request.setAttribute("nationality", "국적 선택");
			request.setAttribute("authority", "발행국가 선택");
		}
		
		
		
		
		
		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_mypage_edit_personal_info2.jsp").forward(request, response);
		
	}

}
