package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.AnalysisDAO;
import com.model.AnalysisDTO;
import com.model.MemberDTO;

import front.ICommand;

public class InsertAnalysisResult implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveUrl = null;
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO)session.getAttribute("info");

		String member_id = info.getId();
		String inputText = request.getParameter("inputText");
		String ins = (request.getParameter("ins").equals("����"))?"1":"0";
		String pub = (request.getParameter("pub").equals("����"))?"1":"0";
		String spe = (request.getParameter("spe").equals("����"))?"1":"0";
		
		String result = "0";
		if(ins.equals("1") & pub.equals("1") & spe.equals("1")) {
			result = "1";
		}
		
		System.out.println("���̵�:"+member_id);
		System.out.println("���:"+inputText);
		System.out.println("��强:"+ins);
		System.out.println("������:"+pub);
		System.out.println("Ư����:"+spe);
		
		AnalysisDAO dao = new AnalysisDAO();
		AnalysisDTO dto = new AnalysisDTO(member_id,inputText,ins,pub,spe,result);
		int cnt = dao.insertResult(dto);
		if(cnt>0)
			System.out.println("���� ����!");
		return moveUrl;
	}

}
