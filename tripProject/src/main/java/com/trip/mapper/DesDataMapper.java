package com.trip.mapper;

import java.util.List;

import com.trip.domain.City;
import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;

public interface DesDataMapper {
	public List<DesDataDTO> getList(Criteria cri);
	public int insert(DesDataDTO dto);
	public void register(DesDataDTO dto);
	public DesDataDTO read(Long num);
	public Long delete(Long num);
	public int update(DesDataDTO dto);
	public List<DesDataDTO> getAddressList(City city);
	
	
	public List<DesDataDTO> getAddressListggd(String destinationAddress);
	public List<DesDataDTO> getAddressListcb(String destinationAddress);
	public List<DesDataDTO> getAddressListcn(String destinationAddress);
	public List<DesDataDTO> getAddressListgb(String destinationAddress);
	public List<DesDataDTO> getAddressListgn(String destinationAddress);
	public List<DesDataDTO> getAddressListjn(String destinationAddress);
	
	public int getTotal(Criteria cri);
	public List<DesDataDTO> getListWithPagging(Criteria cri);
	public DesDataDTO selectOne(int num);
}