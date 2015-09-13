
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/loginstyle.css" rel="stylesheet" type="text/css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Repair & Maintenance</title>

<script>
  $(function() {
    
    $.ajax({
		async:false,
		url:"../transaction/complaint/list",
		type:"POST",
		success:function(response){
			//alert(JSON.stringify(response));
			var text = '';
			$.each(response, function(index, obj){
				 text  +='<tr>'+
				 '					'+
				 '				<td><input type=\"checkbox\" value=\"'+obj.id+'\"></input></td>'+
				 '				'+
				 '				<td  >'+obj.id+'</td> '+
				 '				<td  >'+obj.complaintDate+'</td> '+
				 '				<td  >'+obj.complaintDetails+'</td> '+
				 '			'+
				 '				<td  >'+obj.complaintDepartment+'</td> '+
				 '					<td  >'+obj.complaintStatus+'</td> '+
				 '				</tr>';
			});
			
			$("#complaintTable").append(text);
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
			<td colspan="3"><label class="title_name"> COMPLAINT
					ALLOTMENT</label></td>
		</tr>
		<tr class="body">
			<td colspan="3" style="padding: 5%">
			
			<!-- pop up Start here -->
			<table id="maintain_user" style=" display:none; padding:50px;width:60%;left:20%; height:50%;z-index: 100;position: absolute;border:1px solid yellow;background: #fffdcc">
			<tr class="page_title">
			<td colspan="3"><label class="title_name">COMPLAINT ALLOTMENT</label>

			</td>
		</tr>
			 <tr>
			  <td style="height:15px;position:relative">Complaint Type : </td>
			  <td style="height:15px;position:relative""> <select >
			  <option> CSE</option>
			    <option> Electronic</option>
			      <option> IT</option>
			        <option> MECH</option>
			   </select> </td>
			  </tr>
			  
			  <tr>
			  <td  style="height:15px;position:relative"">Allot To : </td>
			  <td  style="height:15px;position:relative"> <select >
			  <option> CSE</option>
			    <option> Electronic</option>
			      <option> IT</option>
			        <option> MECH</option>
			   </select> </td>
			  </tr>
			  
			  
			 
			  <tr >
			  <td  style="height:15px;position:relative"><input type="button" value="Save" style="float: right;padding-right: 3px;background-color: #ecf3bd"></input> </td>
			  <td  style="height:15px;position:relative"> <input type="button" value="Cancel"style="background-color: #ecf3bd"  onclick="document.getElementById('maintain_user').style.display ='none';"></input></td>
			  </tr>
			</table>
			
			<!-- pop up ends -->
			
				<table  id="complaintTable" class="dept_table" style="position: relative; width: 96%;height:350px;margin: auto;;border: 1px solid red; font-size: 12px;text-align: center ">
				<tr style="height: 10px">
				<th colspan="6" style="background:brown;height: 10px">REGISTER COMPLAINT DETAILS</th> 
				
				<tr>
		<th></th>
					<th   >COMPLAIN NUM</th>
					<th  >DATE</th> 
					<th  >COMPLAIN DETAIL</th>
					<th  >DEPARTMENT</th>
					<th  >STATUS</th>
					</tr>
					<tr>
					
				<!-- <td><input type="checkbox"></input></td>
				
				<td  >45</td> 
				<td  >11-Sep-2015</td> 
				<td  >Tap Leakage</td> 
			
				<td  >ESTATE</td> 
					<td  >PENDING</td> 
				</tr> -->
				
				
				
				</table>
				<br>
				<label style="min-width: 88px;    background: red;  top:28px;  border-radius: 5px;    height: 20px;    color: white;    padding: 5px;
    top: -3px;    position: relative;    left: 45%;"  onclick="document.getElementById('maintain_user').style.display ='';">ALLOT</label>
			
			
			
			</td>

		</tr>
		
		<tr class="footer">

			<td style="padding-top: 10px; color: White" valign="top"
				width="25%" align="left"><b style="position: relative;">
					&nbsp;&nbsp;&nbsp;Developed By <a href="http://www.iitms.co.in"
					target="_blank">IITMS</a> Team </td>
			<td colspan="2" style="padding-top: 10px; color: White" valign="top"
				align="right"><b> Master Software Group 2015 © All rights
					reserved.</b></td>
		</tr>


	</table>

</body>