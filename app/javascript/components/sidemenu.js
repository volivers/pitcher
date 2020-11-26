function sidebarToggle() {
  const el = document.querySelector('.btn-sidemenu');

  if (el) {
    el.onclick = () => {
      el.classList.toggle('open');
      document.getElementById("sidebar").classList.toggle('open');
    }
  }
}

export { sidebarToggle };
