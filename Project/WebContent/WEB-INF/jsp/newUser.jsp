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
			<h4>ユーザ名さん</h4>

			<a class="btn btn-danger" href="login.html" role="button">ログアウト</a>
		</ul>
		<h1 class="text-center">
			ユーザ新規登録<span class="badge badge-secondary"></span>
		</h1>

		<div class="contents-center">
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">ログインID</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">パスワード</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword3">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">パスワード(確認)</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword3">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">ユーザ名</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3">
				</div>
			</div>
			<div class="form-group row">
				<label for="staticEmail" class="col-sm-2 col-form-label">生年月日</label>
				<div class="col-sm-2">
					<input type="date">
				</div>
				<div class="col-sm-1"></div>
			</div>
			<div class="nav justify-content-center">
				<a class="btn btn-primary" href="userList.html" role="button">登録</a>
			</div>

			<ul class="nav">
				<li class="nav-item"><a class="nav-link active" href="userList.html">戻る</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>