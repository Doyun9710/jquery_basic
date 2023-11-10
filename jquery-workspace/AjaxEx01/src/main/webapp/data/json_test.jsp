<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>

<%
	JSONObject obj1 = new JSONObject();
	obj1.put( "name", "제목1" );
	obj1.put( "publisher", "출판사1" );
	
	JSONObject obj2 = new JSONObject();
	obj2.put( "name", "제목2" );
	obj2.put( "publisher", "출판사2" );
	
	JSONArray arr = new JSONArray();
	arr.add( obj1 );
	arr.add( obj2 );

	//out.println( obj1 );
	out.println( arr );
%>