<%@ page language="java" contentType="text/json; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%

	// DB to JSON File
	request.setCharacterEncoding( "utf-8" );

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	StringBuilder sbJson = new StringBuilder();
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup( "java:comp/env" );
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb2" );
		
		conn = dataSource.getConnection();
		
		String sql = "select seq, name, publisher, author, price from books";
		pstmt = conn.prepareStatement( sql );
		
		rs = pstmt.executeQuery();

		sbJson.append( "[" + "\n" );
		/*
		while( rs.next() ) {
			sbJson.append( "{" );
			sbJson.append( "\"name\": \"" + rs.getString( "name" ) + "\"," );
			sbJson.append( "\"publisher\": \"" + rs.getString( "publisher" ) + "\"," );
			sbJson.append( "\"author\": \"" + rs.getString( "author" ) + "\"," );
			sbJson.append( "\"price\": \"" + rs.getString( "price" ) + "\"" );
			sbJson.append( "}," );
		}
		*/
		while( rs.next() ) {
			sbJson.append( "{" + "\n" );
			//sbJson.append( "\"seq\":\"" + rs.getInt( "seq" ) + "\",\n" );
			sbJson.append( "\"name\":\"" + rs.getString( "name" ) + "\",\n" );
			sbJson.append( "\"publisher\":\"" + rs.getString( "publisher" ) + "\",\n" );
			sbJson.append( "\"author\":\"" + rs.getString( "author" ) + "\",\n" );
			sbJson.append( "\"price\":\"" + rs.getInt( "price" ) + "\"\n" );
			sbJson.append( "}," + "\n" );
		}
		sbJson.append( "]" );
		
		sbJson.deleteCharAt( sbJson.lastIndexOf( "," ) );
	} catch( NamingException e ) {
		System.out.println( "[에러] " + e.getMessage() );
	} catch(SQLException e) {
		System.out.println( "[에러] + " + e.getMessage() );
	} finally {
		if( rs != null ) rs.close();
		if( pstmt != null ) pstmt.close();
		if( conn != null ) conn.close();
	}
	
	//out.println( sbJson );
%>

<%= sbJson %>