package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemberUpdatePwdController
 */
@WebServlet("/updatePwd.me")
public class MemberUpdatePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberUpdatePwdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String updatePwd = request.getParameter("updatePwd");
	
		Member updateMember = new MemberService().updatePwdMember(userId, userPwd, updatePwd);
		// 실패시 => 마이페이지로 url재요청 ,
		// 메세지내용 : 비밀번호 변경에 실패했습니다.
		HttpSession session = request.getSession();
		if(updateMember == null) {
			session.setAttribute("alertMsg", "비밀번호 변경에 실패했습니다.");
		}else {
			session.setAttribute("alertMsg", "비밀번호가 변경되었습니다.");
			session.setAttribute("loginUser", updateMember);
		}	
		
		response.sendRedirect(request.getContextPath()+"/update.me");
		// 성공시 => 마이페이지로 url재요청 ,
		// 메세지 내용 : 성공적으로 비밀번호가 변경되었습니다.
		// 변경된 회원정보 session에 등록
	
	}
}
