<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<title>Repair & Maintainance </title>

<script type="text/javascript">

	$(document).ready(function(){
		
		$.ajax({
			url:"../complaint/all-dept",
			type:"POST",
			success:function(response){
				//alert(JSON.stringify(response));
				var text = '';
				$.each(response, function(index, dept){
					text += '<option value="'+dept.deptId+'">'+dept.deptname+'</option>'
				});
				
				$("#all-dept").html(text);
			},
			error:function(){
				
			}
		});
	});
</script>
</head>
<body bgcolor="#E6E6FA"><center>
<h1 SIZE="2px"><b>COMPLAINT TYPE</b></h1>

 <form:form action="./add-complaint" commandName="complaint" method="post" modelAttribute="complaint">
	

<%-- <form action="./add-complaint" method="post"> --%>
<table  >
   <tr>
      <td ><font face="verdana" size="2px">Department Name:</font></td>
      <td>    
      
      <form:select path="deptId" id="all-dept">
      
      </form:select>
      <!-- <select id="all-dept" name="deptId">
  		<option value="ESTATE">WORKSHOP</option>
  		<option value="saab">MAINTAINANCE</option>
  		<option value="opel">ELECTRICAL</option>
  		<option value="audi">PLUMBING</option>
	</select> -->
	
	</td>
   </tr>
   <tr>
      <td><font face="verdana" size="2px">Complaint Type:</font></td>
      <td><!-- <input type="text" name="complaintTypeName"> --> <form:input path="complaintTypeName"/></td>
   </tr>
   </table>
      <input type="submit" value="SUBMIT">
      <input type="button" value="CANCEL">
     
<%-- </form> --%>
</form:form> 
<br><br>
<hr>
<br>
 <%-- <table style="width:100% ; position: relative;border:1px solid gray; " >
	
   <tr>
      
      <td style="width:100% ; position: relative;text-align: center;"><font face="verdana" size="3px">Complaint Type</font></td>
     <tr> 
      <td>
      
      <c:forEach items="${list}" var="complaint">
 		<input type="checkbox" style="text-align: left" name="dept-id" value="${dept.deptId}">
 		<input type="text" style="text-align:  center;position:relative;left:40%" name="deptname" value="${dept.deptname}"></input>
 		</br>
 </c:forEach>


</td></tr><br>

</br>
</tr><tr>
<td ><br></br><center><input type="submit" value="EDIT"></center></td>
      
  </td>
   </tr>
  </center>
   </table> --%> 
  
   
</center>
</body>
</html>

   
