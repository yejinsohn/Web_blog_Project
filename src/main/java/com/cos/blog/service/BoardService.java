package com.cos.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.domain.Auth;
import com.cos.blog.dto.BoardSaveDto;
import com.cos.blog.model.Board;
import com.cos.blog.model.User;
import com.cos.blog.repository.BoardRepository;
import com.cos.blog.repository.UserRepository;

@Service
public class BoardService {

	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	private User getUser(int userId) {
		return userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("User Error"));
	}
	
	private Board getBoard(int boardId) {
		return boardRepository.findById(boardId).orElseThrow(() -> new IllegalArgumentException("Board Error"));
	}
	
	private void verifyUser(Board board, Auth auth) {
		if(board.getUser().getId() != auth.getUserId()) {
			throw new IllegalArgumentException("잘못된 요청입니다.");
		}
	}

	// 글 쓰기
	@Transactional
	public void Writeup(BoardSaveDto request, Auth auth) {
		
		User user = getUser(auth.getUserId());
		
		Board board = Board.builder()
				.title(request.getTitle())
				.content(request.getContent())
				.count(0).user(user)
				.build();
		boardRepository.save(board);
	}

	// 글 목록
	@Transactional(readOnly = true)
	public Page<Board> StoryList(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	// 글 상세보기
	@Transactional(readOnly = true)
	public Board detail(int id) {
		return boardRepository.findById(id).orElseThrow(() -> {
			return new IllegalArgumentException("글 상세보기 실패 : id를 찾을 수 없습니다");
		});
	}

	// 글 삭제
	@Transactional
	public void Delete(int boardId, Auth auth) {
		
		Board board = getBoard(boardId);
		
		verifyUser(board, auth); // 작성자가 맞는지 검증
		
		boardRepository.deleteById(boardId);
	}

	// 글 수정
	@Transactional
	public void Update(int boardId, Board requestBoard) {
		
		Board board = getBoard(boardId);
		
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
	}
}
