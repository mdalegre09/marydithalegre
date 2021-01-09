
<%


dim rs,con,sql

SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""
sql = "SELECT * FROM tblstudent where id="& SESSION("USERID") &";"
rs.CursorType=2
rs.LockType=3

rs.Open sql, con

rs.Fields("fldid")=request.form("txtid")
rs.Fields("fldlname")=request.form("txtlname")
rs.Fields("fldfname")=request.form("txtfname")
rs.Fields("fldmname")=request.form("txtmname")

rs.Fields("fldgender")=request.form("txtgender")
rs.Fields("fldadd")=request.form("txtadd")
rs.Fields("fldcontact")=request.form("txtcontact")

rs.Update
rs.Close

Set rs= Nothing
Set con= Nothing

response.redirect "register1.asp" 

%>
