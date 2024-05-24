<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>이름 국영수 받기</title>
	</head>
	<body>
	
		<form action="/01_servlet/Ex14" method="get">
			<fieldset>
				<legend>정보입력</legend>
				<p>이름 : <input type="text" name="name" required></p>
				<p>국어 : <input type="number" name="kor" required></p>
				<p>영어 : <input type="number" name="eng" required></p>
				<p>수학 : <input type="number" name="math" required></p>
				<input type="submit" value="보내기">
				<input type="reset" value="취소">
				<!-- ** cmd 는 반드시 주자 -->
				<input type="hidden" name="cmd" value="4">
			</fieldset>
		</form>
		<hr>
		
		<form action="/01_servlet/Ex14" method="post">
			<fieldset>
				<legend>배열 파라미터 넘기기</legend>
				<p>취미 :
					<input type="checkbox" name="hobby" value="운동">운동
					<input type="checkbox" name="hobby" value="게임">게임
					<input type="checkbox" name="hobby" value="영화">영화
					<input type="checkbox" name="hobby" value="독서">독서
				</p>
				<p>웹 프로그래밍 : <br>
					<select name="web" multiple size="5">
						<option>HTML</option>
						<option>CSS</option>
						<option>JS</option>
						<option>JSP</option>
						<option>Spring</option>
					</select>
				</p>
				<input type="submit" value="결과보기">
				<input type="hidden" name="cmd" value="5">
			</fieldset>
		</form>
						
	</body>
</html>