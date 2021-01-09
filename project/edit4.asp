<%

SESSION("USERID")=Cdbl(request.querystring("id"))

dim rs,con,sql
Set con= Server.CreateObject("ADODB.Connection")
Set rs= Server.CreateObject("ADODB.Recordset")

con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") & ""

sql = "SELECT * FROM tblstudent where id = "& Cdbl(request.querystring("id"))&";"

rs.CursorType=2
rs.LockType=3
rs.Open sql, con

while (NOT rs.EOF)

A1 = rs.Fields("Year")
A2 = rs.Fields("Tuitionfee")
A3 = rs.Fields("RegistrationFee")
A4 = rs.Fields("Miscellaneousfee")
A5 = rs.Fields("Otherfees")
A6 = rs.fields("NSTP")
A7 = rs.Fields("ICT")
A8 = rs.Fields("SSC")
A9 = rs.Fields("Logopin")
A10 = rs.Fields("Studentmanual")
A11 = rs.Fields("Laboratory")
A12 = rs.Fields("Nonresident")
A13 = rs.Fields("IDcard")


rs.Movenext
wend

rs.Close

Set rs= Nothing
Set con= Nothing
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="particle, free css templates, CSS, HTML" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>
<div id="templatemo_site_title_bar_wrapper">

	<div id="templatemo_site_title_bar">
    
    	<div id="site_title">
            <h1><a href="http://www.templatemo.com" target="_parent">
                <!--
                Particles
                <span>free css templates</span>
                -->
                <img src="images/templatemo_logo.png" alt="css templates" /><span></span>
            </a></h1>
        </div>
        
        <div id="search_box">
            <form action="#" method="get">
                <input type="text" value="Enter keyword here..." name="q" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" />
            </form>
       </div>
       
	</div> <!-- end of templatemo_site_title_bar -->        
       
</div> <!-- end of templatemo_site_title_bar_wrapper -->

<div id="templatemo_banner_wrapper">
    <div id="templatemo_banner">
    <div id="templatemo_banner_slider">
        
     
     <div id="one" class="contentslider">
        <div class="cs_wrapper">
            <div class="cs_slider">
                        
                <div class="cs_article">
                    <div class="slider_content_wrapper">
	                    <div class="slider_content">
                            <h2>VISION</h2>
                            <p>A premiere institution of higher learning committed to the holistic development of the human person and the society.</p>
                             
                        </div>
                    
                        <div class="slider_image">
                           <img src="images/templatemo_image_04.jpg" alt="" />
                        </div>
                        
                        <div class="cleaner"></div>
                	</div>
                </div><!-- End cs_article -->
                            
                <div class="cs_article">
                    <div class="slider_content_wrapper">
	                    <div class="slider_content">
                            <h2>Mission</h2>
                            <p>To produce well-trained, skilled, dynamic and competitive individuals imbued with values and attitudes and responsive to the changing needs of the local, national and global communities. </p>
                             
                        </div>
                    
                        <div class="slider_image">
                           <img src="images/templatemo_image_04.jpg" alt="Artist's interpretation of article headline" />
                        </div>
                	</div>
                </div><!-- End cs_article -->
                
                <div class="cs_article">
                    <div class="slider_content_wrapper">
	                    <div class="slider_content">
                            <h2>Goals </h2>
                            <p>The Gordon College shall:

									<br/>1. Provide opportunities that will enable individuals to acquire a high level of professional, technical and vocational courses of studies.

									<br/>2. Develop innovative programs, projects and models of practice by undertaking research and studies.

									<br/>3. Promote community development through relevant extension programs.

									<br/>4. Provide opportunities for entrepreneurship and employability of graduates.</p>
                             
                        </div>
                    
                        <div class="slider_image">
                           <img src="images/templatemo_image_06.jpg" alt="Artist's interpretation of article headline" />
                        </div>
                	</div>
                </div><!-- End cs_article -->
                            
                
                
                      
                        </div><!-- End cs_slider -->
                    </div><!-- End cs_wrapper -->
                </div><!-- End contentslider -->
                
                <!-- Site JavaScript -->
                <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
                <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
                <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
                <script type="text/javascript">
                    $(function() {
                    $('#one').ContentSlider({
                    width : '960px',
                    height : '250px',
                    speed : 400,
                    easing : 'easeOutSine'
                    });
                    });
                </script>
                <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
                <script src="js/chili/recipes.js" type="text/javascript"></script>
                <div class="cleaner"></div>
      
    
	</div> <!-- end of templatemo_popular_posts -->
    </div> <!-- end of templatemo_banner -->
</div> <!-- end of templatemo_banner_wrapper -->

		<div id="templatemo_menu_wrapper">
		<div id="templatemo_menu">
				
					<ul>
						<li><a href="index3.asp" >Home</a></li>
						<li><a href="register.asp" >Register</a></li>
						<li><a href="payment.asp" class="current">Payment</a></li>
						<li><a href="subject.asp">Subjects</a></li>
						<li><a href="account.asp">Account</a></li>            
						<li><a href="index.html">Logout</a></li>
					</ul>
				
		</div>
		</div>
		</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_content_wrapper" >

	<div id="templatemo_content" >
    	
        <div class="section_w960_p15" align="center" >
       	<form method = "POST" action = "editvalidate3.asp">
				<table border="0" width="101%">
					
					<tr>
						<td colspan="2"><h3><b>EDIT Payment</b></h3></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Year Level:</td>
						<td width="75%">
						<input type="text" name="txtyear" size="20" value = "<%=A1%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Tuition Fee:</td>
						<td width="75%">
						<input type="text" name="txttuition" size="20" value = "<%=A2%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Registration:</td>
						<td width="75%">
						<input type="text" name="txtreg" size="20" value = "<%=A3%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Miscellaneous Fee:</td>
						<td width="75%">
						<input type="text" name="txtmis" size="20" value = "<%=A4%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Other Fees:</td>
						<td width="75%">
						<input type="text" name="txtother" size="20" value = "<%=A5%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; NSTP:</td>
						<td width="75%">
						<input type="text" name="txtnstp" size="20" value = "<%=A6%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; ICT:</td>
						<td width="75%">
						<input type="text" name="txtict" size="20" value = "<%=A7%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; SSC:</td>
						<td width="75%">
						<input type="text" name="txtssc" size="20" value = "<%=A8%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; LOGO Pin:</td>
						<td width="75%">
						<input type="text" name="txtlogo" size="20" value = "<%=A9%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Student Manual:</td>
						<td width="75%">
						<input type="text" name="txtstu" size="20" value = "<%=A10%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Laboratory:</td>
						<td width="75%">
						<input type="text" name="txtlab" size="20" value = "<%=A11%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; Non-Resident:</td>
						<td width="75%">
						<input type="text" name="txtnon" size="20" value = "<%=A12%>" ></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; ID Card:</td>
						<td width="75%">
						<input type="text" name="txtid" size="20" value = "<%=A13%>" ></td>
					</tr>
				</table>
				<p align="center"><input type="submit" value="Submit" name="B1" style="background-image:url(images/templatemo_button_02.png)" >
				
				<a href="paymentsettings.asp"><input type="button" value="Cancel" name="B2" style="background-image:url(images/templatemo_button_02.png)"></a></p>
				</form>
				

        </div>
        
        <div class="cleaner_h30"></div>
        
      
        
        <div class="cleaner"></div>
    </div> <!-- end of templatemo_content -->
    <div id="templatemo_content_bottom"></div>

</div> <!-- end of templatemo_content_wrapper -->

<div id="templatemo_footer">

    
    <div class="cleaner_h40"></div>
    
    <center>
        Copyright © 2014 <a href="#">Mary Dith Alegre</a> | 
       COLLLEGE ENROLLMENT SYSTEM
  </center>
    
</div> <!-- end of footer -->
</body>
</html>