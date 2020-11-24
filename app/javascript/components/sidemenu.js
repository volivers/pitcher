function sidebarToggle() {
  const openBtn = document.querySelector('.openbtn');
  const closeBtn = document.querySelector('.closebtn');

  openBtn.addEventListener("click", function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
  });

  closeBtn.addEventListener("click", function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
  });
};

export { sidebarToggle };