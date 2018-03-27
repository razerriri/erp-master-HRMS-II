<%@ page import="java.io.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="net.sf.jasperreports.engine.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

    <meta charset="UTF-8">


<!DOCTYPE HTML>
<html>
<head>
HRMS 2 | Competency Management</head>

<body>
	
	
	<% Connection conn=null;
	try{
	  
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		int empid=Integer.parseInt(request.getParameter("employee_id"));
		System.out.println(empid);
		conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=competencymanagement_db;integratedSecurity=true;");
		
		File reportFile=new File(application.getRealPath("//reports//employeecompetencyparam.jasper"));
		Map parameters=new HashMap();
		parameters.put("employeeid",empid);
		byte[] bytes=JasperRunManager.runReportToPdf(reportFile.getPath(),parameters,conn);
		
		response.setContentType("application/pdf");
		response.setContentLength(bytes.length);
		ServletOutputStream outStream=response.getOutputStream();
		outStream.write(bytes,0,bytes.length);
		outStream.flush();
		outStream.close();
	} catch (Exception ex) {
		out.println("Error :"+ex.getMessage());
	}
	%>

</body>
</html>