package erp.hrms.dao.competency;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Competency;

public class ClusterDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Competency c) {
		String sql = "insert into tbl_competency_cluster values('"+c.getCluster_name()+"')";
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql = "delete from tbl_competency_cluster where competency_cluster_id = "+id+"";
		return template.update(sql);
	}
	
	public int update(Competency c) {
		String sql = "update tbl_competency_cluster set competency_cluster_name='"+c.getCluster_name()+"' where competency_cluster_id = '"+c.getCluster_id()+"'";
		return template.update(sql);
	}
	
	public List<Competency> getCluster(){
		return template.query("select * from tbl_competency_cluster", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setCluster_id(rs.getInt(1));
				c.setCluster_name(rs.getString(2));
				return c;
			}
		});
	}

	public List<Competency> getClusterid(int clusterid){
		return template.query("select competency_cluster_id from tbl_competency_cluster where competency_cluster_id="+clusterid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setCluster_id(rs.getInt(1));
				return c;
			}
		});
	}
	
	public List<Competency> getCompetency(int clusterid){
		return template.query("SELECT tbl_competency.competency_id, tbl_competency.competency_name, tbl_competency.competency_type, tbl_competency_cluster.competency_cluster_name,tbl_competency.competency_cluster_id FROM   tbl_competency INNER JOIN tbl_competency_cluster ON tbl_competency.competency_cluster_id = tbl_competency_cluster.competency_cluster_id where tbl_competency.competency_cluster_id="+clusterid+"", new RowMapper<Competency>(){
			public Competency mapRow(ResultSet rs, int row)  throws SQLException{
				Competency c = new Competency();
				c.setCompetency_id(rs.getInt(1));
				c.setCompetency_name(rs.getString(2));
				c.setCompetency_type(rs.getString(3));
				c.setCluster_name(rs.getString(4));
				c.setCluster_id(rs.getInt(5));
				return c;			
				}
		});
	}
}
