package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class UpdateUserCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String id = info.getId();
		String pw = request.getParameter("pw");
		String nm = request.getParameter("nm");
		String email = request.getParameter("email");
		
		MemberDTO dto = new MemberDTO(id, pw, nm, email);
		MemberDAO dao = MemberDAO.getDAO();
		int cnt = dao.updateUser(dto);
		
		if(cnt > 0) {
			session.setAttribute("info", dto);
			System.out.println("정보수정완료");
		}
		moveURL = "myIndex.jsp";
		return moveURL;
	}

}