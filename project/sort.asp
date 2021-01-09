<% 
if Request.Form("sort")="level" Then
Response.Redirect "level.asp" 
End if
if Request.Form("sort")="lname" Then
Response.Redirect "lname.asp" 
End if
if Request.Form("sort")="all" Then
Response.Redirect "register1.asp" 
End if
%>
