package com.yr.record.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.yr.record.board.model.dto.Board;
import com.yr.record.board.model.service.BoardService;
import com.yr.record.member.model.dto.Member;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("board")
public class BoardController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private final BoardService boardService;
	
	@GetMapping("board-form")
	public void boardForm() {}
	
	@PostMapping("upload")
	public String uploadBoard(Board board
								,List<MultipartFile> files
								,@SessionAttribute("authentication") Member member) {
		board.setNickname(member.getNickName());
		board.setUserIdx(member.getUserIdx());
		//System.out.println("진입전 : " + board);
		boardService.insertBoard(files, board);
		//System.out.println("진입후 : " + board);
		return "redirect:/board/board-list";
	}
	
	@GetMapping("board-list")
	public String boardList(Model model) {		
		model.addAttribute("list",boardService.boardList());

		return "/board/board-list";
	}
	
	@GetMapping("board-detail")
	public void boardDetail(@RequestParam("boardIdx") int boardIdx, Model model) {		
		Board board = boardService.boardDetail(boardIdx);
		model.addAttribute("detail",board);		
	}
	
	@GetMapping("board-modify")
	public String boardModify(Board board, Model model) {	
		model.addAttribute("modify",boardService.boardDetail(board.getBoardIdx()));
		return "board/board-modify";	
	}
		
	@PostMapping("board-modify")
	 public String boardModify(Board board){	
		boardService.boardModify(board);
	  
	  return "redirect:/board/board-list";	  
	 }

	@PostMapping("board-delete")
	 public String boardDelete(Board board){	 
		boardService.boardDelete(board.getBoardIdx());
	  return "redirect:/board/board-list";
	 }
	
}
