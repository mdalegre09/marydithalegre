
<%


dim rs,con,sql

SET con=Server.CreateObject("ADODB.Connection")
SET rs=Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""
sql = "SELECT * FROM tbltuition where id="& SESSION("USERID") &";"
rs.CursorType=2
rs.LockType=3

rs.Open sql, con

rs.Fields("Year")=request.form("txtyear")
rs.Fields("Tuitionfee")=request.form("txttuition")
rs.Fields("RegistrationFee")=request.form("txtreg")
rs.Fields("Miscellaneousfee")=request.form("txtmis")

rs.Fields("OtherFees")=request.form("txtother")
rs.Fields("NSTP")=request.form("txtnstp")
rs.Fields("ICT")=request.form("txtict")
rs.Fields("SSC")=request.form("txtssc")
rs.Fields("LogoPin")=request.form("txtlogo")
rs.Fields("StudentManual")=request.form("txtstu")
rs.Fields("LaboratoryFees")=request.form("txtlab")
rs.Fields("ICT")=request.form("txtnon")
rs.Fields("IDCard")=request.form("txtid")

rs.Update
rs.Close

Set rs= Nothing
Set con= Nothing

response.redirect "paymentsettings.asp" 

%>