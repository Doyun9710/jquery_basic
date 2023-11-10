package model1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DeptDAO {
	private DataSource dataSource;
	
	public DeptDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup( "java:comp/env" );
			this.dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb1" );
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			System.out.println( "[에러] " + e.getMessage() );
		}
	}
	
	public ArrayList<DeptTO> deptList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<DeptTO> datas = new ArrayList<DeptTO>();
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = "select deptno, dname, loc from dept2 order by deptno asc";
			pstmt = conn.prepareStatement( sql );
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				DeptTO to = new DeptTO();

				to.setDeptno( rs.getString( "deptno" ) );
				to.setDname( rs.getString( "dname" ) );
				to.setLoc( rs.getString( "loc" ) );

				datas.add( to );
			}
		} catch (SQLException e) {
			System.out.println( "[에러] " + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {} 
		}
		
		return datas;
	}
	
	public int deptWriteOk(String deptno, String dname, String loc) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = "insert into dept2 values ( ?, ?, ? )";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, deptno );
			pstmt.setString( 2, dname );
			pstmt.setString( 3, loc );
			
			if( pstmt.executeUpdate() == 1 ) {
				System.out.println( "DeptDAO INSERT 성공" );
				flag = 0;
			}
			
		} catch (SQLException e) {
			System.out.println( "[에러] " + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {} 
		}
		
		return flag;
	}
	
	public int deptModifyOk(String deptno, String dname, String loc) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = "update dept2 set dname=?, loc=? where deptno=?";
			pstmt = conn.prepareStatement( sql );
			//pstmt.setString( 1, deptno );
			pstmt.setString( 1, dname );
			pstmt.setString( 2, loc );
			pstmt.setString( 3, deptno );
			
			int result = pstmt.executeUpdate();
			
			if( result == 1 ) {
				System.out.println( "DeptDAO Modify 성공" );
				flag = 0;
			}
			
		} catch (SQLException e) {
			System.out.println( "[에러] " + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {} 
		}
		
		return flag;
	}
	
	public int deptDeleteOk(String deptno) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int flag = 1;
		
		try {
			conn = this.dataSource.getConnection();
			
			String sql = "delete from dept2 where deptno = ?";
			pstmt = conn.prepareStatement( sql );
			pstmt.setString( 1, deptno );
			
			int result = pstmt.executeUpdate();
			
			if( result == 1 ) {
				System.out.println( "DeptDAO Delete 성공" );
				flag = 0;
			}
			
		} catch (SQLException e) {
			System.out.println( "[에러] " + e.getMessage() );
		} finally {
			if( rs != null ) try { rs.close(); } catch( SQLException e ) {}
			if( pstmt != null ) try { pstmt.close(); } catch( SQLException e ) {}
			if( conn != null ) try { conn.close(); } catch( SQLException e ) {} 
		}
		
		return flag;
	}
	
}















