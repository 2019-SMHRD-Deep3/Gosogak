package com.controller;

import javax.servlet.http.Cookie;
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

		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String counsel_id = info.getId();
		String counselor = request.getParameter("counselorName");
		String counsel_title = request.getParameter("counsel_title");
		String counsel_content = request.getParameter("counsel_content");
		String counsel_name=null;
		if(counselor.equals("������")) {
			counsel_name="an";
		}else if(counselor.equals("�漼��")){
			counsel_name="bang";
		}else if(counselor.equals("õ����")) {
			counsel_name="cheon";
		}
		/* System.out.println(counsel_name); */
		CounselDTO dto = new CounselDTO(counsel_id, counsel_name, counsel_title, counsel_content);
		CounselDAO dao = new CounselDAO();
		int cnt = dao.insertCounsel(dto);

		if (cnt > 0) {
			System.out.println("����");
		} else {
			System.out.println("����");
		}

		moveURL = "index.jsp";
		return moveURL;
	}

}
