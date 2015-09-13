<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript">

	$(document).ready(function(){
		
			$("[type='button']").click(function(){
				var buttonText  = $(this).attr("value");
				var id = $(this).attr("id");
				if(buttonText == 'Edit'){
					$("[id='"+id+"']").removeAttr("disabled");
					$(this).attr("value", 'Save');
				}else{
					
					
				}
				
				//alert($("[type='"+id+"']"));
				
			});
	});	
</script>
</head>
<body>
 <h1><font size="2px">COMPLAINT DEPARTMENT MASTER</font></h1>
 
 
 	
 
 
<form:form commandName="department" action="./add-dept" method="post" modelAttribute="department">
<table  >
   <tr>
      <td ><font face="verdana" size="2px">Complaint Department:</font></td>
      <td><form:input path="deptname" /></td>
   </tr>
  
   </table>
      <input type="submit" value="SUBMIT">
      <input type="reset" value="RESET">
      
     
</form:form>

<br>
</br>
<table  >

<c:forEach items="${list}" var="dept">
   <tr>
      <td ><!-- <font face="verdana" size="2px">Edit:</font> --></td>
      <td><input type="button" name="Edit" value="Edit" id="${dept.deptId}" ></td>
   
  
      <td ><font face="verdana" size="2px">Complaint Type:</font></td>
      <td> 
      <input type="text" name="deptname" value="${dept.deptname}" id="${dept.deptId}" disabled="disabled"> 
	  <input type="hidden" id="${dept.deptId}" value="${dept.deptId}">    
      </td>
   </tr>
  
  </c:forEach>
   </table>

</body>
</html>