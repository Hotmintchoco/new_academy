package com.trip.mapper;

import java.util.List;
import java.util.Map;

import com.trip.domain.BoardVO;
import com.trip.domain.Criteria;

public interface BoardMapper {
   public List<BoardVO> getList();
   public BoardVO get(int boardNum);
   public int delete(int boardNum);
   public int insert(BoardVO vo);
   public int insertSelectKey(BoardVO vo);
   public int update(BoardVO vo);
   public List<BoardVO> getListWithPagging(Criteria cri);
   public int getTotalCount(Criteria cri);
   
   //검색조건
   public List<BoardVO> searchTest(Map<String, Map<String,String>>map);

}