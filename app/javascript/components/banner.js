// window.onload = function() {bannerInit()};

function bannerInit() {

  if ($('#canv')) {

    if($('#canv').length > 0){
      let c = document.getElementById('canv');
      let canvasBg = c.getAttribute("data-bgColor");
      let context = c.getContext('2d');

      let w = c.width = window.innerWidth;
      let h = c.height = window.innerHeight;

      let draw = function(a, b, t) {
        context.lineWidth = 0.8;
        context.fillStyle = canvasBg;
        context.fillRect(0, 0, w, h);
        for (var i = -60; i < 60; i += 1) {
          context.strokeStyle = 'hsla(277, 95%, 15%, .2)';
          context.beginPath();
          context.moveTo(0, h / 2);
          for (var j = 0; j < w; j += 10) {
            context.lineTo(10 * Math.sin(i / 10) +
              j + 0.008 * j * j,
              Math.floor(h / 2 + j / 2 *
                Math.sin(j / 50 - t / 50 - i / 118) +
                (i * 0.9) * Math.sin(j / 25 - (i + t) / 65)));
          };
          context.stroke();
        }
      }
      let t = 0;

      window.addEventListener('resize', function() {
        c.width = w = window.innerWidth;
        c.height = h = window.innerHeight;
        context.fillStyle = 'hsla(277, 95%, 55%, 1)';
      }, false);

      let run = function() {
        window.requestAnimationFrame(run);
        t += 1;
        draw(33, 52 * Math.sin(t / 2400), t);
      };

      run();
    }

  }

};

export { bannerInit };
