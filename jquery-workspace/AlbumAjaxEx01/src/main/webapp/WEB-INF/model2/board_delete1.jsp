<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%@ page import="model1.BoardTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>
<%
	BoardTO to = (BoardTO)request.getAttribute( "to" );

	JSONArray jsonArray = new JSONArray();

	JSONObject obj = new JSONObject();
	//obj.put( "seq", seq );
	obj.put( "subject", to.getSubject() );
	jsonArray.add( obj );
	
	out.println( jsonArray );
%>