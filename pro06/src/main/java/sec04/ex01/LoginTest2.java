package sec04.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginTest2
 */
@WebServlet("/loginTest2")
public class LoginTest2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginTest2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메서드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		if(id != null && (id.length()!= 0)) {
			System.out.println(id.equals("admin"));
			if(id.equals("admin")) {
				System.out.println(id + "로123 로그인");
				out.print("<html>");
				out.print("<body>");
				out.print("<font size='12'>관리자로 로그인 하셨습니다.!! </font>");
				out.print("<br>");
				out.print("<input type=button value='회원 정보 수정하기' />");
				out.print("<input type=button value='회원 정보 삭제하기' />");
				out.print("</body?>");
				out.print("</html>");
			}else {
				System.out.println(id + "로 로그인");
				out.print("<html>");
				out.print("<body>");
				out.print(id + "님!! 로그인 하셨습니다.");
				out.print("</body>");
				out.print("</html>");
			}
		}else {
			out.print("<html>");
			out.print("<body>");
			out.print("ID와 비밀번호 입력하세요!!!");
			out.print("<br>");
			out.print("<a href='http://localhost8080/pro06/test01/login.html> 로그인창으로 이동 </a>");
			out.print("</body>");
			out.print("</html>");
		}
	}
	
	

}
