<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="param.js"></script>
<style>
	* {margin:0; padding:0;}
	html, body {width:100%; height:100%;}
	form {width:850px; margin:0 auto;}
	table {width:100%; border-top:1px solid #222; border-collapse:collapse;}
	table th, table td {border-bottom:1px solid #ccc; font-size:15px;}
	table th {background:#f7f7f7; text-align:center; font-weight:400; line-height:40px;}
	.input {width:100%; border:0; height:40px;}
	input[type="submit"] {display:block; width:220px; height:40px; border:0; background:#ff0000; text-align:center; color:#fff; margin:100px auto 0; cursor:pointer;}
	select {width:100%; height:100%;}
	textarea {width:100%; border:0; resize:none;}
</style>
</head>
<body>
	<form method="get" action="ParamServlet">
		<table>
			<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="30%">
			</colgroup>
			<tr>
				<th><label for="userid">아이디</label></th>
				<td><input type="text" name="id"  id="userid" class="input" value="오수정"></td>
				<th><label for="userpwd">패스워드</label></th>
				<td><input type="password" name="pwd" id="userpwd" class="input" value="test"></td>
			</tr>
			<tr>
				<th><label for="age">나이</label></th>
				<td><input type="number" name="age"  id="age" class="input" value="26"></td>
				<th>성별</th>
				<td>
					<input type="radio" id="gender" name="gender" value="남자" checked> 남자
					<input type="radio" id="gender" name="gender" value="여자"> 여자
				</td>
			</tr>
			<tr>
				<th><label for="chk)mail">메일 수신 여부</label></th>
				<td>
					<input type="radio" id="chk_mail" name="chk_mail" value="yes" checked> 수신
					<input type="radio" id="chk_mail" name="chk_mail" value="no"> 거부
				</td>
				<th><label for="job">직업</label></th>
				<td>
					<select id="job" name="job" size="1">
						<option value="">선택하세요</option>
						<option value="학생">학생</option>
						<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
						<option value="언론">언론</option>
						<option value="공무원">공무원</option>
						<option value="군인">군인</option>
						<option value="서비스업">서비스업</option>
						<option value="교육">교육</option>
					</select>
				</td>
			</tr>
			<tr>
				<th><label for="interest">관심분야</label></th>
				<td>
					<select id="interest" name="interest" size="5" multiple="multiple">
						<option value="에스프레소">에스프레소</option>
						<option value="로스팅">로스팅</option>
						<option value="생두">생두</option>
						<option value="원두">원두</option>
						<option value="핸드드립">핸드드립</option>
					</select>
				</td>
				<th></th>
				<td></td>
			</tr>
			<tr>
				<th>관심 항목</th>
				<td colspan="3">
					<input type="checkbox" name="item" value="신발"> 신발
					<input type="checkbox" name="item" value="가방"> 가방
					<input type="checkbox" name="item" value="벨트"> 벨트
					<input type="checkbox" name="item" value="모자"> 모자
					<input type="checkbox" name="item" value="시계"> 시계
					<input type="checkbox" name="item" value="쥬얼리"> 쥬얼리
				</td>
			</tr>
			<tr>
				<th><label for="content">가입 인사</label></th>
				<td colspan="3"><textarea id="content" name="content" rows="3" cols="35"></textarea></td>
			</tr>
		</table>
		<!-- <input type="submit" value="전송" onclick="return check()"> -->
		<input type="submit" value="전송" class="submit_btn">
	</form>
</body>
</html>