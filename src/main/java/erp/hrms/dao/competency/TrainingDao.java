package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class TrainingDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int delete(int trainingcompetencyid) {
		String sql = "delete from tbl_training_competency where tbl_training_competency.training_competency_id = "+trainingcompetencyid+"";
		return template.update(sql);
	}
	
	public int save(Competency c) {
		String sql = "insert into tbl_training_competency values('"+c.getTraining_id()+"','"+c.getCompetency_id()+"','"+c.getRequired_level()+"')";
		return template.update(sql);
	}
	
	public int update(Competency c) {
		String sql = "update tbl_training_competency set competency_id='"+c.getCompetency_id()+"', "
				+ "competency_level= '"+c.getRequired_level()+"' "
				+ "where training_competency_id = '"+c.getTrainingcompetency_id()+"'";
		return template.update(sql);
	}
	
	public List<Competency> getTraining(){
		return template.query("SELECT TBL_TRAINING_COURSE.COURSE_ID, TBL_TRAINING_COURSE.COURSE_TITLE,TBL_TRAINING_COURSE.COURSE_DESCRIPTION, COUNT(TBL_TRAINING_COMPETENCY.TRAINING_COMPETENCY_ID) "
				+"FROM   TBL_TRAINING_COURSE LEFT JOIN "
				+"TBL_TRAINING_COMPETENCY ON TBL_TRAINING_COURSE.COURSE_ID = TBL_TRAINING_COMPETENCY.COURSE_ID "
				+"GROUP BY TBL_TRAINING_COURSE.COURSE_ID, TBL_TRAINING_COURSE.COURSE_TITLE,TBL_TRAINING_COURSE.COURSE_DESCRIPTION", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setTraining_id(rs.getInt(1));
				c.setTraining_name(rs.getString(2));
				c.setTraining_desc(rs.getString(3));
				c.setTotal_competency(rs.getInt(4));
				return c;
			}
		});
	}
	public List<Competency> getTrainingCompetency(int trainingid){
		return template.query("SELECT TBL_TRAINING_COMPETENCY.TRAINING_COMPETENCY_ID, TBL_TRAINING_COURSE.COURSE_TITLE, TBL_COMPETENCY.COMPETENCY_ID, "
				+" TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_NAME, TBL_COMPETENCY.COMPETENCY_NAME,  "
				+" TBL_COMPETENCY.COMPETENCY_TYPE, TBL_TRAINING_COMPETENCY.COMPETENCY_LEVEL, TBL_TRAINING_COURSE.COURSE_ID "
				+" FROM   TBL_TRAINING_COMPETENCY INNER JOIN "
				+" TBL_TRAINING_COURSE ON TBL_TRAINING_COMPETENCY.COURSE_ID = TBL_TRAINING_COURSE.COURSE_ID INNER JOIN "
				+" TBL_COMPETENCY ON TBL_TRAINING_COMPETENCY.COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID INNER JOIN "
				+" TBL_COMPETENCY_CLUSTER ON TBL_COMPETENCY.COMPETENCY_CLUSTER_ID = TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_ID "
				+ "WHERE TBL_TRAINING_COURSE.COURSE_ID="+trainingid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setTrainingcompetency_id(rs.getInt(1));
				c.setTraining_name(rs.getString(2));			
				c.setCompetency_id(rs.getInt(3));
				c.setCluster_name(rs.getString(4));
				c.setCompetency_name(rs.getString(5));
				c.setCompetency_type(rs.getString(6));
				c.setRequired_level(rs.getString(7));
				c.setTraining_id(rs.getInt(8));
				return c;
			}
		});
	}
	public List<Competency> getTrainingid(int trainingid){
		return template.query("SELECT COURSE_ID FROM TBL_training_COURSE WHERE COURSE_ID="+trainingid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setTraining_id(rs.getInt(1));
				return c;
			}
		});
	}
	
}
