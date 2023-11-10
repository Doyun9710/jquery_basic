package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.DeptDAO;
import model1.DeptTO;

public class DeptListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "DeptListAction 호출" );

		DeptDAO dao = new DeptDAO();
		ArrayList<DeptTO> datas = dao.deptList();
		
		request.setAttribute( "datas", datas );
	}
}











