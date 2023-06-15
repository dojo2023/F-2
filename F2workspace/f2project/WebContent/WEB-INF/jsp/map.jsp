<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
	<html>
		<head>
			<meta charset="UTF-8">
			<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
			<link rel="stylesheet" href="css/style.css">
			<meta name="viewport" content="width=device-width">
			<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
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
					<p>スポット名</p>
					<input type="text" name="Spot_name">
					<p>ジャンル</p>
					<input type="radio" name="genre" value="1"><img src="img/memoryicon.png" alt="メモリーアイコン" width="24px" height="24px">
					<input type="radio" name="genre" value="2"><img src="img/foodicon.png" alt="フードアイコン" width="24px" height="24px">
					<input type="radio" name="genre" value="3"><img src="img/shoppingicon.png" alt="ショッピングアイコン" width="24px" height="24px">
					<input type="radio" name="genre" value="4"><img src="img/othericon.png" alt="その他アイコン" width="24px" height="24px">
				<p>画像</p>
				<div>
    				<div>
      					<input type="file" name="test">
    				</div>
    				<div>
      					<input type="submit" value="送信する">
    				</div>
				<p>備考</p>
				<textarea name="Spot_remarks"></textarea >
				</div>
				<p><input type="button" value="登録" ></p>
				</div>
			</nav>
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
		<!--<div id="main"> -->
			<div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7932.259494018684!2d139.776229
			038981!3d35.69766620469117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sja!2sjp!4v1686291565507!5m2!1sja!
			2sjp" width="390" height="844" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer
			-when-downgrade"></iframe>
			</div>
			<img class = "currentlocation" src="img/currentlocation_icon.png" alt="現在地" width="50" height="50">


			<div class = "search_container">
			<input type="text" size="25" placeholder="キーワード検索">
 			<input type="submit" value="&#xf002">
 			</div>
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