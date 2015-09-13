<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<link href="<c:url value="/resources/css/loginstyle.css"/>" rel="stylesheet" type="text/css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
			<td colspan="3"><label class="title_name">COMPLAINT TYPE</label>

			</td>
		</tr>
		<tr class="body">
			<td colspan="3" style="padding: 5%">
				<form action="cancel" method="post" style="height: 100%">
					<table style="position: relative; margin: auto;">
						<tr>
							<td><font face="verdana" size="3px">Department Name:</font></td>
							<td><select>
									<option value="ESTATE">WORKSHOP</option>
									<option value="saab">ESTATE</option>
									<option value="opel">ELECTRICAL</option>
									<option value="audi">COMPUTER</option>
							</select></td>
						</tr>
						<tr></tr>
						<tr>
							<td></td>
							<td></td>
						<tr>
							<td><font face="verdana" size="3px">Complaint Type:</font></td>
							<td><input type="password" name="userPassword"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td><input type="submit"
								style="float: right; padding-right: 2px; background-color: aqua"
								value="SUBMIT"></td>
							<td><input type="button" style="background-color: aqua"
								value="CANCEL"></td>
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
