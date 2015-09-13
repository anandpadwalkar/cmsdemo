<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/loginstyle.css" rel="stylesheet" type="text/css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>


<script>
  $(function() {
    $( "#datepicker" ).datepicker();
    
    var d = new Date();
    
    $( "#datepicker" ).datepicker( "setDate", d );
    
    
    $.ajax({
		async:false,
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
    	
    	$.ajax({
    		async:false,
    		url:"../types/get-complaints",
    		type:"POST",
    		data:{"deptId" : $("#deptId").val()},
    		success:function(response){
    			//alert(JSON.stringify(response));
    			var text = '';
    			$.each(response, function(index, complaint){
    				text += '<option value="'+complaint.id+'">'+complaint.complaintTypeName+'</option>'
    			});
    			$("#complaintType").empty();
    			$("#complaintType").html(text);
    		},
    		error:function(){
    			
    		}
    	});
    });
    
  });
  </script>
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Repair & Maintenance</title>
</head>

<body>
	<table class="main_table">
		<tr class=header>
			<td style="width: 10%; text-align: center"><img alt=""
				src="Images/iitms_icon.png" style="width: 64px; height: 66px">
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
			<td colspan="3"><label class="title_name">REGISTER
					COMPLAINT</label></td>
		</tr>
		<tr class="body">
			<td colspan="3" style="padding: 5%">
				<form action="./complaint/add" method="post" style="height: 100%">
					<table style="position: relative; margin: auto;">
						<tr>
							<td><font face="verdana" size="2px">COMPLAINT DATE:</font></td>
							<td><input type="text" name="complaintDate"  id="datepicker"  disabled="disabled"> </td>

						</tr>
						
						<tr>
							<td><font face="verdana" size="2px">DEPARTMENT NAME:</font></td>

							<td><select style="width: 100%" id="deptId" name="deptId">
									
							</select>
							</td>
						</tr>
						<tr>
							<td><font face="verdana" size="2px">Complaint Type:</font></td>
							<td><select style="width: 100%" id="complaintType">
									<!-- <option value="ESTATE">Volvo</option>
									<option value="saab">Saab</option>
									<option value="opel">Opel</option>
									<option value="audi">Audi</option> -->
							</select></td>
						</tr>
						<tr>
							<td><font face="verdana" size="2px">COMPLAIN DETAILS:</font></td>
							<td><textarea  name="complaintDetails" rows="4" cols="50" style="resize:none"> </textarea></td>
						</tr>
					
						<tr>
							<td><font face="verdana" size="2px">LOCATION OF
									COMPLAINT:</font></td>
							<td><input type="text"
								name="complaintLocation"></td>
						</tr>
						
						
						<tr>
							<td><font face="verdana" size="2px">CONTACT NUMBER:</font></td>
							<td><input type="text" name="complainteePhoneNumber"></td>
						</tr>
						<tr>
							
					</table>
					<table style="position: relative; margin: auto;">
						<tr>
							<td> <input type="submit"
								value="SUBMIT" style="background: #ecf3bd" onclick="alert('Note your Complaint Num:') "> <input
								type="button" value="CANCEL" style="background: #ecf3bd"></td>
						</tr>
					</table>
				</form>
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