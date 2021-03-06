package com.yr.record.board.model.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.yr.record.board.model.dto.Board;
import com.yr.record.common.util.FileDTO;


@Mapper
public interface BoardRepository {
	
	@Insert("insert into board(board_idx,nickname,title,content)"
			+ " values(sc_board_idx.nextval, #{nickname}, #{title}, #{content})")
	void insertBoard(Board board);
	
	@Insert("insert into file_info(fl_idx,type_idx,origin_file_name, rename_file_name, save_path)"
			+ " values(sc_fl_idx.nextval, sc_board_idx.currval, #{originFileName}, #{renameFileName}, #{savePath})")
	void insertFileInfo(FileDTO fileDTO);

	@Select("select board_idx, title, nickname, reg_date, viewcnt from board order by board_idx desc")
	List<Board> boardList();
	
	@Select("select * from board where board_idx = #{boardIdx}")
	Board selectBoardByIdx(String boardIdx);
	
	@Select("select * from file_info where type_idx = #{boardIdx}")
	List<FileDTO> selectFilesByBdIdx(String boardIdx);

	@Select("select board_idx, title, nickname, reg_date, content from board where board_idx = #{boardIdx}")
	Board boardDetail(int boardIdx);

	@Update("update board set title=#{title}, content=#{content} where board_idx = #{boardIdx}")
	int boardModify(Board board);

	@Delete("delete from board where board_idx = #{boardIdx}")
	void boardDelete(int boardIdx);
		
	
}
