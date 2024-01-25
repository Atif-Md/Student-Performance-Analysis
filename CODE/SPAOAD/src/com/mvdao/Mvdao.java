package com.mvdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.CompanyBean;
import com.bean.MarksBean;
import com.bean.MessageBean;
import com.bean.PaperBean;
import com.bean.RequestBean;
import com.bean.RequirementBean;
import com.bean.StudentRegBean;


public class Mvdao {
	public static Connection connect()
	{
		Connection con = null;
		try{  
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mjdm02","root","root");
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}

	public static int stuReg(StudentRegBean rb, String sql, String sql1) {
		// TODO Auto-generated method stub
		Connection con = connect();
		int i=0;
		try{
			PreparedStatement ps =  con.prepareStatement(sql);
			PreparedStatement ps1 =  con.prepareStatement(sql1);
			ps.setString(1, rb.getRollNo());
			ps.setString(2, rb.getName());
			ps.setString(3, rb.getSur());
			ps.setString(4, rb.getFname());
			ps.setString(5, rb.getMname());
			ps.setString(6, rb.getDob());
			ps.setString(7, rb.getEmail());
			ps.setString(8, rb.getMob());
			ps.setString(9, rb.getNat());
			ps.setString(10, rb.getReg());
			ps.setString(11, rb.getGen());
			ps.setString(12, rb.getBg());
			ps.setString(13, rb.getBranch());
			ps.setString(14, rb.getAdd());
			ps.setString(15, rb.getFocc());
			ps.setString(16, rb.getMocc());
			ps.setInt(17, rb.getFin());
			ps.setInt(18, rb.getMin());
			ps.setString(19, rb.getPhone());
			i = ps.executeUpdate();
			ps1.setString(1, rb.getRollNo());
			i = ps1.executeUpdate();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return i;
	}

	public static int stuEdu(StudentRegBean rb, String sql2, String sql3, String sql4) {
		// TODO Auto-generated method stub
		Connection con = connect();
		int i=0;
		try{
			PreparedStatement ps =  con.prepareStatement(sql2);
			PreparedStatement ps1 =  con.prepareStatement(sql3);
			PreparedStatement ps2 =  con.prepareStatement(sql4);
			ps.setString(1, rb.getRollNo());
			ps.setInt(2, rb.getErank());
			ps.setString(3, rb.getIcol());
			ps.setInt(4, rb.getItot());
			ps.setDouble(5, rb.getIper());
			ps.setString(6, rb.getIarea());
			ps.setString(7, rb.getSsc());
			ps.setInt(8, rb.getStot());
			ps.setDouble(9, rb.getSper());
			ps.setString(10, rb.getSarea());
			i = ps.executeUpdate();
			ps1.setString(1, rb.getRollNo());
			i = ps1.executeUpdate();
			ps2.setString(1, rb.getRollNo());
			i = ps2.executeUpdate();
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return i;
	}

	public static int attendanceUpdate(String sql) {
		// TODO Auto-generated method stub
		int i=0;
		Connection con = connect();
		try{
			Statement ps =  con.createStatement();
			i = ps.executeUpdate(sql);
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return i;
	}
	public static ResultSet stuDet(String sql) {
		ResultSet rs = null;
		Connection con = connect();
		try{
			Statement ps =  con.createStatement();
			rs = ps.executeQuery(sql);
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return rs;
		
	}

	public static int setPaper(String sql, PaperBean pb) {
		// TODO Auto-generated method stub
		Connection con = connect();
		int i=0;
		try{
			PreparedStatement ps =  con.prepareStatement(sql);
			ps.setString(1, pb.getRlno());
			ps.setString(2, pb.getBranch());
			ps.setString(3, pb.getTitle());
			ps.setString(4, pb.getObj());
			ps.setString(5, pb.getAlg());
			ps.setString(6, pb.getDs());
			ps.setString(7, pb.getGp());
			i = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return i;
	}

	public static int resultUpdate(String sql) {
		// TODO Auto-generated method stub
		int i=0;
		Connection con = connect();
		try{
			Statement ps =  con.createStatement();
			i = ps.executeUpdate(sql);
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return i;
	}

	public static int comReg(CompanyBean cb, String sql) {
		// TODO Auto-generated method stub
		int i = 0;
		Connection con = connect();
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cb.getCompanyname());
			ps.setString(2, cb.getMailid());
			ps.setString(3, cb.getPassword());
			ps.setString(4, cb.getNumber());
			ps.setString(5, cb.getAddress());
			i = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
		public static boolean checkUserLogin(String sql)  {
			Connection con = null;
			int count = 0;
			try {
				con = Mvdao.connect();
				/* String sql="select * from reg;"; */
				Statement s = con.createStatement();
				ResultSet r = s.executeQuery(sql);
				while (r.next()) {

					count++;
					// break;

				}
			} catch (SQLException e) {
				// TODO: handle exception
			} finally {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (count > 0) {
				return true;
			} else {
				return false;
			}

		}
			public static int update(String sql) {
				// TODO Auto-generated method stub
				int i = 0;
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					i = ps.executeUpdate();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return i;
			}
		
			public static boolean updateUser(String desc) throws SQLException {
				String sql = "update req set status2='Approved' where description='"+desc+"'";
				Connection con = Mvdao.connect();
				Statement st = con.createStatement();
				boolean f = st.execute(sql);
				System.out.println("boolean is" + f);
				return f;
			}
			public static List getAllusers() throws SQLException {
				List al = new ArrayList();
				String sql = "select * from req";
				Connection con = Mvdao.connect();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);
				while (rs.next()) {

					if (rs.getString(2).equalsIgnoreCase("true")) {
						al.add(rs.getString(1));
					} else {

					}

				}

				return al;
			}
			public static ResultSet getAss() throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from company");
				return rs;
			}
			public static List getAllReq() throws SQLException {
				List al = new ArrayList();
				String sql = "select * from req";
				Connection con = Mvdao.connect();
				/*Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(sql);*/
				/*while (rs.next()) {

					if (rs.getString(2).equalsIgnoreCase("true")) {
						al.add(rs.getString(1));
					} else {

					}

				}*/

				return al;
			}
			public static ResultSet getUserInfo() throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from company");
				return rs;
			}
			public static ResultSet getTPI(String company) throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from req where companyname='"+company+"'");
				return rs;
			}
			public static ResultSet getAss1() throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from req");
				return rs;
			}
			public static int sendReq(String sql, RequestBean cb) {
				// TODO Auto-generated method stub
				int i = 0;
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1, cb.getUid());
					ps.setString(2, cb.getDesc());
					ps.setString(3, "pending");
					i = ps.executeUpdate();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return i;
			}
			public static boolean updateUser1(String desc) throws SQLException {
				String sql = "update req set status2='Rejected' where description='"+desc+"'";
				Connection con = Mvdao.connect();
				Statement st = con.createStatement();
				boolean f = st.execute(sql);
				System.out.println("boolean is" + f);
				return f;
			}
			public static ResultSet getStudentInfo() throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from studentreg");
				return rs;
			}

			public static int update1(String sql) {
					// TODO Auto-generated method stub
					int i = 0;
					Connection con = connect();
					try {
						PreparedStatement ps = con.prepareStatement(sql);
						i = ps.executeUpdate();
					}catch(SQLException e){
						e.printStackTrace();
					}
					return i;
				}

			public static boolean login(String sql) {
					// TODO Auto-generated method stub
					boolean b = false;
					Connection con = connect();
					try {
						PreparedStatement ps = con.prepareStatement(sql);
						ResultSet rs = ps.executeQuery();
						b = rs.next();
						rs.close();
						ps.close();
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return b;
				}
			public static List<String> getCId(String sql) {
				// TODO Auto-generated method stub
				List<String> lt = new ArrayList<String>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getString(1));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}
			public static int msgReg(MessageBean mb, String sql1) {
				// TODO Auto-generated method stub
				int i = 0;
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql1);
					ps.setString(1, mb.getUi());
					ps.setString(2, mb.getUid());
					ps.setString(3, mb.getBody());
					i = ps.executeUpdate();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return i;
			}
			public static ResultSet getData(String sql) throws SQLException {
				// TODO Auto-generated method stub
				Connection con = connect();
				ResultSet rs = null;
				PreparedStatement ps = con.prepareStatement(sql);
				rs = ps.executeQuery();
				return rs;
			}

			public static boolean getData2(String sql) {
					// TODO Auto-generated method stub
					boolean b = false;
					Connection con = connect();
					try {
						PreparedStatement ps = con.prepareStatement(sql);
						ResultSet rs = ps.executeQuery();
						b = rs.next();
						rs.close();
						ps.close();
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					return b;
				}
			public static List<String> getMessage(String sql) {
				// TODO Auto-generated method stub
				List<String> lt = new ArrayList<String>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getString(1));
						lt.add(rs.getString(2));
						lt.add(rs.getString(3));
						//lt.add(rs.getString(4));
						//lt.add(rs.getString(5));
					//	lt.add(rs.getString(6));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}
			public static ResultSet getAllMessage() throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from message");
				return rs;
			}

			public static int setMarks(MarksBean mb, String sql) {
				int i = 0;
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setString(1, mb.getRollNo());
					ps.setString(2, mb.getBranch());
					ps.setInt(3, mb.getFirstyear());
					ps.setInt(4, mb.getSecondyear());
					ps.setInt(5, mb.getThirdyear());
					ps.setInt(6, mb.getFourthyear());
					ps.setDouble(7,mb.getPercentage());
					i = ps.executeUpdate();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return i;
			}

			public static List<Integer> getMarks(String sql) {
				// TODO Auto-generated method stub
				List<Integer> lt = new ArrayList<Integer>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getInt(5));
						lt.add(rs.getInt(6));
						lt.add(rs.getInt(7));
						lt.add(rs.getInt(8));
						lt.add(rs.getInt(9));
						lt.add(rs.getInt(10));
						lt.add(rs.getInt(11));
						lt.add(rs.getInt(12));
						lt.add(rs.getInt(13));
						lt.add(rs.getInt(14));
						lt.add(rs.getInt(15));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}

			public static List<Integer> getMarks2(String sql) {
				// TODO Auto-generated method stub
				List<Integer> lt = new ArrayList<Integer>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getInt(5));
						lt.add(rs.getInt(6));
						lt.add(rs.getInt(7));
						lt.add(rs.getInt(8));
						lt.add(rs.getInt(9));
						lt.add(rs.getInt(10));
						lt.add(rs.getInt(11));
						lt.add(rs.getInt(12));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}

			public static List<Integer> getMarks4(String sql) {
				// TODO Auto-generated method stub
				List<Integer> lt = new ArrayList<Integer>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getInt(5));
						lt.add(rs.getInt(6));
						lt.add(rs.getInt(7));
						lt.add(rs.getInt(8));
						lt.add(rs.getInt(9));
						lt.add(rs.getInt(10));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}

			public static int requirementCom(RequirementBean rrb, String sql) {
				// TODO Auto-generated method stub
				Connection con = connect();
				int i=0;
				try{
					PreparedStatement ps =  con.prepareStatement(sql);
					ps.setString(1, rrb.getUid());
					ps.setString(2, rrb.getDomain());
					ps.setString(3, rrb.getSkills());
					ps.setString(4, rrb.getCriteria());
					ps.setString(5, rrb.getQualification());
					i = ps.executeUpdate();
				}catch(SQLException e)
				{
					e.printStackTrace();
				}
				return i;
			}
			public static ResultSet getUp() throws SQLException
			{
				Connection con=connect();
				java.sql.Statement s=con.createStatement();
				ResultSet rs=(ResultSet) s.executeQuery("select * from requirement");
				return rs;
			}

			public static List<String> getSortList(String sql) {
				// TODO Auto-generated method stub
				List<String> lt = new ArrayList<String>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getString(1));
						lt.add(rs.getString(2));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}
			
			public static List<String> getSortStu(String sql) {
				// TODO Auto-generated method stub
				List<String> lt = new ArrayList<String>();
				Connection con = connect();
				try {
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
						lt.add(rs.getString(1));
						lt.add(rs.getString(2));
						lt.add(rs.getString(3));
					}
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return lt;
			}
		}
