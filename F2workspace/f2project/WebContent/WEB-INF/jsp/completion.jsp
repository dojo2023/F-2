<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="completion_back-color">
<head>
  <meta charset="UTF-8">
  <title>memoly | ${result.title}</title>
  <link rel="stylesheet" type="text/css" href="/f2project/css/user.css">
  <meta name="viewport" content="width=device-width">
</head>

<body>
  <div id="main" class="completion_main">
    <div id="all_form">
      <div id="completion_form">
        <table>
          <tr>
            <td>
              <div id="completion_text">
                &nbsp;&nbsp;${result.message}
              </div>
            </td>
          </tr>

          <tr>
            <td>
              <a href="${result.backTo}">
	            <input id="go_login" type="button" value="${result.backTo_name}画面へ">
             </a>
            </td>
          </tr>
        </table>
      </div>
    </div>
  </div>
</body>
</html>