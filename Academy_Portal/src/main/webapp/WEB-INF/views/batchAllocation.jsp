<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Insert title here</title>
</head>
<body>
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
This Is Batch Allocation Page............
<br>
<form action="batchAllocation.html" method="POST">
  <div class="container">
    <label for="uname"><b>Enter Batch Id</b></label>
    <select name="batchId">
                          <option value="batch">Batch
                          </option>
                           <c:forEach  var="batch"  items= "${batch}">
                          <option >${batch.batchId}
                          </option>
                          </c:forEach>
                        </select>
	<br>
    <label for="psw"><b>Enter Faculty Id</b></label>
     <select name="facultyId">
                          <option value="faculty">Facutly
                          </option>
                           <c:forEach  var="faculty"  items= "${faculty}">
                          <option >${faculty.facultyId}
                          </option>
                          </c:forEach>
                        </select>
	<br>
	<label for="psw"><b>Enter Module Id</b></label>
     <select name="module">
                          <option value="module">Module
                          </option>
                           <c:forEach  var="module"  items= "${module}">
                          <option >${module.moduleId}
                          </option>
                          </c:forEach>
                        </select>
                        <br>
    <label for="uname"><b>Enter Start Date</b></label>
    <input type="text" placeholder="Start Date" name="startDate" required>
	<br>
    <label for="uname"><b>Enter End Date</b></label>
    <input type="text" placeholder="End Date" name="endDate" required> 
	<br>
 <label for="uname"><b>Enter Close Date</b></label>
    <input type="text" placeholder="Close Date" name="closeDate" required> 
	<br>
    <button type="submit">Submit</button>
   <br>
	<input type="reset">
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
  </div>

</body>
</html>