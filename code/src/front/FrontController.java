package front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.JoinCon;
import com.controller.LoginCon;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("FrontController 입장!");
		String requestURI = request.getRequestURI();
//		System.out.println(requestURI);
		String contextPath = request.getContextPath();
//		System.out.println(contextPath);
		String resultURL = requestURI.substring(contextPath.length() + 1);
		request.setCharacterEncoding("EUC-KR");

		String moveURL = null;
		ICommand iCommand = null;

		/* 회원가입 기능 */
		if (resultURL.equals("JoinService.do")) {
			iCommand = new JoinCon();
			System.out.println("- 회원가입 성공" + "\n");

			/* 로그인 기능 */
		} else if (resultURL.equals("LoginService.do")) {
			iCommand = new LoginCon();
			System.out.println("- 로그인 성공");
		}
		
		
		
		
		
		
		moveURL = iCommand.execute(request, response);
		response.sendRedirect(moveURL);
	}
}