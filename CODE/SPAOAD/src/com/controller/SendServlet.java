package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvdao.Mvdao;

/**
 * Servlet implementation class SendServlet
 */
@WebServlet("/SendServlet")
public class SendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String uid=request.getParameter("cemailid");
		String desc=request.getParameter("description");
//		System.out.println("description issss"+desc1);
	//	String desc=request.getParameter(desc1);
		System.out.println("description next"+desc);
		Connection con=Mvdao.connect();
		try {
			String sql = "select * from req where description='"+desc+"'";
			if(Mvdao.checkUserLogin(sql)) {
				sql = "update req set  status2='pending' where description='"+desc+"'";
				int i = Mvdao.update(sql);
				if(i>0)
				{
					response.sendRedirect("succ.jsp?msg=Request sended successfully&&to=index.jsp");
				}
				else
				{
					response.sendRedirect("succ.jsp?msg=Faild to send request&&to=index.jsp");
				}
			}else {
			PreparedStatement ps=con.prepareStatement("insert into req values(?,?,?)");
			ps.setString(1,uid);
			ps.setString(2, desc);
			ps.setString(3,"pending");
			
		int i=ps.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("succ.jsp?msg=Request sended successfully&&to=index.jsp");
			}
			else
			{
				response.sendRedirect("succ.jsp?msg=Faild to send request&&to=index.jsp");
			}
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	/*HttpSession session = request.getSession(false);
	if(session==null){
		
		System.out.println("null");
	}else{
		System.out.println("ot null");
	}
	String uid = (String)session.getAttribute("emailid");		
	String pid = request.getParameter("description");
	RequestBean cb = new RequestBean();
	cb.setUid(uid);
	cb.setDesc(pid);
	String sql = "insert into req values(?,?,?);";
	int i = Mvdao.sendReq(sql, cb);
	System.out.println(i);
	if(i >0){
		response.sendRedirect("ReqCList.jsp");
	}else{
		System.out.println(i);
	}*/
}
