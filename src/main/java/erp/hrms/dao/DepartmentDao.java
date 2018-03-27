package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.Department;

public class DepartmentDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Department d) {
		String sql = "insert into tbl_department values('"+d.getDeptName()+"','"+d.getDeptDesc()+"')";
		return template.update(sql);
	}
	
	public int delete(int id) {
		String sql = "delete from tbl_department where dept_id = "+id+"";
		return template.update(sql);
	}
	
	public int update(Department d) {
		String sql = "update tbl_department set dept_name='"+d.getDeptName()+"',dept_desc='"+d.getDeptDesc()+"' where dept_id = '"+d.getDeptId()+"'";
		return template.update(sql);
	}
	
	public List<Department> getDepartment(){
		return template.query("select * from tbl_department", new RowMapper<Department>(){
			public Department mapRow(ResultSet rs, int row)  throws SQLException{
				Department d = new Department();
				d.setDeptId(rs.getInt(1));
				d.setDeptName(rs.getString(2));
				d.setDeptDesc(rs.getString(3));
				return d;
			}
		});
	}
}
