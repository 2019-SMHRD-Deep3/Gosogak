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
		int post_cd = Integer.parseInt(request.getParameter("num"));

//		System.out.println(post_cd);
		
		PostDAO dao = new PostDAO();
		PostDTO dto = new PostDTO(post_cd);
		PostDTO click_p_info = dao.selectOne(post_cd);
		String click_p_info_id = click_p_info.getPost_id();
		String click_p_info_cd = Integer.toString(click_p_info.getPost_cd());
		String click_p_info_title = click_p_info.getPost_title();
		String click_p_info_content = click_p_info.getPost_content();
		String click_p_info_dt = click_p_info.getPost_dt();

//		ArrayList<ChatDTO> list = dao.select();
//		Gson gson = new Gson();
//		String value = gson.toJson(list);
//		response.getWriter().print(value);
		HttpSession session = request.getSession();
		session.removeAttribute("click_p_info_id");
		session.setAttribute("click_p_info_id", click_p_info_id);
//		session.setAttribute("click_p_info_id", click_p_info_id);
//		if(session.getAttribute("click_p_info_id") != null) {
//				session.removeAttribute("click_p_info_id");
//				System.out.println(click_p_info_id);
//		}
//		session.setAttribute("click_p_info_cd", click_p_info_cd);
//		session.setAttribute("click_p_info_title", click_p_info_title);
//		session.setAttribute("click_p_info_content", click_p_info_content);
//		session.setAttribute("click_p_info_dt", click_p_info_dt);
//		session.setAttribute("click_p_info", click_p_info);

//		if (click_p_info != null) {
//		session.removeAttribute("click_p_info");
//			HttpSession session = request.getSession();
//			session.setAttribute("click_p_info", click_p_info);
//			session.setAttribute("click_p_info_cd", click_p_info_cd);
//			session.setAttribute("click_p_info_title", click_p_info_title);
//			session.setAttribute("click_p_info_content", click_p_info_content);
//			session.setAttribute("click_p_info_dt", click_p_info_dt);
			System.out.println(click_p_info_id);
//			System.out.println(click_p_info2.getPost_title());
//			System.out.println(click_p_info2.getPost_content());
//			System.out.println(click_p_info2.getPost_dt());
//			System.out.println(click_p_info2.getPost_id());
//		} else {
//			System.out.println("½ÇÆÐ");
//		}
		moveURL = "community.jsp";
		return moveURL;
	}

}
