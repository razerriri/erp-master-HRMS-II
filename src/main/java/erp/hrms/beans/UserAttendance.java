package erp.hrms.beans;

public class UserAttendance {

	public String td_entry_date;
	public String getTd_entry_date() {
		return td_entry_date;
	}
	public void setTd_entry_date(String td_entry_date) {
		this.td_entry_date = td_entry_date;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public String getTd_time_in() {
		return td_time_in;
	}
	public void setTd_time_in(String td_time_in) {
		this.td_time_in = td_time_in;
	}
	public String getTd_time_out() {
		return td_time_out;
	}
	public void setTd_time_out(String td_time_out) {
		this.td_time_out = td_time_out;
	}
	public int emp_id;
	public String td_time_in;
	public String td_time_out;
	
	
}
