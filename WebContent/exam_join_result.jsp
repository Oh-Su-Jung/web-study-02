<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
	
<style>
	@font-face {font-family: 'S-CoreDream-4Regular'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff'); font-weight: normal; font-style: normal;}
            
	* {margin:0; padding:0; font-family:'S-CoreDream-4Regular'}
	h1 {text-align:center; font-size:40px; margin:60px 0;}
	ul {width:800px; margin:0 auto;}
	ul li {width:100%; overflow:hidden; margin-bottom:5px; text-align:left;}
	ul li > p {float:left; width:25%; line-height:35px;}
	ul li > div {float:left; width:75%; line-height:35px;}
	a {display:block; width:220px; line-height:40px; border:0; background:#ff0000; text-align:center; color:#fff; margin:70px auto 0; text-decoration:none;}
</style>
</head>
<body>
	<h1>회원가입 확인</h1>
		<ul>
			<li>
				<p>이름</p>
				<div>${user_name}</div>
			</li>
			<li>
				<p>주민등록번호</p>
				<div>${user_number1} - ${user_number2}</div>
			</li>
			<li>
				<p>아이디</p>
				<div>${user_id}</div>
			</li>
			<li>
				<p>비밀번호</p>
				<div>${user_pwd}</div>
			</li>
			<li>
				<p>이메일</p>
				<div>${email_id}@${email_add}</div>
			</li>
			<li>
				<p>우편번호</p>
				<div>${post_number}</div>
			</li>
			<li>
				<p>주소</p>
				<div>${add1} ${add2}</div>
			</li>
			<li>
				<p>핸드폰번호</p>
				<div>${tel}</div>
			</li>
			<li>
				<p>직업</p>
				<div>${job}</div>
			</li>
			<li>
				<p>메일/sms 정보 수신</p>
				<div>${chk_mail}</div>
			</li>
			<li>
				<p>관심분야</p>
				<div>${interest}</div>
			</li>
		</ul>
		<a href="javascript:history.go(-1)">이전으로</a>

</body>
</html>