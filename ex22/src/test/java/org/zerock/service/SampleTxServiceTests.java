package org.zerock.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class SampleTxServiceTests {
	
	@Autowired
	private SampleTxService service;
	
	@Test
	public void testing() {
		String str = "석열 대통령 직무 수행 지지율이 2주 연속 상승해 28%를 기록했다는 여론조사 결과가 19일 나왔다.";
		
		log.info("length : " + str.getBytes().length);
		service.addData(str);
	}
}
