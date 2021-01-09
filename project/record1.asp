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
						<li><a href="register.asp" class="current">Register</a></li>
						<li><a href="payment.asp">Payment</a></li>
						<li><a href="record.asp">Record</a></li>
						<li><a href="account.asp">Account</a></li>            
						<li><a href="index.html">Logout</a></li>
					</ul>
				
		</div>
		</div>
		</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_content_wrapper" >

	<div id="templatemo_content" >
    	
        <div class="section_w960_p15" align="center" >
				<form method = "POST" action = "reg.asp">
				<table border="0" width="101%">
					
					<tr>
						<td colspan="2"><h3><b>Student Information</b></h3></td>
					</tr>
					<tr>
						<td width="22%" >&nbsp; ID Number:</td>
						<td width="75%">
						<input type="text" name="txtid" size="20"  ></td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Lastname:</td>
						<td width="75%">
						<input type="text" name="txtlname" size="20"  ></td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Firstname:</td>
						<td width="75%">
						<input type="text" name="txtfname" size="20" ></td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Middlename:</td>
						<td width="75%">
						<input type="text" name="txtmname" size="20"  ></td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Age:</td>
						<td width="75%"><input type="text" name="txtage" size="5"  >
						</td>						
					</tr>
					<tr>
						<td width="22%">&nbsp; Gender:</td>
						<td width="75%"><select size="1" name="txtgender">
						<option>Male</option>
						<option>Female</option>
						</select></td>
					</tr>
					<tr>
					<td width="22%">&nbsp; Birthdate:</td>
					<td width="75%">
						<table border="0" cellpadding="0" cellspacing="0">
						<tr  valign="top">
							<td>
							<form id="chooseDateForm" action="#" >
							
							<select id="d" class="styledselect-day" name = "txtbirth">
								
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
							</select>
							</td>
							<td>
								<select id="m" class="styledselect-month" name = "txtbirth1">
									
									<option value="Jan">Jan</option>
									<option value="Feb">Feb</option>
									<option value="Mar">Mar</option>
									<option value="Apr">Apr</option>
									<option value="May">May</option>
									<option value="Jun">Jun</option>
									<option value="Jul">Jul</option>
									<option value="Aug">Aug</option>
									<option value="Sep">Sep</option>
									<option value="Oct">Oct</option>
									<option value="Nov">Nov</option>
									<option value="Dec">Dec</option>
								</select>
							</td>
							<td>
								<select  id="y"  class="styledselect-year" name = "txtbirth2">
									
									<option value="2005">1977</option>
									<option value="2005">1978</option>
									<option value="2005">1979</option>
									<option value="2005">1980</option>
									<option value="2005">1981</option>
									<option value="2005">1982</option>
									<option value="2005">1983</option>
									<option value="2005">1984</option>
									<option value="2005">1985</option>
									<option value="2005">1986</option>
									<option value="2005">1987</option>
									<option value="2005">1988</option>
									<option value="2005">1989</option>
									<option value="2005">1990</option>
									<option value="2005">1991</option>
									<option value="2005">1992</option>
									<option value="2005">1993</option>
									<option value="2005">1994</option>
									<option value="2005">1995</option>
									<option value="2005">1996</option>
									<option value="2005">1997</option>
									<option value="2005">1998</option>
									<option value="2005">1999</option>
									<option value="2005">2000</option>
									<option value="2005">2001</option>
									<option value="2005">2002</option>
									<option value="2005">2003</option>
									<option value="2005">2004</option>
									<option value="2005">2005</option>
									<option value="2006">2006</option>
									<option value="2007">2007</option>
									<option value="2008">2008</option>
									<option value="2009">2009</option>
									<option value="2010">2010</option>
								</select>
								</form>
							</td>
							</tr>
						</table>
					</td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Address:</td>
						<td width="75%">
						<input type="text" name="txtadd" size="50" ></td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Contact:</td>
						<td width="75%">
						<input type="text" name="txtcontact" size="20"  ></td>
					</tr>
					<tr>
						<td width="22%">&nbsp; Contact:</td>
						<td>
								<select id="year"  name = "txtyear">
									
									<option value="1st Year">1st Year</option>
									<option value="2nd Year">2nd Year</option>
									<option value="3rd Year">3rd Year</option>
									<option value="4th Year">4th Year</option>
									
								</select>
							</td>
					</tr>
				</table>
				<br/>
				<br/>
				<p align="center">
				<a href="nextsub.asp"><input type="submit" value="Next" name="B1" style="background-image:url(images/templatemo_button_02.png)" ></a>
				
				<a href="register1.asp"><input type="button" value="Cancel" name="B2" style="background-image:url(images/templatemo_button_02.png)"></a></p>
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