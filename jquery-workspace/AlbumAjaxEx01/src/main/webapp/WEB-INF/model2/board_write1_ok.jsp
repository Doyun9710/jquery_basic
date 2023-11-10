<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%@ page import="model1.BoardTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>
<%
	int flag = (int)request.getAttribute( "flag" );

	JSONArray jsonArray = new JSONArray();

	JSONObject obj = new JSONObject();
	obj.put( "flag", flag );
	jsonArray.add( obj );

	out.println( jsonArray );
%>