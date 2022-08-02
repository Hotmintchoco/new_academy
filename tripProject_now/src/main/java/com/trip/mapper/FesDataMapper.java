package com.trip.mapper;

import java.util.List;

import com.trip.domain.Criteria;
import com.trip.domain.FesDataDTO;

public interface FesDataMapper {
	public int insert(FesDataDTO dto);
	public List<FesDataDTO> getList();
	public FesDataDTO selectOne(int num);
	
	public int getTotal(Criteria cri);
	public List<FesDataDTO> getListWithPagging(Criteria cri);
	public int getTotalCount(Criteria cri);

}