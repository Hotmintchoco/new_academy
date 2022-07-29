package com.trip.mapper;

import java.util.List;

import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;

public interface DesDataMapper {
	public List<DesDataDTO> getList();
	public int insert(DesDataDTO dto);
	public void register(DesDataDTO vo);
	public DesDataDTO read(Long num);
	
	
	public int getTotal(Criteria cri);
	public List<DesDataDTO> getListWithPagging(Criteria cri);
	public int getTotalCount(Criteria cri);
	public DesDataDTO selectOne(int num);
}