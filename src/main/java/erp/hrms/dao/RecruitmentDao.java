package erp.hrms.dao;

import org.springframework.jdbc.core.JdbcTemplate;

import erp.hrms.beans.RecruitmentBean;

public class RecruitmentDao {

	public JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	/*
	 ADD JOB POST
	public int addJobPost(RecruitmentBean b) {
		String sql = "INSERT INTO tbl_leave_req(emp_id, lve_file_date, lve_type, lve_start_date, lve_end_date, lve_no_of_days, lve_reason, lve_remarks, lve_status) VALUES ('" + b.getReqEmpID() + "','" + b.getLeaveFile() + "','" + b.getLeaveType() + "','" + b.getLeaveStart() + "','" + b.getLeaveEnd() + "','" + b.getLeaveDays() + "','" + b.getLeaveReason() + "','" + b.getLeaveRemarks() + "','" + b.getLeaveStatus() + "')";
		return template.update(sql);
	}*/
}
