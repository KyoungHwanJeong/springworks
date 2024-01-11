package com.khit.web.dto;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class PageDTO {
	private int page;	//현재페이지
	private int maxPage;	//최대페이지(글의 총 개수에 따른 페이지)
	private int startPage;	//현재 페이지 기준 시작페이지 값
	private int endPage;	//현재 페이지 기준 마지막페이지 값
}
