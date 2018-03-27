<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="../includes/head.jsp" %>    
<!--page level css -->

    <style type="text/css">
        .clockStyle{
	
	
    padding:6px;
	color:#ffffff;
	font-family:"Arial Black", sans-serif;
	font-size:15px;
	font-weight:bold;
	letterspacing:2px;
	display:inline;
}
</style>
    <!--end of page level css-->
</head>

<body class="skin-josh">
   <%@ include file="../includes/header.jsp" %>
	
	<!--MENU PER SYSTEM MODULE-->
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
       <%@include file="../includes/sidebar.jsp" %>
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
                <h1><b>Home</b></h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <a href="#">
                            <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
                            <span>&nbsp;Time and Attendance</span>
                        </a>
                    </li>
                </ol>
            </section>
			<section>
			
			<div class="col-lg-12">
                        <div class="panel panel-success unselectable">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-table"></i>&nbsp Employee Personal Information</h4>
                                
                            </div>
                            <div class="panel-body">
							<div style="float:right;">
                                <button type="button" class="btn btn-effect btn-success" data-toggle="modal" data-href="#time_modal" href="#time_modal" title="Time IN/ Time OUT" style="width: 100px; height: 50px;">
                                  <span class="livicon" data-name="clock" data-size="30" data-color="#fff" data-hovercolor="#fff"></span>
                                </button>
							</div>
							<!--
							<div style="float:right; margin-right:10px;">
							<label style=" margin-right:120px; float:right;" class="" for="name">For the Month of:</label>
							<input disabled style="cursor:auto;  margin-right:-220px; float:right; border:none; width:100px; background:none;">
							</div>
                                -->
							
							<br />
							<div class="col-md-10">
                            <div style="float:left; width:400px;">
                            <div class="form-group">
							<label for="name">Employee Name :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>Mary Krissa Concepcion</span>
                            </div>
                            </div>    
                            <div style="float:right; width:350px;">
                            
                            </div>    
                            
                            
                            
                            
                            
							<br>
				        
							
							</div>
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">Gender :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>Female</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>Age :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>20</span>
                            </div>
                                </div>    
                            
                            
                            
                            
                            
							<br>
				        
							
							</div>
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">Birth Date :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>September 22, 1997</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>Birth Place :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>Caloocan</span>
                            </div>
                                </div>    
                            
                        	</div>    
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">Contact No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>09772688328</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>Email Address :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>krsscncpcn@gmai.com</span>
                            </div>
                                </div>    
                            
							</div>
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">Job Title :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>Employee</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>Department :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>IT Department</span>
                            </div>
                                </div>    
                            
							</div>
                            
                            
                            
							<br/><br/><br/>
							<hr style="margin-top: 200px;">
                            
					</div>		
							
                       
                </div>
                </div>
                
                <br />
                <br />
            <div class="col-lg-12">
                        <div class="panel panel-info unselectable">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-table"></i>&nbsp Employee Government ID</h4>
                                
                            </div>
                            <div class="panel-body">
							
							<!--
							<div style="float:right; margin-right:10px;">
							<label style=" margin-right:120px; float:right;" class="" for="name">For the Month of:</label>
							<input disabled style="cursor:auto;  margin-right:-220px; float:right; border:none; width:100px; background:none;">
							</div>
                                -->
							
							<br />
							
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">GSIS No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>---</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>PAGIBIG No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>---</span>
                            </div>
                                </div>    
                            
                            
							<br>
				        
							
							</div>
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">PHILHEALTTH No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>---</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>SSS No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>---</span>
                            </div>
                                </div>    
                            
                        	</div>    
                            <div class="col-md-10">
                            <div style="float:left; width:300px;">
                            <div class="form-group">
							<label for="name">TIN No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>---</span>
                            </div>
                                </div>    
                            <div style="float:right; width:400px;">
                            <div class="form-group">
                                
							<label>Agency Emp No :</label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <span>---</span>
                            </div>
                                </div>    
                            
							</div>
                            
                            
                            
							<br/><br/><br/><br/>
							<hr style="margin-top: 100px;">
					</div>		
							
                       
                </div>
                </div>
                
                  
            <div id="time_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false">
                   <div class="modal-dialog modal-sm">  													  
                       <div class="modal-content">
                           <div class="modal-header" style="background: gray;">
                            <div align="center" style="margin-left:10px; margin-right:10px;">
                             <div id="clockbox" class="clockStyle">
                               <script type="text/javascript">
                                   tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
                                   tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

                                   function GetClock(){
                                       var d=new Date();
                                       var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getFullYear();
                                       var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

                                       if(nhour==0){ap=" AM";nhour=12;}
                                       else if(nhour<12){ap=" AM";}
                                       else if(nhour==12){ap=" PM";}
                                       else if(nhour>12){ap=" PM";nhour-=12;}

                                       if(nmin<=9) nmin="0"+nmin;
                                       if(nsec<=9) nsec="0"+nsec;

                                       document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
                                   }

                                   window.onload=function(){
                                       GetClock();
                                       setInterval(GetClock,1000);
                                   }
                                </script>
                                 </div>
                           </div>
                       </div>
                           <div class="modal-body">
                               
                               
                          <!--   <div style="width: 1000px;"> -->
                              <!--   <div style="float:left; witdth: 400px; margin-left: 15px; margin-right: 40px; ">   -->
                                           <button type="button" class="btn btn-success" data-toggle="modal" data-href="#timein_confirm" style="width: 265px;" href="#timein_confirm" title="Time IN">
                                               
                                               
                                               <div class="pull-right col-xs-9">
                                               <span><font size="5px">TIME IN</font></span>
                                            </div>
                                                   <i class="livicon" data-name="sign-in" data-l="true" data-c="#fff" data-hc="#fff" data-s="45"></i>
								              </button>
                                                                          
                                <!-- </div> -->
                                 <br/><br/>
                              <!--   <div style="float:left; witdth: 400px;"> -->   
                                        <button type="button" class="btn btn-info" data-toggle="modal" data-href="#timeout_confirm" href="#timeout_confirm" title="Time OUT" style="width: 265px;">
                                               
                                               
                                               <div class="pull-right col-xs-9">
                                               <span><font size="5px">TIME OUT</font></span>
                                                </div>
                                                   <i class="livicon" data-name="sign-out" data-l="true" data-c="#fff" data-hc="#fff" data-s="45"></i>
								              </button>
                                     
                             <!--    </div>  -->
                                     
                                     
                                 
                               </div>
										     
                           
				            <div class="modal-footer">
                               
                                <button type="button" data-dismiss="modal" class="btn" data-toggle="modal" data-target="#receive_modal">Cancel</button>
                                
				            </div>
				            </div>
										
					  </div>
                </div>
                
            
                
                </div>
                
                
               <div class="modal fade in" id=timeout_confirm tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
					<form:form action="user-time-out" method="post" modelAttribute="userAttendance">
                        <fieldset>  
						<div class="modal-header">
							<h4 class="modal-title">Time OUT Successful</h4>
						</div>
						<div class="modal-body">
							
							
                            
                        <p>You have successfully Time out at <script type="text/javascript">
                            var currentTime = new Date();
                            var hours = currentTime.getHours();
                            var minutes = currentTime.getMinutes();
                            if (minutes < 10){
                                minutes = "0" + minutes
                            }
                
                            
                            if(hours > 11){
                                
                                a=12;
                                hours = hours-a;
                                
                                document.write(hours + ":" + minutes + " " + "PM" );
                            } 
                            else if (hours < 11){
                                
                                if(hours==0){
                                    
                                    hours=12;
                                    
                                    document.write(hours + ":" + minutes + " " + "AM" );  
                                    
                                    
                                }
                                else{
                                    
                                    document.write(hours + ":" + minutes + " " + "AM" ); 
                                    
                                }
                                
                                
                                
                                
                                
                                
                            }
                            
                            </script></p>
                            
                            
                            
                            
							
						</div>
						
						<div class="modal-footer">
							
							<button type="submit" class="btn btn-default">OK</button>
						</div>
						</fieldset>
						</form:form>
					</div>
				</div>
			</div>  
                
                
            <div class="modal fade in" id=timein_confirm tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
					<form:form action="user-time-in" method="post" modelAttribute="userAttendance">
                        <fieldset>  
						<div class="modal-header">
							<h4 class="modal-title">Time IN Successful</h4>
						</div>
						<div class="modal-body">
							
							
                        <!--       
                        
                          <p>You have successfully Time in at<script type="text/javascript">
                                   tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
                                   tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

                                   function GetClock(){
                                       var d=new Date();
                                       var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getFullYear();
                                       var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;
                                         document.write(hours + ":" + minutes + " ");
                                       if(hours==0){document.write("AM");}
                                       else if(hours<12){document.write("AM");}
                                       else if(nhour==12){ document.write("PM");}
                                       else if(nhour>12){ document.write("PM");}

                                       if(nmin<=9) nmin="0"+nmin;
                                       if(nsec<=9) nsec="0"+nsec;

                                       document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
                                   }

                                   window.onload=function(){
                                       GetClock();
                                       setInterval(GetClock,1000);
                                   }
                                </script></p>  
                          -->   
                        
                        <p>You have successfully Time in at <script type="text/javascript">
                            var currentTime = new Date();
                            var hours = currentTime.getHours();
                            var minutes = currentTime.getMinutes();
                            if (minutes < 10){
                                minutes = "0" + minutes
                            }
                
                            
                            if(hours > 11){
                                
                                a=12;
                                hours = hours-a;
                                
                                document.write(hours + ":" + minutes + " " + "PM" );
                            } 
                            else if (hours < 11){
                                
                                if(hours==0){
                                    
                                    hours=12;
                                    
                                    document.write(hours + ":" + minutes + " " + "AM" );  
                                    
                                    
                                }
                                else{
                                    
                                    document.write(hours + ":" + minutes + " " + "AM" ); 
                                    
                                }
                                
                                
                            }
                            
                            </script></p>
                            
						</div>
						
						<div class="modal-footer">
							
							<button type="submit" class="btn btn-default">OK</button>
						</div>
						</form:form>
						</div>
					</div>
				</div>
			</div>
                
        <div class="modal fade in" id="break_modal" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
					 
						<div class="modal-header">
							<h4 class="modal-title">Define Break</h4>
						</div>
						<div class="modal-body">
                            
                       
                        <p>
                        <label>Start Time :</label>   
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <script type="text/javascript">
                            var currentTime = new Date();
                            var hours = currentTime.getHours();
                            var minutes = currentTime.getMinutes();
                            if (minutes < 10){
                                minutes = "0" + minutes
                            }
                
                            
                            if(hours > 11){
                                
                                a=12;
                                hours = hours-a;
                                
                                document.write(hours + ":" + minutes + " " + "PM" );
                            } 
                            else if (hours < 11){
                                
                                if(hours==0){
                                    
                                    hours=12;
                                    
                                    document.write(hours + ":" + minutes + " " + "AM" );  
                                    
                                    
                                }
                                else{
                                    
                                    document.write(hours + ":" + minutes + " " + "AM" ); 
                                    
                                }
                                
                                
                                
                            }
                            
                            </script>
                        
                        </p>
                        
                        <br>
                        <div class="form-group">
									<label for="select-1">Break</label>
									<select class="form-control" id="select-1">
                                        
                                        <option disabled selected>Select break</option>
                                        <option value="Option 1">30 minutes</option>
                                        <option value="Option 2">1 hour</option>
                                        <option value="Option 3">2 hours</option>
                                        
									</select>
								</div>
							
							</fieldset>
							
						
						<div class="modal-footer">
							
							<button type="button" class="btn btn-default">Cancel</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
						</div>
						
					</div>
				</div>
			</div>
                
        <div class="modal fade in" id="leave_modal" tabindex="-1" role="dialog" aria-hidden="false" style="display:none;">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Emergency Leave</h4>
						</div>
						<div class="modal-body">
                            
                        <p align="left">
                              Reason
                            <textarea class="form-control" rows="5"></textarea>
                            </p>   
                                    
                  		
							
						</div>
						
						<div class="modal-footer">
							
							<button type="submit" class="btn btn-default" onclick="location.href='k_employee_user.html'">Cancel</button>
                            <button type="submit" class="btn btn-primary" onclick="location.href='k_employee_user.html'">Submit</button>
						</div>
					</div>
				</div>
			</div>
                
                
       
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
			</section>
        </aside>
        </div>
    <a id="back-to-top" href="#" class="btn btn-primary btn-lg back-to-top" role="button" title="Return to top" data-toggle="tooltip" data-placement="left">
        <i class="livicon" data-name="plane-up" data-size="18" data-loop="true" data-c="#fff" data-hc="white"></i>
    </a>
    <%@include file="../includes/footer.jsp" %> 
    $(document).ready(function() {
        var composeHeight = $('#calendar').height() +21 - $('.adds').height();
        $('.list_of_items').slimScroll({
            color: '#A9B6BC',
            height: composeHeight + 'px',
            size: '5px'
        });
    });
    </script>
            
          
    <!-- end of page level js -->
    
    
    
</body>
</html>
