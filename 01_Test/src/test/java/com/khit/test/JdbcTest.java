package com.khit.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j	//로그(기록)를 출력하는 라이브러리이다
public class JdbcTest {

	@Test	// 앞에 @Test를 붙이면 main 메서드 처럼 실행된다
	public void testConnection() {
		String className="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/springdb?serverTime=Asia/Seoul";
		String username="springuser";
		String password="pwspring";
		
		try {
			Class.forName(className);
			Connection conn = DriverManager.getConnection(url, username, password);
			//System.out.println("db 연결 객체 생성: " + conn);
			log.info("db 연결 객체 생성: " + conn);
			
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
