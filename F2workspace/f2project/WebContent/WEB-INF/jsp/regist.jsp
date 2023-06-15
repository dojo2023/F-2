<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
</head>
<body>
   <form id="regist_form" method="POST" action="/f2project/confirmServlet">
    <table>
      <tr>
        <td>
          <div id="regist_text" style="border: solid">
            &nbsp;&nbsp;IDは8～20文字<br>
          	&nbsp;&nbsp;PWは8～20文字の英数字<br>
			&nbsp;&nbsp;秘密の質問はパスワードお忘れの際に<br>
			&nbsp;&nbsp;ご利用になります。
          </div>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;ID<br>
          <input id="id" class="regist_label" type="text" name="ID" placeholder="例）f2project" maxlength="20" required>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;PW<br>
          <input id="pw" class="regist_label" type="password" name="PW" placeholder="例）f2password" maxlength="20" required>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;秘密の質問<br>
          <select id="q" class="regist_label" name="QUESTION">
          	<option value="1">飼っていたペットの名前は？</option>
          	<option value="2">通っていた小学校の名前は？</option>
          	<option value="3">母親の旧姓は？</option>
          </select>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;回答<br>
          <input id="ans" class="regist_label" type="text" name="ANSWER" placeholder="例）ポチ" maxlength="30" required>
          </label>
        </td>
      </tr>


      <tr>
        <td colspan="2">
          <input id="check" type="submit" name="check" value="確認画面へ">
          <input id="reset" type="reset" name="reset" value="リセット">
        <td>
      </tr>
    </table>
    </form>
</body>
</html>