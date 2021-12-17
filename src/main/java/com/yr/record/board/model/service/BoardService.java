package com.yr.record.board.model.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.yr.record.board.model.dto.Board;

public interface BoardService {
	
	void insertBoard(List<MultipartFile> mfs, Board board);

	List<Board> boardList();
	
	Map<String, Object> selectBoardByIdx(String boardIdx);

	Board boardDetail(int boardIdx);


}
