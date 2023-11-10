<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%@ page import="model1.EmpTO" %>

<%@ page import="java.util.ArrayList" %>

<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="org.json.simple.JSONObject"%>
<%
	ArrayList<EmpTO> datas = (ArrayList)request.getAttribute( "datas" );

	JSONArray jsonArray = new JSONArray();
	for( EmpTO to : datas ) {
		String empno = to.getEmpno();
		String ename = to.getEname();
		String job = to.getJob();
		String mgr = to.getMgr();
		String hiredate = to.getHiredate();
		String sal = to.getSal();
		String comm = to.getComm();
		String deptno = to.getDeptno();
		
		JSONObject obj = new JSONObject();
		obj.put( "empno", empno );
		obj.put( "ename", ename );
		obj.put( "job", job );
		obj.put( "mgr", mgr );
		obj.put( "hiredate", hiredate );
		obj.put( "sal", sal );
		obj.put( "comm", comm );
		obj.put( "deptno", deptno );

		jsonArray.add( obj );
	}
	
	out.println( jsonArray );
%>