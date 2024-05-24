<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>요청 받는 화면단</title>
		<script type="text/javascript">
			function send_go(f) {
				//	required 가 먹히지 않아서 검사하기
				let name = f.userName.value;
				if (name === '') {
					alert("이름을 입력하세요");
					f.userName.focus();
					return;
				}
				//	form 태그에 action 이 없으면
				f.action = "/01_servlet/Ex06";
				f.submit();
			}
		</script>
	</head>
	<body>
	
		<h2>HTML 을 활용한 서버(서블릿)에게 정보 보내기</h2>
		<!-- 무조건 폼태그 사용 -->
		<form action="/01_servlet/Ex06" method="get">
			<p>이름 : <input type="text" name="userName" placeholder="이름을 입력하세요." required></p>
			<p>나이 : <input type="number" name="userAge" required></p>
			<input type="submit" value="서버에게 보내기">
			<input type="reset" value="취소">
		</form>
		<hr>
		
		<h2>JS 를 활용한 서버(서블릿)에게 정보 보내기</h2>
		<!-- required 가 적용되지 않는다. -->
		<form method="get">
			<p>이름 : <input type="text" name="userName" placeholder="이름을 입력하세요." required></p>
			<p>나이 : <input type="number" name="userAge" required></p>
			<input type="button" value="서버에게 보내기" onclick="send_go(this.form)">
			<input type="reset" value="취소">
		</form>
		<hr>
		
	</body>
</html>