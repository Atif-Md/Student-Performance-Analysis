package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CompanyBean;
import com.mvdao.Mvdao;

/**
 * Servlet implementation class CompanyReg
 */
@WebServlet("/CompanyReg")
public class CompanyReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyReg() {
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
		PrintWriter pw=response.getWriter();
		String name=request.getParameter("companyname");
		String mailid=request.getParameter("cemailid");
		String password=request.getParameter("password");
		String number=request.getParameter("number");
		String address=request.getParameter("address");
		CompanyBean cb=new CompanyBean();
		cb.setCompanyname(name);
		cb.setMailid(mailid);
		cb.setPassword(password);
		cb.setNumber(number);
		cb.setAddress(address);
		String sql="insert into company values(?,?,?,?,?)";
		int i=Mvdao.comReg(cb,sql);
		if(i > 0){
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Company Register Successfully...');");
			pw.println("window.location='companylogin.jsp';</script>");
		}else{
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Please enter valid Details/Already Exist');");
			pw.println("window.location='companyreg.jsp';</script>");
		}
		}

	}

