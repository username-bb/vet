<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<link rel="stylesheet" href="/css_file/admin_css.css">
<link rel="stylesheet" href="/css_file/mem_css.css">
<script src="/js_file/admin_js.js"></script>

<style>
	
	a#delMemList{
		color: #ffffff !important;
	}

</style>

<script>
	
	function delCheck(){
		if(confirm("탈퇴처리를 진행하시겠습니까?")){
			return ture;
		}else{
			return false;
		}
	}
	
	
	window.onload = function(){
		if(document.getElementById("delState").value>="1"){
			alert("회원 탈퇴처리가 완료되었습니다.");
		}
	}

</script>


<!-- 폰트 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<title>[관리자]동물 병원 후기 모음집 : 탈퇴요청회원</title>
</head>

<body>


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
		<div id="main_right_column_board">
		
			<div id="board_search_box">
				<form action="/admin/delMemberSearch">
					<input id="board_search" type="text" name="condition" placeholder="탈퇴기준일(yyyyMMdd)" required
					maxlength="8" value="${condition }">
					<input id="board_search_confirm" type="submit" value="검색">
				</form>
			</div>
						
			<p id="page_infor">＠ 탈퇴 요청 회원 정보</p>
		 	<input id="delState" type="hidden" value="${delState }">
			<div id="mem_list">
				<form onsubmit="return delCheck()" name="delMemberReq" action="/admin/delMemnerReq">
					<input name="condition" type="hidden" value="${condition }">
					<table cellspacing="0">
					 	<thead>
							<tr>
								<td class="check">
									<input type="checkbox" name="selectAllInput" value="전체선택" onclick="selectAll(this)">
								</td>
								<td class="num">
									<b>순번</b>
								</td>
								<td class="email">
									<b>이메일</b>
								</td>
								<td class="name">
									<b>별명</b>
								</td>
								<td class="recom">
									<b>추천 수</b>
								</td>
								<td class="report">
									<b>신고 수</b>
								</td>
								
								<td class="grade">
									<b>회원 등급</b>
								</td>
								<td class="wdate">
									<b>가입일</b>
								</td>
								<td class="isdel">
									<b>탈퇴 요청일</b>
								</td>
							</tr>
						</thead>
						
						<c:set value="${fn:length(memberList)+1 }" var="cnt"/>
						<c:forEach items="${memberList }" var="m">
							<c:set value="${cnt-1 }" var="cnt"/>
							<tbody>
								<tr>
									<td class="check">
									<input type="checkbox" name="selectEmail" value="${m.email }" onclick="selectCheck(this)">
									</td>
									<td>
										${cnt }
									</td>
									<td>
										${m.email }
									</td>
									<td>
										${m.nickName }
									</td>
									<td>
										${m.recomCount }
									</td>
									<td>
										${m.reportCount }
									</td>
									<td>
										${m.gradeName }
									</td>
									<td>
										${m.wdate }
									</td>
									<td>
										${m.delDate }
									</td>
								</tr>
							</tbody>	
						</c:forEach>
					</table>
					<br>
					<input type="submit" value="회원삭제" id="delbutton">
				</form>
			</div>
			<div id="board_page">
				<a>◀</a>
				<a>1</a>
				<a>2</a>
				<a>3</a>
				<a>▶</a>
			</div>
			
		</div>
			
	 </div>	


	
<%@include file="../footer_pj.jsp" %>

	

	
	
	
</body>
</html>