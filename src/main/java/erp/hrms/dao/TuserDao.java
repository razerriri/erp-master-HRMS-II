package erp.hrms.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import erp.hrms.beans.Tuser;
import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;

public class TuserDao 
{
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template)
	{
		this.template = template;
		
	}
	public int save(Tuser tutu)
	{
		String sql="Insert into tbl_expense(temployee_id,timesheet_status,tregular_hours,tovertime_hours,total_hours,timesheet_type,date_dubmission) values('"+tutu.getEmpid()+"','"+tutu.getTstatus()+"','"+tutu.getTreghrs()+"','"+tutu.getTothrs()+"','"+tutu.getTtotalhrs()+"','"+tutu.getTtype()+"',GetDate())";
		return template.update(sql);
	}
	
	public int saveforexpenseupdatereimburse(Tuser tutu)
	{
		String sql="insert into tbl_expense(expense_dt_purchased, expense_item_desc,expense_unit_price, expense_qty) values('"+tutu.getDatepurchased()+"','"+tutu.getItemdescription()+"','"+tutu.getUnitprice()+"','"+tutu.getQuantity()+"')";
		return template.update(sql);
	}
	public int saveforreimbursement(Tuser tutu)
	{
		String sql="insert into tbl_reimb(reimb_requested_by,reimb_dt_approved,reimb_purpose) values('"+tutu.getRequestedby()+"','"+tutu.getReimbursedateapprove()+"','"+tutu.getPurposeofrequisition()+"'";
		return template.update(sql);
	}
	public List<Tuser> getviewforreports()
	{
		return template.query("select e.EMP_FIRST_NAME + ' ' + e.EMP_MIDDLE_NAME + ' ' + E.EMP_LAST_NAME AS Name,t.date_submission,t.total_hours,t.approver,timesheet_type FROM tbl_timesheet t inner join TBL_EMPLOYEE e on e.EMP_ID = t.temployee_id", new RowMapper<Tuser>() 
		{
			public Tuser mapRow(ResultSet rs, int row) throws SQLException{
				Tuser du = new Tuser();
				du.setEmpname(rs.getString(1));
				du.setTsubmissiondate(rs.getString(2));
				
				du.setTtotalhrs(rs.getInt(3));
				du.setTapprover(rs.getString(4));
				du.setTtype(rs.getString(5));
				return du;
			}
			});
	}
/*	public List<Tuser> getTusers()
	{
		return template.query("e.EMP_FIRST_NAME + ' ' + e.EMP_MIDDLE_NAME + ' ' + E.EMP_LAST_NAME AS Name,t.date_submission,t.total_hours,t.approver,t.timesheet_status,t_id,timesheet_type FROM tbl_timesheet t inner join TBL_EMPLOYEE e on e.EMP_ID = t.temployee_id where t.t", new RowMapper<Tuser>() {
			public Tuser mapRow(ResultSet rs, int row) throws SQLException
			{
				Tuser du = new Tuser();
				du.setEmpname(rs.getString(1));
				du.setTreghrs(rs.getInt(2));
				du.setTothrs(rs.getInt(3));
				du.setTtotalhrs(rs.getInt(4));
				du.setTtype(rs.getString(5));
				return du;
			}
			});
		}
	


/*
	public List<Tuser> getviewforapprove()
{
	return template.query("Select E.Emp_Fname + ' ' + Emp_Mname + ' ' + Emp_Lname AS Name,	 T.date_submission, T.total_hours, T.approver, T.timesheet_status FROM Emp_Staffing AS ES INNER JOIN Manager AS M ON M.Manager_ID = ES.Manager_ID INNER JOIN Employee AS E ON E.Emp_ID = ES.Emp_ID INNER JOIN Jobs AS J ON J.Job_Title_ID = ES.Job_Title_ID INNER JOIN tbl_timesheet AS T ON T.temployee_id = ES.emp_staffing_id where timesheet_status = 'Approved'", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat1 = new Tuser();
			vat1.setEmpname(rs.getString(1));
			vat1.setTsubmissiondate(rs.getString(2));
			vat1.setTtotalhrs(rs.getFloat(3));
			vat1.setTapprover(rs.getString(4));
			vat1.setTstatus(rs.getString(5));
			return vat1;
			}
		});
	}
*/
/*
public List<Tuser> getviewfordisapprove()
{
	return template.query("Select E.Emp_Fname + ' ' + Emp_Mname + ' ' + Emp_Lname AS Name,	 T.date_submission, T.total_hours, T.approver, T.timesheet_status FROM Emp_Staffing AS ES INNER JOIN Manager AS M ON M.Manager_ID = ES.Manager_ID INNER JOIN Employee AS E ON E.Emp_ID = ES.Emp_ID INNER JOIN Jobs AS J ON J.Job_Title_ID = ES.Job_Title_ID INNER JOIN tbl_timesheet AS T ON T.temployee_id = ES.emp_staffing_id where timesheet_status = 'Disapproved'", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat2 = new Tuser();
			vat2.setEmpname(rs.getString(1));
			vat2.setTsubmissiondate(rs.getString(2));
			vat2.setTtotalhrs(rs.getFloat(3));
			vat2.setTapprover(rs.getString(4));
			vat2.setTstatus(rs.getString(5));
			return vat2;
			}
		});
	}
*/
	
public List<Tuser> getviewfortimesheet()
{
	return template.query("select t_id,approver,date_submission,date_approve,tregular_hours,tovertime_hours,total_hours,timesheet_status,timesheet_type from tbl_timesheet", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat3 = new Tuser();
			vat3.setTsuserId(rs.getInt(1));
			vat3.setTapprover(rs.getString(2));
			vat3.setTsubmissiondate(rs.getString(3));
			vat3.setTapprovaldate(rs.getString(4));
			vat3.setTreghrs(rs.getFloat(5));
			vat3.setTothrs(rs.getFloat(6));
			vat3.setTtotalhrs(rs.getFloat(7));
			vat3.setTstatus(rs.getString(8));
			vat3.setTtype(rs.getString(9));
			
			return vat3;
			}
		});
	}

public List<Tuser> getviewforMtimesheet()
{
	return template.query("select e.emp_first_name + ' ' + e.emp_middle_name + ' ' + e.emp_last_name as [Name], d.dept_name,j.job_name,t.forthemonthof as [Month],   t.yearoftimesheet as [Year],	   convert(varchar(5),cast(a.att_time_in as time))[Time-In],	   convert(varchar(5),cast(a.att_time_out as time))[Time-Out],	   (select ee.emp_first_name + ' ' + ee.emp_middle_name + ' ' + ee.emp_last_name as [Name]	    from tbl_employee ee	    where emp_id = (select emp_id from ref_employee_job where job_id = (select job_id from tbl_job where job_name = 'Manager' and dept_id =(select dept_id from tbl_department where dept_name = 'IT' and dept_name = d.dept_name) ))	   ) as [Manager],	  	   	   CONCAT((DATEDIFF(Minute,a.att_time_in,a.att_time_out)/60),'.',(DATEDIFF(Minute,a.att_time_in,a.att_time_out)%60)) [TotalHours] from tbl_attendance a left outer join tbl_employee e on a.emp_id = e.emp_id left outer join tbl_timesheet t on t.tna_id = a.attendance_id left outer join ref_employee_job rj on rj.emp_id = e.emp_id left outer join  tbl_job j  on j.job_id = rj.job_id left outer join tbl_department d on d.dept_id = j.dept_id left outer join ref_department_employee re on re.dept_id = d.dept_id left outer join ref_department_employee re1 on re1.emp_id = e.emp_id where e.emp_id = '1'", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat4 = new Tuser();
			vat4.setEmpname(rs.getString(1));
			vat4.setDeptname(rs.getString(1));
			vat4.setEmpjob(rs.getString(1));
			vat4.setTmonth(rs.getString(1));
			vat4.setTyear(rs.getInt(1));
			vat4.setTimeinval(rs.getString(1));
			vat4.setTimeoutval(rs.getString(2));
			vat4.setEmpmanager(rs.getString(1));
			vat4.setTreghrs(rs.getFloat(3));
			
			return vat4;
			}
		});
	}

public int delete(int id) {
	String sql ="delete from tbl_timesheet where t_id = "+id+"";
	return template.update(sql);
}

public int update(Tuser d) {
	String sql = "update tbl_timesheet set timesheet_status='"+d.getTstatus()+"',approver='"+d.getTapprover()+"',date_approve='"+d.getTapprovaldate()+"',date_submission='"+d.getTsubmissiondate()+"',tregular_hours='"+d.getTreghrs()+"',tovertime_hours='"+d.getTothrs()+"',total_hours='"+d.getTtotalhrs()+"',timesheet_type='"+d.getTtype()+"' where t_id = '"+d.getTsuserId()+"'";
	return template.update(sql);
}

public List<Tuser> getviewforapprovecount()
{
	return template.query("select count(timesheet_status) as Approved from tbl_timesheet where timesheet_status='Approved'", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat4 = new Tuser();
			vat4.setCapprove(rs.getString(1));
			
			
			return vat4;
			}
		});
	}

public List<Tuser> getviewforapprovecountlastyear()
{
	return template.query("select count(timesheet_status) from tbl_timesheet where YEAR(date_approve) =  (year(GETDATE()) -1) and timesheet_status = 'Approved'", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat5 = new Tuser();
			vat5.setCapprovelastyear(rs.getString(1));
			
			
			return vat5;
			}
		});
	}





public List<Tuser> getIDofreimbursement()
{
	return template.query("select reimb_id from tbl_reimb", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat6 = new Tuser();
			vat6.setReimbID(rs.getInt(1));
			
			
			return vat6;
			}
		});
	}
 //forreimbursementpopulatetheployeedropdown
public List<Tuser> getempname()
{
	return template.query("select emp_first_name + ' ' + emp_middle_name + ' ' + emp_last_name,emp_id from tbl_employee", new RowMapper<Tuser>() 
	{
		public Tuser mapRow(ResultSet rs, int row) throws SQLException{
			Tuser vat7 = new Tuser();
			vat7.setEmpname(rs.getString(1));
			vat7.setEmpid(rs.getInt(2));
			
			
			return vat7;
			}
		});
	}
}

