package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvdao.Mvdao;

/**
 * Servlet implementation class Company
 */
@WebServlet("/Company")
public class Company extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		String uid = request.getParameter("cemailid");
		String pwd = request.getParameter("password");
		HttpSession session = request.getSession();
		String sql = "select * from company where mailid='"+uid+"' and password='"+pwd+"'";
		System.out.println("sql is"+sql);
				if(Mvdao.checkUserLogin(sql)) {
					session.setAttribute("cemailid", uid);
					response.sendRedirect("companyhome.jsp");
				}	
			else {
				o.println("<script type=\"text/javascript\">");
				o.println("alert('Please Enter Valid Details.../Register Initially...');");
				o.println("window.location='companylogin.jsp'</script>");
			}
	}
}
