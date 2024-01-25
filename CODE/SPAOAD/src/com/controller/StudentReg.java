package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.StudentRegBean;
import com.mvdao.Mvdao;

/**
 * Servlet implementation class StudentReg
 */
@WebServlet("/StudentReg")
public class StudentReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("fn");
		String sur = request.getParameter("ln");
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String mob = request.getParameter("mob");
		String nat = request.getParameter("na");
		String reli = request.getParameter("rel");
		String gen = request.getParameter("gen");
		String bg = request.getParameter("bg");
		String branch = request.getParameter("bnc");
		String fname = request.getParameter("fan");
		String mname = request.getParameter("mon");
		String addr = request.getParameter("ad");
		String phone = request.getParameter("phn");
		String focc = request.getParameter("fo");
		String fin = request.getParameter("fin");
		String mocc = request.getParameter("mo");
		String minc = request.getParameter("min");
		String erank = request.getParameter("emr");
		String rlno = request.getParameter("rlno");
		String inter = request.getParameter("inc");
		String itot = request.getParameter("itot");
		String iper = request.getParameter("iper");
		String iarea = request.getParameter("iarea");
		String ssc = request.getParameter("scn");
		String stot = request.getParameter("stot");
		String sper = request.getParameter("sper");
		String sarea = request.getParameter("sarea");
		StudentRegBean rb = new StudentRegBean();
		rb.setName(name);
		rb.setSur(sur);
		rb.setDob(dob);
		rb.setEmail(email);
		rb.setMob(mob);
		rb.setNat(nat);
		rb.setReg(reli);
		rb.setGen(gen);
		rb.setBg(bg);
		rb.setBranch(branch);
		rb.setFname(fname);
		rb.setMname(mname);
		rb.setAdd(addr);
		rb.setPhone(phone);
		rb.setFocc(focc);
		rb.setFin(Integer.parseInt(fin));
		rb.setMocc(mocc);
		rb.setMin(Integer.parseInt(minc));
		rb.setErank(Integer.parseInt(erank));
		rb.setRollNo(rlno);
		rb.setIcol(inter);
		rb.setItot(Integer.parseInt(itot));
		rb.setIper(Double.parseDouble(iper));
		rb.setIarea(iarea);
		rb.setSsc(ssc);
		rb.setStot(Integer.parseInt(stot));
		rb.setSper(Double.parseDouble(sper));
		rb.setSarea(sarea);
		String sql = "insert into studentreg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		String sql1 = "insert into attendance (RollNo) values(?);";
		int i = Mvdao.stuReg(rb, sql, sql1);
		String sql2 = "insert into education values(?,?,?,?,?,?,?,?,?,?);";
		String sql3 = " ", sql4 = " ";
		if(branch.equalsIgnoreCase("branch")){
			sql3 = "insert into firstin (RollNo) values(?);";
			sql4 = "insert into firstex (RollNo) values(?);";
		}else if(branch.equalsIgnoreCase("branch")){
			 sql3 = "insert into secondin (RollNo) values(?);";
			 sql4 = "insert into secondex (RollNo) values(?);";
		}else if(branch.equalsIgnoreCase("branch")){
			 sql3 = "insert into thirdin (RollNo) values(?);";
			 sql4 = "insert into thirdex (RollNo) values(?);";
		}
		int j = Mvdao.stuEdu(rb, sql2, sql3, sql4);
		if( i == 1 && j == 1){
			response.sendRedirect("Success.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
