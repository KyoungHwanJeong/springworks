package com.khit.todoweb.mapper;

import java.util.List;

import com.khit.todoweb.dto.PageRequestDTO;
import com.khit.todoweb.dto.TodoDTO;
import com.khit.todoweb.vo.TodoVO;

public interface TodoMapper {

	public String getTime();	//현재 시간 테스트
	
	public void insert(TodoVO todoVO);	//등록하기

	public List<TodoVO> findAll();	//목록 보기
	
	//목록 보기(페이지, 검색) 
	public List<TodoVO> pagingList(PageRequestDTO pageRequestDTO);

	public TodoVO findById(Long tno);

	public void update(TodoVO todoVO);

	public void delete(Long tno);
	
	public int todoCount();

	public List<TodoVO> sortOrderBy(PageRequestDTO pageRequestDTO);

}
