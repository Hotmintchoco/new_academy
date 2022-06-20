package com.ezen.mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisMain {

	public static void main(String[] args) {
		String resource = "com/ezen/mybatis/mybatis-config.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
			SqlSession session = sqlSessionFactory.openSession();
			System.out.println("sqlSessionFactory : " + sqlSessionFactory);
			System.out.println("session : " + session);
			BoardMethod board = session.getMapper(BoardMethod.class);
			
			BoardVO vo = board.selectOne(1);
			
//			board.deleteBoard(4);
			
//			BoardVO vo3 = new BoardVO();
//			vo3.setId(4);
//			vo3.setName("손흥민");
//			vo3.setPhone("111-2222-3333");
//			vo3.setAddress("영국");
//			
//			board.insertBoard(vo3);
			
			vo.setId(4);
			vo.setName("박도균");
			vo.setPhone("111-1111-1111");
			vo.setAddress("busan");
			board.updateBoard(vo);
			
			session.commit();
			
			List<BoardVO> list = board.selectAllMember();
			for(BoardVO vo2 : list) {
				System.out.println(vo2.getId());
				System.out.println(vo2.getName());
				System.out.println(vo2.getPhone());
				System.out.println(vo2.getAddress());
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
