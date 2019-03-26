function incrementViews() {
	var views = document.getElementById('views');
	var currentViews = parseInt(views.innerHTML);
	views.innerHTML = currentViews + 1;
}