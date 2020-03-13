package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDTO;
import com.model.PostDAO;
import com.model.PostDTO;

import front.ICommand;

public class ReadPostCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		int post_cd =  Integer.parseInt(request.getParameter("num"));
		
//		System.out.println(post_cd);
		
		PostDAO dao = new PostDAO();
		PostDTO dto = new PostDTO(post_cd);
		PostDTO p_info = dao.selectOne(post_cd);
		
//		ArrayList<ChatDTO> list = dao.select();
//		Gson gson = new Gson();
//		String value = gson.toJson(list);
//		response.getWriter().print(value);
		if (p_info != null) {
			System.out.println(p_info.getPost_cd());
			System.out.println(p_info.getPost_title());
			System.out.println(p_info.getPost_content());
			System.out.println(p_info.getPost_dt());
			System.out.println(p_info.getPost_id());
			HttpSession session = request.getSession();
			session.setAttribute("p_info", p_info);
		}else {
			System.out.println("½ÇÆÐ");
		}
		moveURL = "community.jsp";
		return moveURL;
	}

}
