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
		return template.query("SELECT TBL_EMPLOYEE.EMP_ID, (TBL_EMPLOYEE.EMP_LAST_NAME +', '+ TBL_EMPLOYEE.EMP_FIRST_NAME+' - '+ "
+ "TBL_JOB.JOB_NAME+' - '+ TBL_DEPARTMENT.DEPT_NAME) FROM   TBL_EMPLOYEE "
+ "INNER JOIN REF_EMP_JOB ON TBL_EMPLOYEE.EMP_ID=REF_EMP_JOB.EMP_ID "
+ "INNER JOIN TBL_JOB ON REF_EMP_JOB.JOB_ID = TBL_JOB.JOB_ID "
+ "INNER JOIN TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				e.setEmployee_name(rs.getString(2));	
				return e;
			}
		});
	}
	
	public List<Competency> getJob(){
		return template.query("SELECT TBL_JOB.JOB_ID, (TBL_JOB.JOB_NAME+' - '+ TBL_DEPARTMENT.DEPT_NAME) "
				+ "FROM TBL_JOB INNER JOIN TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setJob_id(rs.getInt(1));
				e.setJob_name(rs.getString(2));
				return e;
			}
		});
	}
	
	public List<Competency> getEmployeeJobCompetency(Competency c){
		return template.query("SELECT DISTINCT (TBL_JOB.JOB_NAME+' - '+TBL_DEPARTMENT.DEPT_NAME), TBL_COMPETENCY.COMPETENCY_NAME, "
				 +" TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_LEVEL, (TBL_EMPLOYEE.EMP_LAST_NAME+', '+TBL_EMPLOYEE.EMP_FIRST_NAME), "
				 +" COALESCE(TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE,'NO COMPETENCY') AS VALUE,  CASE WHEN  "
				 +" TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE IS NULL THEN 'NO COMPETENCY' WHEN  "
				 +" TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE ='BASIC' AND JOB_COMPETENCY_COMPETENCY_LEVEL='INTERMEDIATE'  "
				 +" OR JOB_COMPETENCY_COMPETENCY_LEVEL='ADVANCED' OR JOB_COMPETENCY_COMPETENCY_LEVEL='SUPERIOR' THEN 'NEEDS IMPROVEMENT'  "
				 +" WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE ='ADVANCED' AND JOB_COMPETENCY_COMPETENCY_LEVEL='SUPERIOR'  "
				 +" THEN 'NEEDS IMPROVEMENT' WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE ='INTERMEDIATE' AND JOB_COMPETENCY_COMPETENCY_LEVEL='ADVANCED'  OR JOB_COMPETENCY_COMPETENCY_LEVEL='SUPERIOR' THEN  'NEEDS IMPROVEMENT' ELSE 'DESIRED LEVEL ATTAINED' END AS SCORE "  
				 +" FROM TBL_JOB "
				 + "INNER JOIN TBL_JOB_COMPETENCY ON TBL_JOB.JOB_ID = TBL_JOB_COMPETENCY.JOB_COMPETENCY_JOB_ID  "
				 +" INNER JOIN REF_EMP_JOB ON TBL_JOB.JOB_ID =  REF_EMP_JOB.JOB_ID "
				 +" INNER JOIN TBL_EMPLOYEE ON REF_EMP_JOB.EMP_ID = '"+c.getEmployee_id()+"' "
				   
				 +" LEFT JOIN TBL_COMPETENCY_STATUS ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_ID "
				 +" AND TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_EMP_ID='"+c.getEmployee_id()+"' "
						 +" INNER JOIN TBL_COMPETENCY ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID "
						 +" INNER JOIN TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID WHERE TBL_EMPLOYEE.EMP_ID='"+c.getEmployee_id()+"'", new RowMapper<Competency>(){
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
		return template.query(" SELECT DISTINCT (TBL_JOB.JOB_NAME+' - '+TBL_DEPARTMENT.DEPT_NAME), " 
				+" TBL_COMPETENCY.COMPETENCY_NAME, TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_LEVEL, (TBL_EMPLOYEE.EMP_LAST_NAME+', '+ "
				+" TBL_EMPLOYEE.EMP_FIRST_NAME), COALESCE(TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE,'NO COMPETENCY') AS VALUE, "
				+" CASE WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE IS NULL THEN 'NO COMPETENCY' WHEN "
				+" TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE ='BASIC' AND JOB_COMPETENCY_COMPETENCY_LEVEL='INTERMEDIATE' "  
				+" OR JOB_COMPETENCY_COMPETENCY_LEVEL='ADVANCED' OR JOB_COMPETENCY_COMPETENCY_LEVEL='SUPERIOR' THEN 'NEEDS IMPROVEMENT' "
				+" WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE ='ADVANCED' AND JOB_COMPETENCY_COMPETENCY_LEVEL='SUPERIOR' "  
				+"THEN 'NEEDS IMPROVEMENT' WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE ='INTERMEDIATE' AND  "
				+" JOB_COMPETENCY_COMPETENCY_LEVEL='ADVANCED'  OR JOB_COMPETENCY_COMPETENCY_LEVEL='SUPERIOR' THEN  'NEEDS IMPROVEMENT'  "
				+" ELSE 'DESIRED LEVEL ATTAINED' END AS SCORE FROM TBL_JOB "
				+" INNER JOIN TBL_JOB_COMPETENCY ON TBL_JOB.JOB_ID =  "
				+" TBL_JOB_COMPETENCY.JOB_COMPETENCY_JOB_ID "
				+" INNER JOIN REF_EMP_JOB ON TBL_JOB.JOB_ID=REF_EMP_JOB.JOB_ID "
				+" INNER JOIN TBL_EMPLOYEE ON REF_EMP_JOB.EMP_ID=TBL_EMPLOYEE.EMP_ID "
				+" LEFT JOIN TBL_COMPETENCY_STATUS ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = "
				+" TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_ID AND TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_EMP_ID=TBL_EMPLOYEE.EMP_ID " 
				+" INNER JOIN TBL_COMPETENCY ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID "
				+" INNER JOIN TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID ", new RowMapper<Competency>(){
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
		return template.query("SELECT EMP_ID FROM TBL_EMPLOYEE WHERE EMP_ID='"+c.getEmployee_id()+"'", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency e = new Competency();
				e.setEmployee_id(rs.getInt(1));
				return e;
			}
		});
	}
	
	
}
