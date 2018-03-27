package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class EJCDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	
	public List<Competency> getEmployee(){
		return template.query("SELECT tbl_employees.emp_id, (tbl_employees.emp_last_name +', '+ tbl_employees.emp_first_name+' - '+ tbl_job.job_title+' - '+ tbl_departments.dept_name) FROM   tbl_employees INNER JOIN tbl_job ON tbl_employees.emp_job_id = tbl_job.job_id INNER JOIN tbl_departments ON tbl_employees.emp_id = tbl_departments.dept_manager_id AND tbl_job.job_dept_id = tbl_departments.dept_id", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				e.setEmployee_name(rs.getString(2));	
				return e;
			}
		});
	}
	
	public List<Competency> getJob(){
		return template.query("SELECT tbl_job.job_id, (tbl_job.job_title+' - '+ tbl_departments.dept_name) FROM   tbl_job INNER JOIN tbl_departments ON tbl_job.job_dept_id = tbl_departments.dept_id", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setJob_id(rs.getInt(1));
				e.setJob_name(rs.getString(2));
				return e;
			}
		});
	}
	
	public List<Competency> getEmployeeJobCompetency(Competency c){
		return template.query("SELECT DISTINCT (tbl_job.job_title+' - '+tbl_departments.dept_name), tbl_competency.competency_name, tbl_job_competency.job_competency_competency_level, (tbl_employees.emp_last_name+', '+tbl_employees.emp_first_name), COALESCE(tbl_competency_status.competency_status_competency_score,'No Competency') as value,  CASE WHEN tbl_competency_status.competency_status_competency_score IS NULL THEN 'No Competency' WHEN tbl_competency_status.competency_status_competency_score ='Basic' AND job_competency_competency_level='Intermediate' OR job_competency_competency_level='Advanced' OR job_competency_competency_level='Superior' THEN 'Needs Improvement' WHEN tbl_competency_status.competency_status_competency_score ='Advanced' AND job_competency_competency_level='Superior' THEN 'Needs Improvement' WHEN tbl_competency_status.competency_status_competency_score ='Intermediate' AND job_competency_competency_level='Advanced'  OR job_competency_competency_level='Superior' THEN  'Needs Improvement' ELSE 'Desired level attained' END AS score FROM tbl_job INNER JOIN tbl_job_competency ON '3' = tbl_job_competency.job_competency_job_id INNER JOIN tbl_employees ON tbl_job.job_id = '3'  LEFT JOIN tbl_competency_status ON tbl_job_competency.job_competency_competency_id = tbl_competency_status.competency_status_competency_id and tbl_competency_status.competency_status_emp_id='"+c.getEmployee_id()+"'  inner JOIN tbl_competency ON tbl_job_competency.job_competency_competency_id = tbl_competency.competency_id INNER JOIN tbl_departments ON tbl_job.job_dept_id = tbl_departments.dept_id where tbl_employees.emp_id='"+c.getEmployee_id()+"'", new RowMapper<Competency>(){
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
	
	public List<Competency> getEmployeeJobCompetencyindex(){
		return template.query("SELECT DISTINCT (tbl_job.job_title+' - '+tbl_departments.dept_name), tbl_competency.competency_name, tbl_job_competency.job_competency_competency_level, (tbl_employees.emp_last_name+', '+tbl_employees.emp_first_name), COALESCE(tbl_competency_status.competency_status_competency_score,'No Competency') as value,  CASE WHEN tbl_competency_status.competency_status_competency_score IS NULL THEN 'No Competency' WHEN tbl_competency_status.competency_status_competency_score ='Basic' AND job_competency_competency_level='Intermediate' OR job_competency_competency_level='Advanced' OR job_competency_competency_level='Superior' THEN 'Needs Improvement' WHEN tbl_competency_status.competency_status_competency_score ='Advanced' AND job_competency_competency_level='Superior' THEN 'Needs Improvement' WHEN tbl_competency_status.competency_status_competency_score ='Intermediate' AND job_competency_competency_level='Advanced'  OR job_competency_competency_level='Superior' THEN  'Needs Improvement' ELSE 'Desired level attained' END AS score FROM tbl_job INNER JOIN tbl_job_competency ON tbl_job.job_id = tbl_job_competency.job_competency_job_id INNER JOIN tbl_employees ON tbl_job.job_id = tbl_employees.emp_job_id  LEFT JOIN tbl_competency_status ON tbl_job_competency.job_competency_competency_id = tbl_competency_status.competency_status_competency_id and tbl_competency_status.competency_status_emp_id=tbl_employees.emp_id  inner JOIN tbl_competency ON tbl_job_competency.job_competency_competency_id = tbl_competency.competency_id INNER JOIN tbl_departments ON tbl_job.job_dept_id = tbl_departments.dept_id ", new RowMapper<Competency>(){
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
	
	public List<Competency> getEmployeeid(Competency c){
		return template.query("SELECT emp_id FROM tbl_employees WHERE emp_id='"+c.getEmployee_id()+"'", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				return e;
			}
		});
	}
	
	
}
