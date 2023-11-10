package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.ZipcodeDAO;
import model1.ZipcodeTO;

public class AddressAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println( "AddressAction 호출" );
		
		String strSido = request.getParameter( "sido" );
		String strGugun = request.getParameter( "gugun" );
		String strDong = request.getParameter( "dong" );
		System.out.println( "AddressAction " + strSido + " & " + strGugun + " & " + strDong );

		ZipcodeDAO dao = new ZipcodeDAO();
		ArrayList<ZipcodeTO> datas = dao.searchAddress( strSido, strGugun, strDong );
		
		request.setAttribute( "addressDatas", datas );
	}
}











