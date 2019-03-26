var button = document.getElementById('ModalButton');
var message = document.getElementById('message');
var isModal = true;

function start() {
	startShowButton();
	startMain();
}

function startShowButton() {
	var opacityButton = 0;
	var intoOpasitybutton = setInterval(function () {
		if (opacityButton>=0.9) {
			button.style.opacity = 1;
			clearInterval(intoOpasitybutton);
		}else{
			opacityButton+=0.100;
			button.style.opacity = opacityButton;
		}
	},80);
}

function startMain() {
	var count = 1;
	var rotate = false;
	var intRotate = setInterval(function () {
		if (isModal==false) {
			clearInterval(intRotate);
		}else{
			if (rotate) {
				if (count==-90){
					var timeRotate = setTimeout(function () {
						rotate = false;
					},1500);
					
				}else{
					count--;
					button.style.transform = "rotate(" + count + "deg)";
				}
			}else{
				if (count==90) {
					var timeRotate = setTimeout(function () {
						rotate = true;
					},1500);
				}else{
					count++;
					button.style.transform = "rotate(" + count + "deg)";
				}
			}
		}
	},10);

	var time = setTimeout(function () {
		var opacity = 0;
		message.style.display = 'block';
		var intMessage = setInterval(function () {
			if (opacity>=0.9) {
				message.style.opacity = 1;
				clearInterval(intMessage);
			}else{
				opacity+=0.100;
				message.style.opacity = opacity;
			}
		},80);
	},3000);
}