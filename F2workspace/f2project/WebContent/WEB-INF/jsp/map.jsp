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
			<div id="g-nav-list1">
				<ul>
					<li class="left">スポット名</li>
					<li id="spotname">
						<input type="text" size= "36" name="spotname" placeholder="スポット名を入力してください" required>
						<div class="text_underline"></div>
					</li>
				</ul>
				<ul>
					<li class="left">スポット住所</li>
					<li class="spotarea">
						<textarea class="area" cols="37" rows="2" maxlength="40" name="spotaddress" placeholder="住所を入力してください" required></textarea>
												<div class="text_underline"></div>
					</li>
				</ul>
				<ul>
					<li class="left">ジャンル</li>
					<li class="center">
						<input id="memory" type="radio" name="genre" value="img/memoryicon" checked>
						<label for="memory"><img src="img/memoryicon.png" alt="メモリーアイコン" width="40px" height="40px"></label>
						<input id="food" type="radio" name="genre" value="img/foodicon">
						<label for="food"><img src="img/foodicon.png" alt="フードアイコン" width="40px" height="40px"></label>
						<input id="shopping" type="radio" name="genre" value="img/shoppingicon">
						<label for="shopping"><img src="img/shoppingicon.png" alt="ショッピングアイコン" width="40px" height="40px"></label>
						<input id="other" type="radio" name="genre" value="img/othericon">
						<label for="other"><img src="img/othericon.png" alt="その他アイコン" width="40px" height="40px"></label>
					</li>
				</ul>
				<ul>
					<li class="left">画像</li>
					<li class="center">
					<label class="file">
  						<input type="file" name="image" multiple class="submit">選択してください
  					</label>
   					</li>
				</ul>
				<ul>
					<li class="left">備考</li>
					<li class="spotarea">
						<textarea class="area" cols="37" rows="5" maxlength="100" name="spotremarks" required></textarea>
						<div class="text_underline"></div>
					</li>
				</ul>
				<ul>
					<li class="right"><input type="submit" value="登録" class="submit" ></li>
				</ul>
			</div>
			<input id="img_data_x" type="hidden" name="img_data_x" value="x">
			<input id="img_data_y" type="hidden" name="img_data_y" value="y">
			<input id="img_data_x2" type="hidden" name="img_data_x2" value="x2">
			<input id="img_data_y2" type="hidden" name="img_data_y2" value="y2">
		</form>
	</nav>

	<div class="openbtn4">
		<span></span><span></span><span></span>
	</div>

	<nav id="g-nav4">
		<div id="g-nav-list4">
			<ul>
				<li><a href="MapServlet">マップ</a></li>
				<li><a href="listServlet">リスト</a></li>
				<li><a href="titleServlet">称号</a></li>
				<li><a href="storyServlet">ストーリー</a></li>
				<li><a href="usageServlet">使い方</a></li>
			</ul>
		</div>
	</nav>

	<div id="ddd"><div id="map">
		<div id="out_map"></div>
		<iframe id="maps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d7932.259494018684!2d139.776229
			038981!3d35.69766620469117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sja!2sjp!4v1686291565507!5m2!1sja!
			2sjp"
			width="390" height="844" style="border: 0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
		</iframe>
	</div>

	<div id="img"></div>

	<div id="currentlocationbtn">
		<a href="https://www.google.com/maps/@35.697666,139.776229,16z?hl=ja&entry=ttu">
			<img class = "currentlocation" src="img/currentlocation_icon.png" alt="現在地" width="50" height="50">
		</a>
	</div>

	<div id="spot_pinbtn">
		<img id="pin" class="spot_pin" name="img" src="img/destinationicon2.png">
	</div>

	<div id="characterbtn">
		<img class = "character" src="img/character.png" alt="キャラクター" width="120" height="120">
	</div></div>

	<audio id="charavoice" preload="none">
        <source src="voice/charavoice1.wav" type="audio/wav">
    </audio>
    <script type="text/javascript">
            document.getElementById("charavoice").play();
            let bubble = document.querySelector("#baloon");
            console.log(bubble);
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
var x = parseFloat(<%= request.getParameter("img_data_x") %>);
var y = parseFloat(<%= request.getParameter("img_data_y") %>);
console.log(x + y);
if(x != null) {
	$('#img_data_x2').val(x);
	$('#img_data_y2').val(y);
	console.log(x);
	console.log(y);
	$("#out_map").toggleClass('active_map');//ナビゲーションにpanelactiveクラスを付与
	var img = document.getElementById("img");
	var url = "img/destinationicon.png";
	dispic(img, url, x, y);
	function dispic(img, url, x, y){
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
	}
}
$("#pin").click(function () {//ボタンがクリックされたら
    $("#out_map").toggleClass('active_map');//ナビゲーションにpanelactiveクラスを付与
    $(this).toggleClass('setimg');
    document.getElementById( "out_map" ).onclick = function( event ) {
        var ximg = event.pageX ;    // 水平の位置座標
        var yimg = event.pageY ;    // 垂直の位置座標
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
            $('#img_data_x').val(x);
            $('#img_data_y').val(y);
            console.log("x = " + x);
            console.log("y = " + y);
        }
    }
});
$(".openbtn1").click(function () {//ボタンがクリックされたら
    $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
    $("#g-nav1").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
    let obj = document.getElementById("map");
    if( $(this).hasClass('active') ){
        obj.style.opacity = 0.2;
        //obj.style.background-color="#999";
    }else if( !$(this).hasClass('active') ){
    	obj.style.opacity = 1;
    	//obj.style.background-color="#fff";
    }
});
$(".openbtn4").click(function () {//ボタンがクリックされたら
    $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
    $("#g-nav4").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
    let obj = document.getElementById("map");
    if( $(this).hasClass('active') ){
        obj.style.opacity = 0.5;
        //obj.style.background-color="#999";
    }else if( !$(this).hasClass('active') ){
    	obj.style.opacity = 1;
    	//obj.style.background-color="#fff";
    }
});
$("#g-nav4 a").click(function () {//ナビゲーションのリンクがクリックされたら
    $(".openbtn4").removeClass('active');//ボタンの activeクラスを除去し
    $("#g-nav4").removeClass('panelactive');//ナビゲーションのpanelactiveクラスも除去
});
</script>
</html>