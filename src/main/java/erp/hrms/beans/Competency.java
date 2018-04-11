package erp.hrms.beans;

public class Competency {
	
	private int trainingcompetency_id,training_id,course_id,coursecompetency_id,jobcompetency_id,total_competency,cluster_id,employee_id,competencystatus_id,competency_id,job_id;
	private String remarks,competency_name,competency_type,cluster_name,employee_name,job_name,department_name,competency_score,competency_timestamp,required_level,attained_level;
	private String course_name,course_category,training_name,training_desc;
	
	public Competency() {

	}

	public Competency(String training_desc,int trainingcompetency_id,int training_id,int course_id,int coursecompetency_id,String course_name,String course_category,int jobcompetency_id,int total_competency,String remarks,String attained_level, String required_level, int job_id,String competency_timestamp,int competencystatus_id,int cluster_id, String cluster_name,int competency_id,String competency_name,String competency_type,int employee_id, String employee_name,String job_name,String department_name,String competency_score) {
		this.training_desc=training_desc;
		this.trainingcompetency_id=trainingcompetency_id;
		this.training_id=training_id;
		this.course_id=course_id;
		this.coursecompetency_id=coursecompetency_id;
		this.course_name=course_name;
		this.course_category=course_category;
		this.jobcompetency_id=jobcompetency_id;
		this.total_competency=total_competency;
		this.remarks=remarks;
		this.required_level=required_level;
		this.attained_level=attained_level;
		this.job_id=job_id;
		this.competencystatus_id=competencystatus_id;
		this.cluster_id = cluster_id;
		this.cluster_name = cluster_name;
		this.competency_id = competency_id;		
		this.competency_name = competency_name;
		this.competency_type=competency_type;
		this.employee_id=employee_id;
		this.employee_name=employee_name;
		this.job_name=job_name;		
		this.department_name=department_name;
		this.competency_score=competency_score;
		this.competency_timestamp=competency_timestamp;
	}

	public int getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}

	public String getEmployee_name() {
		return employee_name;
	}

	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}

	public String getJob_name() {
		return job_name;
	}

	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	public int getCluster_id() {
		return cluster_id;
	}

	public void setCluster_id(int cluster_id) {
		this.cluster_id = cluster_id;
	}

	public String getCluster_name() {
		return cluster_name;
	}

	public void setCluster_name(String cluster_name) {
		this.cluster_name = cluster_name;
	}

	public int getCompetency_id() {
		return competency_id;
	}

	public void setCompetency_id(int competency_id) {
		this.competency_id = competency_id;
	}

	public String getCompetency_name() {
		return competency_name;
	}

	public void setCompetency_name(String competency_name) {
		this.competency_name = competency_name;
	}

	public String getCompetency_type() {
		return competency_type;
	}

	public void setCompetency_type(String competency_type) {
		this.competency_type = competency_type;
	}

	public String getCompetency_score() {
		return competency_score;
	}

	public void setCompetency_score(String competency_score) {
		this.competency_score = competency_score;
	}

	public int getCompetencystatus_id() {
		return competencystatus_id;
	}

	public void setCompetencystatus_id(int competencystatus_id) {
		this.competencystatus_id = competencystatus_id;
	}

	public String getCompetency_timestamp() {
		return competency_timestamp;
	}

	public void setCompetency_timestamp(String competency_timestamp) {
		this.competency_timestamp = competency_timestamp;
	}

	public int getJob_id() {
		return job_id;
	}

	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}

	public String getRequired_level() {
		return required_level;
	}

	public void setRequired_level(String required_level) {
		this.required_level = required_level;
	}

	public String getAttained_level() {
		return attained_level;
	}

	public void setAttained_level(String attained_level) {
		this.attained_level = attained_level;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public int getTotal_competency() {
		return total_competency;
	}

	public void setTotal_competency(int total_competency) {
		this.total_competency = total_competency;
	}

	public int getJobcompetency_id() {
		return jobcompetency_id;
	}

	public void setJobcompetency_id(int jobcompetency_id) {
		this.jobcompetency_id = jobcompetency_id;
	}

	public int getCoursecompetency_id() {
		return coursecompetency_id;
	}

	public void setCoursecompetency_id(int coursecompetency_id) {
		this.coursecompetency_id = coursecompetency_id;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public String getCourse_category() {
		return course_category;
	}

	public void setCourse_category(String course_category) {
		this.course_category = course_category;
	}

	public int getCourse_id() {
		return course_id;
	}

	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}

	public String getTraining_name() {
		return training_name;
	}

	public void setTraining_name(String training_name) {
		this.training_name = training_name;
	}

	public int getTrainingcompetency_id() {
		return trainingcompetency_id;
	}

	public void setTrainingcompetency_id(int trainingcompetency_id) {
		this.trainingcompetency_id = trainingcompetency_id;
	}

	public int getTraining_id() {
		return training_id;
	}

	public void setTraining_id(int training_id) {
		this.training_id = training_id;
	}

	public String getTraining_desc() {
		return training_desc;
	}

	public void setTraining_desc(String training_desc) {
		this.training_desc = training_desc;
	}


	
}
