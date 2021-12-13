package com.yr.record.common.exception;

import com.yr.record.common.code.ErrorCode;

public class HandlableException extends RuntimeException{

	private static final long serialVersionUID = -3930409458039432875L;

	public ErrorCode error;
	
	//log를 남기지 않고 사용자에게 알림메세지만 전달하는 용도의 생성자
	public HandlableException(ErrorCode error) {
		this.error = error;
		//stackTrace를 비워준다.
		this.setStackTrace(new StackTraceElement[0]);
	}
	
	public HandlableException(ErrorCode error, Exception e) {

		this.error = error;
		e.printStackTrace();
		//stackTrace를 비워준다.
		this.setStackTrace(new StackTraceElement[0]);
	}
	
}
