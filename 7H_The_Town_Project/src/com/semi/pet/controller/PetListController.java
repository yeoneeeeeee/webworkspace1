package com.semi.pet.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.pet.model.service.PetService;
import com.semi.pet.model.vo.Pet;
import com.semi.pet.model.vo.PetInpo;

/**
 * Servlet implementation class PetController
 */
@WebServlet("/list.p")
public class PetListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PetListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String petNo = null;
		String petName = null;
		int petAge = 0;
		String petGender = null;
		
		PetInpo pi = new PetInpo(petNo, petName, petAge, petGender);
		
		request.setAttribute("pi", pi);
		
		ArrayList<Pet> list = new PetService().selectAllPet(pi);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("views/7H_The_Town/getThePet/PetList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
