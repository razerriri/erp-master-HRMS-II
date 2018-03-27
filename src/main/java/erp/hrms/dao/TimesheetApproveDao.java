package erp.hrms.dao;

import org.springframework.jdbc.core.JdbcTemplate;


import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;
import erp.hrms.beans.Tuser;

public class TimesheetApproveDao 
{
JdbcTemplate template;
    //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public void setTemplate(JdbcTemplate template)
	{
		this.template = template;
		
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public int updatestatus(Tuser d) 
	{
		String sql = "update tbl_timesheet set timesheet_status='"+d.getTstatus()+"', date_approve = GetDate() where t_id = '"+d.getTsuserId()+"'";
		return template.update(sql);
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public List<Tuser> getviewforpending()
	{
		return template.query("SELECT e.EMP_FIRST_NAME + ' ' + e.EMP_MIDDLE_NAME + ' ' + E.EMP_LAST_NAME AS Name,t.date_submission,t.total_hours,t.approver,t.timesheet_status,t_id,timesheet_type FROM tbl_timesheet t inner join TBL_EMPLOYEE e on e.EMP_ID = t.temployee_id where timesheet_status ='Pending'", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vat = new Tuser();
				vat.setEmpname(rs.getString(1));
				vat.setTsubmissiondate(rs.getString(2));
				vat.setTtotalhrs(rs.getFloat(3));
				vat.setTapprover(rs.getString(4));
				vat.setTstatus(rs.getString(5));
				vat.setTsuserId(rs.getInt(6));
				vat.setTtype(rs.getString(7));
				return vat;
				}
			});
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public List<Tuser> getviewforapprovedisapprove()
	{
		return template.query("SELECT e.EMP_FIRST_NAME + ' ' + e.EMP_MIDDLE_NAME + ' ' + E.EMP_LAST_NAME,t.date_approve,t.total_hours,t.approver,t.timesheet_status AS Name FROM tbl_timesheet t inner join TBL_EMPLOYEE e on e.EMP_ID = t.temployee_id where timesheet_status !='Pending'", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vad1 = new Tuser();
				vad1.setEmpname(rs.getString(1));
				vad1.setTsubmissiondate(rs.getString(2));
				vad1.setTtotalhrs(rs.getFloat(3));
				vad1.setTapprover(rs.getString(4));
				vad1.setTstatus(rs.getString(5));
				return vad1;
				}
			});
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public List<Tuser> getviewselected()
	{
		return template.query("select  cast(a.td_Entry_Date as date)[Date], convert(varchar(5),cast(a.td_Time_IN as time))[Time-In], convert(varchar(5),cast(a.td_Time_OUT as time))[Time-Out], CONCAT((DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)/60),'.',(DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)%60)) [RegHours] from tbl_time_attendance a inner join TBL_EMPLOYEE e on a.EMP_ID = e.EMP_ID", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vad2 = new Tuser();
			
				vad2.setTnadate(rs.getString(1));
				vad2.setTimeinval(rs.getString(2));
				vad2.setTimeoutval(rs.getString(3));
				vad2.setTnatotal(rs.getFloat(4));
				return vad2;
				}
			});
	}
	//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\
	////////////////////////////////////////////// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
	public List<Tuser> getsumofreghrs()
	{
		return template.query("select SUM(CONVERT(float,CONCAT((DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)/60),'.',(DATEDIFF(Minute,a.td_Time_IN,a.td_Time_OUT)%60)))) [RegHours] from tbl_time_attendance a inner join tbl_employee e on e.emp_id = a.emp_id", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser vad2 = new Tuser();
				vad2.setSumreghrs(rs.getFloat(1));
				
				return vad2;
				}
			});
	}
}

