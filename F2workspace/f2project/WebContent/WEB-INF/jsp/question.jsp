<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- <h2>PWリセット</h2> -->
   <form method="POST" action="/f2project/questionServlet">
    <table>
      <tr>
        <td>
          <input id="reset_text" type="text" value="秘密の質問にお答えください。" readonly>
        </td>
      </tr>

      <tr>
	    <td>
          <label>秘密の質問<br>
          <select id="q" class="reset_label" name="QUESTION">
          	<option value="1">しつもん１</option>
          	<option value="2">しつもん２</option>
          	<option value="3">しつもん３</option>
          </select>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>回答<br>
          <input id="ans" class="regist_label" type="text" name="ANSWER" placeholder="例）ポチ" maxlength="30" required>
          </label>
        </td>
      </tr>


      <tr>
        <td>
          <input id="submit" type="submit" name="next" value="次へ">
        <td>
      </tr>
    </table>
    </form>
    <form method="POST" action="/f2project/resetServlet">
    <input id="back" type="submit" name="back" value="戻る" style="margin-top: -34px">
    </form>
</body>
</html>