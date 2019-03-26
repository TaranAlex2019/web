var heightContent = document.getElementById('content');
var heightReklam = document.getElementById('reklam');
var maxHeight;

function Height() {
	if (heightContent.offsetHeight>heightReklam.offsetHeight) {
		heightReklam.style.height = (heightContent.offsetHeight-10) + 'px';
	}
	else{
		heightContent.style.height = (heightReklam.offsetHeight) + 'px';
	}
}