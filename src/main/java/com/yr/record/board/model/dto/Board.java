package com.yr.record.board.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Board {

	private int boardIdx;
	private int userIdx;
	private String nickname;
	private String title;
	private String content;
	private Date regDate;
	private int viewCnt;
}
