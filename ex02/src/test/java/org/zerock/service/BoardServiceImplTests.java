package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapperTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceImplTests {
	@Autowired
	private BoardService service;
	
	@Test
	public void testRegister() {
		log.info("testregister----------------");
		BoardVO vo = new  BoardVO();
		vo.setTitle("비오네");
		vo.setContent("비가 이제 그만");
		vo.setWriter("오다");
		service.register(vo);
	}
	@Test
	public void testModify() {
		log.info("testModify----------------");
		BoardVO vo = new BoardVO();
		vo.setBno(7L);
		vo.setTitle("오라클");
		vo.setContent("오라클");
		vo.setWriter("오라클");
		log.info("update" + service.modify(vo));
	}
	@Test
	public void testRemove() {
		log.info("testRemove----------------");
		BoardVO vo = new BoardVO();
		vo.setBno(10L);
		log.info("remove-" + service.remove(vo.getBno()));
	}
	@Test
	public void testGet() {
		log.info("testGet----------------");
		BoardVO vo = new BoardVO();
		vo.setBno(5L);
		log.info("get" + service.get(vo.getBno()));
	}
	@Test
	public void testGetList() {
		log.info("testGet----------------");
		for(BoardVO vo : service.getList()) {
			log.info(vo);
		}
	}
}
