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
		return template.query("SELECT DISTINCT TBL_JOB.JOB_ID, TBL_EMPLOYEE.EMP_ID, TBL_JOB.JOB_NAME, (TBL_EMPLOYEE.EMP_LAST_NAME+', '+TBL_EMPLOYEE.EMP_FIRST_NAME), "
+ "COUNT(DISTINCT TBL_COMPETENCY.COMPETENCY_NAME) FROM TBL_JOB_COMPETENCY INNER JOIN TBL_JOB ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_JOB_ID = TBL_JOB.JOB_ID "
+ "INNER JOIN REF_EMP_JOB ON TBL_JOB.JOB_ID=REF_EMP_JOB.JOB_ID "
+ "INNER JOIN TBL_EMPLOYEE ON REF_EMP_JOB.EMP_ID = TBL_EMPLOYEE.EMP_ID "
+ "INNER JOIN TBL_COMPETENCY ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID "
+ "FULL JOIN TBL_COMPETENCY_STATUS ON TBL_EMPLOYEE.EMP_ID = TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_EMP_ID AND TBL_COMPETENCY.COMPETENCY_ID = TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_ID "
+ "AND TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID=TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_ID WHERE TBL_EMPLOYEE.EMP_LAST_NAME IS NOT NULL "
+ "GROUP BY TBL_JOB.JOB_ID, TBL_EMPLOYEE.EMP_ID,TBL_JOB.JOB_NAME, TBL_EMPLOYEE.EMP_LAST_NAME, TBL_EMPLOYEE.EMP_FIRST_NAME ", new RowMapper<Competency>(){
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
		return template.query("SELECT DISTINCT (TBL_JOB.JOB_NAME+' - '+TBL_DEPARTMENT.DEPT_NAME),   "
				+ "TBL_COMPETENCY.COMPETENCY_NAME,  "
				+ " TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_LEVEL,  "
				+ "(TBL_EMPLOYEE.EMP_LAST_NAME+', '+TBL_EMPLOYEE.EMP_FIRST_NAME),   "
				+ "				 CASE WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE IS NULL THEN 'No Competency' ELSE TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE END,  "
				+ "				 CASE WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE IS NULL THEN 'No Competency' WHEN   "
				+ "				 TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE='Superior' THEN 'Desired level attained' WHEN  "
				+ "	TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE='Advanced' and JOB_COMPETENCY_COMPETENCY_LEVEL='Superior' THEN  "
				 + "	'Needs Improvement'  "
				+ "	 WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE='Intermediate' AND  "
				+ "	 JOB_COMPETENCY_COMPETENCY_LEVEL!='Basic' or JOB_COMPETENCY_COMPETENCY_LEVEL!='Intermediate'  "
				+ "	 THEN 'Needs Improvement'   "
				+ "	 WHEN TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_SCORE='Basic' AND JOB_COMPETENCY_COMPETENCY_LEVEL!='Basic' "
				+ "	 THEN 'Needs Improvement' ELSE 'Desired level attained' END "
				+ "	 FROM   TBL_JOB LEFT JOIN   "
				+ "	 TBL_JOB_COMPETENCY ON TBL_JOB.JOB_ID = TBL_JOB_COMPETENCY.JOB_COMPETENCY_JOB_ID LEFT JOIN "
				+ "	 TBL_COMPETENCY_STATUS ON  TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID=TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_COMPETENCY_ID LEFT JOIN	 "		   
				+ "	 TBL_COMPETENCY ON TBL_JOB_COMPETENCY.JOB_COMPETENCY_COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID LEFT JOIN   "
				+ "	 TBL_COMPETENCY_CLUSTER ON TBL_COMPETENCY.COMPETENCY_CLUSTER_ID = TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_ID LEFT JOIN   "
				+ "	 TBL_EMPLOYEE ON TBL_EMPLOYEE.EMP_ID= TBL_COMPETENCY_STATUS.COMPETENCY_STATUS_EMP_ID  LEFT JOIN   "
				+ "	 TBL_DEPARTMENT ON TBL_JOB.DEPT_ID = TBL_DEPARTMENT.DEPT_ID    "
				+ "	 WHERE TBL_EMPLOYEE.EMP_ID="+empid+" AND TBL_JOB.JOB_ID="+jobid+"", new RowMapper<Competency>(){
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
