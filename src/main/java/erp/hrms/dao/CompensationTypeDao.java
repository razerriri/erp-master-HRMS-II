package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.CompensationType;

public class CompensationTypeDao {

JdbcTemplate template;

public void setTemplate(JdbcTemplate template) {
	this.template = template;
}

public int save(CompensationType c) {
	String sql = "insert into tbl_compensation_type values('"+c.getCompTypeName()+"','"+c.getCompTypeDesc()+"','"+c.getCompValue()+"')";
	return template.update(sql);
}

public int delete(int id) {
	String sql = "delete from tbl_compensation_type where comp_type_id = "+id+"";
	return template.update(sql);
}

public int update(CompensationType c) {
	String sql = "update tbl_compensation_type set comp_type_name='"+c.getCompTypeName()+"',comp_type_desc='"+c.getCompTypeDesc()+"',comp_type_value="+c.getCompValue()+" where comp_type_id="+c.getCompTypeId()+"";
	return template.update(sql);
}

public List<CompensationType> getCompensationTypes(){
	return template.query("select * from tbl_compensation_type", new RowMapper<CompensationType>() {
		public CompensationType mapRow(ResultSet rs, int row) throws SQLException{
			CompensationType ct = new CompensationType();
			ct.setCompTypeId(rs.getInt(1));
			ct.setCompTypeName(rs.getString(2));
			ct.setCompTypeDesc(rs.getString(3));
			ct.setCompValue(rs.getFloat(4));
			return ct;
		}
	});
}
}
