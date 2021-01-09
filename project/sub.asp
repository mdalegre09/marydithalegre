<%
dim rs,con,sql
SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.RecordSet")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") &";"
sql= "SELECT * FROM tblsubjects WHERE coursecode='"&request.form("txtcode")&"' AND coursetitle='"&request.form("txttitle")&"' AND units='"&request.form("txtunits")&"' AND lab='"&request.form("txtlab")&"' AND pre='"&request.form("txtpre")&"' AND yearLevel='"&request.form("txtyear")&"' AND semester='"&request.form("txtsem")&"';"

rs.LockType = 3
rs.CursorType = 2

rs.Open sql,con

if rs.bof then 'no record found
	rs.AddNew
	rs.fields("coursecode")= request.form("txtcode")
	rs.fields("coursetitle")= request.form("txttitle")
	rs.fields("units")= request.form("txtunits")
	rs.fields("lab")= request.form("txtlab")
	rs.fields("pre")= request.form("txpre")
	rs.fields("yearLevel")= request.form("txtyear")
	rs.fields("semester")= request.form("txtsem")
	rs.Update
	
	response.redirect "subject.asp?msg=SUBJECT ADDED. . . "
else 'record exist
	response.redirect "addsubject.asp?msg=SUBJECT EXIST. . . "

end if 

rs.Close
SET rs = Nothing
SET con= Nothing
%>