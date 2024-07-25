package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PackageDao;

@WebServlet("/InsertReviewContentServlet")
public class InsertReviewContentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 리뷰 최대 idx
		int maxReviewIdx = Integer.parseInt(request.getParameter("review_idx"));
		
		// 리뷰 내용
		int packageIdx = Integer.parseInt(request.getParameter("package_idx"));
		int star = Integer.parseInt(request.getParameter("star"));
		String age = request.getParameter("age");
		String like = request.getParameter("like");
		String content = request.getParameter("content");
		
		// 리뷰 태그(여러개)
		String[] tagStrArray = request.getParameterValues("tag");
		int[] tag = new int[0]; // 기본값으로 빈 배열

		// 문자열 배열을 정수형 배열로 변환
		if (tagStrArray != null) {
		    tag = new int[tagStrArray.length];
		    for (int i = 0; i < tagStrArray.length; i++) {
		        tag[i] = Integer.parseInt(tagStrArray[i]);
		    }
		}
		
		// 리뷰 이미지(여러개)
		String[] imgStrArray = request.getParameterValues("img");
		System.out.println(imgStrArray[0]);
		
		
		PackageDao pDao = new PackageDao();
		// 내용 한 개  insert
		try {
			pDao.insertReviewContent(packageIdx, like, age, star, content, maxReviewIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// tag 여러개 insert
		try {
			pDao.insertReviewTag(tag, maxReviewIdx);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// image 여러개 insert
		try {
			pDao.insertReviewImg(maxReviewIdx, imgStrArray);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("hanatour/jsp/tour/tour_package.jsp?package_idx=" + packageIdx);
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
