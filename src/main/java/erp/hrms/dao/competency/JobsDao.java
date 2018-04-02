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
		return template.query("SELECT TBL_JOB.JOB_ID, TBL_JOB.JOB_NAME, TBL_DEPARTMENT.DEPT_NAME, "
+"CASE WHEN COUNT(TBL_JOB_COMPETENCY.JOB_COMPETENCY_ID) = 0 THEN 0  "
+"ELSE COUNT(TBL_JOB_COMPETENCY.JOB_COMPETENCY_ID) END  AS TOTAL_COMPETENCY  "
+"FROM TBL_JOB INNER JOIN TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID  "
+"FULL JOIN TBL_JOB_COMPETENCY ON TBL_JOB.JOB_ID = TBL_JOB_COMPETENCY.JOB_COMPETENCY_JOB_ID  "
+"GROUP BY TBL_JOB.JOB_ID, TBL_JOB.JOB_NAME, TBL_DEPARTMENT.DEPT_NAME", new RowMapper<Competency>(){
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
		return template.query("SELECT TBL_JOB_COMPETENCY.JOB_COMPETENCY_ID, TBL_JOB.JOB_NAME, TBL_DEPARTMENT.DEPT_NAME,TBL_COMPETENCY.COMPETENCY_ID, "
+"TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_NAME, TBL_COMPETENCY.COMPETENCY_NAME, TBL_COMPETENCY.COMPETENCY_TYPE, "
+"TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_LEVEL,TBL_JOB.JOB_ID FROM TBL_JOB_COMPETENCY "
+"INNER JOIN TBL_JOB ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_JOB_ID = TBL_JOB.JOB_ID INNER JOIN TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID "
+"INNER JOIN TBL_COMPETENCY ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID "
+"INNER JOIN TBL_COMPETENCY_CLUSTER ON TBL_COMPETENCY.COMPETENCY_CLUSTER_ID = TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_ID WHERE TBL_JOB.JOB_ID="+jobid+"", new RowMapper<Competency>(){
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
		return template.query("SELECT JOB_ID FROM TBL_JOB WHERE JOB_ID="+jobid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setJob_id(rs.getInt(1));
				return c;
			}
		});
	}
	
}
