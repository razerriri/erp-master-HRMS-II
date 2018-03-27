package erp.hrms.beans;

public class RecruitmentBean {
	private int JobPostID;
	private String JobDesc;
	private String JobTitle;
	private String JobSpec;
	
	public int getJobPostID() {
		return JobPostID;
	}
	public void setJobPostID(int jobPostID) {
		JobPostID = jobPostID;
	}
	public String getJobDesc() {
		return JobDesc;
	}
	public void setJobDesc(String jobDesc) {
		JobDesc = jobDesc;
	}
	public String getJobTitle() {
		return JobTitle;
	}
	public void setJobTitle(String jobTitle) {
		JobTitle = jobTitle;
	}
	public String getJobSpec() {
		return JobSpec;
	}
	public void setJobSpec(String jobSpec) {
		JobSpec = jobSpec;
	}
	
}
