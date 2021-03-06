package com.bb.user.dto;

import java.util.ArrayList;

public class Review {

	private String reviewNo;
	private String hospitalNo;
	private String writer;
	private String title;
	private String content;
	private String count;
	private String wdate;
	private String mdate;
	private FileAttached fileAttached;
	private int bookMarkCheck;
	//북마크 등록이 되어있는지 확인
	// 1 = 등록되어 있음
	// 2 = 등록되어 있지 않음
	
	private String reviewUrl;
	//해당 게시글의 url
	
	private ArrayList<Reply> replyList;
	private int recommend;
	private int report;
	private String reviewScore;
	
	
	
	public int getBookMarkCheck() {
		return bookMarkCheck;
	}
	public void setBookMarkCheck(int bookMarkCheck) {
		this.bookMarkCheck = bookMarkCheck;
	}
	
	public String getReviewUrl() {
		return reviewUrl;
	}
	public void setReviewUrl(String reviewUrl) {
		this.reviewUrl = reviewUrl;
	}
	
	public FileAttached getFileAttached() {
		return fileAttached;
	}
	public void setFileAttached(FileAttached fileAttached) {
		this.fileAttached = fileAttached;
	}
	public String getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(String reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getHospitalNo() {
		return hospitalNo;
	}
	public void setHospitalNo(String hospitalNo) {
		this.hospitalNo = hospitalNo;
	}
	public ArrayList<Reply> getReplyList() {
		return replyList;
	}
	public void setReplyList(ArrayList<Reply> replyList) {
		this.replyList = replyList;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public int getReport() {
		return report;
	}
	public void setReport(int report) {
		this.report = report;
	}
	public String getReviewScore() {
		return reviewScore;
	}
	public void setReviewScore(String reviewScore) {
		this.reviewScore = reviewScore;
	}
	
	
	
}
