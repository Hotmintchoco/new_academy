package com.trip.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.trip.domain.Criteria;
import com.trip.domain.ReplyPageDTO;
import com.trip.domain.ReplyVO;
import com.trip.mapper.ReplyMapper;
import com.trip.service.ReplyService;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private ReplyMapper mapper;
	
	
	@Override
	public int register(ReplyVO vo) {
		return mapper.insert(vo);
	}
	
	@Override
	public ReplyVO get(Long rno) {
		return mapper.read(rno);
	}

	@Override
	public int modify(ReplyVO vo) {
		return mapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		return mapper.delete(rno);
	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		return mapper.getListWithPagging(cri, bno);
	}

	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long bno) {
		return new ReplyPageDTO(
			mapper.getCountByBno(bno),
			mapper.getListWithPagging(cri, bno)
		);
	}

}