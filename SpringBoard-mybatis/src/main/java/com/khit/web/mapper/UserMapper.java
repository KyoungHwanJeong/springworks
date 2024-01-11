package com.khit.web.mapper;

import java.util.List;

import com.khit.web.dto.UserDTO;

// sql을 처리할 매퍼 인터페이스(추상 메서드 선언)
public interface UserMapper {

	void insert(UserDTO userDTO);

	List<UserDTO> findAll();

	UserDTO findById(Long id);

	UserDTO login(UserDTO userDTO);

	UserDTO findByUserId(String userId);

	void update(UserDTO userDTO);

	void delete(Long id);

}
