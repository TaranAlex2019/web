var info = document.getElementById('main-info');
var oper = document.getElementById('main-history');

document.getElementById('info').onclick = function () {
	info.style.display = "block";
	oper.style.display = "none";
}

document.getElementById('oper').onclick = function () {
	info.style.display = "none";
	oper.style.display = "block";
}


