package erp.hrms.dao;

import java.sql.*;
import java.util.*;
import org.springframework.jdbc.core.RowMapper;

import org.springframework.jdbc.core.JdbcTemplate;
import erp.hrms.beans.LeaveSetupBean;

public class LeaveSetupDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//ADD
	public int addLeave(LeaveSetupBean b) {
		String sql = "INSERT INTO tbl_leave(lve_name, lve_code, lve_type, lve_role, lve_location, lve_gender, lve_marital, lve_period, accrue_date, lve_count, isAccrualReset, apply_before, maxConsecutive, isConsiderDate, new_probation_period, new_waiting_period, new_initial_value, isAdminAssign, isBeyondLimit, isCarryForward, cf_max, cf_lifetime, isCarryExceed)  VALUES ('" + b.getLeaveName() + "','" + b.getLeaveCode() + "','" + b.getLeaveType() + "','" + b.getLeaveRole() + "','" + b.getLeaveLocation() + "','" + b.getLeaveGender() + "','" + b.getLeaveMarital() + "','" + b.getLeavePeriod() + "','" + b.getLeaveAccrue() + "','" + b.getLeaveCount() + "','" + b.isLeaveReset() + "','" + b.getLeaveApply() + "','" + b.getLeaveMaxCon() + "','" + b.isLeaveJoin() + "','" + b.getLeaveProbation() + "','" + b.getLeaveWaiting() + "','" + b.getLeaveInitial() + "','" + b.isLeaveAdmin() + "','" + b.isLeaveBal() + "','" + b.isLeaveCF() + "','" + b.getLeaveMaxCF() + "','" + b.getLeaveLifetime() + "','" + b.isLeaveExceed() + "')";
				
		return template.update(sql);
	}
	
	//VIEW FOR LEAVE
	public List<LeaveSetupBean> viewLeave()
	{
		return template.query("SELECT lve_name, lve_code, lve_type, lve_period, accrue_date, lve_count FROM tbl_leave", new RowMapper<LeaveSetupBean>() 
		{
			public LeaveSetupBean mapRow(ResultSet rs, int row) throws SQLException{
				LeaveSetupBean lve = new LeaveSetupBean();
				lve.setLeaveName(rs.getString(1));
				lve.setLeaveCode(rs.getString(2));
				lve.setLeaveType(rs.getString(3));
				lve.setLeavePeriod(rs.getString(4));
				lve.setLeaveAccrue(rs.getString(5));
				lve.setLeaveCount(rs.getInt(6));

				return lve;
				}
		});
	}
	
	/*
	// APPLICANT REQUEST
	public int addDefLeave(LeaveSetupBean b) {
		String sql = "INSERT INTO tbl_emp_leave VALUES ('" + b.getBalEmpID() + "','" + b.getBalLeaveID() + "','" + b.getBalance() + "')";
				
		return template.update(sql);
	}*/

}
