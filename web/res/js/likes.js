

function like(element) {
	var elementDig = element.getElementsByTagName('span')[0];
	var dig = parseInt(elementDig.innerHTML);
	dig++;
	elementDig.innerHTML = dig;
}