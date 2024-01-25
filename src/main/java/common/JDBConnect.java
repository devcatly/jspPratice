package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import jakarta.servlet.ServletContext;

public class JDBConnect {
	
	public Connection con;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	
	public JDBConnect() {
    try {
		Class.forName("oracle.jdbc.OracleDriver");
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "catly";
		String pwd = "1234";
		
		con = DriverManager.getConnection(url,id,pwd);
		
		System.out.println("db연결 success");
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	}
	
	public JDBConnect(String driver, String url, String id, String pwd) {
	    try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			con = DriverManager.getConnection(url,id,pwd);
			
			System.out.println("xml 설정 db연결 success");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		}
	
	public JDBConnect(ServletContext application) {
	    try {
	    	String driver = application.getInitParameter("OracleDriver");
	    	
	    	Class.forName(driver);
	    	
	    	String url = application.getInitParameter("OracleURL");
	    	String id = application.getInitParameter("OracleId");
	    	String pwd = application.getInitParameter("OraclePwd");

	    	con = DriverManager.getConnection(url,id,pwd);
	    	
	    	System.out.println("개선2 성공");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
		
	public void close() {
		try {
			if (rs != null) rs.close();
			if (stmt != null ) stmt.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close();
			
			System.out.println("자원해제");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
