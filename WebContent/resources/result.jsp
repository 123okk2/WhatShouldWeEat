<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘 뭐먹지?</title>
</head>
	<link rel = "styleSheet" type="text/css" href = "CSS/resultStyle.css">
	<%
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("readNumber"));
		/*
		ArrayList<String> foodArr = new ArrayList<String>();
		for(int i=0;i<num;i++) foodArr.add(request.getParameter("food"+i));
		*/
	%>


<body>
    <div class = "main">
        <h1>오늘 뭐 먹지?</h1>
        <div class = "resultBox">
	    	<input type = "text" readonly id = 'results' value=<%=request.getParameter("food0") %> onchange="saveFood(0, this.value)" placeholder="음식을 입력하세요."><br>
	    </div>
        <div class = "resultbuttons">
            <input type = "button" value = "시작" onclick = "start()" style="color: red;"/>
        </div>
    </div>
</body>
	
	<script language = "javascript">
		var foodArr = new Array();
		
		<%for(int i=0;i<num;i++) {%>
		foodArr.push("<%=request.getParameter("food"+i)%>");
		<%}%>
		
		function start() {
			var num = 0;
			var randArr = new Array();
			for(i = 0; i < foodArr.length*5; i++) {
				randArr[i] = Math.round(Math.random()*(foodArr.length-1));
			}
			console.log(randArr);
			var startInterval = setInterval(function() {
			    document.getElementById('results').value = foodArr[randArr[num]];
			    console.log(randArr[num] + " " +foodArr[randArr[num]]);
			    num++;
			}, 300)
			setTimeout(function() {
				clearInterval(startInterval)
				alert("오늘 메뉴는 " + foodArr[randArr[num-1]] + "입니다!")
			}, foodArr.length*1500+299);
		}
		
		function writeFood() {
			
		}
	</script>
	
</html>