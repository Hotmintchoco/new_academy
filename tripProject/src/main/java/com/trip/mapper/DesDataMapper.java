package com.trip.mapper;

import java.util.List;

import com.trip.domain.CityVO;
import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;

public interface DesDataMapper {
	public List<DesDataDTO> getList(Criteria cri);
	public int insert(DesDataDTO dto);
	public void register(DesDataDTO dto);
	public DesDataDTO read(Long num);
	public Long delete(Long num);
	public int update(DesDataDTO dto);
	public List<DesDataDTO> getAddressList(CityVO city);
	
	public int getTotalCount(CityVO city);
	public int searchGetTotal(Criteria cri);
	
	public List<DesDataDTO> getListWithPagging(Criteria cri);
	public DesDataDTO selectOne(int num);
	public List<DesDataDTO> getList();
	
}