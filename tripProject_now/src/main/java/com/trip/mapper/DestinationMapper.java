package com.trip.mapper;

import java.util.List;

import com.trip.domain.DestinationVO;

public interface DestinationMapper {
	public List<DestinationVO> getList();
	public void register(DestinationVO vo);
}
