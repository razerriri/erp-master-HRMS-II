package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class EmployeesDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int delete(int id) {
		String sql = "delete from tbl_competency_status where competency_status_id = "+id+"";
		return template.update(sql);
	}
	
	public int save(Competency c) {
		String sql = "insert into tbl_competency_status values('"+c.getEmployee_id()+"','"+c.getCompetency_id()+"',CURRENT_TIMESTAMP,'"+c.getCompetency_score()+"')";
		return template.update(sql);
	}
	
	public int update(Competency c) {
		String sql = "update tbl_competency_status set competency_status_competency_id='"+c.getCompetency_id()+"', competency_status_time_stamp= CURRENT_TIMESTAMP where competency_status_id = '"+c.getCompetencystatus_id()+"'";
		return template.update(sql);
	}
	
	public List<Competency> getEmployee(){
		return template.query("SELECT tbl_employees.emp_id, (tbl_employees.emp_last_name +' '+ tbl_employees.emp_first_name), tbl_job.job_title, tbl_departments.dept_name FROM   tbl_employees INNER JOIN tbl_job ON tbl_employees.emp_job_id = tbl_job.job_id INNER JOIN tbl_departments ON tbl_employees.emp_id = tbl_departments.dept_manager_id AND tbl_job.job_dept_id = tbl_departments.dept_id", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				e.setEmployee_name(rs.getString(2));
				e.setJob_name(rs.getString(3));
				e.setDepartment_name(rs.getString(4));
				return e;
			}
		});
	}
	
	public List<Competency> getEmployeeCompetency(int employeeid){
		return template.query("SELECT tbl_employees.emp_id, tbl_competency_cluster.competency_cluster_name, tbl_competency.competency_name, tbl_competency.competency_type, tbl_competency_status.competency_status_competency_score,tbl_competency_status.competency_status_id,CONVERT(VARCHAR(15), tbl_competency_status.competency_status_time_stamp, 101),tbl_competency.competency_id FROM tbl_employees INNER JOIN tbl_competency_status ON tbl_employees.emp_id = tbl_competency_status.competency_status_emp_id INNER JOIN tbl_competency ON tbl_competency_status.competency_status_competency_id = tbl_competency.competency_id INNER JOIN tbl_competency_cluster ON tbl_competency.competency_cluster_id = tbl_competency_cluster.competency_cluster_id WHERE tbl_employees.emp_id="+employeeid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				e.setCluster_name(rs.getString(2));
				e.setCompetency_name(rs.getString(3));
				e.setCompetency_type(rs.getString(4));
				e.setCompetency_score(rs.getString(5));
				e.setCompetencystatus_id(rs.getInt(6));
				e.setCompetency_timestamp(rs.getString(7));
				e.setCompetency_id(rs.getInt(8));
				return e;
			}
		});
	}
	public List<Competency> getEmployeeid(int employeeid){
		return template.query("SELECT emp_id FROM tbl_employees WHERE emp_id="+employeeid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				return e;
			}
		});
	}
	
	public List<Competency> getCompetency(){
		return template.query("SELECT tbl_competency.competency_id, (tbl_competency_cluster.competency_cluster_name+' - '+ tbl_competency.competency_name+' - '+tbl_competency.competency_type)FROM   tbl_competency_cluster INNER JOIN tbl_competency ON tbl_competency_cluster.competency_cluster_id = tbl_competency.competency_cluster_id", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setCompetency_id(rs.getInt(1));
				e.setCompetency_name(rs.getString(2));				
				return e;
			}
		});
	}
}
