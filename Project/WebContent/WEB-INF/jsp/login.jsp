<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<title>ログイン画面</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center">
			ログイン画面<span class="badge badge-secondary"></span>
		</h1>

		<c:if test="${errMsg != null}">
			<div class="alert alert-danger" role="alert">${errMsg}</div>
		</c:if>


		<form class="form-signin" action="LoginServlet" method="post">
			<div class="contents-center">

				<form class="form-signin" action="LoginServlet" method="post">
					<span id="reauth-email" class="reauth-email"></span>
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-2 col-form-label">ログインID</label>
						<div class="col-sm-10">
							<input type="text" name="loginId" id="inputLoginId"
								class="form-control" placeholder="ログインID" required autofocus>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-2 col-form-label">パスワード</label>
						<div class="col-sm-10">
							<input type="password" name="password" id="inputPassword"
								class="form-control" placeholder="パスワード" required>
						</div>
					</div>
					<button class="btn btn-primary" type="submit">ログイン</button>
				</form>
			</div>
		</form>
	</div>
</body>
</html>