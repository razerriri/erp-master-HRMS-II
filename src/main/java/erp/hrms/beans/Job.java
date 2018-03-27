package erp.hrms.beans;

public class Job {
	
	private int jobId;
	private String jobTitle;
	private int deptId;
	private String deptName;
	private int payGradeId;
	private int payGrade;
	private int salaryTypeId;
	private String salaryName;
	
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public int getPayGradeId() {
		return payGradeId;
	}
	public void setPayGradeId(int payGradeId) {
		this.payGradeId = payGradeId;
	}
	public int getPayGrade() {
		return payGrade;
	}
	public void setPayGrade(int payGrade) {
		this.payGrade = payGrade;
	}
	public int getSalaryTypeId() {
		return salaryTypeId;
	}
	public void setSalaryTypeId(int salaryTypeId) {
		this.salaryTypeId = salaryTypeId;
	}
	public String getSalaryName() {
		return salaryName;
	}
	public void setSalaryName(String salaryName) {
		this.salaryName = salaryName;
	}
}
