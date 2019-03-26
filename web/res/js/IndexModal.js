function CloseModal(){
	isModal = false;
	var opp = 1;
	var modal = document.getElementById('modal');
	var wrapper = document.getElementById('wrapper-container');
	var id = setInterval(function () {
		if (opp<=0.1) {
			modal.style.opacity = 0;
			modal.style.display = 'none';
			wrapper.style.display = "block";
			Height();
			showMain(wrapper)
			clearInterval(id);
		}else{
			opp-=0.10000;
			modal.style.opacity = opp;
		}
	}, 40)
}

function showMain(wrapper) {
	var opp = 0
	var id = setInterval(function () {
		if (opp>=0.9) {
			wrapper.style.opacity = 1;
			clearInterval(id);
		}else{
			opp+=0.10000;
			wrapper.style.opacity = opp;
		}
	}, 40)
}
