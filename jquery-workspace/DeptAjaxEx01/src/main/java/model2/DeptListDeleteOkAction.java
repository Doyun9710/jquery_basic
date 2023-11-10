package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.DeptDAO;
import model1.DeptTO;

public class DeptListDeleteOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "DeptListDeleteOkAction 호출" );

		String deptno = request.getParameter( "deptno" );
		System.out.println( "DeptListDeleteOkAction " + deptno );

		DeptDAO dao = new DeptDAO();
		int flag = dao.deptDeleteOk(deptno);
		if( flag == 1 ) System.out.println( "DAO Delete 오류" );
		
		ArrayList<DeptTO> datas = dao.deptList();
		
		request.setAttribute( "flag", flag );
	}
}











