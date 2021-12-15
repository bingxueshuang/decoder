function modalClose(){
	document.body.classList.remove("modal-open");
	document.querySelector(".content").removeEventListener('click', modalClose);
}
function modalOpen(){
	document.body.classList.add("modal-open");
	document.querySelector(".content").addEventListener('click', modalClose);
}