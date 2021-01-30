<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#outer{
		width: 70%;
		margin: auto;
		margin-top: 50px;
	}
	#checkPwdOut{
		width: 500px;
		margin: 10% auto;
	}
	#checkPwdMid{
		display: inline-block;
		text-align: center;
	}
	#label{
		margin-top:20px; 
		text-align: center;
		color: #F42B03;
	}
	#checkPwdIn{
		margin-top: 25px;
		display: inline-block;
		border: 1px solid black;
		width: 500px;
		height: 100px;
		text-align: center;
	}
	#pwd{
		margin-top: 30px;
		margin-left: 20px;
		width: 300px;
		height: 30px;
	}
	#btn{
		font-size: 18px;
		color:#fff;
		border: 1px solid #F42B03;
		border-radius: 30px;
		background-color: #F42B03;
		width:150px; height:30px;
		margin-top: 50px;
	}
</style>
</head>
<body style="font-family: 'Gugi'; ">
	<c:import url="../common/menubar.jsp"/>
	<div id="outer">
<<<<<<< HEAD
		<form action="oInfoPwd.me" method="post" id="checkPwd" name="checkPwd">
<<<<<<< HEAD
=======
		<form action="oInfokPwd.me" method="post" id="checkPwd" name="checkPwd">
>>>>>>> origin/Js
			<h1>식당 정보 수정</h1>
=======
			<h1 style="text-align: center;">식당 정보 수정 ></h1>
>>>>>>> bf7c5cc75749aa70050d87e525be9fd4976f49be
			<div id=checkPwdOut>
				<label id="label" >식당 정보 수정을 위해 비밀번호를 다시 입력 해주세요.</label><br>
				<div id="checkPwdMid">
					<div id="checkPwdIn"><br>
						<label>비밀번호 : </label>
						<input type="password" id="member_pwd" name="member_pwd">
					</div>
					<br>
					<input type="submit" id="btn" value="회원 정보 수정">
				</div>
			</div>
		</form>
	</div>
	<c:import url="../common/footer.jsp"/>
</body>
</html>