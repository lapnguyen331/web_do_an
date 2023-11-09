
let arrow = document.querySelectorAll(".arrow");
for (let i = 0; i < arrow.length; i++) {
  arrow[i].addEventListener("click", (e)=>{
 let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
 arrowParent.classList.toggle("showMenu");
  });
}

let sidebar = document.querySelector(".sidebar");
let navBar = document.querySelector('#navbar-header');
let sidebarBtn = document.querySelector("#menu-sidebar-toggle");
sidebarBtn.addEventListener("click", ()=>{
  sidebar.classList.toggle("close");
  navBar.classList.toggle("close");
});