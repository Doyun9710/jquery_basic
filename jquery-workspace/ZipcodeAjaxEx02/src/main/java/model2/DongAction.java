package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.ZipcodeDAO;
import model1.ZipcodeTO;

public class DongAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println( "DongAction 호출" );
		
		String strSido = request.getParameter( "sido" );
		String strGugun = request.getParameter( "gugun" );
		System.out.println( "DongAction " + strSido + " & " + strGugun );

		ZipcodeDAO dao = new ZipcodeDAO();
		ArrayList<ZipcodeTO> datas = dao.searchDong( strSido, strGugun );
		
		request.setAttribute( "dongDatas", datas );
	}
}











