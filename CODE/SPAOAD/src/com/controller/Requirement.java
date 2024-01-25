package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.RequirementBean;
import com.mvdao.Mvdao;

/**
 * Servlet implementation class Requirement
 */
@WebServlet("/Requirement")
public class Requirement extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Requirement() {
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
		PrintWriter o=response.getWriter();
		HttpSession session = request.getSession(false);
		String uid=(String)session.getAttribute("cemailid");
		String domain=request.getParameter("domain");
        String skills=request.getParameter("skills");
        String criteria=request.getParameter("Criteria");
   //     int criteria = Integer.parseInt(request.getParameter("Criteria"));
        String qualification=request.getParameter("Qualification");
        
        RequirementBean rrb=new RequirementBean();
        rrb.setUid(uid);
        rrb.setDomain(domain);
        rrb.setSkills(skills);
        rrb.setCriteria(criteria);
        rrb.setQualification(qualification);
        String sql="insert into requirement values(0,?,?,?,?,?)";
        int i=Mvdao.requirementCom(rrb,sql);
        if(i>0){
        	o.println("<script type=\"text/javascript\">");
			o.println("alert('Requirement Sent Successfully...');");
			o.println("window.location='Requirement.jsp';</script>");
        }else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please enter valid Details/Already Exist');");
			o.println("window.location='Requirement.jsp';</script>");
		}
        
	}

}
