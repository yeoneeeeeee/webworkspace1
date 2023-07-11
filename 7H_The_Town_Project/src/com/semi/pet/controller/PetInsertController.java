package com.semi.pet.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.pet.model.service.PetService;
import com.semi.pet.model.vo.Pet;

/**
 * Servlet implementation class PetInsertController
 */
@WebServlet("/PetInsertController")
public class PetInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("views/delivery/.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String petNo = request.getParameter("petNo");
		String petName = request.getParameter("petName");
		String petKind = request.getParameter("petKind");
		int petAge = Integer.parseInt(request.getParameter("petAge"));
		String petGender = request.getParameter("petGender");
		int petPrice =  Integer.parseInt(request.getParameter("petPrice"));
		Date petRescue = request.getParameter("petRescue");
		String status = request.getParameter("status");
		
		Pet p = new Pet(petNo, petName, petKind, petAge, petGender, petPrice, petRescue, status);
		
		int result = new PetService().insertPet(p);

		if (result > 0) { 
			request.getSession().setAttribute("alertMsg", "성공적으로 pet list 정보가 추가되었습니다.");
			response.sendRedirect(request.getContextPath() + "/list.no");
		} else {
			request.setAttribute("errorMsg", "pet list 정보 등록 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	
	}
}


