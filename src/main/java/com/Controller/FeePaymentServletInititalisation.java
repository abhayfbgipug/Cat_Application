package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.RegistrationDAO;

/**
 * Servlet implementation class FeePaymentServletInititalisation
 */
@WebServlet("/redirecting")
public class FeePaymentServletInititalisation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeePaymentServletInititalisation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    	request.setAttribute("feeButton", "payment-btn-change");
	    	
	    	 RegistrationDAO r = new RegistrationDAO();
	            
	            int cid = (Integer)request.getSession().getAttribute("username");
	            
	            int s1 = r.setPaymentFlag(cid);
	    	
	    	RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
	    	
	    	rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	}

}
