package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model2.Action;
import model2.AddressAction;
import model2.DongAction;
import model2.GugunAction;
import model2.SidoAction;

/**
 * Servlet implementation class ZipcodeController
 */
@WebServlet("*.do")
public class ZipcodeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		try {
			request.setCharacterEncoding( "utf-8" );
			
			String path = request.getRequestURI().replaceAll(request.getContextPath(), "" );
			
			String url = "/WEB-INF/model2/error.jsp";
			Action action = null;
			if( path.equals( "/" ) || path.equals( "*" ) || path.equals( "/sido.do" ) ) {
				action = new SidoAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/sido.jsp";
			} else if( path.equals( "/gugun.do" ) ) {
				action = new GugunAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/gugun.jsp";
			} else if( path.equals( "/dong.do" ) ) {
				action = new DongAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/dong.jsp";
			} else if( path.equals( "/address.do" ) ) {
				action = new AddressAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/address.jsp";
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher( url );
			dispatcher.forward(request, response);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}









