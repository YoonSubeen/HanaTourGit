package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UpdateUserInfoDao;

@WebServlet("/MypageEditPersonalInfoIdUpdateServlet")
public class MypageEditPersonalInfoIdUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String loginId = (String)session.getAttribute("loginId");
		String changeId = request.getParameter("user_change_id");
		
		UpdateUserInfoDao uDao = new UpdateUserInfoDao();
		uDao.idUpdate(loginId, changeId);

		session.setAttribute("loginId", changeId);
		
		request.getRequestDispatcher("MypageEditPersonalInfo2EntranceServlet").forward(request, response);
	}

}
