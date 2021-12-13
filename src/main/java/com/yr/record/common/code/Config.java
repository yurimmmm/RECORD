package com.yr.record.common.code;

public enum Config {

	//DOMAIN("http://www.pclass.com")
	DOMAIN("http://localhost:9595"),
	SMTP_AUTHENTIFICATION_ID("pclassteam1@gmail.com"),
	SMTP_AUTHENTIFICATION_PASSWORD("1234"),
	COMPANY_EMAIL("pclassteam1@gmail.com"),						//임의 생성 
	//UPLOAD_PATH("C:\\CODE\\upload\\"); //운영서버
	UPLOAD_PATH("C:\\CODE\\upload\\"); //개발서버
	
	public final String DESC;
	
	private Config(String desc) {
		this.DESC = desc;
	}
	
}
