package front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.JoinCon;
import com.controller.LoginCon;
import com.controller.JoinCon;
import com.controller.LoginCon;
import com.controller.LogoutCon;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	private HashMap<String, ICommand> map = new HashMap<String, ICommand>();
	
	private void putData() {
		map.put("JoinService.do", new JoinCon());
		map.put("LoginService.do", new LoginCon());
		map.put("LogoutService.do", new LogoutCon());
		//map.put("updateService.do", new updateCon());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		System.out.println("FrontController ¿‘¿Â!");
		String requestURI = request.getRequestURI();
//		System.out.println(requestURI);
		String contextPath = request.getContextPath();
//		System.out.println(contextPath);
		String resultURL = requestURI.substring(contextPath.length() + 1);
		String moveURL = null;
		putData();
		ICommand iCommand = map.get(resultURL);
		moveURL = iCommand.execute(request, response);
		response.sendRedirect(moveURL);
		
	}
}