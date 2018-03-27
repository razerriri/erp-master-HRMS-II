<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="submitReq" modelAttribute="modelLeaveReq" method="POST">
		<div class="modal fade in" id="modalLeaveReq" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
        	<div class="modal-dialog modal-lg">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Leave Request</h4>
                    </div>
		            <div class="modal-body">
		            <div class="row">
                        <div class="col-md-7">
	            		<fieldset>
							<div class="form-group">
								 <label class="control-label" style="float: left; width:53%">Date Applied</label>
								 <label class="control-label" style="float: left; width:47%">Status:</label>
							</div>
							<div class="form-group">
                                <input class="form-control disabled" readonly="" style="float: left; width:47%; margin-right: 6%" type="text" id="leaveFile" name="leaveFile" value="${fileDate}" />
                                <input class="form-control disabled" readonly="" style="float: left; width:47%" type="text" id="leaveStatus" name="leaveStatus" value="Pending"/>
							</div>
							<label for="select-1">Employee</label>
							<div class="row">
								<div class="form-group" style="float: left; width:66%">
									<select class="form-control" id="reqEmpID" name="reqEmpID" readonly="">
										<option value="" disabled selected>Select employee</option>									
										<c:forEach var="emp" items="${dropEmpID}">
										<option value="${emp.empID}">
											${emp.empLName}, ${emp.empFName} ${emp.empMName} 
										</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group" style="float:left; width:30%; margin-left:20px">
									<label class="checkbox-inline" for="checkboxes-0">
									<input type="checkbox" id="chkEmp" onchange="toggleCheckbox(this)">
									  For other employee
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="select-1">Leave Type</label>
								<select class="form-control" name="leaveType">
									<option value="" disabled selected>Select leave type</option>								
									<c:forEach var="lve" items="${dropLeave}">
									<option value="${lve.leaveID}">
											${lve.leaveName} 
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label style="float:left; width:75%">Date range:</label>
								<label style="float:left; width:25%">Duration:</label>
							</div>
							<div class="form-group">
								<input class="form-control" type="date" style="float:left; width:33%; margin-right: 2%" id="leaveStart" name="leaveStart" />
								<label style="float:left; width: 1%; padding-top: 6px; margin-right: 2%">-</label>
								<input class="form-control" type="date" style="float:left; width:33%; margin-right:4%" id="leaveEnd" name="leaveEnd"/>
								<input class="form-control" id="leaveDuration" name="leaveDuration" type="text"  style="float: left; width: 25%" disabled>
							</div>
							<div class="form-group">
								<label for="select-1">Reason</label>
								<select class="form-control" id="select-1" name="leaveReason">
									<option value="" disabled selected>Select reason</option>
									<option value="Allergy">Allergy</option>
									<option value="Asthma">Asthma</option>
									<option value="Check-up">Check-up</option>
								</select>
							</div>
							<div class="form-group">
                                 <label>Remarks</label>
                                 <input class="form-control" type="text" name="leaveRemarks"/>
							</div>
							</div>
							
							<style>
							.dataTables_filter, .dataTables_length, .dataTables_info { display: none; }
							</style>
							<!-- LEAVE BALANCE -->
							<div class="col-md-5">
									<center><label>Leave Balance</label></center>
									<table class="table table-striped table-bordered" id="table2">
	                                      <thead>
	                                          <tr role="row">
	                                              <th class="sorting_asc" style="width: 75%">Leave Type</th>
	                                              <th class="sorting" style="width: 25%">Balance</th>
	                                          </tr>
	                                      </thead>
	                                      <tbody>
	                                          <c:forEach var="bal" items="${listBalance}">
			                                        <tr role="row">
			                                        	<td>${bal.balLeaveName}</td>
			                                        	<td>${bal.balance}</td>
			                                        </tr>
			                                  </c:forEach>
	                                      </tbody>
	                                  </table>
                                </div>
	            		</fieldset>
					</div>
					</div>
					<div class="modal-footer">
						<button type="button" data-dismiss="modal" class="btn">Cancel</button>
						<button type="submit" class="btn btn-responsive btn-success">Submit</button>
						<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>
