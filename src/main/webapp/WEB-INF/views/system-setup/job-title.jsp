<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <%@include file="../includes/head.jsp" %>
   </head>
   <body class="skin-josh">
      <%@include file="../includes/header.jsp" %>
      <div class="wrapper row-offcanvas row-offcanvas-left">
         <!-- Left side column. contains the logo and sidebar -->
         <%@include file="../includes/sidebar.jsp" %>
         <!-- Right side column. Contains the navbar and content of the page -->
         <aside class="right-side">
            <!-- Main content -->
            <section class="content-header">
               <!--section starts-->
               <h1>Job Title</h1>
               <ol class="breadcrumb">
                  <li>
                     <a href="index">
                     <i class="livicon" data-name="home" data-size="15" data-loop="true"></i>
                     Home
                     </a>
                  </li>
                  <li>
                     <a href="">System Setup</a>
                  </li>
                  <li class="active">Job Title</li>
               </ol>
            </section>
            <section class="content paddingleft_right15">
               <div class="row">
                  <div class="col-lg-15">
                     <div class="panel panel-success filterable">
                        <div class="panel-heading clearfix  ">
                           <div class="panel-title pull-left">
                              <div class="caption">
                                 <i class="livicon" data-name="thumbnails-big" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                 Job Titles
                              </div>
                           </div>
                           <div>
                              <div class="pull-right"><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modaladd"><span ></span> Add Job Title</a></div>
                           </div>
                        </div>
                        <div class="panel-body">
                           <table class="table table-striped table-responsive" id="table1">
                              <thead>
                                 <tr>
                                    <th>Job Title</th>
                                    <th>Department</th>
                                    <th>Pay Grade</th>
                                    <th>Salary Name</th>
                                    <th></th>
                                    <th></th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:forEach var="j" items="${list }">
                                    <tr>
                                       <td>${j.jobTitle }</td>
                                       <td>${j.deptName }</td>
                                       <td>${j.payGrade }</td>
                                       <td>${j.salaryName }</td>
                                       <td><a href="#" class="btn btn-default" data-toggle="modal" data-target="#modalupdate" job-id="${j.jobId }" job-title="${j.jobTitle }" dept-name="${j.deptId }" pay-grade="${j.payGradeId }" salary-name="${j.salaryTypeId }"><span class="glyphicon glyphicon-pencil"></span> </a></td>
                                       <td> <a href="#" class="btn btn-danger" onclick="confirmDelete(${j.jobId})"><span class="glyphicon glyphicon-trash"></span> </a></td>
                                    </tr>
                                 </c:forEach>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
                  <div class="modal fade" id="modaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                     <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">
                                 <i class="fa fa-plus"></i>
                                 Job Title Details
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" modelAttribute="job" action="save" method="post">
                                 <fieldset>
                                    <!-- Form Name -->
                                    <legend>Add Job Title</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Job Title Name</label>  
                                       <div class="col-md-6">
                                          <form:input path="jobTitle" id="deptname" name="deptname" type="text" placeholder="Job title" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="dept">Department</label>
                                       <div class="col-md-5">
                                          <form:select path="deptId" id="dept" name="dept" class="form-control">
                                             <c:forEach var="d" items="${list2 }">
                                                <option value="${d.deptId }">${d.deptName }</option>
                                             </c:forEach>
                                          </form:select>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="dept">Pay Grade</label>
                                       <div class="col-md-5">
                                          <form:select path="payGradeId" id="dept" name="dept" class="form-control">
                                             <c:forEach var="pg" items="${list4 }">
                                                <option value="${pg.payGradeId }">${pg.payGradeName } ( &#x20B1 ${pg.payGradeMinimum } - ${pg.payGradeMaximum } )</option>
                                             </c:forEach>
                                          </form:select>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="ptype">Pay Type</label>
                                       <div class="col-md-5">
                                          <form:select path="salaryTypeId" id="dept" name="dept" class="form-control">
                                             <c:forEach var="st" items="${list3 }">
                                                <option value="${st.salaryTypeId }">${st.salaryTypeName }</option>
                                             </c:forEach>
                                          </form:select>
                                       </div>
                                    </div>
                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                       <div class="col-md-8">
                                          <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
                                       </div>
                                    </div>
                                 </fieldset>
                              </form:form>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                              Close
                              <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="modal fade" id="modalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                     <div class="modal-dialog">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                              <h4 class="modal-title" id="myModalLabel">
                                 <i class="fa fa-plus"></i>
                                 Job Title Details
                              </h4>
                           </div>
                           <div class="modal-body">
                              <form:form class="form-horizontal" method="post" action="edit" modelAttribute="job" id="updateForm">
                                 <fieldset>
                                    <form:hidden path="jobId" id="jobid"/>
                                    <!-- Form Name -->
                                    <legend>Update Job Title</legend>
                                    <!-- Text input-->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="deptname">Job Title Name</label>  
                                       <div class="col-md-6">
                                          <form:input path="jobTitle" id="jobtitle" name="deptname" type="text" placeholder="Job title" class="form-control input-md" required=""/>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="dept">Department</label>
                                       <div class="col-md-5">
                                          <form:select path="deptId" id="department" name="dept" class="form-control">
                                             <c:forEach var="d" items="${list2 }">
                                                <option value="${d.deptId }">${d.deptName }</option>
                                             </c:forEach>
                                          </form:select>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="dept">Pay Grade</label>
                                       <div class="col-md-5">
                                          <form:select path="payGradeId" id="paygrade" name="dept" class="form-control">
                                             <c:forEach var="pg" items="${list4 }">
                                                <option value="${pg.payGradeId }">${pg.payGradeName } ( &#x20B1 ${pg.payGradeMinimum } - ${pg.payGradeMaximum } )</option>
                                             </c:forEach>
                                          </form:select>
                                       </div>
                                    </div>
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="ptype">Pay Type</label>
                                       <div class="col-md-5">
                                          <form:select path="salaryTypeId" id="salaryname" name="dept" class="form-control">
                                             <c:forEach var="st" items="${list3 }">
                                                <option value="${st.salaryTypeId }">${st.salaryTypeName }</option>
                                             </c:forEach>
                                          </form:select>
                                       </div>
                                    </div>
                                    <!-- Button (Double) -->
                                    <div class="form-group">
                                       <label class="col-md-4 control-label" for="buttonsubmit"></label>
                                       <div class="col-md-8">
                                          <button id="buttonsubmit" name="buttonsubmit" class="btn btn-success">Submit</button>
                                       </div>
                                    </div>
                                 </fieldset>
                              </form:form>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-danger pull-right"  data-dismiss="modal">
                              Close
                              <i class="fa fa-times"></i>
                              </button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!--/row-->
            </section>
         </aside>
         <%@include file="../includes/footer.jsp" %>
         <!-- begining of page level js -->
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/jquery.dataTables.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.tableTools.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.colReorder.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.scroller.min.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/vendors/datatables/dataTables.bootstrap.js"></script>
         <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/pages/table-advanced.js"></script>
         <!-- end of page level js -->
         <script>
            $('#modalupdate').on('show.bs.modal', function (e) {
            	  // get information to update quickly to modal view as loading begins
            	  var opener=e.relatedTarget;//this holds the element who called the modal
            	   
            	  //we get details from attributes\
            	  var jobid=$(opener).attr('job-id');
            	  var jobtitle=$(opener).attr('job-title');
            	  var department=$(opener).attr('dept-name');
            	  var paygrade=$(opener).attr('pay-grade');
            	  var salaryname=$(opener).attr('salary-name');
            	  
            	  //set what we got to our form
            	  $('#updateForm').find('[id="jobid"]').val(jobid);
              $('#updateForm').find('[id="jobtitle"]').val(jobtitle);
              	  $('#updateForm').find('[id="department"] option[value="'+department+'"]').attr("selected","selected");
              	  $('#updateForm').find('[id="paygrade"] option[value="'+paygrade+'"]').attr("selected","selected");
              	  $('#updateForm').find('[id="salaryname"] option[value="'+salaryname+'"]').attr("selected","selected");
            	});
            
            function confirmDelete(x){
            if(confirm("Are you sure you want to delete this job title?") == true){
            window.location.href = 'delete/'+x;
            }
            else{
            
            }
            }
         </script>
          <script>sidebar.syscon();</script>
         
      </div>
   </body>
</html>