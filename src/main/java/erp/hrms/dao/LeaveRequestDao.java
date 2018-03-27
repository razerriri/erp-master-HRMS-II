package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.LeaveRequestBean;

public class LeaveRequestDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	// ADD LEAVE REQUEST
	public int addLeaveReq(LeaveRequestBean b) {
		String sql = "INSERT INTO tbl_leave_req(emp_id, lve_file_date, lve_type, lve_start_date, lve_end_date, lve_no_of_days, lve_reason, lve_remarks, lve_status) VALUES ('" + b.getReqEmpID() + "','" + b.getLeaveFile() + "','" + b.getLeaveType() + "','" + b.getLeaveStart() + "','" + b.getLeaveEnd() + "','" + b.getLeaveDays() + "','" + b.getLeaveReason() + "','" + b.getLeaveRemarks() + "','" + b.getLeaveStatus() + "')";
		return template.update(sql);
	}
	
	// UPDATE LEAVE REQUEST
	public int updateLeaveReq(LeaveRequestBean b) {
		String sql = "UPDATE tbl_leave_req SET lve_file_date='" + b.getLeaveFile() + "', lve_type='" + b.getLeaveFile() + "', lve_start_date='" + b.getLeaveStart() + "', lve_end_date='" + b.getLeaveEnd() + "', lve_reason='" + b.getLeaveReason() + "', lve_remarks='" + b.getLeaveRemarks() + "', lve_status='" + b.getLeaveStatus() + "' WHERE lve_req_id='" + b.getEmpLeaveReqID() + "') WHERE lve_req_id ='" + b.getEmpLeaveReqID() + "'";
		return template.update(sql);
	}
	
	// TABLE VIEW FOR LEAVE REQUEST
	public List<LeaveRequestBean> viewRequest()
	{
		return template.query("SELECT LR.lve_file_date, LR.emp_id, L.lve_name, LR.lve_start_date, LR.lve_end_date, LR.lve_no_of_days, LR.lve_reason, LR.lve_remarks, LR.lve_status FROM tbl_leave_req AS LR INNER JOIN tbl_leave AS L ON LR.lve_type = L.lve_id", new RowMapper<LeaveRequestBean>() 
		{
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveRequestBean req = new LeaveRequestBean();
				req.setLeaveFile(rs.getString(1));
				req.setReqEmpID(rs.getInt(2));
				req.setLeaveType(rs.getString(3));
				req.setLeaveStart(rs.getString(4));
				req.setLeaveEnd(rs.getString(5));
				req.setLeaveStatus(rs.getString(6));
				return req;
				}
		});
	}
	
	// LIST EMPLOYEE
	 public List<LeaveRequestBean> dropdownEmp() {
		String sql = "SELECT * FROM tbl_employee";
		return template.query(sql, new RowMapper<LeaveRequestBean>() {
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
				LeaveRequestBean emp = new LeaveRequestBean();
				emp.setEmpID(rs.getInt("emp_id"));
				emp.setEmpFName(rs.getString("emp_first_name"));
				emp.setEmpMName(rs.getString("emp_middle_name"));
				emp.setEmpLName(rs.getString("emp_last_name"));
				return emp;
			}

		});
	 }
	
	// LIST LEAVE TYPE
	 public List<LeaveRequestBean> dropdownLeave() {
			String sql = "SELECT * FROM tbl_leave";
			return template.query(sql, new RowMapper<LeaveRequestBean>() {
				public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException {
					LeaveRequestBean lve = new LeaveRequestBean();
					lve.setLeaveID(rs.getInt("lve_id"));
					lve.setLeaveName(rs.getString("lve_name"));
				
					return lve;
				}

			});
		 }
	 
	 
	// TABLE VIEW FOR LEAVE BALANCE
	public List<LeaveRequestBean> viewBalance()
	{
		return template.query("SELECT L.lve_name, LB.lve_bal FROM tbl_emp_leave AS LB, tbl_leave AS L WHERE LB.lve_id = L.lve_id" , new RowMapper<LeaveRequestBean>() 
		{
			public LeaveRequestBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveRequestBean bal = new LeaveRequestBean();			
				bal.setBalLeaveName(rs.getString(1));
				bal.setBalance(rs.getString(2));
				
				return bal;
				}
		});
	}
}
