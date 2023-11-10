package model2;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model1.BoardDAO;
import model1.BoardTO;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ModifyOkAction implements BoardAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println( "ModifyOkAction 호출" );

		String seq = request.getParameter( "seq" );
		String subject = request.getParameter( "subject" );
		String writer = request.getParameter( "writer" );
		String mail = request.getParameter( "mail" );
		String password = request.getParameter( "password" );
		String content = request.getParameter( "content" );
		//String wip = request.getParameter( "wip" );
		String wip = "000.000.000.000";
		
		BoardTO to = new BoardTO();
		to.setSeq( seq );
		to.setSubject( subject );
		to.setWriter( writer );
		to.setMail( mail );
		to.setPassword( password );
		to.setContent( content );
		to.setWip( wip );

		BoardDAO dao = new BoardDAO();
		int flag = dao.boardModifyOk( to );
		
		request.setAttribute( "flag", flag );
	}

}
