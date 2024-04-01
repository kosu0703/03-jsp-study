<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파라미터 배열</title>
	</head>
	<body>
		
		<form action="/01_servlet/Ex09" method="get">
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
			</fieldset>
		</form>
		
	</body>
</html>