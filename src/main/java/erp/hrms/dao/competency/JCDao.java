package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class JCDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Competency> getJobCompetency(){
		return template.query("SELECT distinct tbl_job.job_id, tbl_employees.emp_id, tbl_job.job_title, (tbl_employees.emp_last_name+', '+tbl_employees.emp_first_name), COUNT(DISTINCT tbl_competency.competency_name) FROM   tbl_job_competency INNER JOIN tbl_job ON tbl_job_competency.job_competency_job_id = tbl_job.job_id INNER JOIN tbl_employees ON tbl_job.job_id = tbl_employees.emp_job_id INNER JOIN tbl_competency ON tbl_job_competency.job_competency_competency_id = tbl_competency.competency_id full JOIN tbl_competency_status ON tbl_employees.emp_id = tbl_competency_status.competency_status_emp_id AND tbl_competency.competency_id = tbl_competency_status.competency_status_competency_id AND tbl_job_competency.job_competency_competency_id=tbl_competency_status.competency_status_competency_id where tbl_employees.emp_last_name IS NOT NULL GROUP BY tbl_job.job_id, tbl_employees.emp_id,tbl_job.job_title, tbl_employees.emp_last_name, tbl_employees.emp_first_name ", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setJob_id(rs.getInt(1));
				e.setEmployee_id(rs.getInt(2));
				e.setJob_name(rs.getString(3));
				e.setEmployee_name(rs.getString(4));
				e.setTotal_competency(rs.getInt(5));
				return e;
			}
		});
	}
	
	public List<Competency> getEmployeeJobCompetency(int jobid,int empid){
		return template.query("SELECT DISTINCT (tbl_job.job_title+' - '+tbl_departments.dept_name), tbl_competency.competency_name, tbl_job_competency.job_competency_competency_level, (tbl_employees.emp_last_name+', '+tbl_employees.emp_first_name), COALESCE(tbl_competency_status.competency_status_competency_score,'No Competency') as value,  CASE WHEN tbl_competency_status.competency_status_competency_score IS NULL THEN 'No Competency' WHEN tbl_competency_status.competency_status_competency_score ='Basic' AND job_competency_competency_level!='Basic' THEN 'Needs Improvement' WHEN tbl_competency_status.competency_status_competency_score ='Advanced' AND job_competency_competency_level='Superior' THEN 'Needs Improvement' WHEN tbl_competency_status.competency_status_competency_score ='Intermediate' AND job_competency_competency_level!='Basic'  AND job_competency_competency_level!='Intermdiate' THEN  'Needs Improvement' ELSE 'Desired level attained' END AS score FROM tbl_job INNER JOIN tbl_job_competency ON "+jobid+" = tbl_job_competency.job_competency_job_id INNER JOIN tbl_employees ON tbl_job.job_id = "+jobid+" LEFT JOIN tbl_competency_status ON tbl_job_competency.job_competency_competency_id = tbl_competency_status.competency_status_competency_id  inner JOIN tbl_competency ON tbl_job_competency.job_competency_competency_id = tbl_competency.competency_id INNER JOIN tbl_departments ON tbl_job.job_dept_id = tbl_departments.dept_id where tbl_employees.emp_id="+empid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setJob_name(rs.getString(1));
				c.setCompetency_name(rs.getString(2));
				c.setRequired_level(rs.getString(3));
				c.setEmployee_name(rs.getString(4));
				c.setAttained_level(rs.getString(5));
				c.setRemarks(rs.getString(6));
				return c;
			}
		});
	}
}
