package com.khit.todoweb.dto;

import java.util.Arrays;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class PageRequestDTO {	//파라미터(page, kw) 수집용 DTO

	private int page = 1;	//페이지 번호
	private int size = 10;	//페이지당 게시글 수
	
	private String[] types;	//검색유형
	private String keyword;	//검색어
	
	private String[] sorts;
	
	//skip - 간격(범위 - 1, 11, 21,)
	public int getSkip() {	//#{skip}
		return (page - 1)* 10;	//1페이지 - 0번, 2페이지 - 10번
	}
	
	//검색유형(t, w) 체크박스 체크
	public boolean checkType(String type) {
		//타입에 체크가 없으면 반환값이 없음
		if(types == null || types.length == 0) {
			return false;
		}
		
		//타입에 일치하는 유형을 반환한다
		return Arrays.stream(types).anyMatch(type::equals);
	}
	
	//
	public boolean checkSort(String type) {
		
		if(sorts == null || sorts.length == 0) {
			return false;
		}
		
		return Arrays.stream(sorts).anyMatch(type::equals);
	}
}
