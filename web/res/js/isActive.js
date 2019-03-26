var button = document.getElementById('reg');
var check = document.getElementById('check');

function isActiveButton() {
	button.disabled = true;
}

check.onchange = function () {
	if (check.checked) {
		button.disabled = false;
	}else{
		button.disabled = true;
	}
	
}