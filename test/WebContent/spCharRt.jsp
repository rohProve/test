<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--  <script src="/js/jquery-3.6.1.min.js"></script>-->
<script
  src="https://code.jquery.com/jquery-3.6.1.min.js"
  integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
  crossorigin="anonymous">
</script>
<script type="text/javascript">
	$(document).ready(function(){
		console.log("is jQuery Functional ?");
		
		//특수문자 입력막기
		var reg = /[^(A-Za-z0-9ㄱ-ㅎ가-힣ㅏ-ㅣ!@#$%^&*()\-_+=;:,<.>/?`~"'ㆍᆢ‘“\s)]/g;
		
		$("#review_tit, #review_cont").on("input keyup paste",function(){
			
			target = $(this).val();
			
			if(reg.test(target)){
				
				alert("` ~ ! @ # $ % ^ & * ( ) - _ + = ; : \' \" , < . > / ? 외 다른 특수문자는 입력 불가합니다.");
				$(this).val(target.replaceAll(reg, ''));
				return;
			}
		})
	});
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 특수문자 입력막기 테스트 </title>
</head>
<body>
	<div>
		<input type="text" id="review_tit">
	</div>
</body>
</html>