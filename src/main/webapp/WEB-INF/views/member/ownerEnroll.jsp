<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../js/jquery-3.5.1.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트 스트랩 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
	integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj"
	crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="${ contextPath }/js/jquery-3.5.1.min.js"></script>
<!-- 폰트 -->
<script src="https://kit.fontawesome.com/7293f5b137.js"
	crossorigin="anonymous"></script>
<style>
#enrollArea {
	/* 	border: 1px solid lightgray; */
	width: 80%;
/* 	height: 600px; */
	position: relative;
	margin: 0 auto;
	margin-top: 50px;
}

.enrollDiv {
	text-align: center;
	align-content: center;
}

.enrollBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}

.pp {
	display: inline-block;
	width: 25%;
}

.pInput{
	display: inline-block;
	width: 20%;
}

.input-info{
	display: inline;
}

.cInput {
	width: 30% !important;
}

.authBtn {
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	color: white;
}

.enrollBtn {
	display: block !important;
	margin: 0 auto !important;
	background: #F42B03 !important;
	border: 0px !important;
	width: 250px !important;
	height: 50px;
}

.mb-3 {
	display: inline-block !important;
}

#uploadImg {
	display: inline !important;
}
#idResult{
		font-size: 14px;
	}
	#pwdResult{
		font-size: 14px;
	}
</style>
</head>
<body style="font-family: 'Gugi';">
	<jsp:include page="../common/menubar.jsp" />

	<form action="oinsert.me" method="post" id="joinForm">
	<div id="enrollArea">
		<h1 style="text-align: center;">사업자 회원가입 ></h1>
		<br>
		<br>
	<p><b style="color: red;">*</b>&nbsp;&nbsp;은 필수 입력란 입니다.</p><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;사업자명</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="member_name" id="member_name" placeholder="사업자명을 입력하세요">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;아이디</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="text" name="member_id" id="member_id" placeholder="아이디를 입력하세요.">
		<label id="idResult" ></label>
	</div>
	<p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">6~20자리 영문 소문자, 숫자가 사용 가능합니다</pre><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;비밀번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="password" name="member_pwd" id="member_pwd" placeholder="비밀번호를 입력하세요. ">
	</div><p class="pp"></p><pre style="color: red; text-align: left; display: inline-block;">6~20자리 영문 소문자, 숫자, 특수문자가 사용 가능합니다</pre><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;비밀번호 확인</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="password" name="member_pwd2" id="member_pwd2" placeholder="비밀번호를 입력하세요.">
	</div><div><label id="pwdResult"></label></div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;이메일</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="email" name="email" id="email" placeholder="이메일를 입력하세요.">
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b></b>&nbsp;&nbsp;생년월일</p>&nbsp;&nbsp;
		<select name="year">
							<c:forEach begin="<%= new GregorianCalendar().get(Calendar.YEAR) - 100 %>" end="<%= new GregorianCalendar().get(Calendar.YEAR) %>" var="i">
								<option value="${ i }">${ i }</option>
							</c:forEach>
						</select>
						<select name="month">
							<c:forEach begin="1" end="12" var="i">
								<option value="${ i }">${ i }</option>
							</c:forEach>
						</select>
						<select name="date">
							<c:forEach begin="1" end="31" var="i">
								<option value="${ i }">${ i }</option>
							</c:forEach>
		</select>
		<br><br>
		
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;핸드폰</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="tel" name="phone" id="phone" placeholder="핸드폰(-없이 입력해주세요)">
		<button class="authBtn">인증</button>
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b style="color: red;">*</b>&nbsp;&nbsp;인증번호</p>&nbsp;&nbsp;
	<div class="input-info">
		<input class= "cInput" type="tel" name="phoneAuth" id="phoneAuth" placeholder="인증번호를 입력하세요.">
		<button class="authBtn">확인</button>
	</div><br><br>
	
	<p class="pp"></p><p class="pInput"><b>*</b>&nbsp;&nbsp;성별</p>&nbsp;&nbsp;
			<input  type="radio" name="gender" id="gender" value="M">&nbsp;&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input  type="radio" name="gender" id="gender" value="F">&nbsp;&nbsp;여자
		<br><br><br>
		
	<button type="submit" name="auth_code"  value="2" class="btn btn-primary enrollBtn" onclick="return validate();"> 가입하기 </button>
	
	<br><br><br>
	</div>
	</form>
	
	<jsp:include page="../common/footer.jsp"/>
	<script>

	 
		/* 빈칸 시 alert창 */
		function validate(){
			if($('#member_name').val() == 0){
				alert('사업자명을 입력해주세요');
				$('#member_name').focus();
				return false;
			}else if($('#member_id').val() == 0){
				alert('아이디를 입력해주세요');
				$('#member_id').focus();
				return false;
			}else if($('#member_pwd').val() == 0){
				alert('비밀번호를 입력해주세요');
				$('#member_pwd').focus();
				return false;
			}else if($('#email').val() == 0){
				alert('이메일을 입력해주세요');
				$('#email').focus();
				return false;
			}else if($('#phone').val() == 0){
				alert('휴대폰 번호를 입력해주세요');
				$('#phone').focus();
				return false;
			}else{
				$('#joinForm').submit();
				
			}
		}
	</script>

</body>
</html>