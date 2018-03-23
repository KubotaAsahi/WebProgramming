<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<title>新規登録</title>
</head>
<body>
	<div class="container">
		<ul class="nav justify-content-end">
			<h4>
				<li class="navbar-text">${userInfo.name}さん</li>
			</h4>

			<a href="LogoutServlet" class="btn btn-danger"logout-link">ログアウト</a>
		</ul>
		<h1 class="text-center">
			ユーザ新規登録<span class="badge badge-secondary"></span>
		</h1>

		<div class="contents-center">
			<form class="form-signin" action="NewUserServlet" method="post">
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">ログインID</label>
					<div class="col-sm-10">
						<input type="text" name="loginId" id="inputLoginId"
							class="form-control" required autofocus>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword3" class="col-sm-2 col-form-label">パスワード</label>
					<div class="col-sm-10">
						<input type="password" name="password" id="inputPassword"
							class="form-control" required>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword3" class="col-sm-2 col-form-label">パスワード(確認)</label>
					<div class="col-sm-10">
						<input type="password" name="password" id="inputPassword"
							class="form-control" required>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputEmail3" class="col-sm-2 col-form-label">ユーザ名</label>
					<div class="col-sm-10">
						<input type="name" name="name" id="inputName" class="form-control"
							required>
					</div>
				</div>
				<div class="form-group row">
					<label for="staticEmail" class="col-sm-2 col-form-label">生年月日</label>
					<div class="col-sm-2">
						<input type="date" name="birthDate" id="inputBirthDate">
					</div>
					<div class="col-sm-1"></div>
				</div>
				<div class="nav justify-content-center">
					<button class="btn btn-primary" type="submit">登録</button>
				</div>
			</form>
			<a href="UserListServlet">戻る</a>
		</div>
	</div>
</body>
</html>