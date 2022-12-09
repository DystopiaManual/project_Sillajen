package view.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.board.BoardDAO;
import biz.board.BoardVO;


@WebServlet("/Silla_getBoardListCtrl")
public class Silla_getBoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		// 페이징
		
		// 화면에 보여질 게시글 갯수
		int pageSize = 10;
		
		// 현재 보여지고 있는 페이지의 넘버값을 읽기
		String pageNum = request.getParameter("pageNum");
		
		// 처음엔 값이 없으므로 null 처리
		if(pageNum == null) {
			pageNum = "1";
		}
		
		// 전체 게시판글의 갯수(count) = 이전, 이후 버튼 필요유무 판별시 사용		
		int count = 0;
		
		// View JSP 페이지 내부에서 보여질 페이징 숫자값 저장 변수
		// -> 총 게시글의 갯수는 최신글부터 나오게 한다.
		int number = 0;
		
		// 현재 보여지고 있는 페이지 정보 = 숫자로 형변환
		int currentPage = Integer.parseInt(pageNum);
		if (currentPage < 1) {
			currentPage = 1;
		}
		
		// 전체글의 갯수를 가져오는 쿼리 사용하기
		BoardDAO bdao = new BoardDAO();
		count = bdao.getAllCount();
		
		double lastpage1 = (bdao.getAllCount());
		// 마지막 페이징 넘버!
		int lastpage = (int)Math.ceil(lastpage1/10);
		
		
		// 전체 보여질 페이지의 시작 번호를 설정
		int startRow = (currentPage - 1) * pageSize + 1; // 보여질 첫번째 게시글
		int endRow = currentPage * pageSize; //보여질 마지막 게시글
		
		// 최신글 10개를 기준으로 게시판글 가져오기
		ArrayList<BoardVO> v = bdao.getAllBoard(startRow, endRow);
		
		// 화면에 보일 number 설정
		number = count - (currentPage - 1) * pageSize;
		
		// 바인딩
		// 최신글 10개 기준으로 게시판 글 바인딩
		request.setAttribute("v", v);
		// JSP 뷰에서 보여질 넘버링 숫자값
		request.setAttribute("number", number);
		// 화면에 보여질 게시판 글 갯수
		request.setAttribute("pageSize", pageSize);
		// 현재 페이지
		request.setAttribute("currentPage", currentPage);
		// 전체 게시글 갯수
		request.setAttribute("count", count);
		// 마지막 페이징 넘버링
		request.setAttribute("lastpage", lastpage);
		
		// 콘솔 테스트
		System.out.println("count : " + count);
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);
		System.out.println("currentPage : " + currentPage);
		System.out.println("lastPage : " + lastpage);
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("sillajen_index.jsp?content=Sillajen_boardListPage.jsp");
		dis.forward(request, response);
		
		
	}

}
