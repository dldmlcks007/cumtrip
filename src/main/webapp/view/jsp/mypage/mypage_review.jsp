<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
<link rel="shortcut icon" type="image/x-icon" href="../../images/titleLogo.png">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script src="<%= request.getContextPath() %>/view/js/mypage/mypage_review.js"></script> 

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script  src="<%=request.getContextPath()%>/view/js/typeahead.bundle.js"></script>


<!-- 로딩중 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/fakeLoader.css">
<script src="<%= request.getContextPath() %>/view/js/fakeLoader.js"></script>
</head>
<body>

<header id="header"><!-- 상단 헤더 불러오기 --></header>
<div class="mypage_wrap_topHead">
	<div class="mypage_wrap_tBox f1" style="font-size: 2.0em;">
		마이페이지 > 작성리뷰조회
	</div>
</div>
<div class="mypage_wrap">
	<div class="mypage__wrapSub">
		<div class="mypage__wrap_topBox">
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_index.jsp" class="f4">고객정보</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_like.jsp" class="f4">좋아요</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_trip.jsp" class="f4">여행취향</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_pay.jsp" class="f4">결제내역확인</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_review.jsp" style="background: #111; color:#fff;" class="f4">작성리뷰조회</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_qna.jsp" class="f4">1:1문의</a></span>
		</div>
		<div class="mypage_boxContain">
 		     <h3 class="mypage_Review_h3 f1">리뷰 조회</h3>
			 <ul class="mypage_boxReview">
				<li class="mypage_boxReview_li mypage_boxReview_li_t">
					<div class="m_Review_no_t f4">장소</div>
					<div class="m_Review_no_t f4">리뷰</div>
					<div class="m_Review_poto_t f4">내용</div>
					<div class="m_Review_name_t f4">별점</div>
				</li>	
				<span class="mypage_boxReview_span">
				</span>
			</ul>
		</div>
	</div>
</div>
<footer id="footer"><!-- 하단불러오기 --></footer>

<!-- 로딩 -->
 <div class="fakeLoader"></div>
 <script src="<%= request.getContextPath() %>/view/js/fakeLoader_speed.js"></script>
 
</body>
</html>