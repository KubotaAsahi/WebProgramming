<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css">
<title>一覧</title>
</head>
<body>
	<div class="container">
		<ul class="nav justify-content-end">
			<h4>ユーザ名さん </h4>

			<a class="btn btn-danger" href="login.html" role="button">ログアウト</a>
		</ul>
		<h1 class="text-center">
			ユーザ一覧<span class="badge badge-secondary"></span>
		</h1>

		<ul class="nav justify-content-end">
			<li class="nav-item"><a class="nav-link active" href="newUser.html">新規登録</a>
		</ul>

		<div class="contents-center">
			<form>
				<div class="form-group row">
					<label for="staticEmail" class="col-sm-2 col-form-label">ログインID</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="staticEmail"
							placeholder="ID">
					</div>
				</div>
				<div class="form-group row">
					<label for="staticEmail" class="col-sm-2 col-form-label">ユーザ名</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="staticEmail"
							placeholder="User">
					</div>
				</div>
				<div class="form-group row">
					<label for="staticEmail" class="col-sm-2 col-form-label">生年月日</label>
					<div class="col-sm-2">
						<input type="date">
					</div>
					<div class="col-sm-1">～</div>
					<div class="col-sm-2">
						<input type="date">
					</div>
				</div>
			</form>
		</div>
		<ul class="nav justify-content-end">
			<a class="btn btn-primary" href="#" role="button">検索</a>
		</ul>
		<table class="table">
			<thead>
				<tr>
					<th>ログイン</th>
					<th>ユーザ名</th>
					<th>生年月日</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>admin</td>
					<td>管理者</td>

					<td>
						<a class="btn btn-primary" href="userInformation.html" role="button">詳細</a>
						<a class="btn btn-success" href="UpdateUser.html" role="button">更新</a>
						<a class="btn btn-danger" href="removeUser.html" role="button">削除</a>
					</td>
				</tr>

			</tbody>
		</table>

	</div>
</body>
</html>