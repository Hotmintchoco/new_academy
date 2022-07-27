package com.trip.mapper;

import java.util.List;

import com.trip.domain.UserVO;

public interface UserMapper {
	public List<UserVO> getList();
	public void insert(UserVO vo);
	public UserVO read(UserVO vo);
	public int delete(int userNum);
	public int update(UserVO vo);
}