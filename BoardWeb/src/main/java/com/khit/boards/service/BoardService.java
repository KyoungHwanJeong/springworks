package com.khit.boards.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khit.boards.dto.BoardDTO;
import com.khit.boards.repository.BoardRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class BoardService {

	@Autowired
	private final BoardRepository boardRepository;

	public void insert(BoardDTO boardDTO) {
		boardRepository.insert(boardDTO);
	}

	public List<BoardDTO> findAll() {
		return boardRepository.findAll();
	}

	public BoardDTO findById(int id) {
		return boardRepository.findById(id);
	}

	public void delete(int id) {
		boardRepository.delete(id);
	}

	public void update(BoardDTO boardDTO) {
		boardRepository.update(boardDTO);
	}
}
