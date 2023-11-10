<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.ZipcodeTO" %>

<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<ZipcodeTO> datas = (ArrayList)request.getAttribute( "gugunDatas" );

	StringBuilder sbXml = new StringBuilder();
	
	//sbXml.append( "<address>" );
	for( ZipcodeTO to : datas ) {
		String gugun = to.getGugun();
		sbXml.append( "<gugun>" + gugun + "</gugun>" );
	}
	//sbXml.append( "</address>" );
%>
<address>
<%=sbXml %>
</address>