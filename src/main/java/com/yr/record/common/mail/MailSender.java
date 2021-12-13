package com.yr.record.common.mail;

import java.util.Date;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.yr.record.common.code.Config;
import com.yr.record.common.code.ErrorCode;
import com.yr.record.common.exception.HandlableException;

@Component
public class MailSender {
	
	JavaMailSender mailSender;
	
	public MailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendEmail(String to, String subject, String htmlText) {
		MimeMessage msg = mailSender.createMimeMessage();
      
		try {
			msg.setFrom(Config.COMPANY_EMAIL.DESC);
			msg.setRecipients(Message.RecipientType.TO,to);
		    msg.setSubject(subject);
		    msg.setSentDate(new Date());
		    msg.setText(htmlText,"utf-8","html");
		    mailSender.send(msg);
		} catch (MessagingException e) {
			throw new HandlableException(ErrorCode.MAIL_SENDING_FAIL_ERROR);
		}
	}

	
	
	
	
	
	
	
	
	
	
}
