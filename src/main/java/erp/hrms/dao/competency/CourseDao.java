package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class CourseDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int delete(int coursecompetencyid) {
		String sql = "delete from tbl_course_competency where tbl_course_competency.course_competency_id = "+coursecompetencyid+"";
		return template.update(sql);
	}
	
	public int save(Competency c) {
		String sql = "insert into tbl_course_competency values('"+c.getCourse_id()+"','"+c.getCompetency_id()+"','"+c.getRequired_level()+"')";
		return template.update(sql);
	}
	
	public int update(Competency c) {
		String sql = "update tbl_course_competency set competency_id='"+c.getCompetency_id()+"', "
				+ "competency_level= '"+c.getRequired_level()+"' "
				+ "where course_competency_id = '"+c.getCoursecompetency_id()+"'";
		return template.update(sql);
	}
	
	public List<Competency> getCourse(){
		return template.query("SELECT TBL_COURSE.COURSE_ID, TBL_COURSE.COURSE_NAME, TBL_COURSE_CATEGORY.COURSE_CATEGORY_NAME,  "
				+ "COUNT(TBL_COURSE_COMPETENCY.COURSE_COMPETENCY_ID) FROM   TBL_COURSE "
				+ "LEFT JOIN TBL_COURSE_COMPETENCY ON TBL_COURSE.COURSE_ID = TBL_COURSE_COMPETENCY.COURSE_ID "
				+ "INNER JOIN TBL_COURSE_CATEGORY ON TBL_COURSE.COURSE_CATEGORY_ID = TBL_COURSE_CATEGORY.COURSE_CATEGORY_ID "
				+ "GROUP BY TBL_COURSE.COURSE_ID, TBL_COURSE.COURSE_NAME, TBL_COURSE_CATEGORY.COURSE_CATEGORY_NAME", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setCourse_id(rs.getInt(1));
				c.setCourse_name(rs.getString(2));
				c.setCourse_category(rs.getString(3));
				c.setTotal_competency(rs.getInt(4));
				return c;
			}
		});
	}
	public List<Competency> getCourseCompetency(int courseid){
		return template.query("SELECT TBL_COURSE_COMPETENCY.COURSE_COMPETENCY_ID, TBL_COURSE.COURSE_NAME, TBL_COURSE_CATEGORY.COURSE_CATEGORY_NAME,"
				+ " TBL_COMPETENCY.COMPETENCY_ID, TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_NAME, "
				+ " TBL_COMPETENCY.COMPETENCY_NAME, TBL_COMPETENCY.COMPETENCY_TYPE, TBL_COURSE_COMPETENCY.COMPETENCY_LEVEL, TBL_COURSE.COURSE_ID "
				+ " FROM   TBL_COURSE_COMPETENCY INNER JOIN "
				+ " TBL_COURSE ON TBL_COURSE_COMPETENCY.COURSE_ID = TBL_COURSE.COURSE_ID INNER JOIN "
				+ " TBL_COURSE_CATEGORY ON TBL_COURSE.COURSE_CATEGORY_ID = TBL_COURSE_CATEGORY.COURSE_CATEGORY_ID INNER JOIN "
				+ " TBL_COMPETENCY ON TBL_COURSE_COMPETENCY.COMPETENCY_ID = TBL_COMPETENCY.COMPETENCY_ID INNER JOIN "
				+ " TBL_COMPETENCY_CLUSTER ON TBL_COMPETENCY.COMPETENCY_CLUSTER_ID = TBL_COMPETENCY_CLUSTER.COMPETENCY_CLUSTER_ID "
				+ " WHERE TBL_COURSE.COURSE_ID="+courseid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setCoursecompetency_id(rs.getInt(1));
				c.setCourse_name(rs.getString(2));
				c.setCourse_category(rs.getString(3));
				c.setCompetency_id(rs.getInt(4));
				c.setCluster_name(rs.getString(5));
				c.setCompetency_name(rs.getString(6));
				c.setCompetency_type(rs.getString(7));
				c.setRequired_level(rs.getString(8));
				c.setCourse_id(rs.getInt(9));
				return c;
			}
		});
	}
	public List<Competency> getCourseid(int courseid){
		return template.query("SELECT course_ID FROM TBL_course WHERE course_ID="+courseid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setCourse_id(rs.getInt(1));
				return c;
			}
		});
	}
	
}
