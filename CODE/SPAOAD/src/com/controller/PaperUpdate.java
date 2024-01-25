package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.PaperBean;
import com.mvdao.Mvdao;

/**
 * Servlet implementation class PaperUpdate
 */
@WebServlet("/PaperUpdate")
public class PaperUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaperUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String roll = request.getParameter("rlno");
		String branch = request.getParameter("brn");
		String title = request.getParameter("title");
		String obj= request.getParameter("obj");
		String alg = request.getParameter("alg");
		String ds = request.getParameter("ds");
		String gp = request.getParameter("gp");
		PaperBean pb = new PaperBean();
		pb.setRlno(roll);
		pb.setBranch(branch);
		pb.setTitle(title);
		pb.setObj(obj);
		pb.setAlg(alg);
		pb.setDs(ds);
		pb.setGp(gp);
		String sql = "insert into paper values(?,?,?,?,?,?,?)";
		int i = Mvdao.setPaper(sql, pb);
		if(i == 1)
		{
			response.sendRedirect("PaperUpdate.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
