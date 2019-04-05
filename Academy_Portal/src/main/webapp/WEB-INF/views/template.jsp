<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico" />
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg" color="#111" />
<title>CodePen - Typing Effect</title>
<link href="https://fonts.googleapis.com/css?family=Oxygen+Mono" rel="stylesheet">
<style>
      body, html {
  margin: 0;
  height: 100%;
  text-align: center;
  font-family: 'Oxygen Mono', monospace;
  color: #999;
}

h1 {
  text-transform: uppercase;
  letter-spacing: 1pt;
  font-size: 30pt;
  margin-bottom: 15px;
}

p {
  text-align: left;
  margin: 0;
  text-transform: lowercase;
  font-size: 10pt;
  font-weight: 900;
  width: 50%;
  display: none;
}

#table {
  display: table;
  width: 100%;
  height: 100%;
  background-color: #e5e5e5;
}

#centeralign {
  display: table-cell;
  vertical-align: middle;
}

    </style>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no">
<div id="table">
<div id="centeralign">
<h1>Sample typing effect.</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ante arcu, dignissim non risus id, posuere efficitur felis. Vestibulum arcu diam, semper non ipsum quis, dictum ultricies diam. Suspendisse vel luctus sapien. Mauris tristique condimentum velit tincidunt pharetra. Curabitur ut lectus eleifend, malesuada lorem eget, consectetur augue. Nunc scelerisque nisi in lacus eleifend eleifend. Praesent blandit ex at nunc maximus, ut sodales ante auctor. Nunc elementum eros sit amet malesuada facilisis. Morbi eget elit consequat, sodales urna in, lobortis nisi. Morbi dapibus velit eu mattis bibendum. Nulla et nisi eget turpis vulputate suscipit eu nec nunc. Pellentesque ut pulvinar quam.</p>
</div>
</div>
<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script id="rendered-js">
      function typeEffect(element, speed) {
  var text = $(element).text();
  $(element).html('');

  var i = 0;
  var timer = setInterval(function () {
    if (i < text.length) {
      $(element).append(text.charAt(i));
      i++;
    } else {
      clearInterval(timer);
    }
  }, speed);
}

$(document).ready(function () {
  var speed = 75;
  var delay = $('h1').text().length * speed + speed;
  typeEffect($('h1'), speed);
  setTimeout(function () {
    $('p').css('display', 'inline-block');
    typeEffect($('p'), speed);
  }, delay);
});
      //# sourceURL=pen.js
    </script>
<script src="https://static.codepen.io/assets/editor/live/css_reload-5619dc0905a68b2e6298901de54f73cefe4e079f65a75406858d92924b4938bf.js"></script>
</body>
</html>
