<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<li class="navbar-text">${userInfo.name}さん</li>

			<a href="LogoutServlet" class="btn btn-danger"logout-link">ログアウト</a>
		</ul>
		<h1 class="text-center">
			ユーザ一覧<span class="badge badge-secondary"></span>
		</h1>

		<ul class="nav justify-content-end">
			<li class="nav-item"><div class="text-right">
			<a href="NewUserServlet" "logout-link">新規登録</a>

				</div>
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
		 <div class="text-right">
                  <button type="submit" value="検索" class="btn btn-primary form-submit">検索</button>
                </div>
		<table class="table">
			<thead>
				<tr>
					<th>ログインID</th>
					<th>ユーザ名</th>
					<th>生年月日</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="user" items="${userList}" >
				<tr>
					 <td>${user.loginId}</td>
                     <td>${user.name}</td>
                     <td>${user.birthDate}</td>
					<td class="nav justify-content-end">
						<a class="btn btn-primary" href="UserDetailServlet?id=${user.id}">詳細</a>
                        <a class="btn btn-success" href="UserUpdateServlet?id=${user.id}">更新</a>
                        <a class="btn btn-danger" href ="UserDeleteServlet?id=${user.id}">削除</a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>