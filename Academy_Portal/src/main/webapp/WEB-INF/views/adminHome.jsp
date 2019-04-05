<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html lang="en">
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<style>
      *, *:before, *:after {
  box-sizing: border-box;
  outline: none;
}

html {
  font-family: 'Source Sans Pro', sans-serif;
  font-size: 16px;
  font-smooth: auto;
  font-weight: 300;
  line-height: 1.5;
  color: #444;
}

body {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100vh;
}

.hide {
  display: none;
}

.button {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  width: 50rem;
  magrin: 0;
  padding: 1.5rem 3.125rem;
  background-color: #3498db;
  border: none;
  border-radius: 0.3125rem;
  box-shadow: 0 12px 24px 0 rgba(0, 0, 0, 0.2);
  color: white;
  font-weight: 300;
  text-transform: uppercase;
  overflow: hidden;
}
.button:before {
  position: absolute;
  content: '';
  bottom: 0;
  left: 0;
  width: 0%;
  height: 100%;
  background-color: #54d98c;
}
.button span {
  position: absolute;
  line-height: 0;
}
.button span i {
  transform-origin: center center;
}
.button span:nth-of-type(1) {
  top: 50%;
  transform: translateY(-50%);
}
.button span:nth-of-type(2) {
  top: 100%;
  transform: translateY(0%);
  font-size: 24px;
}
.button span:nth-of-type(3) {
  display: none;
}

.active {
  background-color: #2ecc71;
}
.active:before {
  width: 100%;
  transition: width 3s linear;
}
.active span:nth-of-type(1) {
  top: -100%;
  transform: translateY(-50%);
}
.active span:nth-of-type(2) {
  top: 50%;
  transform: translateY(-50%);
}
.active span:nth-of-type(2) i {
  animation: loading 500ms linear infinite;
}
.active span:nth-of-type(3) {
  display: none;
}

.finished {
  background-color: #54d98c;
}
.finished .submit {
  display: none;
}
.finished .loading {
  display: none;
}
.finished .check {
  display: block !important;
  font-size: 24px;
  animation: scale 0.5s linear;
}
.finished .check i {
  transform-origin: center center;
}

@keyframes loading {
  100% {
    transform: rotate(360deg);
  }
}
@keyframes scale {
  0% {
    transform: scale(10);
  }
  50% {
    transform: scale(0.2);
  }
  70% {
    transform: scale(1.2);
  }
  90% {
    transform: scale(0.7);
  }
  100% {
    transform: scale(1);
  }
}

    </style>
<script>
  window.console = window.console || function(t) {};
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
      html,
body {
  height: 100%;
  width: 100%;
}

img {
  width: 100%;
}

.section-content {
  padding: 80px 0;
}

.section-title {
  padding-bottom: 20px;
}

#hero {
  background: #222 url("https://hd.unsplash.com/photo-1467703834117-04386e3dadd8") center center no-repeat;
  background-size: cover;
  color: white;
  height: 100%;
  display: flex;
  align-items: center;
  text-align: center;
}

#hero-caption {
  width: 100%;
}

#about {
  background: #ececec url("https://hd.unsplash.com/photo-1414690165279-49ab0a9a7e66") center center no-repeat;
  background-size: cover;
}

.about-text {
  background: rgba(0, 0, 0, 0.75);
  color: #fff;
  padding: 1.8rem;
}

#contact {
  background: #ececec url("https://hd.unsplash.com/38/awhCbhLqRceCdjcPQUnn_IMG_0249.jpg") center center no-repeat;
  background-size: cover;
  color: #fff;
}

#footer-main {
  background-color: #222;
  color: #fff;
  font-size: 0.8em;
  padding: 2em;
}
#footer-main a {
  color: #999;
}
#footer-main a:hover {
  color: #efefef;
}

/* modals */
.service-modal .modal-dialog {
  margin: auto;
  height: 100%;
  width: auto;
}

.service-modal .modal-content {
  border-radius: 0;
  background-clip: border-box;
  -webkit-box-shadow: none;
  box-shadow: none;
  border: none;
  min-height: 100%;
  padding: 100px 0;
  text-align: center;
}

.service-modal .modal-content h2 {
  margin-bottom: 15px;
  font-size: 3em;
}

.service-modal .modal-content img {
  margin-bottom: 30px;
}

.service-modal .modal-content p {
  margin-bottom: 30px;
}

.service-modal .close-modal {
  position: absolute;
  width: 30px;
  height: 30px;
  background-color: transparent;
  top: 50px;
  right: 50px;
  cursor: pointer;
}

.service-modal .close-modal .close-icon {
  height: 30px;
  width: 1px;
  margin-left: 15px;
  background-color: #555;
  transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  z-index: 1000;
}

.service-modal .close-modal:hover .close-icon {
  background-color: #e74c3c;
}

.service-modal .close-modal .close-icon .close-icon-r {
  height: 30px;
  width: 1px;
  background-color: #555;
  transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  /* IE 9 */
  -webkit-transform: rotate(90deg);
  /* Safari and Chrome */
  z-index: 1000;
}

.service-modal .close-modal:hover .close-icon .close-icon-r {
  background-color: #e74c3c;
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

<title>Admin Home</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
      html,
body {
  height: 100%;
  width: 100%;
}

img {
  width: 100%;
}

.section-content {
  padding: 80px 0;
}

.section-title {
  padding-bottom: 20px;
}

#hero {
  background: #222 url("https://hd.unsplash.com/photo-1467703834117-04386e3dadd8") center center no-repeat;
  background-size: cover;
  color: white;
  height: 100%;
  display: flex;
  align-items: center;
  text-align: center;
}

#hero-caption {
  width: 100%;
}

#about {
  background: #ececec url("https://hd.unsplash.com/photo-1414690165279-49ab0a9a7e66") center center no-repeat;
  background-size: cover;
}

.about-text {
  background: rgba(0, 0, 0, 0.75);
  color: #fff;
  padding: 1.8rem;
}

#contact {
  background: #ececec url("https://hd.unsplash.com/38/awhCbhLqRceCdjcPQUnn_IMG_0249.jpg") center center no-repeat;
  background-size: cover;
  color: #fff;
}

#footer-main {
  background-color: #222;
  color: #fff;
  font-size: 0.8em;
  padding: 2em;
}
#footer-main a {
  color: #999;
}
#footer-main a:hover {
  color: #efefef;
}

/* modals */
.service-modal .modal-dialog {
  margin: auto;
  height: 100%;
  width: auto;
}

.service-modal .modal-content {
  border-radius: 0;
  background-clip: border-box;
  -webkit-box-shadow: none;
  box-shadow: none;
  border: none;
  min-height: 100%;
  padding: 100px 0;
  text-align: center;
}

.service-modal .modal-content h2 {
  margin-bottom: 15px;
  font-size: 3em;
}

.service-modal .modal-content img {
  margin-bottom: 30px;
}

.service-modal .modal-content p {
  margin-bottom: 30px;
}

.service-modal .close-modal {
  position: absolute;
  width: 30px;
  height: 30px;
  background-color: transparent;
  top: 50px;
  right: 50px;
  cursor: pointer;
}

.service-modal .close-modal .close-icon {
  height: 30px;
  width: 1px;
  margin-left: 15px;
  background-color: #555;
  transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  z-index: 1000;
}

.service-modal .close-modal:hover .close-icon {
  background-color: #e74c3c;
}

.service-modal .close-modal .close-icon .close-icon-r {
  height: 30px;
  width: 1px;
  background-color: #555;
  transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  /* IE 9 */
  -webkit-transform: rotate(90deg);
  /* Safari and Chrome */
  z-index: 1000;
}

.service-modal .close-modal:hover .close-icon .close-icon-r {
  background-color: #e74c3c;
}
.w3-lobster {
  font-family: "Lobster", serif;}

    </style>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
<body translate="no">
<nav class="navbar navbar-dark navbar-full navbar-fixed-top" style="background-color: #111;">
<a href="#hero" class="navbar-brand">Academy Portal</a>
<ul class="nav navbar-nav pull-xs-right">
<li class="nav-item">
<a href="" class="nav-link">Home</a>
</li>
<li class="nav-item">
<a href="" class="nav-link">About</a>
</li>
<li class="nav-item">
<a href="" class="nav-link">Logout</a>
</li>
</ul>
</nav>
<br><br>

<div class="w3-container w3-lobster">
<a href="admin/registerUser.html"><button class="button">
<span class="submit"><p class="w3-xlarge" align="center">Register New User</p></span>
<span class="loading"><i class="fa fa-refresh"></i></span>
<span class="check"><i class="fa fa-check"></i></span>
</button></a>
<br><br>

<a href="admin/addModule.html"><button class="button">
<span class="submit"><p class="w3-xlarge" align="center">Add Module</p></span>
<span class="loading"><i class="fa fa-refresh"></i></span>
<span class="check"><i class="fa fa-check"></i></span>
</button></a>
<br><br>

<a href="admin/batchAllocation.html"><button class="button">
<span class="submit"><p class="w3-xlarge" align="center">Batch Allocation</p></span>
<span class="loading"><i class="fa fa-refresh"></i></span>
<span class="check"><i class="fa fa-check"></i></span>
</button></a>
<br><br>

<a href="admin/insertBatch.html"><button class="button">
<span class="submit"><p class="w3-xlarge" align="center">Insert Batch</p></span>
<span class="loading"><i class="fa fa-refresh"></i></span>
<span class="check"><i class="fa fa-check"></i></span>
</button></a>
<br><br>

<a href="admin/generateReport.html"><button class="button">
<span class="submit"><p class="w3-xlarge" align="center">Generate Report</p></span>
<span class="loading"><i class="fa fa-refresh"></i></span>
<span class="check"><i class="fa fa-check"></i></span>
</button></a>
<br><br>

<a href="admin/insertSkill.html"><button class="button">
<span class="submit"><p class="w3-xlarge" align="center">Insert Skill</p></span>
<span class="loading"><i class="fa fa-refresh"></i></span>
<span class="check"><i class="fa fa-check"></i></span>
</button></a>
<br><br>

<!-- <p class="w3-xlarge">To Register New Module Click <a href="admin/addModule.html">Here</a><br><br>
<p class="w3-xlarge">For Batch Allocation Click <a href="admin/batchAllocation.html">Here</a></p><br><br>
<p class="w3-xlarge">To Register a New Batch Click <a href="admin/insertBatch.html">Here</a></p><br><br>
<p class="w3-xlarge">To Generate Report Click<a href="admin/generateReport.html">Here</a></p><br><br>
<p class="w3-xlarge">To view Report Click<a href="admin/generateReport1.html">Here</a></p><br><br>
<p class="w3-xlarge">To Enter Skill Details Click<a href="admin/insertSkill.html">Here</a></p> -->
                        </div>
<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/js/bootstrap.min.js'></script>
<script id="rendered-js">
      $(document).ready(function () {
  //Page scrolling
  $('a.navbar-brand, a.nav-link, .footer-nav-link, .back-to-top').click(function () {
    var $link = $(this);
    $('html, body').stop().animate({
      scrollTop: $($link.attr('href')).offset().top - 50 },
    1250);

  });

  // Highlight the top nav as scrolling occurs
  $('body').scrollspy({
    target: ".navbar-fixed-top",
    offset: 51 });

});
      //# sourceURL=pen.js
    </script>
<script src="https://static.codepen.io/assets/editor/live/css_reload-5619dc0905a68b2e6298901de54f73cefe4e079f65a75406858d92924b4938bf.js"></script>
</body>


</html>