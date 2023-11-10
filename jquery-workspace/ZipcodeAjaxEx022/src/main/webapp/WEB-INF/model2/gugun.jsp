<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.ZipcodeTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>

<%
	ArrayList<ZipcodeTO> datas = (ArrayList)request.getAttribute( "gugunDatas" );

	StringBuilder sbXml = new StringBuilder();
	
	JSONArray jsonArray = new JSONArray();
	for( ZipcodeTO to : datas ) {
		String gugun = to.getGugun();
		
		JSONObject obj = new JSONObject();
		obj.put( "gugun", gugun );

		jsonArray.add( obj );
	}
	
	out.println( jsonArray );
%>
