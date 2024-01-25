package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.MarksBean;
import com.mvdao.MarksCal;
import com.mvdao.Mvdao;

/**
 * Servlet implementation class Marks
 */
@WebServlet("/Marks")
public class Marks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Marks() {
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
		String rlno=request.getParameter("rlno");
		String branch=request.getParameter("brn");
		int fy = MarksCal.getTotal(rlno, branch, 1);
		int sy = MarksCal.getTotal2(rlno, branch, 2);
		int ty = MarksCal.getTotal2(rlno, branch, 3);
		int foy = MarksCal.getTotal2(rlno, branch, 4);
		foy += MarksCal.getFTotal(rlno, branch);
		System.out.println("Fy:"+fy);
		System.out.println("SY:"+sy);
		System.out.println("TY:"+ty);
		System.out.println("FoY:"+foy);
		float totalmarks=(float)(fy+sy+ty+foy);
		System.out.println("totalmarks"+totalmarks);
		
		double percentage = ((totalmarks/5250)*100);
		percentage =Double.parseDouble(new DecimalFormat("##.#").format(percentage));
		MarksBean mb=new MarksBean();
		mb.setRollNo(rlno);
		mb.setBranch(branch);
		mb.setFirstyear(fy);
		mb.setSecondyear(sy);
		mb.setThirdyear(ty);
		mb.setFourthyear(foy);
		mb.setPercentage(percentage);
		
		String sql="insert into marks values(?,?,?,?,?,?,?)";
		int i=Mvdao.setMarks(mb,sql);
		if(i > 0){
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Marks Updated Successfully...');");
			o.println("window.location='Marks.jsp';</script>");
		}else{
			o.println("<script type=\"text/javascript\">");
			o.println("alert('Please enter valid Details/Already Exist');");
			o.println("window.location='Marks.jsp';</script>");
		}
		}
	}
