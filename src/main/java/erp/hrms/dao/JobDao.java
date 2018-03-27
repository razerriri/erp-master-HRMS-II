package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Job;


public class JobDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//save
	public int save(Job j) {
		String sql = "insert into tbl_job values('"+j.getJobTitle()+"','"+j.getDeptId()+"','"+j.getPayGradeId()+"','"+j.getSalaryTypeId()+"')";
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
	public List<Job> getJob(){
		return template.query("select j.job_id, j.job_name, d.dept_id, d.dept_name, pg.pay_grade_id, pg.pay_grade_name, st.salary_type_id, st.salary_type_name from tbl_job j\r\n" + 
				"inner join tbl_department d\r\n" + 
				"on j.dept_id = d.dept_id\r\n" + 
				"inner join tbl_pay_grade pg\r\n" + 
				"on j.pay_grade_id = pg.pay_grade_id\r\n" + 
				"inner join tbl_salary_type st\r\n" + 
				"on j.salary_type_id = st.salary_type_id", new RowMapper<Job>() {
			public Job mapRow(ResultSet rs, int row) throws SQLException{
				Job j = new Job();
				j.setJobId(rs.getInt(1));
				j.setJobTitle(rs.getString(2));
				j.setDeptId(rs.getInt(3));
				j.setDeptName(rs.getString(4));
				j.setPayGradeId(rs.getInt(5));
				j.setPayGrade(rs.getInt(6));
				j.setSalaryTypeId(rs.getInt(7));
				j.setSalaryName(rs.getString(8));
				return j;
			}
		});
	}
}
