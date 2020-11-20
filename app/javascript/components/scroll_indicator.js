// When the user scrolls the page, execute myFunction
window.onscroll = function() {ScrollDepthIndicator()};

function ScrollDepthIndicator() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("scrollBar").style.width = scrolled + "%";
}

export { ScrollDepthIndicator };