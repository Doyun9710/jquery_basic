<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.ZipcodeTO" %>

<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<ZipcodeTO> datas = (ArrayList)request.getAttribute( "sidoDatas" );

	StringBuilder sbXml = new StringBuilder();
	
	//sbXml.append( "<address>" );
	for( ZipcodeTO to : datas ) {
		String sido = to.getSido();
		sbXml.append( "<sido>" + sido + "</sido>" );
	}
	//sbXml.append( "</address>" );
%>
<address>
<%=sbXml %>
</address>