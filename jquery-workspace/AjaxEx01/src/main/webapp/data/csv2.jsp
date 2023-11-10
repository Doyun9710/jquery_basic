<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%

	// DB to CSV File
	request.setCharacterEncoding( "utf-8" );

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuilder sbHtml = new StringBuilder();
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup( "java:comp/env" );
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb2" );
		
		conn = dataSource.getConnection();
		
		String sql = "select seq, name, publisher, author, price from books";
		pstmt = conn.prepareStatement( sql );
		
		rs = pstmt.executeQuery();
		/*
		sbHtml.append( "<table width='600' border='1'>" );
		while( rs.next() ) {
			sbHtml.append( "<tr>" );
			sbHtml.append( "    <td>" + rs.getString( "seq" ) + "</td>" );
			sbHtml.append( "    <td>" + rs.getString( "name" ) + "</td>" );
			sbHtml.append( "    <td>" + rs.getString( "publisher" ) + "</td>" );
			sbHtml.append( "    <td>" + rs.getString( "author" ) + "</td>" );
			sbHtml.append( "    <td>" + rs.getString( "price" ) + "</td>" );
			sbHtml.append( "</tr>");
		}
		sbHtml.append( "</table>" );
		*/
		while( rs.next() ) {
			sbHtml.append( rs.getInt( "seq" ) + "\t" );
			sbHtml.append( rs.getString( "name" ) + "\t" );
			sbHtml.append( rs.getString( "publisher" ) + "\t" );
			sbHtml.append( rs.getString( "author" ) + "\t" );
			sbHtml.append( rs.getInt( "price" ) + "<br />" );
		}
	} catch( NamingException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} catch(SQLException e) {
		System.out.println( "[에러] + " + e.getMessage() );
	} finally {
		if( rs != null ) rs.close();
		if( pstmt != null ) pstmt.close();
		if( conn != null ) conn.close();
	}
	
%>

<%= sbHtml %>