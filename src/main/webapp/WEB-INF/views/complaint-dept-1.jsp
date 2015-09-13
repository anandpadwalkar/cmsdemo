<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body bgcolor="#E6E6FA"><center>
<img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQww7r9tv9Iplgiip0PPTj9MISFqahnju8RqbdxEe6aK82X4CTZgw" alt="Mountain View" style="width:100px;height:100px allign= "left";>
 <h1><font size="5px">COMPLAINT DEPARTMENT MASTER</font></h1>

<form:form commandName="department" action="./add-dept" method="post" modelAttribute="department">
<table  >
   <tr>
      <td ><font face="verdana" size="3px">Complaint Department:</font></td>
      <td><form:input path="deptname" /></td>
   </tr>
  
   </table>
   <div><center>
   <br>
   
   </br>
   
      <input type="submit" value="SUBMIT">
     <input type="reset" value="RESET"> 
   </center> </div>  
     
</form:form>

<br>
</br>

<form action="./update-dept" method="post">
<table style="width:100% ; position: relative;border:1px solid gray; " >
	
   <tr>
      
      <td style="width:100% ; position: relative;text-align: center;"><font face="verdana" size="3px">Complaint Department</font></td>
     <tr> 
      <td>
      
      <c:forEach items="${list}" var="dept">
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
   </table>
</form>

</body>
</html>