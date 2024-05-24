<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>국영수 점수</title>
		<style type="text/css">
			fieldset{width:300px;}
		</style>
		<script type="text/javascript">
			function send_go(f) {
				f.action="/01_servlet/Ex08";
			
				//	검사 (한두개일때)
				/* 
				let name = f.name.value;
				if (name === '') {
					alert('이름을 입력하세요');
					f.name.focus();
					return;
				} 
				*/
				
				//	여러개 검사 => for문
				//	폼 태그 요소들을 끄집어낸다.
				//	(**보통 꺼내는 폼요소는 input 타입)
				for (let i = 0; i < f.elements.length; i++) {
					//	form 요소 fieldset 0 , legend 제외 , p 이름 1 , p 국어 2 , ...
					//	국어를 제외시키자
					//if(i===2) continue;
					if(f.elements[i].value === ''){
						alert(f.elements[i].name + ' 을 입력하세요');
						f.elements[i].focus();
						return;
					}
				}
				f.submit();
			}
		</script>
	</head>
	<body>
		<h2>HTML 을 활용한 서버(서블릿)에게 정보 보내기</h2>
		<form action="/01_servlet/Ex08" method="get">
			<fieldset>
				<legend>정보입력</legend>
				<p>이름 : <input type="text" name="name" required></p>
				<p>국어 : <input type="number" name="kor" required></p>
				<p>영어 : <input type="number" name="eng" required></p>
				<p>수학 : <input type="number" name="math" required></p>
				<input type="submit" value="보내기">
				<input type="reset" value="취소">
			</fieldset>
		</form>
		
		<h2>JS 을 활용한 서버(서블릿)에게 정보 보내기</h2>
		<form method="get">
			<fieldset>
				<legend>정보입력</legend>
				<p>이름 : <input type="text" name="name"></p>
				<p>국어 : <input type="number" name="kor"></p>
				<p>영어 : <input type="number" name="eng"></p>
				<p>수학 : <input type="number" name="math"></p>
				<input type="button" value="보내기" onclick="send_go(this.form)">
				<input type="reset" value="취소">
			</fieldset>
		</form>
		
	</body>
</html>