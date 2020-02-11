/**
 * 
 */

var foodArr = new Array();

function addFood(food) {
	foodArr.push(food);
}

function start() {
	var num = 0;
	var randArr = new Array();
	for(i = 0; i < foodArr.length*5; i++) {
		randArr[i] = Math.round(Math.random()*(foodArr.length-1));
	}
	console.log(foodArr);
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