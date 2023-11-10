package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.DeptDAO;
import model1.DeptTO;

public class DeptListWriteOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "DeptListWriteOkAction 호출" );

		String deptno = request.getParameter( "deptno" );
		String dname = request.getParameter( "dname" );
		String loc = request.getParameter( "loc" );
		System.out.println( "DeptListWriteOkAction " + deptno + " & " + dname + " & " + loc );

		DeptDAO dao = new DeptDAO();
		int flag = dao.deptWriteOk(deptno, dname, loc);
		if( flag == 1 ) System.out.println( "DAO Write 오류" );
		
		ArrayList<DeptTO> datas = dao.deptList();
		
		request.setAttribute( "flag", flag );
	}
}











