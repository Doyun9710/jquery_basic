<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.DeptTO" %>

<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<DeptTO> datas = (ArrayList)request.getAttribute( "datas" );

	StringBuilder sbXml = new StringBuilder();
	for( DeptTO to : datas ) {
		String deptno = to.getDeptno();
		String dname = to.getDname();
		String loc = to.getLoc();
		
		sbXml.append( "<dept>" );
		sbXml.append( "<deptno>" + deptno + "</deptno>" );
		sbXml.append( "<dname>" + dname + "</dname>" );
		sbXml.append( "<loc>" + loc + "</loc>" );
		sbXml.append( "</dept>" );
	}
%>
<depts>
<%=sbXml %>
</depts>