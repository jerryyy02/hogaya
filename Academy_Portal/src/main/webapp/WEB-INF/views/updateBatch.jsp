<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
This is Batch Allocation Update  Page<br><br>
<form class="mx-2 my-auto w-full">
                                <a href="logout.html" class="btn btn-secondary  form-rounded" >Logout
           
            </a>
                            </form>
<br>
<form action="updateBatch.html" method="POST">
  <div class="container">
	<br>
	<label for="psw"><b>Select BatchAllocation Id you want to update</b></label>
     <select name="batchAllocationId">
                          <option value="module">Module
                          </option>
                           <c:forEach  var="batchModule"  items= "${batchModule}">
                          <option >${batchModule.batchAllocationId}
                          </option>
                          </c:forEach>
                        </select>
                        <br>
                        
        <label for="uname"><b>Enter Module Close Date</b></label>
    <input type="text" placeholder="Closing Date" name="closeDate" required> 
	<br>
    
    <button type="submit">Submit</button>
   <br>
	<input type="reset">
  </div>

  <div class="container" style="background-color:#f1f1f1">
    
  </div>
</body>
</html>