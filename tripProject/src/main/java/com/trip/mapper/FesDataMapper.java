package com.trip.mapper;

import java.util.List;

import com.trip.domain.Criteria;
import com.trip.domain.DesDataDTO;
import com.trip.domain.FesDataDTO;

public interface FesDataMapper {
	public int insert(FesDataDTO dto);
	public List<FesDataDTO> getList();
	public FesDataDTO selectOne(int num);
	public List<FesDataDTO> getAddressList(String fesCity);
	public List<FesDataDTO> getAddressListggd(String fesCity);
	public List<FesDataDTO> getAddressListcb(String fesCity);
	public List<FesDataDTO> getAddressListcn(String fesCity);
	public List<FesDataDTO> getAddressListgb(String fesCity);
	public List<FesDataDTO> getAddressListgn(String fesCity);
	public List<FesDataDTO> getAddressListjn(String fesCity);
	
	public int getTotal(Criteria cri);
	public List<FesDataDTO> getListWithPagging(Criteria cri);
	public int getTotalCount(Criteria cri);

}