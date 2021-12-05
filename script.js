function evaluate(){
  x = document.querySelector("label.x input").checked + 0;
  y = document.querySelector("label.y input").checked + 0;
  z = document.querySelector("label.z input").checked + 0;
  w = document.querySelector("label.w input").checked + 0;
  binary = [z, y, x, w];
	ans = 0;
  pow = 1;
  binary.forEach(function(e){
    ans = ans + pow*e;
    pow = pow * 2;
  })
  Dlist = document.querySelectorAll("span.bulb");
  Dlist.forEach(function(e){
    e.classList.remove("glow");
  })
  Dlist[ans].classList.add("glow");
}
document.querySelectorAll('input').forEach(function(e){
	e.addEventListener("change", evaluate);
})