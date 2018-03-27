<%@ page import="java.io.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="net.sf.jasperreports.engine.*"%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<body>
	<% Connection conn=null;
	try{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		conn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=competencymanagement_db;integratedSecurity=true;");
		
		
		File reportFile=new File(application.getRealPath("//reports//employeecompetency.jasper"));
		byte[] bytes=JasperRunManager.runReportToPdf(reportFile.getPath(),null,conn);
		
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