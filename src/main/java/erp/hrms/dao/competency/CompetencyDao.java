package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class CompetencyDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Competency c) {
		String sql = "insert into tbl_competency values('"+c.getCompetency_name()+"','"+c.getCluster_id()+"','"+c.getCompetency_type()+"')";
		return template.update(sql);
	}
	
	public int delete(int competencyid) {
		String sql = "delete from tbl_competency where competency_id = "+competencyid+"";
		return template.update(sql);
	}
	
	public int update(Competency c) {
		String sql = "update tbl_competency set competency_name='"+c.getCompetency_name()+"',competency_type='"+c.getCompetency_type()+"'  where competency_id = '"+c.getCompetency_id()+"'";
		return template.update(sql);
	}
	
	
}
