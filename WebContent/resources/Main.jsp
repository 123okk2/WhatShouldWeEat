<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘 뭐먹지?</title>
</head>
	<link rel = "styleSheet" type="text/css" href = "CSS/StyleSheet.css">
    <script charset="utf-8" type="text/javascript" src = "JS/inputTextFunction.js"></script>
<body>
    <div class = "main">
        <h1>오늘 뭐 먹지?</h1>
        
    	<form name="showResult" action="result.jsp" method="post" class="input" onsubmit="return checkInput()">
	        <div id = "textBoxes" class = "textBox">
	        	<input type = "hidden" name = "readNumber" value=2>
	            <input type = "text" id = '0' name = food0 onchange="saveFood(0, this.value)" placeholder="음식을 입력하세요."><br>
	            <input type = "text" id = '1' name = food1 onchange="saveFood(1, this.value)" placeholder="음식을 입력하세요."><br>
	        </div>
	        <div class = "buttons">
	            <input type = "button" value = "추가" onclick="changeBox(true);" />
	            <input type = "button" value = "삭제" onclick="changeBox(false);" />
	            <input type = "submit" value = "시작" style="color: red;"/>
	        </div>
        </form>
    </div>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘 뭐먹지?</title>
</head>
	<link rel = "styleSheet" type="text/css" href = "CSS/StyleSheet.css">
    <script charset="utf-8" type="text/javascript" src = "JS/inputTextFunction.js"></script>
<body>
    <div class = "main">
        <h1>오늘 뭐 먹지?</h1>
        
    	<form name="showResult" action="result.jsp" method="post" class="input" onsubmit="return checkInput()">
	        <div id = "textBoxes" class = "textBox">
	        	<input type = "hidden" name = "readNumber" value=2>
	            <input type = "text" id = '0' name = food0 onchange="saveFood(0, this.value)" placeholder="음식을 입력하세요."><br>
	            <input type = "text" id = '1' name = food1 onchange="saveFood(1, this.value)" placeholder="음식을 입력하세요."><br>
	        </div>
	        <div class = "buttons">
	            <input type = "button" value = "추가" onclick="changeBox(true);" />
	            <input type = "button" value = "삭제" onclick="changeBox(false);" />
	            <input type = "submit" value = "시작" style="color: red;"/>
	        </div>
        </form>
    </div>
</body>
>>>>>>> refs/remotes/origin/master
</html>