<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas offcanvas-left" style="background-color:#7f8c8d;">
   <section class="sidebar">
      <div class="page-sidebar  sidebar-nav">
         <div class="clearfix">
         </div>
         &nbsp;
         <div style="padding-left:75px">
            <img src="${pageContext.request.contextPath}/resources/img/jmari.jpg" class="img-responsive img-circle" width="100px" height="100px" alt="User Image">
            <h5 class="topprofiletext" style="color:white; padding-left:45px;">Jose Mari</h5>
            <p>
               <span class="topprofiletext" style="color:white; font-size:11px; padding-left:35px;">Super Admin</span>
         </div>
         &nbsp;
         
         <!-- BEGIN SIDEBAR MENU -->

                     <ul id="menu" class="page-sidebar-menu">
                       
                       
                       <!-- GENERAL Menu-->
                        <li>
                             <a href="#">
                                <i class="livicon"  data-name="presentation" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Performance Evaluation</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class ="sub-menu">
                            	<li>
                            		 <a href="/erp/hrms/hr_performance_management/supervisor_dashboard/">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Dashboard</span>
                                            	</a>
                            	</li>
                            	
                            	<li>
                            		 <a href="/erp/hrms/hr_performance_management/supervisor_transaction_evaluation/">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Evaluation</span>
                                            	</a>
                            	</li>
                            	<li>
                            		 <a href="/erp/hrms/hr_performance_management/supervisor_queries_evaluated/">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Queries</span>
                                            	</a>
                            	</li>
                            	
                            	
                            	<li>
                            		 <a href="/erp/hrms/hr_performance_management/supervisor_reports_evaluated/">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Reports</span>
                                            	</a>
                            	</li>
                            	</ul> 
                        </li>
                        <li>
                             <a href="#">
                                <i class="livicon"  data-name="money" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
                                <span class="title">Social Recognition</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class ="sub-menu">
                            <li>
                             		<a href="/erp/hrms/hr_social_recognition/manager_sc/">
                                                <i class="fa fa-angle-double-right"></i>
                                                <span class="title">Nominate</span>
                                            	</a>
                            </li>
                            </ul>
                        </li>

                       </ul>
                     <!-- END SIDEBAR MENU -->
     

       <!-- END SIDEBAR MENU -->
      </div>
   </section>
</aside>