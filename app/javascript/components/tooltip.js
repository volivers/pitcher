// When the user scrolls the page, execute ScrollDepthIndicator
window.onload = function() {demoTooltip()};

function demoTooltip() {
  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  })
};

export { demoTooltip };