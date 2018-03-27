package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class JobsDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int delete(int jobcompetencyid) {
		String sql = "delete from tbl_job_competency where tbl_job_competency.job_competency_id = "+jobcompetencyid+"";
		return template.update(sql);
	}
	
	public int save(Competency c) {
		String sql = "insert into tbl_job_competency values('"+c.getJob_id()+"','"+c.getCompetency_id()+"','"+c.getRequired_level()+"')";
		return template.update(sql);
	}
	
	public int update(Competency c) {
		String sql = "update tbl_job_competency set job_competency_competency_id='"+c.getCompetency_id()+"', job_competency_competency_level= '"+c.getRequired_level()+"' where job_competency_id = '"+c.getJobcompetency_id()+"'";
		return template.update(sql);
	}
	
	public List<Competency> getJob(){
		return template.query("SELECT tbl_job.job_id, tbl_job.job_title, tbl_departments.dept_name,CASE WHEN COUNT(tbl_job_competency.job_competency_id) = 0 THEN 0 ELSE COUNT(tbl_job_competency.job_competency_id) END  AS total_competency FROM tbl_job INNER JOIN tbl_departments ON tbl_job.job_dept_id = tbl_departments.dept_id FULL JOIN tbl_job_competency ON tbl_job.job_id = tbl_job_competency.job_competency_job_id GROUP BY tbl_job.job_id, tbl_job.job_title, tbl_departments.dept_name", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setJob_id(rs.getInt(1));
				c.setJob_name(rs.getString(2));
				c.setDepartment_name(rs.getString(3));
				c.setTotal_competency(rs.getInt(4));
				return c;
			}
		});
	}
	public List<Competency> getJobCompetency(int jobid){
		return template.query("SELECT tbl_job_competency.job_competency_id, tbl_job.job_title, tbl_departments.dept_name,tbl_competency.competency_id, tbl_competency_cluster.competency_cluster_name, tbl_competency.competency_name, tbl_competency.competency_type, tbl_job_competency.job_competency_competency_level,tbl_job.job_id FROM tbl_job_competency INNER JOIN tbl_job ON tbl_job_competency.job_competency_job_id = tbl_job.job_id INNER JOIN tbl_departments ON tbl_job.job_dept_id = tbl_departments.dept_id INNER JOIN tbl_competency ON tbl_job_competency.job_competency_competency_id = tbl_competency.competency_id INNER JOIN tbl_competency_cluster ON tbl_competency.competency_cluster_id = tbl_competency_cluster.competency_cluster_id WHERE tbl_job.job_id="+jobid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setJobcompetency_id(rs.getInt(1));
				c.setJob_name(rs.getString(2));
				c.setDepartment_name(rs.getString(3));
				c.setCompetency_id(rs.getInt(4));
				c.setCluster_name(rs.getString(5));
				c.setCompetency_name(rs.getString(6));
				c.setCompetency_type(rs.getString(7));
				c.setRequired_level(rs.getString(8));
				c.setJob_id(rs.getInt(9));
				return c;
			}
		});
	}
	public List<Competency> getJobid(int jobid){
		return template.query("SELECT job_id FROM tbl_job WHERE job_id="+jobid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setJob_id(rs.getInt(1));
				return c;
			}
		});
	}
	
}
