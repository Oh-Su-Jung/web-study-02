<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="exam_join.js"></script>
	
<style>
	@font-face {font-family: 'S-CoreDream-4Regular'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff'); font-weight: normal; font-style: normal;}
            
	* {margin:0; padding:0; font-family:'S-CoreDream-4Regular'}
	h1 {text-align:center; font-size:40px; margin:60px 0;}
	form {width:800px; margin:0 auto; text-align:center;}
	ul li {width:100%; overflow:hidden; margin-bottom:5px; text-align:left;}
	ul li > label {float:left; width:20%; line-height:35px;}
	ul li > div {float:left; width:80%; line-height:35px;}
	.input_text, .select_style1 {width:200px; height:35px; border:1px solid #9c9c9c; box-sizing:border-box; font-family:'S-CoreDream-4Regular'}
	.input_text {padding:0 7px;}
	.select_style2 {width:200px; height:80px; border:1px solid #9c9c9c;}
	input[type="submit"], input[type="reset"] {display:inlnie-block; width:220px; height:40px; border:0; background:#ff0000; text-align:center; color:#fff; margin:70px auto 0; cursor:pointer;}
</style>
</head>
<body>
	<h1>회원가입</h1>
	<form method="get" action="ExamJoin">
		<ul>
			<li>
				<label for="user_name">이름</label>
				<div>
					<input type="text" id="user_name" name="user_name" class="input_text" value="홍길동">
				</div>
			</li>
			<li>
				<label for="user_number1">주민등록번호</label>
				<div>
					<input type="text" id="user_number1" name="user_number1" class="input_text" value="200818"> - <input type="password" id="user_number2" name="user_number2" class="input_text" value="1234567">
				</div>
			</li>
			<li>
				<label for="user_id">아이디</label>
				<div>
					<input type="text" id="user_id" name="user_id" class="input_text" value="test">
				</div>
			</li>
			<li>
				<label for="user_pwd">비밀번호</label>
				<div>
					<input type="password" id="user_pwd" name="user_pwd" class="input_text" value="0000">
				</div>
			</li>
			<li>
				<label for="user_pwd_chk">비밀번호 확인</label>
				<div>
					<input type="password" id="user_pwd_chk" name="user_pwd_chk" class="input_text" value="0000">
				</div>
			</li>
			<li>
				<label for="email_id">이메일</label>
				<div>	
					<input type="text" id="email_id" name="email_id" class="input_text" value="test"> @ <input type="text" id="email_add" name="email_add" class="input_text">
					<select name="email_add_list" class="select_style1">
						<option value="">선택하세요</option>
						<option value="nate.com">nate.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
					</select>
				</div>
			</li>
			<li>
				<label for="post_number">우편번호</label>
				<div>
					<input type="text" id="post_number" name="post_number" class="input_text" value="12345">
				</div>
			</li>
			<li>
				<label for="add1">주소</label>
				<div>
					<input type="text" id="add1" name="add1" class="input_text" value="대구 서구"> <input type="text" name="add2" class="input_text" value="영남인재교육원">
				</div>
			</li>
			<li>
				<label for="tel">핸드폰번호</label>
				<div>
					<input type="text" id="tel" name="tel" class="input_text" value="010-1234-5678">
				</div>
			</li>
			<li>
				<label class="job">직업</label>
				<div>
					<select id="job" name="job" multiple="multiple" class="select_style2">
						<option value="학생">학생</option>
						<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
						<option value="언론">언론</option>
						<option value="공무원">공무원</option>
						<option value="군인">군인</option>
						<option value="서비스업">서비스업</option>
						<option value="교육">교육</option>
					</select>
				</div>
			</li>
			<li>
				<label>메일/sms 정보 수신</label>
				<div>
					<input type="radio" name="chk_mail" value="수신" checked> 수신
					<input type="radio" name="chk_mail" value="수신거부"> 수신거부
				</div>
			</li>
			<li>
				<label>관심분야</label>
				<div>
					<input type="checkbox" name="interest" value="생두" checked> 생두
					<input type="checkbox" name="interest" value="원두"> 원두
					<input type="checkbox" name="interest" value="로스팅" checked> 로스팅
					<input type="checkbox" name="interest" value="핸드드립"> 핸드드립
					<input type="checkbox" name="interest" value="에스프레소" checked> 에스프레소
					<input type="checkbox" name="interest" value="창업"> 창업
				</div>
			</li>
		</ul>
		<input type="submit" value="회원가입" class="submit_btn">
		<input type="reset" value="취소">
	</form>
</body>
</html>