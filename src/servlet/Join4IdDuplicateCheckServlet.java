package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.JoinDao;

@WebServlet("/Join4IdDuplicateCheckServlet")
public class Join4IdDuplicateCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("join_id");
		
		JoinDao jDao = new JoinDao();
		if( jDao.joinIdDuplicateCheck(id)
			|| id == null 
			|| id.isEmpty()) {
			request.getRequestDispatcher("hanatour/jsp/main1_home/main1_join4.jsp").forward(request, response);
		} else {
			HttpSession session =  request.getSession();
			session.setAttribute("join_id", id);
			request.getRequestDispatcher("hanatour/jsp/main1_home/main1_join4_id_pass.jsp").forward(request, response);
			
		}
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
