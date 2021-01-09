<%
session("esearch")=request.Form("txtesearch")
%>


<%
dim rs, con, sql
SET con = Server.CreateObject("ADODB.Connection")
SET rs = Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""
sql = "SELECT * FROM tblstudent where fldid='"&request.form("txtesearch")&"';"
rs.CursorType=2
rs.LockType=3
rs.Open sql, con


if rs.Bof then
	Response.Redirect "register1.asp?msg=No Record Found!..." 
else
	Response.Redirect "record.asp"	
end if

rs.Close
Set rs = Nothing
Set con = Nothing

%>
