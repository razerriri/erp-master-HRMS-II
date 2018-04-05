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
		return template.query("SELECT TBL_EMPLOYEE.EMP_ID, (TBL_EMPLOYEE.EMP_LAST_NAME +' '+ TBL_EMPLOYEE.EMP_FIRST_NAME) FROM   TBL_EMPLOYEE ", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				e.setEmployee_name(rs.getString(2));
				return e;
			}
		});
	}
	
	public List<Competency> getEmployeeCompetency(int employeeid){
		return template.query("SELECT TBL_EMPLOYEE.EMP_ID, TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_NAME, TBL_COMPETENCY.COMPETENCY_NAME, "
				+ "TBL_COMPETENCY.COMPETENCY_TYPE, TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE,TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_ID, "
 + "CONVERT(VARCHAR(15), TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_TIME_STAMP, 101),TBL_COMPETENCY.COMPETENCY_ID  "
 + "FROM TBL_EMPLOYEE  "
 + "INNER JOIN TBL_COMPETENCY_STATUS ON TBL_EMPLOYEE.EMP_ID = TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_EMP_ID  "
 + "INNER JOIN TBL_COMPETENCY ON TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID  "
 + "INNER JOIN TBL_COMPETENCY_CLUSTER ON TBL_COMPETENCY.COMPETENCY_CLUSTER_ID = TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_ID  "
 + "WHERE TBL_EMPLOYEE.EMP_ID="+employeeid+"", new RowMapper<Competency>(){
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
		return template.query("SELECT EMP_ID FROM TBL_EMPLOYEE WHERE EMP_ID="+employeeid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				return e;
			}
		});
	}
	
	public List<Competency> getCompetency(){
		return template.query("SELECT TBL_COMPETENCY.COMPETENCY_ID, (TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_NAME+' - '+ TBL_COMPETENCY.COMPETENCY_NAME+' - '+TBL_COMPETENCY.COMPETENCY_TYPE)FROM   TBL_COMPETENCY_CLUSTER INNER JOIN TBL_COMPETENCY ON TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_ID = TBL_COMPETENCY.COMPETENCY_CLUSTER_ID", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setCompetency_id(rs.getInt(1));
				e.setCompetency_name(rs.getString(2));				
				return e;
			}
		});
	}
}
