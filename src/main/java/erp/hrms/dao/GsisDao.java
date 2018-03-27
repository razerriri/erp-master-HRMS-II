package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Gsis;



public class GsisDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Gsis g) {
		String sql = "insert into tbl_gsis values ('"+g.getGsis_emp_share()+"','"+g.getGsis_employer_share()+"')";
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql = "";
		return template.update(sql);	
	}
	
	public int update(Gsis g) {
		String sql = "update table tbl_gsis set gsis_employee_share = '"+g.getGsis_emp_share()+"'"
				+ ",gsis_employer_share = '"+g.getGsis_employer_share()+"' where gsis_id = '"+g.getGsis_id()+"'";
		return template.update(sql);
	}
	
	public List<Gsis> getGsis(){
		return template.query("select * from tbl_gsis", new RowMapper<Gsis>() {
			public Gsis mapRow(ResultSet rs, int row) throws SQLException{
				Gsis g = new Gsis();
				g.setGsis_id(rs.getInt(1));
				g.setGsis_emp_share(rs.getFloat(2));
				g.setGsis_employer_share(rs.getFloat(3));
				return g;
			}
		});
	}
	
}
