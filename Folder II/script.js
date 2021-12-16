function modalClose(){
	document.body.classList.remove("modal-open");
	document.querySelector("div.modal-backdrop").removeEventListener("click", modalClose);
}
function modalOpen(){
	document.body.classList.add("modal-open");
	document.querySelector("div.modal-backdrop").addEventListener("click", modalClose);
}