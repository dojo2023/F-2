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
	<div id="ddd">
	<div id="map">
	<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCS9xq4Zz-x0CKigvuH2E4DuGld06H8YKE&callback=initMap"></script>
	</div>
	<div id="currentlocationbtn">
		<a href="MapServlet">
			<img class = "currentlocation" src="img/currentlocation_icon.png" alt="現在地" width="50" height="50">
		</a>
	</div>
	<div class = "search_container">
		<input name="keyword" id="keyword" type="text" value="" size="25" placeholder="キーワード検索">
		<input id="search" type="submit" value="&#xf002">
	</div>
	<div id="characterbtn">
		<img class = "character" src="img/character.png" alt="キャラクター" width="120" height="120">
	</div>
	</div>

	<div class="openbtn1">
		<span></span><span></span><span></span>
	</div>

	<nav id="g-nav1">
		<form action="/f2project/MapServlet" method="post" enctype="multipart/form-data">
			<div id="position">
				<input type="hidden" id="pin_lat" name="latitude" value="" readonly>
				<input type="hidden" id="pin_lng" name="longitude" value="" readonly>
				<input type="hidden" id="current_lat" name="current_lat" value="" readonly>
				<input type="hidden" id="current_lng" name="current_lng" value="" readonly>
			</div>

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
				<li><a href="LoginServlet">ログアウト</a></li>
			</ul>
		</div>
	</nav>

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

</body>
<script>
function initMap() {
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);

//緯度(latitude)、経度(longitude)を取得
	function successCallback(position){
	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;

	$('#current_lat').val(latitude);	//後で消す
	$('#current_lng').val(longitude);	//後で消す

//表示するマップの処理(倍率、中心点)
	var map = new google.maps.Map(document.getElementById('map'), {
		zoom: 15,
		center: {lat: latitude, lng: longitude}
	});

//表示するマーカーの処理(マーカーの位置、表示するマップ)
	var marker = new google.maps.Marker({
		position: {lat: latitude, lng: longitude},
		map: map
	});

	$("#search").click(function () {
		const keyword = document.getElementById("keyword");
		console.log(keyword.value);

		if (keyword.value == '富士山') {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom: 15,
				center: {lat: 35.36174319862397, lng:138.72830726235546}
			});
			var marker = new google.maps.Marker({
				position: {lat: 35.36174319862397, lng:138.72830726235546},
				map: map
			});
		} else if ((keyword.value == 'USJ') || (keyword.value == 'usj')) {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom: 15,
				center: {lat: 34.66545027281, lng:135.43233819979972}
			});
			var marker = new google.maps.Marker({
				position: {lat: 34.66545027281, lng:135.43233819979972},
				map: map
			});
		}
	});

	var pin_data = ('<%= request.getParameter("pin_data") %>');
	console.log(pin_data);

	if (pin_data == 'tokyo_tower'){
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 15,
			center: {lat: 35.65860229308327, lng:139.74543517988434}
		});
		var marker = new google.maps.Marker({
			position: {lat: 35.65860229308327, lng:139.74543517988434},
			map: map
		})
	} else if (pin_data == 'susi'){
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 15,
			center: {lat: 35.709245659013334, lng:139.77312682208833}
		});
		var marker = new google.maps.Marker({
			position: {lat: 35.709245659013334, lng:139.77312682208833},
			map: map
		})
	} else if (pin_data == 'sibuya'){
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 15,
			center: {lat: 35.65970785677852, lng:139.69874945736373}
		});
		var marker = new google.maps.Marker({
			position: {lat: 35.65970785677852, lng:139.69874945736373},
			map: map
		})
	} else if (pin_data == 'ueno'){
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 15,
			center: {lat: 35.71685013925624, lng:139.77301035289463}
		});
		var marker = new google.maps.Marker({
			position: {lat: 35.71685013925624, lng:139.77301035289463},
			map: map
		})
	} else if (pin_data == 'jojo'){
		var map = new google.maps.Map(document.getElementById('map'), {
			zoom: 15,
			center: {lat: 35.73136377288798, lng:139.7135528361795}
		});
		var marker = new google.maps.Marker({
			position: {lat: 35.73136377288798, lng:139.7135528361795},
			map: map
		})
	}

/*
//ピンを立てたか判定
	if(pin_lat != null) {
		$('#pin_lat').val(pin_lat);		//後で消す
		$('#pin_lng').val(pin_lng);		//後で消す
		console.log(pin_lat + pin_lng);
//ピンを立てた場所に再度表示
		var marker = new google.maps.Marker({
			position: {lat: pin_lat, lng: pin_lng},
			map: map
		});
	}
*/

//マップをクリックした時の処理(イベント追加)
		map.addListener('click', function(e) {
			getClickLatLng(e.latLng, map);
		});
	};

//位置情報が取得できなかった時のエラー処理　※必ず記述
	function errorCallback(error){
	    alert("位置情報が取得できませんでした");
	};
}

//マップをクリックした時の処理(イベント発生時)
function getClickLatLng(lat_lng, map) {
	$('#pin_lat').val(lat_lng.lat);			//後で消す
	$('#pin_lng').val(lat_lng.lng);			//後で消す

//クリックした場所にピンを立てる
	var marker = new google.maps.Marker({
		position: lat_lng,
		map: map
	});
}

$(".openbtn1").click(function () {//ボタンがクリックされたら
    $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
    $("#g-nav1").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
    let obj = document.getElementById("ddd");
    if( $(this).hasClass('active') ){
        obj.style.opacity = 0.5;
        //obj.style.background-color="#999";
    }else if( !$(this).hasClass('active') ){
    	obj.style.opacity = 1;
    	//obj.style.background-color="#fff";
    }
});
$(".openbtn4").click(function () {//ボタンがクリックされたら
    $(this).toggleClass('active');//ボタン自身に activeクラスを付与し
    $("#g-nav4").toggleClass('panelactive');//ナビゲーションにpanelactiveクラスを付与
    let obj = document.getElementById("ddd");
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
<script>
$("#characterbtn").click(function () {//ボタンがクリックされたら
    if( !($('.balloon').hasClass('active'))  ){
	     $(".balloon").addClass('active');//balloonに activeクラスを付与し
	     //音声とメッセージ表示
	     let mes = document.querySelector(".message");
	     var audioData = new Audio();
	     //audioData.muted=true;
	     var a=["こんにちは！今日はいい天気ですね！どこにいきましょうか？","次はどこに行きましょうか","忘れ物はないですか？","今日を楽しみましょう","おはようございます","行きたい場所は決まりましたか?"];
	     var voice =["mess/1.wav","mess/2.wav","mess/3.wav","mess/4.wav","mess/5.wav","mess/6.wav"];
	     //var a=Math.floor(Math.random()*5);
       if( flag == 0){
	       var x=Math.floor(Math.random()*6);
	       mes.innerHTML = a[x];
	       audioData.src = voice[x];
	       audioData.play();
	       flag=1;
       }else{
	       flag=0;
	     }
    }else{
  	  $('.balloon').removeClass('active')
  	  flag = 0;
    }
});
$(".balloon").click(function () {//ボタンがクリックされたら
	  $(this).removeClass('active');//balloonの activeクラスを除去し
	});
window.onload = function(){
	  let mesbox = document.querySelector(".message");
	  let balloon = document.querySelector(".balloon");
	  var mess =["こんにちは！今日はいい天気ですね！どこにいきましょうか？"];
	  balloon.classList.add('active');
	  mesbox.innerHTML = mess[0];
    flag = 1;
}
</script>
</html>