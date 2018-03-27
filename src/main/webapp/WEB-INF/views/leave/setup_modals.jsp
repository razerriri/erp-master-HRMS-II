<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
								<!---MODAL ADD LEAVE TYPE START--->
								<form:form action="submitLeave" modelAttribute="modelLeaveSetup" method="POST" class="form-horizontal">
									<fieldset>
										<div class="modal fade in" id="mAddLeave" tabindex="-1" role="dialog" aria-hidden="false" style="display:none; overflow:hidden">
											<div class="modal-dialog modal-md">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
														<h4 class="modal-title">Add Leave Type</h4>
													</div>
													<div class="modal-body" style="height: 460px; overflow-y:auto">
					                                    <ul class="nav nav-pills">
					                                        <li class="active">
					                                            <a href="#tabDetails" data-toggle="tab">Leave Details</a>
					                                        </li>
					                                        <li>
					                                            <a href="#tabEntitle" data-toggle="tab">Leave Entitlement</a>
					                                        </li>
					                                        <li>
					                                            <a href="#tabAdvanced" data-toggle="tab">Advanced Settings</a>
					                                        </li>
					                                    </ul>
	
														<!--TABS START-->
	                           							<div id="tabAddLeave" class="tab-content">
															<!-- TAB DETAILS START -->
	                                 						<div class="tab-pane fade active in" id="tabDetails" style="margin-left:30px">
																<br>
																<h4 style="margin-left:10px">Leave Details</h4>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Name</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveName" type="text" class="form-control input-md" required>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Code</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveCode" type="text" class="form-control input-md" required>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Type</label>
																	<div class="col-md-7">
																	<select class="form-control" name="leaveType" id="select-1" required>
																		<option disabled selected>Select leave type</option>
																		<option value="All">All leave types</option>
																		<option value="Paid">Paid</option>
																		<option value="Unpaid">Unpaid</option>
																		<option value="On Duty">On Duty</option>
																		<option value="Restricted Holiday">Restricted Holiday</option>
																	</select>
																	</div>
																</div>
																<hr>
																<h4 style="margin-left:10px">Applicability</h4>	
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Applicability</label>
																	<div class="col-md-7">
																	<select class="form-control" id="selectApp" name="leaveRole" required>
																		<option disabled selected>Select applicability</option>
																		<option value="All">Role</option>
																		<option value="Manager">Location</option>
																		<option value="Department Head">Gender</option>
																		<option value="Ceo">Marital Status</option>
																	</select>
																	</div>
																</div>	
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Role</label>
																	<div class="col-md-7">
																	<select class="form-control" id="selectRole" name="leaveRole" required disabled>
																		<option disabled selected>Select role</option>
																		<option value="All">All roles</option>
																		<option value="Manager">Manager</option>
																		<option value="Department Head">Department Head</option>
																		<option value="Ceo">CEO</option>
																	</select>
																	</div>
																</div>	
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Location</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveLocation" required>
																		<option disabled selected>Select location</option>
																		<option value="All">All locations</option>
																		<option value="HR Department">HR Department</option>
																		<option value="IT Department">IT Department</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Gender</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveGender" required>
																		<option value="Both gender">All</option>
																		<option value="Male">Male</option>
																		<option value="Female">Female</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Marital Status</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveMarital" required>
																		<option value="All">All marital status</option>
																		<option value="Single">Single</option>
																		<option value="Married">Married</option>
																	</select>
																	</div>
																</div>
															</div>
															<!--TAB DETAILS END-->
															
															<!-- TAB ENTITLEMENT START -->
															<div class="tab-pane fade" id="tabEntitle" style="margin-left:30px">
																<br>
																<h4 style="margin-left:10px">Leave Entitlement</h4>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Period</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leavePeriod">
																		<option disabled>Select leave period</option>
																		<option value="Monthly">Monthly</option>
																		<option value="Quarterly">Quarterly</option>
																		<option value="Yearly">Yearly</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Accrue Date</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveAccrue">
																		<option disabled>Select accrue date</option>
																		<option value="Beginning of accrual period">Beginning of accrual period</option>
																		<option value="End of accrual period">End of accrual period</option>
																		<option value="Based on date of joining">Based on date of joining</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Leave Count</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveCount" type="text" class="form-control input-md">
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Accrual Reset</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveReset">
																		<option value="0">No Reset</option>
																		<option value="1">Reset to 0 on Accrue Date</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Apply before</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveApply" type="text" class="form-control input-md">
																	<span class="pull-right">day(s)</span>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Maximum Consecutive Leaves</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveMaxCon" type="text" class="form-control input-md">
																	</div>
																</div>
																
																<hr style="margin-left:0px">
																
																<h4 style="margin-left:10px">New Employee Leave Entitlement</h4>
																<div class="form-group">
																	<label class="col-lg-3 control-label">Consider date <br/> of joining</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveJoin">
																		<option value="1">Yes</option>
																		<option value="0">No</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Probation Period</label>
																	<div class="col-md-7">
																	<select class="form-control" id="select-1" name="leaveProbation">
																		<option disabled>Select probation period</option>
																		<option value="Calendar days">Calendar days</option>
																		<option value="Business days">Business days</option>
																	</select>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Waiting Period</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveWaiting" type="text" class="form-control input-md">
																	<span class="pull-right">day(s)</span>
																	</div>
																</div>
																<div class="form-group">
																	<label class="col-lg-3 control-label" for="select-1">Initial value</label>
																	<div class="col-md-7">
																	<input id="textinput" name="leaveInitial" type="text" class="form-control input-md">
																	</div>
																</div>
	                               							</div>
															<!-- TAB ENTITLEMENT END -->
															
															<!--TAB ADVANCED-->
															<div class="tab-pane fade" id="tabAdvanced" style="margin-left:30px">
																<br>
																<h4 style="margin-left:10px">Advanced Settings</h4>
																<div style="margin-left:70px">
																	<div class="form-group">
																		<label class="checkbox-inline" for="chkAdmin">
																		<input type="checkbox" name="leaveAdmin" id="chkAdmin" value="1">
																		  Administrator can assign leave to employees
																		</label>
																	</div>
																	<div class="form-group">
																		<label class="checkbox-inline" for="chkBal">
																		<input type="checkbox" name="leaveBal" id="chkBal" value="1">
																		  Employees can apply beyond the current leave balance
																		</label>
																	</div>
																	<div class="form-group">
																		<label class="checkbox-inline" for="chkCF">
																		<input type="checkbox" name="leaveCF" id="chkCF" value="1">
																		  Leave carry forward enabled
																		</label>
																	</div>
																</div>
																<div class="form-group">
																	<span class="col-lg-5 control-label">Maximum Carry Forward</span>
																	<div class="col-md-5">
																	<input id="textinput" name="leaveMaxCF" type="text" class="form-control input-md">
																	</div>
																</div>
																<div class="form-group">
																	<span class="col-lg-5 control-label">Carry Forward Lifetime</span>
																	<div class="col-md-5 ">
																	<input id="textinput" name="leaveLifetime" type="text" class="form-control input-md">																		</div>
																</div>
																<div class="form-group">
																	<span class="col-lg-7 control-label">Allow carry forward exceed entitlement</span>
																	<div class="col-md-2" style="width:140px">
																	<select class="form-control" id="select-1" name="leaveExceed">
																		<option value="1">Yes</option>
																		<option value="0">No</option>
																	</select>
																	</div>
																</div>	
	                                 						</div>
															<!--TAB ADVANCED END-->
	                          							</div>
														<!--TABS END-->							                            
									                </div>
									                <div class="modal-footer">
														<button type="button" data-dismiss="modal" class="btn">Cancel</button>
														<button type="submit" class="btn btn-responsive btn-success">Submit</button>
														<button type="reset" class="btn btn-responsive btn-danger">Reset</button>
													</div>
												</div>
											</div>
										</div>
									</fieldset>
								</form:form>
								<!---MODAL ADD LEAVE TYPE END--->