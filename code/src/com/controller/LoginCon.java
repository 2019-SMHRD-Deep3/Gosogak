package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class LoginCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		// response.setCharacterEncoding("EUC-KR");
		// request.setCharacterEncoding("EUC-KR");
		// String[] item = request.getParameterValues("item");
		// int num = Integer.parseInt(request.getParameter("num"));
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(id, pw);
		MemberDAO dao = MemberDAO.getDAO();
		MemberDTO info = dao.login(dto);

		if (info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}
		moveURL = "index.jsp";

		return moveURL;

	}

}
