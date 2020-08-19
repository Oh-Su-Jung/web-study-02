<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
<style>
	* {margin:0; padding:0;}
	html, body {width:100%; height:100%;}
	div {width:850px; margin:0 auto;}
	h1 {font-size:26px; text-align:center; margin-bottom:40px;}
	table {width:100%; border-top:1px solid #222; border-collapse:collapse;}
	table th, table td {border-bottom:1px solid #ccc}
	table th {background:#f7f7f7; text-align:center; font-weight:400; line-height:40px;}
	a {display:block; width:220px; line-height:40px; border:0; background:#ff0000; text-align:center; color:#fff; margin:100px auto 0; cursor:pointer; text-decoration:none;}
</style>
</head>
<body>
	<div>
		<h1>당신이 입력한 정보입니다.</h1>
		<table>
			<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="30%">
			</colgroup>
			<tr>
				<th>아이디</th>
				<td>${id}</td>
				<th>패스워드</th>
				<td>${pwd}</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>${age}</td>
				<th>성별</th>
				<td>${gender}</td>
			</tr>
			<tr>
				<th>메일 수신 여부</th>
				<td>${chk_mail}</td>
				<th>직업</th>
				<td>${job}</td>
			</tr>
			<tr>
				<th>관심분야</th>
				<td colspan="3">${interest}</td>
			</tr>
			<tr>
				<th>관심 항목</th>
				<td colspan="3">${item}</td>
			</tr>
			<tr>
				<th>가입 인사</th>
				<td colspan="3">${content}</td>
			</tr>
		</table>
		
		<a href="javascript:history.go(-1)">다시</a>
	</div>
</body>
</html>