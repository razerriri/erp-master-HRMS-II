<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!--MODAL LEAVE REQUEST START-->
	<form:form action="updateReqForm" id="updateReq" modelAttribute="modelUpdateReq" method="POST">
		<div class="modal fade in" id="modalUpdateReq" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
        	<div class="modal-dialog modal-md">
		    	<div class="modal-content">
		        	<div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="clickClose(this)">×</button>
                        <h4 class="modal-title">Leave Request</h4>
                    </div>
		            <div class="modal-body"> 
	            		<fieldset>
							<div class="form-group">
								 <label class="control-label" style="float: left; width:53%">Date Applied</label>
								 <label class="control-label" style="float: left; width:47%">Status:</label>
							</div>
							<div class="form-group">
                                <input class="form-control disabled" readonly="" style="float: left; width:47%; margin-right: 6%" type="text" id="u_leaveFile" name="leaveFile" value="${fileDate}" disabled/>
                                <input class="form-control disabled" readonly="" style="float: left; width:47%" type="text" id="u_leaveStatus" name="leaveStatus" value="Pending" disabled/>
							</div>
							<label for="select-1">Employee</label>
							<div class="row">
								<div class="form-group" style="float: left; width:66%">
									<select class="form-control" id="u_reqEmpID" name="reqEmpID" readonly="" disabled>
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
									<input type="checkbox" id="chkEmp" onchange="toggleCheckbox(this)" disabled>
									  For other employee
									</label>
								</div>
							</div>
							<div class="form-group">
								<label for="select-1">Leave Type</label>
								<select class="form-control" id="u_leaveType" name="leaveType" disabled>
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
								<input class="form-control" type="date" style="float:left; width:33%; margin-right: 2%" id="u_leaveStart" name="leaveStart" disabled/>
								<label style="float:left; width: 1%; padding-top: 6px; margin-right: 2%">-</label>
								<input class="form-control" type="date" style="float:left; width:33%; margin-right:4%" id="u_leaveEnd" name="leaveEnd" disabled/>
								<input class="form-control" id="u_leaveDuration" name="leaveDuration" type="text"  style="float: left; width: 25%" disabled>
							</div>
							<div class="form-group">
								<label for="select-1">Reason</label>
								<select class="form-control" id="u_leaveReason" name="leaveReason" disabled>
									<option value="" disabled selected>Select reason</option>
									<option value="Allergy">Allergy</option>
									<option value="Asthma">Asthma</option>
									<option value="Check-up">Check-up</option>
								</select>
							</div>
							<div class="form-group">
                                 <label>Remarks</label>
                                 <input class="form-control" type="text" id="u_leaveRemarks" name="leaveRemarks" disabled/>
							</div>
	            		</fieldset>
					</div>
					<div class="modal-footer">
						<button type="submit" id="btnSave" onclick="clickSave(this)" class="btn btn-responsive btn-success" style="visibility:hidden">
								Save</span>
						</button>
						<button id="btnEdit" class="btn btn-default btn-responsive" type="button" onclick="clickEdit(this)">
								Edit</button>
						<button id="btnApprove" onclick="clickApprove(this)" type="submit" class="btn btn-responsive btn-success">
								Approve</button>
						<button id="btnDisapprove" onclick="clickDisapprove(this)" type="submit" class="btn btn-danger btn-responsive" >
								Disapprove</button>
					</div>
				</div>
			</div>
		</div>
	</form:form>

	<!-- INSERT VALIDATION -->
	<script type="text/javascript">
	function validateForm()
	{
	
		if( document.updateReqForm.leaveRemarks.value == "" )
		   {
		     alert( "Please provide input for leave request" );
		     document.updateReqForm.cn.focus() ;
  
		     return false;
		   }

	}
	
	/*********************APPROVE BUTTON*********************/
	var btnApprove = document.getElementById("btnApprove");
	function clickApprove(e) {
		document.getElementById("u_leaveStatus").value = "Approved";
		document.getElementById("u_leaveType").disabled = false;
	}
	btnApprove.addEventListener("click", clickApprove, false);

	/********************DISAPPROVE BUTTON********************/
	var btnDisapprove = document.getElementById("btnDisapprove");
	function clickDisapprove(e) {
		document.getElementById("u_leaveStatus").value = "Disapproved";
		document.getElementById("u_leaveType").disabled = false;
	}
	btnDisapprove.addEventListener("click", clickDisapprove, false);
	
	/***********************EDIT BUTTON***********************/
	var btnEdit = document.getElementById("btnEdit");
	function clickEdit(e) {
	  	document.getElementById("btnSave").style.visibility = "visible";
		document.getElementById('chkEmp').disabled = false;
		document.getElementById('u_leaveType').disabled = false;
		document.getElementById('u_sDate').disabled = false;
		document.getElementById('u_eDate').disabled = false;  
		document.getElementById('u_leaveReason').disabled = false;
		document.getElementById('u_leaveRemarks').disabled = false;
	}
	btnEdit.addEventListener("click", clickEdit, false);
	
	/***********************SAVE BUTTON***********************/
	var btnSave = document.getElementById("btnSave");
	function clickSave(e) {
	  	document.getElementById("btnSave").style.visibility = "hidden";
	}
	btnSave.addEventListener("click", clickSave, false);
	
	/*********************CLOSE BUTTON*********************/
	var btnClose = document.getElementById("btnClose");
	function clickClose(e) {
        document.getElementById('empUser').disabled = true;
		document.getElementById('chkEmp').disabled = true;
		document.getElementById('u_leaveType').disabled = true;
		document.getElementById('u_sDate').disabled = true;
		document.getElementById('u_eDate').disabled = true;  
		document.getElementById('u_leaveReason').disabled = true;
		document.getElementById('u_leaveRemarks').disabled = true;
	}
	btnClose.addEventListener("click", clickClose, false);
	</script>