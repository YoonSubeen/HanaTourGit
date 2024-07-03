package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LogOutServlet")
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		session.setAttribute("login_id", "");
		session.setAttribute("login_pw", "");
		
		session.setAttribute("header1_logout", "header1_active");
		session.setAttribute("header1_login", "header1_hidden");
		
		
		 request.getRequestDispatcher("hanatour/jsp/main1_home/main1_1.jsp").forward(request, response);
		
		 
		// 서블릿을 호출한 페이지 (이전 페이지)로 보내려면 Referer 헤더 사용?
		// 로그아웃을 누르면  누른 페이지(jsp)로 나오게 하고 싶은데 서블릿을 거쳤을 경우 url이 쿼리스트링 형태라서 Refer Header 사용할 때 문제 생김
		// referer : http://localhost:9090/HanaTour/LogInServlet?user_id=winter0101&user_pw=winter123456
//		String referer = request.getHeader("Referer");
//		if(referer != null) {
//			System.out.println("Referer 헤더 있음");
//			try {
//				System.out.println(referer);
//				request.getRequestDispatcher(referer).forward(request, response);
//				request.getRequestDispatcher("경로").forward(request, response);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			
//		} else {
//			System.out.println("Referer 헤더 없음");
//		}	
		
		
		
	}

	
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	}

}
