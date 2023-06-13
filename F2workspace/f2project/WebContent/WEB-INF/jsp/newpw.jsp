<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- <h2>新しいパスワードを入力してください</h2> -->
<form id="reset_form" method="POST" action="/f2project/newpwServlet">

  <table>
      <tr>
        <td>
          <input id="reset_text" type="text" value="新しいパスワードを入力してください。" readonly>
        </td>
      </tr>

      <tr>
        <td>
          <label>新しいパスワードを入力<br>
          <input id="pw" class="reset_label" type="password" value="${check_pw}" name="PW" placeholder="例）f2password" maxlength="20" required>
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label>新しいパスワードを入力(確認用)<br>
          <input id="pw" class="reset_label" type="password" name="PW2" maxlength="20" required>
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <input id="submit" type="submit" name="regist" value="登録" style="margin-left: 25%">
        </td>
      </tr>
    </table>
  </form>
<script>
'use strict';

document.getElementById('reset_form').onsubmit = function(event) {
	const PW = document.getElementById('reset_form').PW.value;
	const PW2 = document.getElementById('reset_form').PW2.value;
	if(PW != PW2){
	    alert('パスワードが一致しません。');
	    event.preventDefault();
	}
}
</script>
</body>
</html>