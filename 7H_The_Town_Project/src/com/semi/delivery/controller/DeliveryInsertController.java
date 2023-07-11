package com.semi.delivery.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.delivery.model.service.DeliveryService;
import com.semi.delivery.model.vo.Delivery;

/**
 * Servlet implementation class DeliveryInsertController
 */
@WebServlet("/DeliveryInsertController")
public class DeliveryInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryInsertController() {
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

		int delNo = Integer.parseInt(request.getParameter(""));
		delNo = request.getSession().getAttribute("loginUser").getDelNo() + ""; 

		String status = request.getParameter("status");
		String curSpot = request.getParameter("curSpot");

		Delivery d = new Delivery();
		d.setDelStatus(status);
		d.setCurSpot(curSpot);
		d.setDelNo(delNo);

		int result = new DeliveryService().insertDelivery(d);

		if (result > 0) { 
			request.getSession().setAttribute("alertMsg", "성공적으로 배송정보가 추가되었습니다.");
			response.sendRedirect(request.getContextPath() + "/배송사이트");
		} else {
			request.setAttribute("errorMsg", "배송정보 추가 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}
	
	}

}
