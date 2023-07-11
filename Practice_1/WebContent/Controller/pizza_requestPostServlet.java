package Practice;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class pizza_requestPOST
 */
@WebServlet("/pizza2.jsp")
public class pizza_requestPOST extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pizza_requestPOST() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String menu = request.getParameter("menu"); 
		String toping = request.getParameter("toping");
		int price = Integer.parseInt(request.getParameter("price"));
		
		String[] topings = request.getParameterValues("toping");
		
		esponse.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<style>");
		out.println("#date {color:pink}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h2>주문서</h2>");
		out.println("<span id='menu'>"+menu+"</span>");
		out.println("<span id='toping'>"+toping+"</span>");
		out.println("<span id='price'>"+price+"</span>");
		out.print("주문 상세 내역 :: ");
		
		if(topings == null) {
			out.print("추가하신 토핑이 없습니다.");
		}else {
			
			out.println("<ul>");
			
			for(String toping : topings) {
				out.printf("<li> %s </li>", toping);
			}
			
			out.println("</ul>");
			
		}
		
		
		out.println("</body>");
		
		out.println("</html>");
		
		
		System.out.println(menu);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
