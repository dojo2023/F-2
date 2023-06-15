<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="reset_back-color">
<head>
<meta charset="UTF-8">
<title>質問を入力してください</title>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
</head>
<body>
<!-- <h2>PWリセット</h2> -->
   <form id="reset_form" method="POST" action="/f2project/questionServlet">
    <table>
      <tr>
        <td>
          <div class="question_text">
          新しいパスワードを入力してください。
          </div>
        </td>
      </tr>

      <tr>
	    <td>
          <label>&nbsp;&nbsp;秘密の質問<br>
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
          <label>&nbsp;&nbsp;回答<br>
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
    <input id="question_back" type="submit" name="back" value="戻る">
    </form>
</body>
</html>