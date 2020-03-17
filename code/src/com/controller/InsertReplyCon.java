package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.PostDAO;
import com.model.PostDTO;
import com.model.ReplyDAO;
import com.model.ReplyDTO;

import front.ICommand;

public class InsertReplyCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		int post_cd = Integer.parseInt(request.getParameter("num"));
		String reply_content = request.getParameter("reple_content");
		System.out.println(post_cd);
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		String reply_id = info.getId();
		System.out.println(reply_id);
		ReplyDTO dto = new ReplyDTO(post_cd, reply_id, reply_content);
		ReplyDAO dao = new ReplyDAO();
		dao.insertReply(dto);
		
		moveURL = "ReadPostCon";
		return moveURL;
		
	}

}
