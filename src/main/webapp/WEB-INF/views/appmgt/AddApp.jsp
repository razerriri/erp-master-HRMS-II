<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="../includes/head.jsp"%> 
    <title>Add Applicant</title>
</head>

<body class="skin-josh">
	<%@ include file="../includes/header.jsp"%> 
	<%@ include file="../includes/sidebar.jsp"%>     

<div class="wrapper row-offcanvas row-offcanvas left">
<aside class="right-side">
        
<!-- Main content -->
    <section class="content-header">
    	<h1>Applicant Management System</h1>
    <ol class="breadcrumb">
        <li class="active">
            <a href="#">
                <i class="livicon" data-name="home" data-size="16" data-color="#333" data-hovercolor="#333"></i>
					Home 
            </a>
        </li>
        <li class="active">
             <a href="AddApp.html">
                <i class="livicon" data-name="users" data-size="16" data-color="#333" data-hovercolor="#333"></i>
				    Add Applicant  
             </a>
        </li>
   </ol>
<br>

<div class="panel panel-white">
     <div class="panel-heading">
     	<h3 class="panel-title">
        	<i class="livicon" data-name="users" data-loop="true" data-color="#333" data-hovercolor="#fff" data-size="18"></i>
            <b>Add Applicant</b>
        </h3>
        
<span class="pull-right">
	<i class="fa fa-fw fa-chevron-up clickable"></i>
    <i class="fa fa-fw fa-times removepanel clickable"></i>
</span>
</div>

<div class="panel-body">
	<form:form class="form-horizontal" modelAttribute="modelApp" action="submitApp" method="post" name="myForm">
    <fieldset>
    
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Last Name:</label>
	<div class="col-md-6">
        <input type="" id="lName" name="lName" class="form-control" placeholder="Last Name"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">First Name:</label>
	<div class="col-md-6">
        <input type="" id="fName" name="fName" class="form-control" placeholder="First Name"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Middle Name:</label>
	<div class="col-md-6">
        <input type="" id="mName" name="mName" class="form-control" placeholder="Middle Name"></div>
</div>

<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Suffix:</label>
	<div class="col-md-2">
        <input type="" id="suffix" name="suffix" class="form-control" placeholder="Suffix"></div>
</div>
                                                            
<div class="form-group">
		<label class="col-md-3 control-label" for="example-textarea-input">Date of Birth:</label>
	<div class="col-md-6">
		<input id="bdate" name="bdate" type="date" class="form-control" placeholder="Place of Birth"/>
    </div>
 </div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Place of Birth:</label>
	<div class="col-md-6">
        <input type="pBirth" id="pBirth" name="" class="form-control" placeholder="Birthplace"></div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="dept">Sex:</label>
	<div class="col-md-2">
		<select id="sex" name="sex" class="form-control">
		<option value="1">Male</option>
		<option value="2">Female</option>
		</select>
	</div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="dept">Civil Status:</label>
	<div class="col-md-2">
		<select id="civil" name="civil" class="form-control">
				<option value="1">Single</option>
				<option value="2">Married</option>
				<option value="3">Separated</option>
				<option value="4">Widowed</option>
		</select>
	</div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-textarea-input">Residential Address:</label>
    <div class="col-md-6">
       	<textarea id="resAdd" name="resAdd" rows="2" class="form-control" placeholder="Residential Address"></textarea>
    </div>
</div>
															
<div class="form-group">
        <label class="col-md-3 control-label" for="example-textarea-input">Permanent Address:</label>
    <div class="col-md-6">
         <textarea id="perAdd" name="perAdd" rows="2" class="form-control" placeholder="Permanent Address"></textarea>
    </div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Contact No.</label>
	<div class="col-md-6">
        <input type="type" id="contact" name="contact" class="form-control"  placeholder="Contact No."></div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="example-password">Email Address:</label>
	<div class="col-md-6">
        <input type="text" id="emailAdd" name="emailAdd" class="form-control"  placeholder="Email Address"></div>
</div>
															
<div class="form-group">
		<label class="col-md-3 control-label" for="name">Upload Resume:</label>
	<div class="col-md-6">
		<div class="fileinput fileinput-new input-group" data-provides="fileinput">
<div class="form-control" data-trigger="fileinput">
	<i class="glyphicon glyphicon-file fileinput-exists"></i>
	<span class="fileinput-filename"></span>
</div>
	<span class="input-group-addon btn btn-default btn-file">
	<span class="fileinput-new">Select file</span>
	<span class="fileinput-exists">Change</span>
<input type="file" name="resume"></span>
	<a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
         </div>
    </div>
</div>	

<div class="row">
    <div class="col-md-12">
         <span class="button-checkbox">
         <button type="button" class="btn btn-block btn-default" data-color="info" tabindex="7">I Agree</button>
         <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1"></span>
    </div>
</div>

<div class="col-md-12 padding">
     			By clicking
		<strong class="label label-success">SUBMIT</strong>
        , you agree to the
	<a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a>
      	of Republic Act No. 10173 or known as the "Data Privacy Act of 2012".
</div>				
											
<div class="row">
    <div class="col-md-12 text-right">
        <button type="submit" class="btn-success btn">Submit</button> 
        <button type="cancel" class="btn-danger btn">Cancel</button> 
        <button type="reset" class="btn-info btn">Reset</button>
    </div>
</div>	
							
</fieldset>
</form:form>									
</div>
</div>

</section>
</aside>
</div>

    <%@ include file="../includes/footer.jsp"%> 
    
</body>
</html>
