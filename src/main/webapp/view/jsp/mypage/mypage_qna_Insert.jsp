<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MYPAGE</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script src="<%= request.getContextPath() %>/view/js/mypage/mypage_qna_insert.js"></script> 


<style>
.container{
padding-top: 0;
}
.hjhg1{
    text-align: center;
    padding-top: 50px;
}
</style>

<!-- 로딩중 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/fakeLoader.css">
<script src="<%= request.getContextPath() %>/view/js/fakeLoader.js"></script>
</head>
<body>

<header id="header"><!-- 상단 헤더 불러오기 --></header>
<div class="mypage_wrap_topHead">
	<div class="mypage_wrap_tBox f1" style="font-size: 2.0em;">
		마이페이지 > 1:1문의
	</div>
</div>
<div class="mypage_wrap">
	<div class="mypage__wrapSub">
		<div class="mypage__wrap_topBox">
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_index.jsp">고객정보</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_like.jsp">좋아요</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_trip.jsp">여행취향</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_pay.jsp">결제내역확인</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_review.jsp">작성리뷰조회</a></span>
			<span><a href="<%= request.getContextPath() %>/view/jsp/mypage/mypage_qna.jsp" style="background: #111; color:#fff;">1:1문의</a></span>
		</div>
		<div class="mypage_boxContain">
				
				
				<!-- 게시판시작 -->
					
					   	<h1 class="f1 hjhg1">1:1문의</h1>
					
						
					   	<!-- list 출력 -->
						<div class="container">
							<div class="modal-body">
					        <form id="modiForm0">
					        	<label class="f4">제목</label>
					        	<input type="text" name="subject" id="subject" class="form-control"><br>
					        	<label class="f4">내용</label><br>
					        	<textarea name="content" id="content" rows="10" cols="50" class="form-control"></textarea>
					        	<input type="button" id="modisend" value="전송">				
					        </form>
					       </div>
					      </div>
						</div>
					<br><br>
					<div id="pagelist"></div>
					
					
					

				
				<!-- 게시판 마침 -->
				
				
		</div>
	</div>
</div>

<footer id="footer"><!-- 하단불러오기 --></footer>

<!-- 로딩 -->
 <div class="fakeLoader"></div>
 <script src="<%= request.getContextPath() %>/view/js/fakeLoader_speed.js"></script>
 
</body>
</html>