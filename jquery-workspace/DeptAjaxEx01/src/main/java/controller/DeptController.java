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
import model2.DeptListAction;
import model2.DeptListDeleteOkAction;
import model2.DeptListModifyOkAction;
import model2.DeptListWriteOkAction;

/**
 * Servlet implementation class DeptController
 */
@WebServlet("*.do")
public class DeptController extends HttpServlet {
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
			if( path.equals( "/" ) || path.equals( "*" ) || path.equals( "/list.do" ) ) {
				action = new DeptListAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/deptXML.jsp";
			} else if( path.equals( "/write_ok.do" ) ) {
				action = new DeptListWriteOkAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/write_ok.jsp";
			} else if( path.equals( "/modify_ok.do" ) ) {
				action = new DeptListModifyOkAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/modify_ok.jsp";
			} else if( path.equals( "/delete_ok.do" ) ) {
				action = new DeptListDeleteOkAction();
				action.execute(request, response);
				
				url = "/WEB-INF/model2/delete_ok.jsp";
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
