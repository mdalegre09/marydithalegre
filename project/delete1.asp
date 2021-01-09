<%
delID=Cdbl(request.querystring("id"))

dim rs,con,sql

SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""
sql = "SELECT * FROM tblsubjects where id="& delID &";"
rs.CursorType=2
rs.LockType=3

rs.Open sql, con
rs.Delete
rs.Update
rs.Close
Set rs= Nothing
Set con= Nothing

response.redirect "subject.asp" 
%>
