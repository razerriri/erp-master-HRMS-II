package erp.hrms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import erp.hrms.beans.EmployeeBeans;
import erp.hrms.beans.Requests;

public class RequestDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(Requests r) {
		String sql = "insert into tbl_request_type values('"+r.getReqType()+"','"+r.getReqDate()+"','"+r.getReqEmpId()+"')";
		return template.update(sql);
	}
	
	
	public List<Requests> getRequests(){
		return template.query(" SELECT EMP_NUMBER, EMP_FIRST_NAME+' '+ EMP_LAST_NAME AS FNAME, EMP_STATUS, REQ_NAME, DATE_REQUESTED \n" + 
				"FROM TBL_EMPLOYEE E INNER JOIN TBL_REQUEST_TYPE R ON E.EMP_ID = R.EMP_ID", new RowMapper<Requests>() {

			public Requests mapRow(ResultSet rs, int rowNum) throws SQLException {
				Requests e = new Requests();
				
				e.setEmpNum(rs.getString(1));
				e.setfName(rs.getString(2));
				e.setEmpStatus(rs.getString(3));
				e.setReqType(rs.getString(4));
				e.setReqDate(rs.getString(5));
				
				return e;
			}
		
		});
		
	}
		
		public List<EmployeeBeans> getEmployee(){
		return template.query("SELECT e.emp_id,fname + ' ' + lname as 'Name', job_name AS 'Job', dept_name as 'Dept' from ref_employee_job r INNER JOIN tbl_EMPLOYEE e on r.emp_id = e.emp_id INNER JOIN tbl_job j on r.job_id = j.job_id inner join tbl_department d on j.dept_id = d.dept_id", new RowMapper<EmployeeBeans>() {

			public EmployeeBeans mapRow(ResultSet rs, int rowNum) throws SQLException {
				EmployeeBeans e = new EmployeeBeans();
				e.setEmp_id(rs.getInt(1));
				e.setEmp_name(rs.getString(2));
				e.setJob_name(rs.getString(3));
				e.setDept_name(rs.getString(4));
				
				return e;
			}
			
		});
	}
}
