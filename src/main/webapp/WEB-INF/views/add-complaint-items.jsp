<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<link href="<c:url value="/resources/css/loginstyle.css"/>" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
				
				$("#deptId").html(text);
			},
			error:function(){
				
			}
		});
		
		$("#deptId").change(function(){
			var deptValue = $("#deptId").val();
			$("#complaintTypeId").empty();
			
			$.ajax({
				url:"../types/get-complaints",
				type:"POST",
				data:{"deptId" : deptValue},
				success:function(response){
					//alert(JSON.stringify(response));
					var text = '';
					$.each(response, function(index, complaint){
						text += '<option value="'+complaint.id+'">'+complaint.complaintTypeName+'</option>'
					});
					
					$("#complaintTypeId").html(text);
				},
				error:function(){
					
				}
			});
		});
		
	});
</script>
<title>Repair & Maintenance</title>
</head>

<body>
	<table class="main_table">
		<tr class=header>
			<td style="width: 10%; text-align: center"><img alt=""
				src="<c:url value="/resources/Images/iitms_icon.png"/>" style="width: 64px; height: 66px">
			</td>
			<td
				style="width: 50%; font-family: Arial Black; font-size: 25px; font-weight: bold; color: #FFFFFF">
				Welcome to IITMS Repair & Maintenance</td>
			<td
				style="width: 20%; font-family: Verdana; font-size: 12px; color: #FFFFFF">
				<span style="vertical-align: top; color: Yellow; font-weight: bold;">
					<span id="ctl00_Label_Name">WELCOME : PREETI DESHMUKH</span>
			</span><br> <br> <span
				style="vertical-align: bottom; font-weight: bold;"> <span
					id="ctl00_Label_Date">10/09/2015</span></span>
			</td>
		</tr>
		<tr class="page_title">
			<td colspan="3"><label class="title_name">INDEX MASTER</label>

			</td>
		</tr>
		<tr class="body">
			<td colspan="3" style="padding: 5%" >
	<form:form commandName="complaintItem" action="./add-item" method="post" modelAttribute="complaintItem">
	<%-- <form action="cancel" method="post" style="height:100%" > --%>
		<table>
			<tr>
				<td><font face="verdana" size="2px">Department Name:</font></td>
				<td><!-- <select>
						<option value="ESTATE">Volvo</option>
						<option value="saab">Saab</option>
						<option value="opel">Opel</option>
						<option value="audi">Audi</option>
				</select> -->
				<form:select path="deptId" id="deptId">
					
				</form:select>
				</td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Complaint Type:</font></td>
				<td><!-- <select>
						<option value="ESTATE">Volvo</option>
						<option value="saab">Saab</option>
						<option value="opel">Opel</option>
						<option value="audi">Audi</option>
				</select> -->
				<form:select path="complaintTypeId" id="complaintTypeId">
					
				</form:select>
				</td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Item Code:</font></td>
				<td><!-- <input type="Item Cod" name="userPassword"> --> <form:input path="itemCode"/></td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Item Name:</font></td>
				<td><!-- <input type="Item Name" name="Item Name"> --><form:input path="itemname"/></td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Item Unit:</font></td>
				<td><!-- <select>
						<option value="ESTATE">Volvo</option>
						<option value="saab">Saab</option>
						<option value="opel">Opel</option>
						<option value="audi">Audi</option>
				</select> -->
				<form:select path="itemUnit" id="itemUnit">
					<form:option value="quantity">Qty</form:option>
					<form:option value="kg">kg</form:option>
				</form:select>
				</td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Max Stock:</font></td>
				<td><!-- <input type="Max Stock" name="Max Stock"> --><form:input path="maxStock"/></td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Min Stock:</font></td>
				<td><!-- <input type="Min Stocke" name="Min Stocke"> --><form:input path="minStack"/></td>
			</tr>
			<tr>
				<td><font face="verdana" size="2px">Current Stock:</font></td>
				<td><!-- <input type="Current Stock" name="Current Stock"> --><form:input path="currentStack"/></td>
			</tr>
		</table>
		<input type="button" value="REPORT"> <input type="submit"
			value="SUBMIT"> <input type="button" value="CANCEL">

	<%-- </form> --%>
	</form:form>
			</td>

		</tr>
		<tr class="footer">

			<td colspan="1" style="padding-top: 10px; color: White" valign="top"
				width="25%" align="left"><b style="position: relative;">
					&nbsp;&nbsp;&nbsp;Developed By <a href="http://www.iitms.co.in"
					target="_blank">IITMS</a> Team </td>
			<td colspan="2" style="padding-top: 10px; color: White" valign="top"
				align="right"><b> Master Software Group 2015 © All rights
					reserved.</b></td>
		</tr>


	</table>

</body>
</html>