package spring.model;

import java.sql.Timestamp;

public class BoardDto{
	
	private int code;
	private String title;
	private String content;
	private String writer;
	private Timestamp reg_datetime;
	private int viewcnt;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	
	public Timestamp getReg_datetime() {
		return reg_datetime;
	}
	public void setReg_datetime(Timestamp reg_datetime) {
		this.reg_datetime = reg_datetime;
	}
	
	public BoardDto() {}
	
	public BoardDto(int code, String title, String content, String writer, Timestamp reg_datetime, int viewcnt) {
		super();
		this.code = code;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.reg_datetime = reg_datetime;
		this.viewcnt = viewcnt;
	}
	
	@Override
	public String toString() {
		return "BoardDto [code=" + code + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", reg_datetime=" + reg_datetime + "]";
	}

}
