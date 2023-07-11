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
 * Servlet implementation class DeliveryUpdateController
 */
@WebServlet("/DeliveryUpdateController")
public class DeliveryUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int delNo = Integer.parseInt(request.getParameter(""));
		
		Delivery d = new DeliveryService().selectDelivery(delNo); // 실제 db에서 공지사항 정보를 조회후 담아주기
		
		request.setAttribute("d", d);
		request.getRequestDispatcher("views/delivery/.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int delNo = Integer.parseInt(request.getParameter(""));
		String status = request.getParameter("status");
		String curSpot = request.getParameter("curSpot");
		
		Delivery d = new Delivery();
		d.setDelNo(delNo);
		d.setDelStatus(status);
		d.setCurSpot(curSpot);
		
		int result = new DeliveryService().updateDelivery(d);
		
		if(result > 0) { 
			request.getSession().setAttribute("alertMsg", "성공적으로 배송정보가 수정되었습니다.");
			response.sendRedirect( request.getContextPath()+"/"+delNo);
		}else {
		
			request.setAttribute("errorMsg", "배송정보 수정 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		}

	}

}
