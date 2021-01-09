<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<meta name="keywords" content="particle, free css templates, CSS, HTML" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link href="css/table.css" rel="stylesheet" type="text/css" />
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
						<li><a href="register.asp" class="current">Register</a></li>
						<li><a href="payment.asp">Payment</a></li>
						<li><a href="subject.asp">Subjects</a></li>
						<li><a href="account.asp">Account</a></li>            
						<li><a href="index.html">Logout</a></li>
					</ul>
				
		</div>
		</div>
		</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_content_wrapper" >

	<div id="templatemo_content" >
    	<%if request("msg") = "" then%>
		<%else%>
		<%=request("msg")%>
		<%end if%>
        <div class="section_w960_p15" align="center" >
       
        	<b>STUDENT NUMBER
  
		<form action="record.asp" method="post">
			<b>SEARCH:<input type="text" name="search" /><br />
			 
			<input type="submit" value="SUBMIT" style="background-image:url(images/templatemo_button_02.png)">
		</form>
        
        </div>
		<br/>
		
		
		 <div class="section_w960_p15" align="center" >
       
        	<a href="print.asp">PRINT</a>
        
        </div>
		<br/>
		
		
		 <div class="section_w960_p15" align="center" >
       
        	<form action="sort.asp" method="post">
		 <select name="sort">
		<option value="">--SORT BY--</option>
    		<option value="all">All Records</option>
            <option value="lname">Lastname</option>
           <option value="level">Year Level</option>
			
            
		</select>
        <input type="submit" value="OK">
            </form>
        
        </div>
		
		
		<br/>
		<br/>
    <div class="section_w960_p15" align="center" >
		<table border="1" width="700">
		
	
		<th>	
			ID Number
		</th>
		<th>
			Lastname
		</th>
		<th>
			Firstname
		</th>
		<th>
			Middlename
		</th>
		<th>
			Year Level
		</th>
		<%
		dim rs,con,sql
		SET con=Server.CreateObject("ADODB.Connection")
		SET rs=Server.CreateObject("ADODB.RecordSet")

		con.open "DRIVER={Microsoft Access DRIVER (*.mdb)}; DBQ="& Server.MapPath("asp.mdb") &";"
		sql= "SELECT * FROM tblstudent;"

		rs.CursorType = 3
		rs.Open sql, con
		if rs.bof then
			response.redirect "register1.asp?msg=No Record Found.." 
		
		else
		while(NOT rs.EOF)
		%> 
		
		<tr>
			<td width="500"><%=rs.fields("fldid")%></td>
			<td width="231"><%=rs.fields("fldlname")%></td>
			<td width="164"><%=rs.fields("fldfname")%></td>
			<td width="231"><%=rs.fields("fldmname")%></td>
			<td width="231"><%=rs.fields("Year")%></td>
			<td width="400"><a href="view.asp?id=<%=rs.fields("id")%>" class="icon-1 info-tooltip"><img src="images/view.png"></img></a>
			<a href="edit.asp?id=<%=rs.fields("id")%>" class="icon-2 info-tooltip"><img src="images/edit.png"></img></a>
			<a href="delete.asp?id=<%=rs.fields("id")%>"><img src="images/delete.png"></img></a></center></td>
		</tr>
		<%
		rs.Movenext
		wend
		rs.Close
		SET rs = Nothing
		SET con= Nothing
		end if
		%>
		</table>
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