<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CUM TRIP</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script src="<%= request.getContextPath() %>/view/js/findIDpass.js"></script> 

<!-- 로딩중 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/fakeLoader.css">
<script src="<%= request.getContextPath() %>/view/js/fakeLoader.js"></script>


</head>
<body>
	<header id="header"><!-- 상단 헤더 불러오기 --></header>
	<contain>
		<div class="Page_rwrap">
			<h3>CUM TRIP</h3>
			<h1 class="f1">본인인증</h1>
			<div class="Page_p f4">회원가입시 입력한 이름, 아이디 메일을 입력해주세요</div>
			<form id="find_pass_form">
				<div class="nvbew1">
					<label class="f4 ercfn1">이름</label>
					<input type="text" name="find_name" id="find_name" class="nbg1 form-control control-label col-sm-3">
				</div>
				<div class="nvbew1">
					<label class="f4 ercfn1">아이디 메일</label>
					<input type="text" name="find_mail" id="find_mail" class="nbg1 form-control control-label col-sm-3">
				</div>
				<div class="nvbew1">
				<input type="button" id="find_mail_sendButton" value="인증메일 보내기">
				<input type="text" id="find_mail_sendText" class="nbg1 form-control control-label col-sm-3"><br><br>
				</div>
				<input type="submit" value="비밀번호 변경" class="cvd1">
			</form>
		</div>
	</contain>
	<footer id="footer"><!-- 하단불러오기 --></footer>
<!-- 로딩 -->
 <div class="fakeLoader"></div>
 <script src="<%= request.getContextPath() %>/view/js/fakeLoader_speed.js"></script>
	
</body>
</html>