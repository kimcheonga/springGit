<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2조보드프로젝트</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function() {
		$("#btn_signup").on("click", function() {
			location.href = "/member/signup"
		})
	})
</script>

</head>
<body>

	<c:choose>
		<c:when test="${login== null}">

			<form action="/member/loginProc" method="post">
				<table border=1 align=center>
					<tr>
						<th> 2조 보드프로젝트 로그인
					</tr>
					<tr>
						<td><input type=text placeholder="input id" name=id>
					</tr>
					<tr>
						<td><input type=password placeholder="input pw" name=pw>
					</tr>
					<tr>
						<td align=center>
							<button id="login">Login</button>
							<button type="button" id="btn_signup">회원가입</button>
					</tr>
				</table>
			</form>

		</c:when>
		<c:otherwise>
${login }님 Hi
</c:otherwise>
	</c:choose>
</body>
</html>