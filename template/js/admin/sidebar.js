(function() {
  let arrow = document.querySelectorAll(".arrow");
for (let i = 0; i < arrow.length; i++) {
  arrow[i].addEventListener("click", (e)=>{
 let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
 arrowParent.classList.toggle("showMenu");
  });
}

$('#btn-toggle-sidebar').on({
  click: function() {$('.sidebar').toggleClass("close")},
})
})();