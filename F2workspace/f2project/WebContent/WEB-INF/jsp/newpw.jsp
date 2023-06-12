<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3</title>
</head>
<body>
<h2>新しいパスワードを入力してください</h2>

<form id="reset_form" method="POST" action="/f2project/newpwServlet">

  <table>
      <tr>
        <td>
          <label>新しいパスワードを入力<br>
          <input type="text" name="PW" required>
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <label>新しいパスワードを入力(確認用)<br>
          <input type="text" name="PW2" required>
          </label>
        </td>
      </tr>
      <tr>
        <td>
          <input type="submit" name="regist" value="登録">
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