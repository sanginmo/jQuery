<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>효과 : fadeIn() and fadeOut()</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
		// $(선택자).fadeIn(), 		  $(선택자).fadeIn(speed),
		// $(선택자).fadeOut(),		  $(선택자).fadeOut(speed),
		// $(선택자).fadeToggle(),  $(선택자).fadeToggle(speed),
		// $(선택자).fadeToe(speed, 투명도 0-1 ) 
			$(document).ready(function() {
				$("#btn1").click(function() {
						$("#img").fadeOut("slow");
				});
				$("#btn2").click(function() {
						$("#img").fadeIn("slow");
				});
				var i = 0 ;
				$("#btn3").click(function() {
					if (i%2 == 0) {
						$(this).text("보이기");
					}else {
						$(this).text("감추기");
					}
					++i;
					$("#img").fadeToggle("slow");
				});
				
				var j = 0 ;
				$("#btn4").click(function() {
					if (j%2 == 0) {
						$(this).text("감추기");
						$("#img").fadeTo("slow",0.1);
					}else {
						$(this).text("보이기");
						$("#img").fadeTo("slow", 0.9);
					}
					++j;
				});
			});

</script>

</head>
<body>
		<button id="btn1">감추기</button>
 		<button id="btn2">보이기</button>
 		<button id="btn3">감추기</button>
 		<button id="btn4">감추기</button>
 		<hr>
 		<img id="img" src="images/pic_bulboff.gif">
 		<p> Hello World </p>
</body>
</html>