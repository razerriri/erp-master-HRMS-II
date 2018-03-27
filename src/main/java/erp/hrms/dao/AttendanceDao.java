package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.AttendanceBeans;

public class AttendanceDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	public int save(AttendanceBeans b) {
		String sql ="INSERT INTO tbl_time_attendance(td_entry_date,td_time_in,td_time_out,emp_id,td_Remarks)VALUES ('"+b.getTd_Entry_Date()+"','"+b.getTd_time_in()+"','"+b.getTd_time_out()+"',1,'"+b.getTd_Remarks()+"')";
		return template.update(sql);
	}
	
	
	public List<AttendanceBeans> getAttendance(){
		return template.query("SELECT DISTINCT td_Entry_Date,convert(varchar(19),cast(td_time_in as time),100) as 'Time_IN',convert(varchar(19),cast(td_time_out as time),100) as 'Time_OUT',emp_ID,td_Remarks from tbl_time_attendance where emp_id=1", new RowMapper<AttendanceBeans>() {

			public AttendanceBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				AttendanceBeans e = new AttendanceBeans();
				e.setTd_Entry_Date(rs.getString(1));
				e.setTd_time_in(rs.getString(2));
				e.setTd_time_out(rs.getString(3));
				e.setEmp_id(rs.getInt(4));
				e.setTd_Remarks(rs.getString(5));
				
				
				return e;
			}
			
		});
	
		
		
		
	}	
	
	
	
	
}
