package com.yr.record.member.model.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {

	   private int userIdx;
	   private String userId;
	   private String password;
	   private String nickName;
	   private String email;
	   private String grade;
	   private String address;
	   private Date joinDate;
	   private int isLeave;
	   
}
