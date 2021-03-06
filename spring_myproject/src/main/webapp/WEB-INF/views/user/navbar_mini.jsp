<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 미니 메뉴 영역 -->
	<div id="mini_menu" onclick="mini_menu_drop()" class="mini_menu_class"><i class="fa fa-bars"></i></div>
	
	<div id="mini_menu_list">
		<c:if test="${sess_id !=null }">
			<a id="logout_menu" href="/member/logout">로그아웃</a>
			<a id="mypage" href="/member/myInfor">내 정보</a>
			<a id="bookmarkList" href="/board/bookmarkList">북마크</a>	
		</c:if>
		
		<c:if test="${sess_id ==null }">
	    <a id="login_menu" onclick="login_layer_up()">로그인</a>
	    </c:if>
		<a id="mini_menu_area_menu" class="mini_area_menu_class" onclick="mini_area_drop_down()">지역별 리뷰</a>
		<div id="mini_area_drop" class="mini_area_drop_class">
		
			<a id="boardReview"	 href="/board/hospitalList?location=서울">서울시</a>
			<a id="boardReview" href="/board/hospitalList?location=경기">경기도</a>
			<a id="boardSns" href="/board/hospitalListSns?location=부산">부산</a>
			
			<a href="#">전라도</a>			
		</div>
		<a href="#">예시메뉴1</a>
	</div>

	
	