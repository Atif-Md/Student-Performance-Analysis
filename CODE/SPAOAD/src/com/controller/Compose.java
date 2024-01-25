package com.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.bean.MessageBean;
import com.mvdao.Mvdao;


/**
 * Servlet implementation class Compose
 */
@WebServlet("/Compose")
public class Compose extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Compose() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("resource")
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter o = response.getWriter();
		HttpSession session = request.getSession(false);
//		String uid = (String)session.getAttribute("cemailid");
	//	String ui=(String)session.getAttribute("admin");
	//	String uid = (String)session.getAttribute("cemailid");
	//	String sub = request.getParameter("sub");
		String ui = request.getParameter("from");
		String uid = request.getParameter("to");
		String body = request.getParameter("body");
		System.out.println("--from "+ui);
		System.out.println("--to"+uid);
		Connection con = null;
		MessageBean mb=new MessageBean();
		mb.setUi(ui);
		mb.setUid(uid);
		mb.setBody(body);
		System.out.println("bye");
		String sql = "select * from req where companyname='"+uid+"' and status2='Approved'";
		boolean b = Mvdao.getData2(sql);
		if(b == true){
		 String sql1="insert into message values(?,?,?)";
	    int i = Mvdao.msgReg(mb,sql1);
	    if (i>0) {
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Sent Successfully');");
			o.println("window.location='Compose.jsp';</script>");
			System.out.println("HELLO");
		} else {
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please Send after Sometime');");
			System.out.println("HELLO2");
			o.println("window.location='Compose.jsp';</script>");
		}
	}
          else{
	        o.println("<script type=\"text/javascript\">");
	        o.println("alert('Company has not Approved your request...');");
	        o.println("window.location='Compose.jsp';</script>");
}
	    }
}