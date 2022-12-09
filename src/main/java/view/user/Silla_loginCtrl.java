package view.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import biz.user.UserDAO;
import biz.user.UserVO;



@WebServlet("/Silla_loginCtrl.do")
public class Silla_loginCtrl extends HttpServlet {

	private static final long serialVersionUID = 7761266904050121708L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	/* GetPost*/
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		UserDAO dao = new UserDAO();
		UserVO bean = dao.checkId(id, pw);
		String alertName = bean.getName();
		// 세션에 값 저장
		HttpSession session = request.getSession();
		session.setAttribute("userBean", bean);
		session.setAttribute("userName", alertName);
		if(bean.getName() == null) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('아이디또는 비밀번호 오류'); location.href='sillajen_index.jsp?content=sillajen_content_login.jsp';</script>");
			out.close();
	
		}else {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('환영합니다  "+alertName+"님!'); location.href='sillajen_index.jsp?content=sillajen_content_main.jsp';</script>");
			out.close();			
		}
		
		
	}

}
