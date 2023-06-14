<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
	<html>
		<head>
			<meta charset="UTF-8">
			<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
			<link rel="stylesheet" href="css/style.css">
			<meta name="viewport" content="width=device-width">
			<title>
				memoly
			</title>
		</head>
		<body>
		<div class="openbtn1">
			<span></span><span></span><span></span>
		</div>
			<nav id="g-nav1">
				<div id="g-nav-list1">
					<p>スポット登録画面</p>
				</div>
			</nav>
		<div class="openbtn2">
			<span></span><span></span><span></span>
		</div>
		<nav id="g-nav2">
			<div id="g-nav-list2">
				<ul>
					<li><a href="MapServlet_test">マップ</a></li>
					<li><a href="ListServlet">リスト</a></li>
					<li><a href="#">称号</a></li>
					<li><a href="#">ストーリー</a></li>
					<li><a href="#">使い方</a></li>
				</ul>
			</div>
		</nav>
		<!--<div id="main"> -->
			<div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7932.259494018684!2d139.776229
			038981!3d35.69766620469117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sja!2sjp!4v1686291565507!5m2!1sja!
			2sjp" width="390" height="844" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer
			-when-downgrade"></iframe>
			</div>
			<input class="buttontest" type="button" value="ボタン">
		<!--</div>-->
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