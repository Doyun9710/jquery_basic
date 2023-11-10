<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%
	int flag = (Integer)request.getAttribute( "flag" );

	StringBuilder sbXml = new StringBuilder();
	sbXml.append( "<flag>" + flag + "</flag>" );
%>
<depts>
<%=sbXml %>
</depts>