package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvdao.Mvdao;

/**
 * Servlet implementation class StuAttendance
 */
@WebServlet("/StuAttendance")
public class StuAttendance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuAttendance() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rlno = request.getParameter("rlno");
		int year = Integer.parseInt(request.getParameter("year"));
		int sem = Integer.parseInt(request.getParameter("sem"));
		double att = Double.parseDouble(request.getParameter("att"));
		String sql = " ";
		if( year == 1 && sem == 0){
			sql = "update attendance set year1="+att+" where RollNo='"+rlno+"';";
		}else if( year == 2 && sem == 1){
			sql = "update attendance set year21="+att+" where RollNo='"+rlno+"';";
		}else if( year == 2 && sem == 2){
			sql = "update attendance set year22="+att+" where RollNo='"+rlno+"';";
		}else if( year == 3 && sem == 1){
			sql = "update attendance set year31="+att+" where RollNo='"+rlno+"';";
		}else if( year == 3 && sem == 2){
			sql = "update attendance set year32="+att+" where RollNo='"+rlno+"';";
		}else if( year == 4 && sem == 1){
			sql = "update attendance set year41="+att+" where RollNo='"+rlno+"';";
		}else if( year == 4 && sem == 2){
			sql = "update attendance set year42="+att+" where RollNo='"+rlno+"';";
		}
		System.out.println("hii");
		int i = Mvdao.attendanceUpdate(sql);
		if( i == 1){
			System.out.println("bye");
			response.sendRedirect("AttendanceSuccess.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
