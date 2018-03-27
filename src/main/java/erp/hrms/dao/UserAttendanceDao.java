package erp.hrms.dao;

import org.springframework.jdbc.core.JdbcTemplate;


import erp.hrms.beans.UserAttendance;

public class UserAttendanceDao {
	
	JdbcTemplate template;
	
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(UserAttendance b) {
		String sql ="INSERT INTO tbl_time_attendance(td_entry_date,td_time_in,emp_id) VALUES (GETDATE(),GETDATE(),1)";
		return template.update(sql);
	}
	
	public int update(UserAttendance b) {
		String sql ="UPDATE tbl_time_attendance SET td_time_out = GETDATE() WHERE emp_id = 1 AND DATEPART(YY,td_Entry_Date) = DATEPART(YY,GETDATE()) AND DATEPART(MM,td_Entry_Date) = DATEPART(MM,GETDATE()) AND DATEPART(DD,td_Entry_Date) = DATEPART(DD,GETDATE())";
		return template.update(sql);
	}
}
