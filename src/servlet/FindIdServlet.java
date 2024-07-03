package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.FindIdDao;



@WebServlet("/FindIdServlet")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("find_id_name");
		
		String gender = request.getParameter("find_id_gender");
		if( gender.equals("male") ) {
			gender = "M";
		} else if( gender.equals("female") ) {
			gender = "F";
		} else {
			gender ="";
		}
		
		String birth = request.getParameter("find_id_birth");
		String email = request.getParameter("find_id_mail");
		
		FindIdDao fiDao = new FindIdDao();
		
		HttpSession session = request.getSession();
		session.setAttribute("findId", fiDao.findId(name, gender, birth, email) );

		request.getRequestDispatcher("hanatour/jsp/main1_home/main1_find_id_result.jsp").forward(request, response);
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
