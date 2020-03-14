package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.CounselDAO;
import com.model.CounselDTO;
import com.model.MemberDTO;
import com.model.PostDAO;
import com.model.PostDTO;

import front.ICommand;

public class InsertCounselCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String counsel_id = info.getId();
		String counsel_manager = request.getParameter("counsel_manager");
		String counsel_title = request.getParameter("counsel_title");
		String counsel_content = request.getParameter("counsel_content");
		System.out.println(counsel_id);
		System.out.println(counsel_manager);
		System.out.println(counsel_title);
		System.out.println(counsel_content);
		CounselDTO dto = new CounselDTO(counsel_id, counsel_manager, counsel_title, counsel_content);
		CounselDAO dao = new CounselDAO();
		int cnt = dao.insertCounsel(dto);
		
		if (cnt > 0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		moveURL = "index.jsp";
		return moveURL;
	}

}
