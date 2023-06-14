<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
<!doctype html>
<html class="completion_back-color">
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- <h1>登録完了</h1> -->
<table>
  <tr>
    <td>
	  <input id="completion_text" type="text" value="登録が完了いたしました" readonly style="margin: 50px 0 20px -30px">
	</td>
  </tr>

  <tr>
    <td>
      <a href="${result.backTo}">
		<input id="go_login" type="button" value="ログイン画面へ">
	  </a>
	</td>
  </tr>
</table>
</body>
</html>