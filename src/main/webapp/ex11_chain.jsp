<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chain : 다양한 액션을 . 으로 구분하고 연속적으로 연결 해서 사용</title>
<style type="text/css">
		#box{
				background: tomato; 
				width:  300px ;
				height: 300px ;
				position: absolute ; 
				display: none ;
		}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
		// 체인을 종료 시키는 방법  .end() 이다.
	$(document).ready(function() {
        $("#btn").click(function() {
        $("#box").slideDown(1000)
        .slideUp(1000)
        .show(1000)
        .hide(1000)
        .fadeIn(1000)
		.end()
        .css('background-color','skyblue');
        });
    });
</script>
</head>
<body>
		<button id="btn">눌러주세요</button>
		<div id="box"></div>
</body>
</html>