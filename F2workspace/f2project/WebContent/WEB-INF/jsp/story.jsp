<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width">
<title>memoly</title>
</head>
<body>
<div class="openbtn2">
		<span></span><span></span><span></span>
	</div>
	<nav id="g-nav2">
		<div id="g-nav-list2">
			<ul>
				<li><a href="MapServlet">マップ</a></li>
				<li><a href="listServlet">リスト</a></li>
				<li><a href="titleServlet">称号</a></li>
				<li><a href="storyServlet">ストーリー</a></li>
				<li><a href="usageServlet">使い方</a></li>
			</ul>
		</div>
	</nav>
<div class = "header">
	<img src="img/memolylogo.png" alt="メモリーロゴ">
</div>
<div class = "main">
<div class="story_photo">
	<img src="img/storyplusimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
	<img src="img/storyimg.png" alt="ストーリー画像" width="150px" height="150px">
</div>

</div>
</body>
<script>
  $(".openbtn1").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav1").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
});

//$("#g-nav a").click(function () {//ナビゲーションのリンクがクリックされたら
//    $(".openbtn1").removeClass('active');//ボタンの activeクラスを除去し
//    $("#g-nav1").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
//});

  $(".openbtn2").click(function () {//ボタンがクリックされたら
  $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
  $("#g-nav2").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
});

  $("#g-nav2 a").click(function () {//ナビゲーションのリンクがクリックされたら
  $(".openbtn2").removeClass('active');//ボタンの activeクラスを除去し
  $("#g-nav2").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
});
</script>
</html>