package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Job;
import erp.hrms.beans.Shift;

public class ShiftDao {
	
JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	//save
	public int save(Shift s) {
		String sql = "insert into TBL_SHIFT values('"+s.getShiftCode()+"','"+s.getGracePeriod()+"','"+s.getStartTime()+"','"+s.getEndTime()+"')";
		return template.update(sql);
	}
	
	
	//delete
	public int delete(int id) {
		String sql = "delete from tbl_job where job_id = "+id+"";
		return template.update(sql);
	}
	
	//edit
	public int update(Job j) {
		String sql = "update tbl_job set job_name='"+j.getJobTitle()+"',dept_id='"+j.getDeptId()+"',pay_grade_id='"+j.getPayGradeId()+"',salary_type_id='"+j.getSalaryTypeId()+"' where job_id='"+j.getJobId()+"'";
		return template.update(sql);
	}
	
	
	//get
	public List<Shift> getShift(){
		return template.query("select SHIFT_CODE, GRACE_PERIOD, START_TIME, END_TIME, GRACE_PERIOD + START_TIME as GRACE_TIME from TBL_SHIFT ", new RowMapper<Shift>() {
			public Shift mapRow(ResultSet rs, int row) throws SQLException{
				Shift s = new Shift();
				s.setShiftCode(rs.getString(1));
				s.setGracePeriod(rs.getInt(2));
				s.setStartTime(rs.getInt(3));
				s.setEndTime(rs.getInt(4));
				s.setsGraceTime(rs.getString(5));
				return s;
			}
		});
	}
	
}
