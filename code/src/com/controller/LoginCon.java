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
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");

		MemberDTO dto = new MemberDTO(ID, PW);
		MemberDAO dao = MemberDAO.getDAO();

		MemberDTO info = dao.login(dto);
		if (info != null) {
			System.out.println(info.getNm());
			System.out.println(info.getEmail());
			System.out.println(info.getGrade()+"\n");
			
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}
		moveURL = "index.jsp";
		
		return moveURL;

	}

}
