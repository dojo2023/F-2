<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="regist_back-color">
<head>
<meta charset="UTF-8">
<title>新規登録確認</title>
<link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
</head>
<body>
   <form id="regist_form" method="POST" action="/f2project/completionServlet">
    <table>
      <tr>
        <td>
          <div class="confirm_text">
          こちらでお間違いないですか？
          </div>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;ID<br>
          <input id="id" class="regist_label" type="text" value="${check_id}" name="ID" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;PW<br>
          <input id="pw" class="regist_label" type="text" value="${check_pw}" name="PW" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;秘密の質問<br>
          <input id="q" class="regist_label" type="text" value="${check_question}" readonly>
          </label>
        </td>
      </tr>

      <tr>
        <td>
          <label>&nbsp;&nbsp;回答<br>
          <input id="ans" class="regist_label" type="text" value="${check_answer}" name="ANSWER" readonly>
          </label>
        </td>
      </tr>


      <tr>
        <td colspan="2">
          <input id="submit" type="submit" name="regist" value="登録">
          <a href="/f2project/registServlet">
            <input id="back" type="button" name="back" value="戻る">
          </a>
        <td>
      </tr>
    </table>
    </form>
</body>
</html>