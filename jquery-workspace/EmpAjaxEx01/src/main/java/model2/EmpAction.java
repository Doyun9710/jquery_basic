package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.EmpDAO;
import model1.EmpTO;

public class EmpAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println( "EmpAction 호출" );
		
		String ename = request.getParameter( "ename" );
		System.out.println( "EmpAction : " + ename );

		EmpDAO dao = new EmpDAO();
		ArrayList<EmpTO> datas = dao.searchEmp(ename);
		
		request.setAttribute( "datas", datas );
	}

}
