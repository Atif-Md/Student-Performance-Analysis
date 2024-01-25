package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.MessageBean;
import com.mvdao.Mvdao;

/**
 * Servlet implementation class Compose1
 */
@WebServlet("/Compose1")
public class Compose1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Compose1() {
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
		String sql = "select * from req where companyname='"+ui+"' and status2='Approved'";
		boolean b = Mvdao.getData2(sql);
		if(b == true){
		 String sql1="insert into message values(?,?,?)";
	    int i = Mvdao.msgReg(mb,sql1);
	    if (i>0) {
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Sent Successfully');");
			o.println("window.location='Compose1.jsp';</script>");
			System.out.println("HELLO");
		} else {
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please Send after Sometime');");
			System.out.println("HELLO2");
			o.println("window.location='Compose1.jsp';</script>");
		}
	}
          else{
	        o.println("<script type=\"text/javascript\">");
	        o.println("alert('Company has not Approved your request...');");
	        o.println("window.location='Compose.jsp';</script>");
}
	    }
	}

