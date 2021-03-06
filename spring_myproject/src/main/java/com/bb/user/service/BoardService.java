package com.bb.user.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.*;

import org.springframework.web.multipart.*;

import com.bb.user.dto.Hospital;
import com.bb.user.dto.Notice;
import com.bb.user.dto.Reply;
import com.bb.user.dto.Review;
import com.bb.user.dto.SnsReview;





public interface BoardService {

	//리뷰 등록
	String insertBoard(Review r, MultipartFile fileAttach, HttpSession session);
	
	//리뷰 수정
	String updateBoard(Review r, MultipartFile fileAttach, HttpSession session);
	
	//리뷰 리스트 가져오기
	HashMap<String, Object> getBoardList(String no, String pageNum);
	
	//리뷰 내용 보기
	Review getReviewContent(String no, String email);

	//게시글 삭제
	int delReview(String reviewNo, HttpSession session);

	//북마크 리스트 가져오기
	ArrayList<Review> getBookmarkList(String email);

	//북마크 등록/삭제 기능
	int bookmarkProc(String review_no, String review_url, String email);

	//게시글 검색(제목, 작성자)
	HashMap<String, Object> search(String select, String condition, String pageNum, String hosNo);

	//공지사항 리스트 출력
	ArrayList<Notice> getNoticeList();

	//공지사항 내용 보기
	Notice getNoticeContent(String noticeNo);

	//공지사항 5개 출력
	ArrayList<Notice> getNoticeListLimit();

	//sns형태 리뷰 리스트 가져오기
	ArrayList<SnsReview> getSNSList(String hospitalNo);

	//sns형태 리뷰 등록
	int insertSnsReview(SnsReview sr, HttpSession session, MultipartFile attachFile, String hospitalNo);

	//sns형태 리뷰 삭제
	int delSnsReview(String snsNo, HttpSession session);

	//sns형태 리뷰 수정
	String updateSnsReview(SnsReview snsReview, MultipartFile attachFileMod, HttpSession session);

	//병원 리스트 출력
	HashMap<String, Object> getHospitalList(String location);

	//덧글 등록
	int insertReply(Reply r);

	//덧글삭제
	int deleteReply(int replyNo);

	//덧글 수정
	int updateReply(int replyNo, String content);

	//리뷰 추천
	int recommendReview(String sessionId, String reviewNo);

	//리뷰 신고
	int reviewReport(String sessionId, String reviewNo);

	//병원검색
	HashMap<String, Object> searchHospital(String[] hospitalSearchCondition, String location);
	
	
}
