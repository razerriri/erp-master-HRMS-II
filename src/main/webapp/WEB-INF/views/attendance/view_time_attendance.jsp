<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<%@ include file="../includes/head.jsp" %>
<title>Time and Attendance | Manage</title>
</head>

<body class="skin-josh">
<%@ include file="../includes/header.jsp" %>

<%@include file="../includes/sidebar.jsp" %>
  
<div class="wrapper row-offcanvas row-offcanvas-left">

 
        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <!--section starts-->
                <h1>Human Resource Management System</h1>
                <ol class="breadcrumb">
                    <li class="Active">
                        <a href="index.html">
                            <i class="livicon" data-name="gears" data-size="18" data-loop="true"></i>
                            View Time and Attendance
                        </a>
                    </li>
                    
                    
                    
                </ol>
            </section>
            <!--section ends-->
            <section class="content">
                  <div class="row">
                    
                <!-- END SEARCH BAR -->
                       <div class="col-lg-12">
                            <div class="panel panel-success">
                                <div class="panel-heading">
                                <h3 class="panel-title">
                                    <i class="livicon" data-name="table" data-size="16" data-loop="true" data-c="#fff" data-hc="white"></i>
                                        Employee List
                                </h3>
                                <span class="pull-right">
                                    <i class="glyphicon glyphicon-chevron-up clickable"></i>
                                </span>
                            </div>
                                <div class="panel-body">
                                    <div id="sample_editable_1_wrapper" class="">
                                    
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                       
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30%;">Employee Name</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30%;">Job</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 30%;">Department</th>
                                                <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 20%;">View</th>

                                            </tr>
                                       
                                        </thead>
                                        <tbody>
                                      
                                        <c:forEach var="e" items="${list}">
                                          <tr role="row" class="even">
                                            <td>${e.emp_name}</td>
                                            <td>${e.job_name}</td>                                           
                                            <td>${e.dept_name}</td>
                                            <td>
                                           
                                            <div align="center">
                                            
                                              <button type="button"  id="btnView" name ="btnView" class="btn btn-info" title="View" data-toggle="modal" href="#view_modal" data-href="#view_modal">
                                                  <span class="glyphicon glyphicon-eye-open"></span>
								              </button>
								              </div>
                                                
                                            
                                                </td>	
                                          
                                            </tr>
                                              </c:forEach>
                                        </tbody>
                                    </table>
                         
                                </div>

                                </div>
                                
                                
                            </div>
                        </div>
            
                    </div>
               
            
                
                
            <!-- MODALS STARTS HERE -->
            <!-- START MODAL 1 -->
                <div id="add_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                       <div class="modal-dialog modal-md">  											
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal">×</button>
                                   <h3 class="modal-title">Create Time Record</h3>
                                   <p>Please fill the information needed.</p>
                               </div>
                               <div class="modal-body">
                               <form:form class="form-horizontal" action="attendance-save" method="post" name="addform">
                               <fieldset>
                             <input id="_empid" name="_empid" style="display:none;">
                                   <p>
                                   <label>Entry Date</label>
                                    <input id="entry_date" name="td_Entry_Date" type="date" class="form-control" >
                                   </p>
                                   <p>
                                   <label>Time-In</label>
                                    <input id="time_in" name="td_time_in" type="time" class="form-control">
                                   </p>
                                   <p>
                                   <label>Time-Out</label>
                                    <input id="time_out" name="td_time_out" type="time" class="form-control">
                                   </p>
                                    <p>
                                    <label>Remarks</label><br>
                                    <textarea id="remarks" name="td_Remarks" row="2" class="form-control"></textarea>
                                   </p>
                                   <br>
                                    <button type="submit" class="btn btn-success" style="margin-top: 20px; margin-bottom: 20px;">Save</button>


								
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                </div>
                                </fieldset>
                                </form:form>
                                </div>

                          </div>
                    </div>
                    
                   
            </div>
				
                 <div id="edit_modal" class="modal fade" role="dialog" aria-hidden="true" style="display: none;">
                       <div class="modal-dialog modal-md">  											
                           <div class="modal-content">
                               <div class="modal-header">
                                   <button type="button" class="close" data-dismiss="modal">×</button>
                                   <h3 class="modal-title">Edit Record</h3>
                                   <p>Editing record of an employee.</p>
                               </div>
                               <div class="modal-body">
                               <form:form class="form-horizontal" action="attendance-update" method="post" name="updateForm">
                               <fieldset>
                                   <p>
                                   <label>Entry Date</label>
                                    <input id="td_Entry_Date" name="td_Entry_Date" type="date" class="form-control" placeholder="Last Name">
                                   </p>
                                   <p>
                                   <label>Time-In</label>
                                    <input id="td_time_in" name="td_time_in" type="time" class="form-control" placeholder="">
                                   </p>
                                   <p>
                                   <label>Time-Out</label>
                                    <input id="td_time_out" name="td_time_out" type="time" class="form-control" placeholder="">
                                   </p>
                                   <p>
                                    <label>Remarks</label><br>
                                    <textarea id="td_remarks" name="td_Remarks" row="2" class="form-control"></textarea>
                                   </p>
                                   
                                    <button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal" data-target="#warning_modal" style="margin-top: 20px; margin-bottom: 20px;">Save</button>


                                <div class="modal-footer">

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                </div>
                                </fieldset>
                                </form:form>
                                </div>
								
                          </div>
                    </div>
            </div>
                
                <div id="view_modal" class="modal fade" role="dialog" aria-hidden="true" >
                   <div class="modal-dialog modal-lg">  													 
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal">×</button>
                               <h3 class="modal-title">Attendance Details</h3>
                               
                           </div>
                           <div class="modal-body">
                            
                    <div class="col-lg-0">
                        
                         <form class="form-horizontal" method="post" id="viewForm">
                         <fieldset>
                        <div class="panel panel-default filterable" id ="meme">
                            <div class="panel-body">
                                                <button style="margin-top: 5px; margin-bottom: 20px" _emp_id="this_empid" class="btn btn-effect btn-success" data-modal="modal-1" data-toggle="modal" data-dismiss="modal" href="#add_modal">
						<i class="fa fa-plus"></i>
					   Create Time Record
						</button>
							<input id="this_empid" name="this_empid" style="display:none;">
					
                                <table class="table table-striped table-bordered table-responsive" id="table1">
                                    <thead>
                                        <tr role="row">
                                            <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="Full Name: activate to sort column ascending" style="width: 80px;">Entry Date</th>
											<th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 100px;">Time-In</th>
                                            <th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 100px;">Time-Out</th>
											<th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 100px;">Remarks</th>
											<th class="sorting" tabindex="0" rowspan="1" colspan="1" aria-label="Notes: activate to sort column ascending" style="width: 100px;">Action</th>
				                               
                                            </tr>
                                    </thead>
                                    <tbody>
                                     
 	  						 		
   	                                 <c:forEach var="b" items="${attendanceList}">
                                        <tr role="row">
                                     
                                        	<td>${b.td_Entry_Date}</td>
                                        	<td>${b.td_time_in}</td>
                                        	<td>${b.td_time_out}</td>
                                            <td>${b.td_Remarks}</td>
                                        	<td>
                                        	 
                                        	<div align="center">
                                              <button type="button" class="btn btn-info" td-entry-date="${b.td_Entry_Date}" td-time-in="${b.td_time_in}" td-time-out="${b.td_time_out }" td-remarks="${b.td_Remarks}" data-toggle="modal" data-dismiss="modal" href="#edit_modal" title="View">
                                                  <span class="glyphicon glyphicon-edit"></span>
								              </button>
                                                <button type="button" class="btn btn-danger" data-toggle="modal" href="#edit_modal" title="View">
                                                  <span class="glyphicon glyphicon-remove"></span>
								              </button>
								              </div>
								              </td>
                                        
                                        </tr>
                                       </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        </fieldset>
                        </form>
                    </div>
                                     </div>
                           <br>
				            <div class="modal-footer">
                               
                                <button type="button" class="btn btn-default" data-dismiss="modal" class="btn">OK</button>
                               
				            </div>
				            </div>
										
					  </div>
                </div>
            
            
            </section>    <!-- /.modal ends here 
            </section>
            
            <!-- content -->
        
        </aside>
   	</div>
   	
   
   	 <!-- Include footer.jsp here --> 
    
<%@include file="../includes/footer.jsp" %> 

    
    <script>
		function confirmDele(x){
			if(confirm("Are you sure you want to delete this department?") == true){
				window.location = 'department/delete/'+x;
			}
			else{
				
			}
		}
		
   		
   		$('#view_modal').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes  
      	  var empid=$(opener).attr('emp-id');
      	

      	  //set what we got to our form
          $('#viewForm').find('[id="this_empid"]').val(empid);
        	
      	});
   	</script>
   	<script>
		function confirmDete(x){
			if(confirm("Are you sure you want to delete this department?") == true){
				window.location = 'department/delete/'+x;
			}
			else{
				
			}
		}
		
   		
   		$('#add_modal').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes  
      	  var _empid=$(opener).attr('_empid');
      	

      	  //set what we got to our form
          $('#addform').find('[id="_empid"]').val(_empid);
        	
      	});
   	</script>
   	<script>
		function confirmDelete(x){
			if(confirm("Are you sure you want to delete this department?") == true){
				window.location = 'department/delete/'+x;
			}
			else{
				
			}
		}
		
   		
   		$('#edit_modal').on('show.bs.modal', function (e) {
      	  // get information to update quickly to modal view as loading begins
      	  var opener=e.relatedTarget;//this holds the element who called the modal
      	   
      	  //we get details from attributes  
      	  var a=$(opener).attr('td-entry-date');
      		var b=$(opener).attr('td-time-in');
      		var c=$(opener).attr('td-time-out');
      		var d=$(opener).attr('td-remarks');
      	

      	  //set what we got to our form
          $('#updateForm').find('[id="td_Entry_Date"]').val(a);
          $('#updateForm').find('[id="td_time_in"]').val(b);
          $('#updateForm').find('[id="td_time_out"]').val(c);
          $('#updateForm').find('[id="td_remarks"]').val(d);
        	
      	});
   	</script>
   	

</body>
</html>
 

