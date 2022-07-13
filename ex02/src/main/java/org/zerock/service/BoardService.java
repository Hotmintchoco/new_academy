package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardService {
	void register(BoardVO vo); //등록
	int modify(BoardVO vo); //수정
	int remove(Long bno); //삭제
	BoardVO get(Long bno); //읽기
	List<BoardVO> getList(); //전체 읽기
}
