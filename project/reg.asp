<%
dim rs,con,sql
SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.RecordSet")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") &";"
sql= "SELECT * FROM tblstudent WHERE fldid='"&request.form("txtid")&"' AND fldlname='"&request.form("txtlname")&"' AND fldfname='"&request.form("txtfname")&"' AND fldmname='"&request.form("txtmname")&"' AND fldage='"&request.form("txtage")&"' AND fldbirth='"&request.form("txtbirth")&"' AND fldgender='"&request.form("txtgender")&"' AND fldadd='"&request.form("txtadd")&"' AND fldcontact='"&request.form("txtcontact")&"';"

rs.LockType = 3
rs.CursorType = 2

rs.Open sql,con

if rs.bof then 'no record found
	rs.AddNew
	rs.fields("fldid")= request.form("txtid")
	rs.fields("fldlname")= request.form("txtlname")
	rs.fields("fldfname")= request.form("txtfname")
	rs.fields("fldmname")= request.form("txtmname")
	rs.fields("fldage")= request.form("txtage")
	rs.fields("fldbirth")= request.form("txtbirth")
	rs.fields("fldbirth1")= request.form("txtbirth1")
	rs.fields("fldbirth2")= request.form("txtbirth2")
	rs.fields("fldgender")= request.form("txtgender")
	rs.fields("fldadd")= request.form("txtadd")
	rs.fields("fldcontact")= request.form("txtcontact")
	rs.fields("Year")= request.form("txtyear")
	rs.Update
	
	response.redirect "nextsub.asp?msg=RECORD ADDED. . . "
else 'record exist
	response.redirect "record1.asp?msg=RECORD EXIST. . . "

end if 

rs.Close
SET rs = Nothing
SET con= Nothing
%>