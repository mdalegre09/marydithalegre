<%
dim rs,con,sql
SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""
sql="SELECT * FROM tblstudent where fldid='"& request.form("txtuser")&"';"
rs.CursorType=2
rs.Open sql,con

if rs.bof then
	response.write "ID is not exist..."
else
	response.write "<a href='index4.asp'>Click to Continue...</a>"
end if

rs.Close
Set rs=Nothing
Set con=Nothing
%>