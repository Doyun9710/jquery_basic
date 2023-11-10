<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.ZipcodeTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>

<%
	ArrayList<ZipcodeTO> datas = (ArrayList)request.getAttribute( "sidoDatas" );

	StringBuilder sbXml = new StringBuilder();
	
	JSONArray jsonArray = new JSONArray();
	for( ZipcodeTO to : datas ) {
		String sido = to.getSido();
		
		JSONObject obj = new JSONObject();
		obj.put( "sido", sido );

		jsonArray.add( obj );
	}
	
	out.println( jsonArray );
%>
