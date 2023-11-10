<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.ZipcodeTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>

<%
	ArrayList<ZipcodeTO> datas = (ArrayList)request.getAttribute( "addressDatas" );

	StringBuilder sbXml = new StringBuilder();
	
	JSONArray jsonArray = new JSONArray();
	for( ZipcodeTO to : datas ) {
		String zipcode = to.getZipcode();
		String sido = to.getSido();
		String gugun = to.getGugun();
		String dong = to.getDong();
		String ri = to.getRi();
		String bunji = to.getBunji();
		
		JSONObject obj = new JSONObject();
		obj.put( "zipcode", zipcode );
		obj.put( "sido", sido );
		obj.put( "gugun", gugun );
		obj.put( "dong", dong );
		obj.put( "ri", ri );
		obj.put( "bunji", bunji );

		jsonArray.add( obj );
	}
	
	out.println( jsonArray );
%>
