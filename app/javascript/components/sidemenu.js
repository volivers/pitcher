function sidebarToggle() {
  const el = document.querySelector('.btn-sidemenu');

  el.onclick = () => {
    el.classList.toggle('open');
    document.getElementById("sidebar").classList.toggle('open');
  }
}

export { sidebarToggle };
