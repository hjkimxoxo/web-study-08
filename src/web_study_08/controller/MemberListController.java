package web_study_08.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web_study_08.dto.Member;
import web_study_08.service.MemberService;

@WebServlet("/MemberListController")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberService service;
	
	
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		service = new MemberService();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}


	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		List<Member> mList = service.showMemberList();
		//System.out.println(mList);
		request.setAttribute("mList", mList);
		request.getRequestDispatcher("member.jsp").forward(request, response);
		
	}

}
