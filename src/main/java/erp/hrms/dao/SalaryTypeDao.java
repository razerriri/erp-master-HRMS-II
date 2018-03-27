package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.SalaryType;

public class SalaryTypeDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(SalaryType st) {
		String sql = "insert into tbl_salary_type values('"+st.getSalaryTypeName()+"','"+st.getSalaryTypeCode()+"','"+st.getUnitsPerYear()+"')";
		return template.update(sql);
	}
	
	public int update(SalaryType st) {
		String sql = "update tbl_salary_type set salary_type_name='"+st.getSalaryTypeName()+"',salary_type_code='"+st.getSalaryTypeCode()+"',units_per_year='"+st.getUnitsPerYear()+"' where salary_type_id='"+st.getSalaryTypeId()+"'";
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql="delete from tbl_salary_type where salary_type_id = "+id+"";
		return template.update(sql);
	}
	
	public List<SalaryType> getSalaryTypes(){
		return template.query("select * from tbl_salary_type", new RowMapper<SalaryType>() {
			public SalaryType mapRow(ResultSet rs, int row) throws SQLException{
				SalaryType st = new SalaryType();
				st.setSalaryTypeId(rs.getInt(1));
				st.setSalaryTypeName(rs.getString(2));
				st.setSalaryTypeCode(rs.getString(3));
				st.setUnitsPerYear(rs.getInt(4));
				return st;
			}
		});
	}
}
