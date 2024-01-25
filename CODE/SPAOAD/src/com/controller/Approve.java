package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvdao.Mvdao;

/**
 * Servlet implementation class Approve
 */
@WebServlet("/approve")
public class Approve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Approve() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid=request.getParameter("cemailid");
		String desc=request.getParameter("description");
		System.out.println("value from html"+desc);
		try {
			boolean f=Mvdao.updateUser(desc);
			System.out.println("boolean in sevlet"+f);
			if(!f) {
				System.out.println("true");
				response.sendRedirect("succ1.jsp");
			}else {
				System.out.println("failed");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
