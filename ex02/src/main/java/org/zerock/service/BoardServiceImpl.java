package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.BoardVO;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	private BoardMapper mapper;
	
	@Override
	public void register(BoardVO vo) {
		log.info("register--------------------");
		mapper.insert(vo);
	}

	@Override
	public int modify(BoardVO vo) {
		log.info("modify----------------------");
		int count = mapper.update(vo);
		return count;
	}

	@Override
	public int remove(Long bno) {
		log.info("remove----------------------");
		int count = mapper.delete(bno);
		return count;
	}

	@Override
	public BoardVO get(Long bno) {
		log.info("get----------------------------");
		return mapper.read(bno);
	}

	@Override
	public List<BoardVO> getList() {
		log.info("getList--------------------------");
		return mapper.getList();
	}

}
