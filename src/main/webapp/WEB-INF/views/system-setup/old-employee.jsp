<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
      <!--page level css -->
      <link href="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/css/wizard.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/css/jquery.steps.css" rel="stylesheet" >
      <link href="${pageContext.request.contextPath}/resources/vendors/clockface/css/clockface.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/vendors/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/vendors/timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/vendors/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen" />
      <link href="${pageContext.request.contextPath}/resources/vendors/touchspin/dist/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" media="all" />
      <link href="${pageContext.request.contextPath}/resources/vendors/multiselect/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
      <link href="${pageContext.request.contextPath}/resources/vendors/switch/dist/css/bootstrap3/bootstrap-switch.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/vendors/spinner/dist/bootstrap-spinner.css" rel="stylesheet" />
      <link href="${pageContext.request.contextPath}/resources/vendors/daterangepicker/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
      <!--end of page level css-->
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <!--MENU PER SYSTEM MODULE-->
      <div class="wrapper row-offcanvas row-offcanvas-left">
      <!-- Left side column. contains the logo and sidebar -->
      <%@include file="../includes/sidebar.jsp" %>
      <!-- Left side column. contains the logo and sidebar -->
      <!-- Right side column. Contains the navbar and content of the page -->
      <aside class="right-side">
         <!-- Content Header (Page header) -->
         <section class="content-header">
            <!--section starts-->
            <h1>Add Old Employee</h1>
            <ol class="breadcrumb">
               <li>
                  <a href="/">
                  <i class="livicon" data-name="home" data-size="14" data-loop="true"></i>
                  Home
                  </a>
               </li>
               <li>
                  <a href="#">System Setup</a>
               </li>
               <li>
                  <a href="#">Add Employee</a>
               </li>
            </ol>
         </section>
         <!--section ends-->
         <section class="content">
            <!--main content-->
            <div class="row">
            <div class="col-md-12">
               <div class="panel panel-primary">
                  <div class="panel-heading">
                     <h3 class="panel-title">
                        <i class="livicon" data-name="bell" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                        Step by Step Registration
                     </h3>
                     <span class="pull-right clickable">
                     <i class="glyphicon glyphicon-chevron-up"></i>
                     </span>
                  </div>
                  <div class="panel-body">
                     <!--main content-->
                     <div class="row">
                        <div class="col-md-12">
                           <!-- BEGIN FORM WIZARD WITH VALIDATION -->
                           <form:form class="form-wizard" action="save/" method="POST" modelAttribute="employee">
                              <h1 class="hidden-xs">Personal Details</h1>
                              <section>
                                 <h2 class="hidden">&nbsp;</h2>
                                 <div class="form-group">
                                    <label for="FirstName">First Name *</label>
                                    <form:input path="empFirstName" id="FirstName" name="FirstName" type="text" placeholder="Enter your first name" class="form-control required"/>
                                 </div>
                                 <div class="form-group">
                                    <label for="MiddleName">Middle Name *</label>
                                    <form:input path="empMiddleName" id="MiddleName" name="MiddleName" type="text" placeholder="Enter your middle name" class="form-control required"/>
                                 </div>
                                 <div class="form-group">
                                    <label for="LastName">Last Name *</label>
                                    <form:input path="empLastName" id="LastName" name="LastName" type="text" placeholder="Enter your last name" class="form-control required"/>
                                 </div>
                                 <div class="form-group">
                                    <div class="form-group">
                                       <label for="email">Gender</label>
                                       <form:select path="empGender" class="form-control" title="Select an account type...">
                                          <option>Select</option>
                                          <option value="Male">MALE</option>
                                          <option value="Female">FEMALE</option>
                                       </form:select>
                                    </div>
                                    <div class="form-group">
                                       <label for="Birthday">Birthday *</label>
                                       <div class="input-group">
                                          <form:input path="birthdate" id="Birthday" name="Birthday" type="text" class="form-control required" data-inputmask="'alias': 'dd/mm/yyyy'"/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label for="PlaceofBirth">Place of Birth *</label>
                                       <form:input path="empBirthplace" id="PlaceofBirth" name="PlaceofBirth" type="text" placeholder="Birthplace" class="form-control required"/>
                                    </div>
                                    <div class="form-group">
                                       <label for="ContactNo">Contact # *</label>
                                       <form:input path="contactNo" id="ContactNo" name="ContactNo" type="number" placeholder="Contact Number" class="form-control required"/>
                                    </div>
                                    <!--<div class="form-group">
                                       <label for="password">Password *</label>
                                       <input id="password" name="password" type="password" placeholder="Enter your password" class="form-control required"></div> 
                                       <div class="form-group">
                                       <label for="confirm">Confirm Password *</label>
                                       <input id="confirm" name="confirm" type="password" placeholder="Confirm your password " class="form-control required"></div> -->
                                    <div class="form-group">
                                       <label for="email">Email *</label>
                                       <form:input path="empEmail" id="email" name="email" placeholder="Enter your Email" type="text" class="form-control required email"/>
                                    </div>
                                    <div class="form-group">
                                       <label for="Hiredate">Hiredate *</label>
                                       <div class="input-group">
                                          <form:input path="empHireDate" id="Hiredate" name="Hiredate" type="text" class="form-control required" data-inputmask="'alias': 'dd/mm/yyyy'"/>
                                       </div>
                                    </div>
                                    <p>(*) Mandatory</p>
                              </section>
                              <h1 class="hidden-xs">Additional Information</h1>
                              <section>
                              <h2 class="hidden">&nbsp;</h2>
                              <div class="form-group">
                              <label for="GSISIDNo">GSIS ID Number *</label>
                              <div class="input-group">
                              <form:input path="gsisNo" id="GSISIDNo" name="GSISIDNo" type="text" class="form-control required" data-inputmask="'alias': 'ip'" data-mask=""/>
                              </div>
                              </div>
                              <div class="form-group">
                              <label for="PAGIBIGIDNo">PAGIBIG ID Number *</label>
                              <div class="input-group">
                              <form:input path="pagibigNo" id="PAGIBIGIDNo" name="PAGIBIGIDNo" type="text" class="form-control required" data-inputmask="'alias': 'ip'" data-mask=""/>
                              </div>
                              </div>
                              <div class="form-group">
                              <label for="PHILHEALTHNo">PHILHEALTH Number *</label>
                              <div class="input-group">
                              <form:input path="philhealthNo" id="PHILHEALTHNo" name="PHILHEALTHNo" type="text" class="form-control required" data-inputmask="'alias': 'ip'" data-mask=""/>
                              </div>
                              </div>
                              <div class="form-group">
                              <label for="TINNo">TIN Number *</label>
                              <div class="input-group">
                              <form:input path="tinNo" id="TINNo" name="TINNo" type="text" class="form-control required" data-inputmask="'alias': 'ip'" data-mask=""/>
                              </div>
                              </div>
                              <div class="form-group">
                              <label for="AENo">Agency Employee Number *</label>
                              <div class="input-group">
                              <form:input path="agencyEmpNo" id="AENo" name="AENo" type="text" class="form-control required" data-inputmask="'alias': 'ip'" data-mask=""/>
                              </div>
                              </div>
                              <p>(*) Mandatory</p>
                              </section>
                              <h1>Staffing</h1>
                              <section>
                              <div class="form-group">
                              <label for="email">Department</label>
                              <form:select path="deptId" class="form-control" title="Select an account type...">
                              <c:forEach var="d" items="${list1 }">
                              <option value="${d.deptId }">${d.deptName }</option>
                              </c:forEach>
                              </form:select>
                              </div>
                              <div class="form-group">
                              <label for="email">Job  Title</label>
                              <form:select path="jobId" title="Select an account type..." class="form-control required">
                              <c:forEach var="j" items="${list2 }">
                              <option value="${j.jobId }">${j.jobTitle }</option>
                              </c:forEach>
                              </form:select>
                              </div>
                              <div class="form-group">
                              <label for="Hiredate">Start Date *</label>
                              <div class="input-group">
                              <form:input path="startDate" id="Startdate" name="Startdate" type="text" class="form-control required" data-inputmask="'alias': 'dd/mm/yyyy'"/>
                              </div>
                              </div>
                              <div class="form-group">
                              <label for="Hiredate">End Date </label>
                              <div class="input-group">
                              <form:input path="endDate" id="Enddate" name="Enddate" type="text" class="form-control" data-inputmask="'alias': 'dd/mm/yyyy'"/>
                              </div>
                              </div>
                              <div class="form-group">
                              <label for="email">Status</label>
                              <form:select path="empStatus" title="Select an account type..." class="form-control required">
                              <option value="">Select</option>
                              <option value="Probational">Probational</option>
                              <option value="On Boarding">On boarding</option>
                              <option value="Regular">Regular</option>
                              <option value="Resigned">Resigned</option>
                              </form:select>
                              </div>
                              <div class="">
                              <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required">
                              <label for="acceptTerms">I have read terms and conditions</label>
                              </div>
                              </section>
                           </form:form>
                           <!-- END FORM WIZARD WITH VALIDATION --> </div>
                        </div>
                        <!--main content end--> 
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </aside>
      <%@include file="../includes/footer.jsp" %>
      <!-- begining of page level js -->
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/jquery.validate.min.js"></script>
      <script  src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/additional-methods.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/wizard.js"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/jquery.steps.js"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/wizard/jquery-steps/js/form_wizard.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/pages/formwizard.js"></script>
      <!-- InputMask -->
      <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
      <!-- end of page level js -->
      <script src="${pageContext.request.contextPath}/resources/vendors/daterangepicker/daterangepicker.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/select2/select2.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/icheck.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/iCheck/demo/js/custom.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/autogrow/js/jQuery-autogrow.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/vendors/card/jquery.card.js" type="text/javascript"></script>
      <script src="${pageContext.request.contextPath}/resources/js/pages/formelements.js" type="text/javascript"></script>
       <script>sidebar.syscon();</script>
      <!-- end of page level js -->
      
   </body>
</html>