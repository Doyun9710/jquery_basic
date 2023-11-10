<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%@ page import="model1.BoardTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>
<%
	ArrayList<BoardTO> datas = (ArrayList)request.getAttribute( "datas" );

	JSONArray jsonArray = new JSONArray();
	for( BoardTO to : datas ) {
		String seq = to.getSeq();
		String subject = to.getSubject();
		String writer = to.getWriter();
		String mail = to.getMail();
		String password = to.getPassword();
		String content = to.getContent();
		
		String hit = to.getHit();
		String wip = to.getWip();
		String wdate = to.getWdate();

		int wgap = to.getWgap();
		
		JSONObject obj = new JSONObject();
		obj.put( "seq", seq );
		obj.put( "subject", subject );
		obj.put( "writer", writer );
		obj.put( "mail", mail );
		obj.put( "password", password );
		obj.put( "content", content );
		obj.put( "hit", hit );
		obj.put( "wip", wip );
		obj.put( "wdate", wdate );
		obj.put( "wgap", wgap );
		jsonArray.add( obj );
	}
	
	out.println( jsonArray );
%>