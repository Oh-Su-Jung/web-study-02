$(function(){
	
	$(".submit_btn").click(function(){
		if ($("#user_name").val() == ""){
			alert("아이디를 입력해주세요")
			$("#user_name").focus();
			return false;
		} else if ($("#email_add").val() == ""){
			alert("이메일을 선택해주세요")
			$("#email_add").focus();
			return false;
		} else {
			return true;
		}
	})
	
	$(".select_style1").change(function(){
		$("#email_add").val($(this).val())
		console.log($(this).val())
	})
})