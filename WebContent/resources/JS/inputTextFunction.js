<<<<<<< HEAD
/**
 * 
 */

var num = 2;
var foodArr = new Array(2);
foodArr[0] = '', foodArr[1] = '';

function saveFood(i, food) {
    foodArr[i] = food;
}

function changeBox(type) {
    if (type) {
        num++;
        foodArr.push("");
    }
    else {
        if (num>2) {
            num--;
            foodArr.pop();
        }
        else {
            alert("최소 두 개의 메뉴를 입력해주세요!")
        }
    }
    
    refreshExplore();
}

function refreshExplore() {
    document.getElementById('textBoxes').innerHTML="";
    document.getElementById('textBoxes').innerHTML += 
    	"<input type = 'hidden' name = 'readNumber' value="+num+">"
    for(i=0; i<num; i++) {
        document.getElementById('textBoxes').innerHTML += 
            "<input type = 'text' id='" + i + "' name = 'food" + i + "' onchange='saveFood("+i+",this.value)' value='" + foodArr[i]+ "' placeholder='음식을 입력하세요.'><br>";
    }
}

function checkInput() {
	for(i=0; i<num;i++) {
		var str = eval("showResult.food" + i);
		if(!str.value) {
			alert("공란이 존재합니다!")
			str.focus();
			return false;
		}
	}
}
=======
/**
 * 
 */

var num = 2;
var foodArr = new Array(2);
foodArr[0] = '', foodArr[1] = '';

function saveFood(i, food) {
    foodArr[i] = food;
}

function changeBox(type) {
    if (type) {
        num++;
        foodArr.push("");
    }
    else {
        if (num>2) {
            num--;
            foodArr.pop();
        }
        else {
            alert("최소 두 개의 메뉴를 입력해주세요!")
        }
    }
    
    refreshExplore();
}

function refreshExplore() {
    document.getElementById('textBoxes').innerHTML="";
    document.getElementById('textBoxes').innerHTML += 
    	"<input type = 'hidden' name = 'readNumber' value="+num+">"
    for(i=0; i<num; i++) {
        document.getElementById('textBoxes').innerHTML += 
            "<input type = 'text' id='" + i + "' name = 'food" + i + "' onchange='saveFood("+i+",this.value)' value='" + foodArr[i]+ "' placeholder='음식을 입력하세요.'><br>";
    }
}

function checkInput() {
	for(i=0; i<num;i++) {
		var str = eval("showResult.food" + i);
		if(!str.value) {
			alert("공란이 존재합니다!")
			str.focus();
			return false;
		}
	}
}
>>>>>>> refs/remotes/origin/master
