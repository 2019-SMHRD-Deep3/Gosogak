package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class JoinCon implements ICommand{

   @Override
   public String execute(HttpServletRequest request, HttpServletResponse response) {
      // TODO Auto-generated method stub
      String moveURL = null;
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      String nm = request.getParameter("nm");
      String email = request.getParameter("email");
      
      MemberDTO dto = new MemberDTO(id, pw, nm, email);
      MemberDAO dao = MemberDAO.getDAO();
      dao.join(dto);
      
      moveURL = "login.jsp";
      
      return moveURL;
   }

}