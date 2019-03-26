function showInfo(element) {
	var element = document.getElementById(element);
	if (element.style.display == 'none') {
		element.style.display = 'block';
	}else{
		element.style.display = 'none';
	}
}

function hideInfo(){
	var elements = document.getElementsByClassName('infoP');
	for (var i = 0; i < elements.length; i++) {
		elements[i].style.display = 'none';
	}
}