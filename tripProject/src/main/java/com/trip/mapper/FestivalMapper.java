package com.trip.mapper;

import java.util.List;

import com.trip.domain.FestivalVO;

public interface FestivalMapper {
	
		public List<FestivalVO> getList();
		public void insert(FestivalVO vo);
		public void insertSelectKey(FestivalVO vo);
		public FestivalVO read(int bno);
		public int delete(int bno);
		public int update(FestivalVO vo);
	}

	


