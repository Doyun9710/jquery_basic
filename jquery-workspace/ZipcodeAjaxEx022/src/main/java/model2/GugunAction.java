package model2;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.ZipcodeDAO;
import model1.ZipcodeTO;

public class GugunAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		System.out.println( "GugunAction 호출" );
		
		String strSido = request.getParameter( "sido" );
		System.out.println( "GugunAction " + strSido );

		ZipcodeDAO dao = new ZipcodeDAO();
		ArrayList<ZipcodeTO> datas = dao.searchGugun( strSido );
		
		request.setAttribute( "gugunDatas", datas );
	}
}











