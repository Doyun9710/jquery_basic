<%@ page language="java" contentType="text/xml; charset=UTF-8"
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
	
	StringBuilder sbXml = new StringBuilder();
	
	try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup( "java:comp/env" );
		DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb2" );
		
		conn = dataSource.getConnection();
		
		String sql = "select seq, name, publisher, author, price from books";
		pstmt = conn.prepareStatement( sql );
		
		rs = pstmt.executeQuery();

		sbXml.append( "<books>" );
		while( rs.next() ) {
			sbXml.append( "<book>" );
			//sbXml.append( "<name>" + rs.getInt( "seq" ) + "</name>" );
			sbXml.append( "<name>" + rs.getString( "name" ) + "</name>" );
			sbXml.append( "<publisher>" + rs.getString( "publisher" ) + "</publisher>" );
			sbXml.append( "<author>" + rs.getString( "author" ) + "</author>" );
			sbXml.append( "<price>" + rs.getInt( "price" ) + "</price>" );
			sbXml.append( "</book>" );
		}
		sbXml.append( "</books>" );
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

<%= sbXml %>