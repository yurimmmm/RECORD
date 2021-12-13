package com.yr.record.board.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.yr.record.board.model.dto.Board;
import com.yr.record.board.model.repository.BoardRepository;
import com.yr.record.common.util.FileDTO;
import com.yr.record.common.util.FileUtil;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{
	
	Logger logger = LoggerFactory.getLogger(this.getClass());
	private final BoardRepository boardRepository;
	
	
	
	public void insertBoard(List<MultipartFile> mfs, Board board) {
		
		FileUtil  fileUtil = new FileUtil();
		boardRepository.insertBoard(board);
		for (MultipartFile multipartFile : mfs) {
			if(!multipartFile.isEmpty()) {
				boardRepository.insertFileInfo(fileUtil.fileUpload(multipartFile));
			}
		}
	}

	public List<Board> boardList() {
		return boardRepository.boardList();
		
	}

	
	
	
	
	
	
	
	
	
	
	
}
