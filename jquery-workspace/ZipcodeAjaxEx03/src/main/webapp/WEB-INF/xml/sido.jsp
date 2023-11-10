<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.ZipcodeTO" %>

<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<ZipcodeTO> lists = (ArrayList)request.getAttribute( "lists" );

	StringBuilder sbXml = new StringBuilder();
	for( ZipcodeTO to : lists ) {
		String sido = to.getSido();
		
		sbXml.append( "<address>" );
		sbXml.append( "<sido>" + sido + "</sido>" );
		sbXml.append( "</address>" );
	}
%>
<addresses>
<%=sbXml %>
</addresses>