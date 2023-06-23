<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<c:forEach var="e" items="${cardList}" >
	ID<input type="text" value="${e.id}"><br>
	ジャンル<input type="text" value="${e.genre}"><br>
</c:forEach>
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
		<input type="image" src="img/storyplusimg.png" alt="ストーリー画像" width="150px" height="150px">
		<a href="/f2project/SlideshowServlet?story=1"><img src="img/memorystory.png" name="story" alt="思い出ストーリー" width="150px" height="150px"></a>
		<a href="/f2project/SlideshowServlet?story=2"><img src="img/storyimg.png" name="story" alt="1年前" width="150px" height="150px"></a>
		<a href="/f2project/SlideshowServlet?story=3"><img src="img/foodicon.png" name="story" alt="フードストーリー" width="150px" height="150px"></a>
		<input type="image" src="img/storyimg.png" value="story" alt="ストーリー画像" width="150px" height="150px">
		<input type="image" src="img/storyimg.png" value="story" alt="ストーリー画像" width="150px" height="150px">
		<input type="image" src="img/storyimg.png" value="story" alt="ストーリー画像" width="150px" height="150px">
		<input type="image" src="img/storyimg.png" value="story" alt="ストーリー画像" width="150px" height="150px">
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