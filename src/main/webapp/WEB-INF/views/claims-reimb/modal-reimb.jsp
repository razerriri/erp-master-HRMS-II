<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="submitReimb" modelAttribute="modelReimb" method="POST">
		<div class="modal fade in" id="modalReimb" tabindex="-1" role="dialog" aria-hidden="false" style="display:none">
        	<div class="modal-dialog modal-lg" >
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Reimbursement Request</h4>
                    </div>
		            <div class="modal-body">
	            		<fieldset>
							<div class="form-group">
								 <label class="control-label" style="float: left; width:53%">Date Applied</label>
								 <label class="control-label" style="float: left; width:47%">Status:</label>
							</div>
							<div class="form-group">
                                <input class="form-control disabled" readonly="" style="float: left; width:47%; margin-right: 6%" type="text" id="reimbDate" name="reimbDate" value="${reimbDate}" />
                                <input class="form-control disabled" readonly="" style="float: left; width:47%" type="text" id="reimbStatus" name="reimbStatus" value="Pending"/>
							</div>
							<div class="form-group">
								<label for="select-1">Employee</label>
								<select class="form-control" id="reqEmpID" name="reqEmpID" readonly="">
									<option value="" disabled selected>Select employee</option>									
									<c:forEach var="emp" items="${dropEmpID}">
									<option value="${emp.empID}">
										${emp.empLName}, ${emp.empFName} ${emp.empMName} 
									</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								 <label class="control-label">Department</label>
								 <input class="form-control disabled" readonly="" type="text" id="empDept" name="empDept" value=""/>
							</div>
							<div class="btn-group">
                                <button id="sample_editable_1_new" class=" btn btn-custom">
                                    Add New
                                    <i class="fa fa-plus"></i>
                                </button>
                            </div>
							<div id="sample_editable_1_wrapper" class="">
                                    <table class="table table-striped table-bordered table-hover dataTable no-footer" id="sample_editable_1" role="grid">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting_asc" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1">Date Purchased</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Full Name
                                            : activate to sort column ascending" style="width: 222px;">Description</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Points
                                            : activate to sort column ascending" style="width: 124px;">Unit Price</th>
                                                <th class="sorting" tabindex="0" aria-controls="sample_editable_1" rowspan="1" colspan="1" aria-label="
                                                 Notes
                                            : activate to sort column ascending" style="width: 152px;">Qty</th>                                            
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
	            		</fieldset>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-responsive btn-success">Approve</button>
						<button class="btn btn-responsive btn-danger">Disapprove</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>