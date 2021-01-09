<html>
<style type="text/css">
#main_column tr td h1 {
	color: #0F0;
}
</style>

<head>
<link href="css/table.css" rel="stylesheet" type="text/css" />

</head>

<body onLoad="window.print()">
<center>

<img src="images/logo.png"></a>

<br/>
Student Information
<br/>
<br/>
			<table border="1" width="700">
					
				
					<th>	
						ID Number
					</th>
					<th>
						Lastname
					</th>
					<th>
						Firstname
					</th>
					<th>
						Middlename
					</th>
					<th>
						Year Level
					</th>
					<th>
						Contact
					</th>
								
					
				</tr>
					<%dim rs,con,sql
						SET con=Server.CreateObject("ADODB.Connection")
						SET rs=Server.CreateObject("ADODB.RecordSet")

						con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") &";"
						sql= "SELECT * FROM tblstudent;"

						rs.CursorType = 3
						rs.Open sql, con
						if rs.bof then
							response.redirect "register1.asp?msg=No Record Found.." 
						
						else
						while(NOT rs.EOF)
					%> 
				<tr>
			<td width="500"><%=rs.fields("fldid")%></td>
			<td width="231"><%=rs.fields("fldlname")%></td>
			<td width="164"><%=rs.fields("fldfname")%></td>
			<td width="231"><%=rs.fields("fldmname")%></td>
			<td width="231"><%=rs.fields("Year")%></td>
			<td width="231"><%=rs.fields("fldcontact")%></td>
			
			</tr>
		<%
		rs.Movenext
		wend
		rs.Close
		SET rs = Nothing
		SET con= Nothing
		end if
		%>


</table>
</center>



</body>

</html>