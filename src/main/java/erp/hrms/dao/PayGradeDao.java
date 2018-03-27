package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.PayGrade;


public class PayGradeDao {
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	//save
	public int save(PayGrade pg) {
		String sql = "insert into tbl_pay_grade values('"+pg.getPayGradeName()+"','"+pg.getPayGradeMinimum()+"','"+pg.getPayGradeMaximum()+"')";
		return template.update(sql);
	}
	
	//update
	public int update(PayGrade pg) {
		String sql="update tbl_pay_grade set pay_grade_name='"+pg.getPayGradeName()+"', pay_grade_minimum='"+pg.getPayGradeMinimum()+"',pay_grade_maximum='"+pg.getPayGradeMaximum()+"' where pay_grade_id='"+pg.getPayGradeId()+"'";
		return template.update(sql);
	}
	
	//delete
	public int delete(int id) {
		String sql="delete from tbl_pay_grade where pay_grade_id = "+id+"";
		return template.update(sql);
	}
	
	//get
	public List<PayGrade> getPayGrades(){
		return template.query("select * from tbl_pay_grade", new RowMapper<PayGrade>() {
			public PayGrade mapRow(ResultSet rs, int row) throws SQLException{
				PayGrade pg = new PayGrade();
				pg.setPayGradeId(rs.getInt(1));
				pg.setPayGradeName(rs.getString(2));
				pg.setPayGradeMinimum(rs.getFloat(3));
				pg.setPayGradeMaximum(rs.getFloat(4));
				return pg;
			}
		});
	}
}
