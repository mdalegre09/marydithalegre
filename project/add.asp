<%
dim rs,con,sql
SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.RecordSet")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") &";"
sql= "SELECT * FROM tblstudent WHERE Subjects='"&request.form("txtcode")&"';"

rs.LockType = 3
rs.CursorType = 2

rs.Open sql,con

if rs.bof then 'no record found
	rs.AddNew
	
	rs.fields("Subjects")= request.form("txtcode")
	rs.Update
	
	response.redirect "register1.asp?msg=RECORD ADDED. . . "
else 'record exist
	response.redirect "nextsub.asp?msg=can't be added..."

end if 

rs.Close
SET rs = Nothing
SET con= Nothing
%>