
<%


dim rs,con,sql

SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""
sql = "SELECT * FROM tblsubjects where id="& SESSION("USERID") &";"
rs.CursorType=2
rs.LockType=3

rs.Open sql, con

rs.Fields("coursecode")=request.form("txtcode")
rs.Fields("coursetitle")=request.form("txttitle")
rs.Fields("units")=request.form("txtunits")
rs.Fields("lab")=request.form("txtlab")

rs.Fields("pre")=request.form("txtpre")
rs.Fields("yearLevel")=request.form("txtyear")
rs.Fields("semester")=request.form("txtsem")

rs.Update
rs.Close

Set rs= Nothing
Set con= Nothing

response.redirect "subject.asp" 

%>
