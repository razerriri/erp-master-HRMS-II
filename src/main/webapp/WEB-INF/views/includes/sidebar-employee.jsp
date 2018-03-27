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
               <span class="topprofiletext" style="color:white; font-size:11px; padding-left:35px;">Employee</span>
         </div>
         &nbsp;

         <!-- BEGIN SIDEBAR MENU -->
					<ul id="menu" class="page-sidebar-menu">
                       
                       
                       <!-- GENERAL Menu-->
						<li>
							<a href="/ess/Schedule">
							<i class="fa fa-angle-double-right"></i>
							<span class="title">Schedule</span>
							</a>
						</li>
						<li>
							<a href="/ess/leaveRequest">
							<i class="livicon"  data-name="edit" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Leave Request</span>
                            </a>
                        </li>
                        <li>
							<a href="/ess/reimbursementRequest">
							<i class="livicon"  data-name="edit" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Reimbursement Request</span>
							</a>
                        </li>
                        <li>
							<a href="/erp/hrms/hr_performance_management/evaluatee_queries_evaluation/">
							<i class="livicon"  data-name="edit" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Personal Score</span>
                            </a>
                        </li>
						<li>
							<a href="/erp/hrms/hr_recruitment/employee_home/">
							<i class="livicon"  data-name="dashboard" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Job Posts</span>
                            </a>
						</li>
						<li>
							<a href="/erp/hrms/hr_social_recognition/employee_sc/">
							<i class="livicon"  data-name="pin-on" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Announcements</span>
                            </a>
                        </li>
                        <li>
							<a href="/erp/hrms/hr_recruitment/employee_jobpost/">
							<i class="livicon" data-name="upload" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Request for Job Post</span> 
                            </a> 
						</li>
						<li>
							<a href="/ess/Payslip">
							<i class="livicon"  data-name="edit" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Payslip</span>
                            </a>
                        </li>	                                    
                       	<li>
                            <a href="#">
							<i class="livicon" data-name="printer" data-size="18" data-c="#ffffff" data-hc="#ffffff" data-loop="true"></i>
							<span class="title">Reports</span>
                            </a>
                        </li>
					</ul>
                     <!-- END SIDEBAR MENU -->
                    <!-- END SIDEBAR MENU -->
      </div>
   </section>
</aside>