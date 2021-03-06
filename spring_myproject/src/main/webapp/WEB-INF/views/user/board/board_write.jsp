<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>      

 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="stylesheet" href="/css_file/main_home_css.css">
<link rel="stylesheet" href="/css_file/board_table_css.css">
<script src="/js_file/main_home_js.js"></script>

<!-- 폰트 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<style>

	
	div#area_drop{
		display: block !important;
	}

</style>

<title>동물 병원 후기 모음집 : 리뷰</title>
</head>

<!-- 온로드 로그인상태 체크 함수 -->
<body>
	
<!-- 로그인 및 회원가입창 -->
<%@include file="../member/login_join_modal.jsp" %>				


<!-- 헤더영역 -->
<%@include file="../header_pj.jsp" %>	


<!-- 미니메뉴 영역 -->
<p id="welcom">
<c:if test="${sess_nickname != null}">
<b>${sess_nickname }</b>님 환영합니다.
</c:if>
</p>
<%@include file="../navbar_mini.jsp" %>

<!-- 메인내용(왼쪽 오른쪽 컬럼)		 -->
	 <div id="main_content">
		

	<!-- 			왼쪽 메뉴 영역	 -->
		<%@include file="../navbar_left.jsp" %>
	
	<!-- 메인 오른쪽 컬럼		 -->
		<div id="main_right_column">
			
			
			<c:set value="${hospital }" var="h"/>
			
			<!-- 			리뷰 목록으로 되돌아가기용 form -->
			<form name="reviewListForm" action="/board/boardReview">
					
				<input name="pageNum" type="hidden" value="${pageNum }">
				<input name="hospitalNo" type="hidden" value="${h.hospitalNo }">
				<input name="hospitalName" type="hidden" value="${h.hospitalName }">
				<input name="hospitalAdd1" type="hidden" value="${h.hospitalAdd1 }">
				<input name="hospitalAdd2" type="hidden" value="${h.hospitalAdd2 }">
				<input name="hospitalAdd3" type="hidden" value="${h.hospitalAdd3 }">
				<input name="hospitalTel" type="hidden" value="${h.hospitalTel }">
				<input type="hidden" name="score" value="${h.score }">
				
				<c:forEach items="${h.hostag }" var="tag" varStatus="status">
					<input name="hostag" type="hidden" value="${tag }">										
				</c:forEach>
						
			</form>
		
		
			<input type="button" id="goList" value="목록" onclick="document.forms['reviewListForm'].submit()">
			
			<p id="page_infor">＠ ${h.hospitalName }</p>
			<p id="page_infor">＠ ${h.hospitalAdd1 }, ${h.hospitalAdd2 }</p>
			
			<form name="board_write" method="POST" enctype="multipart/form-data" action="/board/boardRegProc">
				<p id="title_cont"><b>Title</b> : <input type="text" name="title" required maxlength="13"><br>
				<p id="score_cont"><b>Score</b> : 
					<input type="radio" name="reviewScore" value="1"> <a>1점</a>
					<input type="radio" name="reviewScore" value="2"> <a>2점</a>
					<input type="radio" name="reviewScore" value="3"> <a>3점</a>
					<input type="radio" name="reviewScore" value="4"> <a>4점</a>
					<input type="radio" name="reviewScore" value="5"> <a>5점</a>
				</p>
				
				
				<p id="email_cont"><b>Email</b> : ${sess_id }<br>
				<textarea id="cont_input" name="content" placeholder="내용" required></textarea><br>
				<input id="file_input" type="file" name="fileAttach"><br>
				
				
				<input name="hospitalNo" type="hidden" value="${h.hospitalNo }">
				<input name="hospitalName" type="hidden" value="${h.hospitalName }">
				<input name="hospitalAdd1" type="hidden" value="${h.hospitalAdd1 }">
				<input name="hospitalAdd2" type="hidden" value="${h.hospitalAdd2 }">
				<input name="hospitalAdd3" type="hidden" value="${h.hospitalAdd3 }">
				<input name="hospitalTel" type="hidden" value="${h.hospitalTel }">
				<input type="hidden" name="score" value="${h.score }">
				
				<c:forEach items="${h.hostag }" var="tag" varStatus="status">
					<input name="hostag" type="hidden" value="${tag }">										
				</c:forEach>
				
				
				<input id="reg" type="submit" value="등록">
				
				
			</form>
		</div>
		
	 </div>	
	
<%@include file="../footer_pj.jsp" %>

	
</body>
</html>