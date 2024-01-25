package com.mvdao;

import java.util.Iterator;
import java.util.List;

public class MarksCal {

	public static int getTotal(String rlno, String branch, int i) {
		// TODO Auto-generated method stub
		int tot = 0;
		String sql = "select * from firstin where rollno='"+rlno+"' and branch='"+branch+"' and year="+i;
		List<Integer> lt = Mvdao.getMarks(sql);
		Iterator<Integer> itr = lt.iterator();
		while(itr.hasNext()){
			tot += itr.next();
		}
		sql = "select * from firstex where rollno='"+rlno+"' and branch='"+branch+"' and year="+i;
		lt = Mvdao.getMarks(sql);
		itr = lt.iterator();
		while(itr.hasNext()){
			tot += itr.next();
		}
		return tot;
	}

	public static int getTotal2(String rlno, String branch, int i) {
		// TODO Auto-generated method stub
		int tot = 0;
		String sql = "select * from secondin where rollno='"+rlno+"' and branch='"+branch+"' and year="+i;
		List<Integer> lt = Mvdao.getMarks2(sql);
		Iterator<Integer> itr = lt.iterator();
		while(itr.hasNext()){
			tot += itr.next();
		}
		sql = "select * from secondex where rollno='"+rlno+"' and branch='"+branch+"' and year="+i;
		lt = Mvdao.getMarks2(sql);
		itr = lt.iterator();
		while(itr.hasNext()){
			tot += itr.next();
		}
		return tot;
	}

	public static int getFTotal(String rlno, String branch) {
		// TODO Auto-generated method stub
		int tot = 0;
		String sql = "select * from thirdin where rollno='"+rlno+"' and branch='"+branch+"'";
		List<Integer> lt = Mvdao.getMarks4(sql);
		Iterator<Integer> itr = lt.iterator();
		while(itr.hasNext()){
			tot += itr.next();
		}
		sql = "select * from thirdex where rollno='"+rlno+"' and branch='"+branch+"'";
		lt = Mvdao.getMarks4(sql);
		itr = lt.iterator();
		while(itr.hasNext()){
			tot += itr.next();
		}
		return tot;
	}

	
}
