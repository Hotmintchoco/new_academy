package com.trip.mapper;

import java.util.List;

import com.trip.domain.FesDataDTO;

public interface FesDataMapper {
	public int insert(FesDataDTO dto);
	public List<FesDataDTO> getList();
}