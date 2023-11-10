<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="model1.EmpTO" %>

<%@ page import="java.util.ArrayList" %>

<%
	ArrayList<EmpTO> datas = (ArrayList)request.getAttribute( "datas" );

	StringBuilder sbXml = new StringBuilder();
	for( EmpTO to : datas ) {
		String empno = to.getEmpno();
		String ename = to.getEname();
		String job = to.getJob();
		String mgr = to.getMgr();
		String hiredate = to.getHiredate();
		String sal = to.getSal();
		String comm = to.getComm();
		String deptno = to.getDeptno();
		
		sbXml.append( "<emp>" );
		sbXml.append( "<empno>" + empno + "</empno>" );
		sbXml.append( "<ename>" + ename + "</ename>" );
		sbXml.append( "<job>" + job + "</job>" );
		sbXml.append( "<mgr>" + mgr + "</mgr>" );
		sbXml.append( "<hiredate>" + hiredate + "</hiredate>" );
		sbXml.append( "<sal>" + sal + "</sal>" );
		sbXml.append( "<comm>" + comm + "</comm>" );
		sbXml.append( "<deptno>" + deptno + "</deptno>" );
		sbXml.append( "</emp>" );
	}
%>
<emps>
<%=sbXml %>
</emps>