package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvdao.Mvdao;

/**
 * Servlet implementation class StuResult
 */
@WebServlet("/StuResult")
public class StuResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuResult() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String rlno = request.getParameter("rlno");
		String brn = request.getParameter("brn");
		String ex = request.getParameter("ex");
		int year = Integer.parseInt(request.getParameter("year"));
		int sem = Integer.parseInt(request.getParameter("sem"));
		String sql = " ";
		System.out.println("inter and branch"+ex +brn+year+sem);
		
		
		//if starts for cse
		if(ex.equalsIgnoreCase("exter") && brn.equalsIgnoreCase("cse")){
			if( year == 1 && sem == 0){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				int s9 = Integer.parseInt(request.getParameter("s9"));
				int s10 = Integer.parseInt(request.getParameter("s10"));
				int s11 = Integer.parseInt(request.getParameter("s11"));
				sql = "insert into  firstex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
			}else if( year == 4 && sem == 2){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				sql = "insert into  thirdex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
			}else {
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				sql = "insert into  secondex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
			
		}
		
		}//ends for cse
		
		
		//if starts for ece
		if(ex.equalsIgnoreCase("exter") && brn.equalsIgnoreCase("ece")){
			if( year == 1 && sem == 0){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				int s9 = Integer.parseInt(request.getParameter("s9"));
				int s10 = Integer.parseInt(request.getParameter("s10"));
				int s11 = Integer.parseInt(request.getParameter("s11"));
				sql = "insert into  firstex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
			}else if( year == 4 && sem == 2){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				sql = "insert into  thirdex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
			}else {
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				sql = "insert into  secondex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
			
		}
		
		}//ends for ece
		
		//if starts for eee
		if(ex.equalsIgnoreCase("exter") && brn.equalsIgnoreCase("eee")){
			if( year == 1 && sem == 0){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				int s9 = Integer.parseInt(request.getParameter("s9"));
				int s10 = Integer.parseInt(request.getParameter("s10"));
				int s11 = Integer.parseInt(request.getParameter("s11"));
				sql = "insert into  firstex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
			}else if( year == 4 && sem == 2){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				sql = "insert into  thirdex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
			}else {
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				sql = "insert into  secondex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
			
		}
		
		}//ends for eee
		//if starts for cse
				if(ex.equalsIgnoreCase("exter") && brn.equalsIgnoreCase("IT")){
					if( year == 1 && sem == 0){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						int s9 = Integer.parseInt(request.getParameter("s9"));
						int s10 = Integer.parseInt(request.getParameter("s10"));
						int s11 = Integer.parseInt(request.getParameter("s11"));
						sql = "insert into  firstex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
					}else if( year == 4 && sem == 2){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						sql = "insert into  thirdex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
					}else {
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						sql = "insert into  secondex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
					
				}
				
				}//ends for cse
				
		
		//if starts for civil
		if(ex.equalsIgnoreCase("exter") && brn.equalsIgnoreCase("civil")){
			if( year == 1 && sem == 0){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				int s9 = Integer.parseInt(request.getParameter("s9"));
				int s10 = Integer.parseInt(request.getParameter("s10"));
				int s11 = Integer.parseInt(request.getParameter("s11"));
				sql = "insert into  firstex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
			}else if( year == 4 && sem == 2){
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				sql = "insert into  thirdex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
			}else {
				int s1 = Integer.parseInt(request.getParameter("s1"));
				int s2 = Integer.parseInt(request.getParameter("s2"));
				int s3 = Integer.parseInt(request.getParameter("s3"));
				int s4 = Integer.parseInt(request.getParameter("s4"));
				int s5 = Integer.parseInt(request.getParameter("s5"));
				int s6 = Integer.parseInt(request.getParameter("s6"));
				int s7 = Integer.parseInt(request.getParameter("s7"));
				int s8 = Integer.parseInt(request.getParameter("s8"));
				sql = "insert into  secondex values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
			
		}
		
		}//ends for civil
		
		
		
		//internal marks 
		
		
		//if starts for cse
				if(ex.equalsIgnoreCase("inter") && brn.equalsIgnoreCase("cse")){
					if( year == 1 && sem == 0){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						int s9 = Integer.parseInt(request.getParameter("s9"));
						int s10 = Integer.parseInt(request.getParameter("s10"));
						int s11 = Integer.parseInt(request.getParameter("s11"));
						sql = "insert into  firstin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
					}else if( year == 4 && sem == 2){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						sql = "insert into  thirdin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
					}else {
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						sql = "insert into  secondin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
					
				}
				
				}//ends for cse
				
				
				//if starts for ece
				if(ex.equalsIgnoreCase("inter") && brn.equalsIgnoreCase("ece")){
					if( year == 1 && sem == 0){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						int s9 = Integer.parseInt(request.getParameter("s9"));
						int s10 = Integer.parseInt(request.getParameter("s10"));
						int s11 = Integer.parseInt(request.getParameter("s11"));
						sql = "insert into  firstin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
					}else if( year == 4 && sem == 2){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						sql = "insert into  thirdin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
					}else {
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						sql = "insert into  secondin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
					
				}
				
				}//ends for ece
				
				//if starts for eee
				if(ex.equalsIgnoreCase("inter") && brn.equalsIgnoreCase("eee")){
					if( year == 1 && sem == 0){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						int s9 = Integer.parseInt(request.getParameter("s9"));
						int s10 = Integer.parseInt(request.getParameter("s10"));
						int s11 = Integer.parseInt(request.getParameter("s11"));
						sql = "insert into  firstin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
					}else if( year == 4 && sem == 2){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						sql = "insert into  thirdin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
					}else {
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						sql = "insert into  secondin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
					
				}
				
				}//ends for eee
				
				//if starts for IT
				if(ex.equalsIgnoreCase("inter") && brn.equalsIgnoreCase("IT")){
					if( year == 1 && sem == 0){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						int s9 = Integer.parseInt(request.getParameter("s9"));
						int s10 = Integer.parseInt(request.getParameter("s10"));
						int s11 = Integer.parseInt(request.getParameter("s11"));
						sql = "insert into  firstin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
					}else if( year == 4 && sem == 2){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						sql = "insert into  thirdin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
					}else {
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						sql = "insert into  secondin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
					
				}
				
				}//ends for civil
		
				//if starts for cse
				if(ex.equalsIgnoreCase("inter") && brn.equalsIgnoreCase("cse")){
					if( year == 1 && sem == 0){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						int s9 = Integer.parseInt(request.getParameter("s9"));
						int s10 = Integer.parseInt(request.getParameter("s10"));
						int s11 = Integer.parseInt(request.getParameter("s11"));
						sql = "insert into  firstin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+","+s9+","+s10+","+s11+")";
					}else if( year == 4 && sem == 2){
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						sql = "insert into  thirdin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+")";
					}else {
						int s1 = Integer.parseInt(request.getParameter("s1"));
						int s2 = Integer.parseInt(request.getParameter("s2"));
						int s3 = Integer.parseInt(request.getParameter("s3"));
						int s4 = Integer.parseInt(request.getParameter("s4"));
						int s5 = Integer.parseInt(request.getParameter("s5"));
						int s6 = Integer.parseInt(request.getParameter("s6"));
						int s7 = Integer.parseInt(request.getParameter("s7"));
						int s8 = Integer.parseInt(request.getParameter("s8"));
						sql = "insert into  secondin values('"+rlno+"','"+brn+"',"+year+","+sem+","+s1+","+s2+","+s3+","+s4+","+s5+","+s6+","+s7+","+s8+")";
					
				}
				
				}//ends for IT
		
		
		
		System.out.println("Hiii");
		System.out.println("sql"+sql);
		int i = Mvdao.resultUpdate(sql);
		if( i==1){
			System.out.println("Hiiiiiiiiiiii");
			response.sendRedirect("SuccessResult.jsp");
		
	}
		
		
		
		}
		
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
