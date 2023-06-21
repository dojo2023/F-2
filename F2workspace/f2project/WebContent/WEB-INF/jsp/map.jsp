<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="ja">
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<link rel="stylesheet" href="css/style.css">
	<meta name="viewport" content="width=device-width">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<title>memoly</title>
</head>

<body>
	<div class="openbtn1">
		<span></span><span></span><span></span>
	</div>
	<nav id="g-nav1">
		<form action="/f2project/MapServlet" method="post" enctype="multipart/form-data">
			<div id="g-nav-list1"><br>
				<ul>
					<li class="left">スポット名</li>
					<li id="spotname">
						<input type="text" size= "36" name="spotname" required>
					</li>
				</ul>

				<ul>
					<li class="left">スポット住所</li>
					<li class="spotarea">
						<textarea class="area" cols="37" rows="2" maxlength="40" name="spotaddress" required></textarea>
					</li>
				</ul>

				<ul>
					<li class="left">ジャンル</li>
					<li class="center">
						<input type="radio" name="genre" value="img/memoryicon" checked><img src="img/memoryicon.png" alt="メモリーアイコン" width="40px" height="40px">
						<input type="radio" name="genre" value="img/foodicon"><img src="img/foodicon.png" alt="フードアイコン" width="40px" height="40px">
						<input type="radio" name="genre" value="img/shoppingicon"><img src="img/shoppingicon.png" alt="ショッピングアイコン" width="40px" height="40px">
						<input type="radio" name="genre" value="img/othericon"><img src="img/othericon.png" alt="その他アイコン" width="40px" height="40px">
					</li>
				</ul>

				<ul>
					<li class="left">画像</li>
					<li class="center">
  						<input type="file" name="image" multiple>
   					</li>
				</ul>

				<ul>
					<li class="left">備考</li>
					<li class="spotarea">
						<textarea class="area" cols="37" rows="5" maxlength="100" name="spotremarks" required></textarea>
					</li>
				</ul>

				<ul>
					<li class="right"><input type="submit" value="登録" ></li>
				</ul>
			</div>
		</form>
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

	<div id="map">
		<div id="out_map"></div>
		<iframe id="maps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7932.259494018684!2d139.776229
			038981!3d35.69766620469117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sja!2sjp!4v1686291565507!5m2!1sja!
			2sjp"
			width="390" height="844" style="border: 0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
		</iframe>
	</div>

	<form method="GET" action="/f2project/listServlet">
		<input id="pin" type="button" name="img" value="ピン">
		<input id="img_data" type="submit" value="画像データ">
		<div id="getimg_data_x">
			<input type="text" name="setimg_data_x" readonly>
		</div>
		<div id="getimg_data_y">
			<input type="text" name="setimg_data_y" readonly>
		</div>
	</form>

	<div id="img"></div>

	<div id="currentlocationbtn">
<!-- 例) 青森 --><a href="">
			<img class = "currentlocation" src="img/currentlocation_icon.png" alt="現在地" width="50" height="50">
		</a>
	</div>
	<script type="text/javascript">
		document.getElementById("currentlocationbtn").onclick = function( event ) {
//			alert('現在地');
			const url = 'https://www.google.com/maps/place/%E3%80%92039-1103+%E9%9D%92%E6%A3%AE%E7%9C%8C%E5%85%AB%E6%88%B8%E5%B8%82%E9%95%B7%E8%8B%97%E4%BB%A3/@40.5176807,141.4312381,14z/data=!3m1!4b1!4m6!3m5!1s0x5f9b4e1ab44e05f7:0xd93131cd4c327d19!8m2!3d40.5167742!4d141.4557844!16s%2Fg%2F1pxxsg7wh?entry=ttu'
			window.open(url, '_blank');
		}
	</script>

	<div id="characterbtn">
		<img class = "character" src="img/character.png" alt="キャラクター" width="120" height="120">
	</div>

	<audio id="charavoice" preload="none">
  		<source src="voice/charavoice1.wav" type="audio/wav">
	</audio>
	<script type="text/javascript">
		document.getElementById("characterbtn").onclick = function( event ) {
			document.getElementById("charavoice").play();
		}
	</script>

	<div class="balloon">
		<textarea class="message" readonly>こんにちは！今日はいい天気ですね！どこにいきましょうか？</textarea>
	</div>


	<div class = "search_container">
		<input type="text" size="25" placeholder="キーワード検索">
		<input type="submit" value="&#xf002">
	</div>
</body>
<script>

$("#pin").click(function () {//ボタンがクリックされたら
	$("#out_map").toggleClass('active_map');//ナビゲーションにpanelactiveクラスを付与
	$(this).toggleClass('setimg');
	document.getElementById( "out_map" ).onclick = function( event ) {
		var ximg = event.pageX ;	// 水平の位置座標
		var yimg = event.pageY ;	// 垂直の位置座標

		var img = document.getElementById("img");
		var url = "img/destinationicon.png";

		dispic(img, url, ximg, yimg);
		function dispic(img, url, x, y){
			x -= 13.5;
			y -= 42.5;
			var image = new Image();
			image.src = url;
			image.width = 29;
			image.height = 44;
			image.style.position = "fixed";
			image.style.zIndex = 9992;
			image.style.left = x + "px";
			image.style.top = y + "px";
			image.setAttribute("src", url);
			img.appendChild(image);

			var img_data_x = document.getElementById("getimg_data_x").textContent = x;
			var img_data_y = document.getElementById("getimg_data_y").textContent = y;

			console.log("x = " + x);
			console.log("y = " + y);
		}
	}
});

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

$("#characterbtn").click(function () {//ボタンがクリックされたら
	$(".balloon").toggleClass('active');//balloonに activeクラスを付与し
});

$(".balloon").click(function () {//ボタンがクリックされたら
	$(this).removeClass('active');//balloonの activeクラスを除去し
});
</script>
</html>