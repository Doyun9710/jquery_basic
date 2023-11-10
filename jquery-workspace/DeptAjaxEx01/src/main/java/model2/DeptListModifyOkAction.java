package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.DeptDAO;
import model1.DeptTO;

public class DeptListModifyOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "DeptListModifyOkAction 호출" );

		String deptno = request.getParameter( "deptno" );
		String dname = request.getParameter( "dname" );
		String loc = request.getParameter( "loc" );
		System.out.println( "DeptListModifyOkAction " + deptno );

		DeptDAO dao = new DeptDAO();
		int flag = dao.deptModifyOk(deptno, dname, loc);
		if( flag == 1 ) System.out.println( "DAO Modify 오류" );
		
		ArrayList<DeptTO> datas = dao.deptList();
		
		request.setAttribute( "flag", flag );
	}
}











