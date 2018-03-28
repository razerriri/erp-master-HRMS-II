package erp.controllers.competency;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.ClusterDao;
import erp.hrms.dao.competency.EJCDao;
import erp.hrms.dao.competency.EmployeesDao;
import erp.hrms.dao.competency.JCDao;
import erp.hrms.dao.competency.JobsDao;
import erp.hrms.beans.Competency;

@Controller
public class CompetencyController {
	
	@Autowired
	ClusterDao clusterDao;
	@Autowired
	EmployeesDao employeesDao;
	@Autowired
	EJCDao ejcDao;
	@Autowired
	JobsDao jobsDao;
	@Autowired
	JCDao jcDao;
	
	
	@RequestMapping(value= {"/cms"})
	public ModelAndView cms_index() {
		ModelAndView mav = new ModelAndView("competency/index/cms");
		return mav;
	}
	
	@RequestMapping(value= {"/cms/report/competency-record"})
	public ModelAndView cr() {
		ModelAndView mav = new ModelAndView("competency/report/competency_record");
		return mav;
	}
	@RequestMapping(value= {"/cms/report/job-competency"})
	public ModelAndView ec() {
		ModelAndView mav = new ModelAndView("competency/report/job_competency");
		return mav;
	}
	@RequestMapping(value= {"/cms/report/employee-competency"})
	public ModelAndView jc() {
		ModelAndView mav = new ModelAndView("competency/report/employee_competency");
		return mav;
	}
	@RequestMapping(value= {"/cms/cluster"})
	public ModelAndView cluster_setup() {
		List<Competency> clusterlist = clusterDao.getCluster();
		ModelAndView mav = new ModelAndView("competency/system-setup/cluster_competency_setup");
		mav.addObject("clusterlist",clusterlist);
		mav.addObject("cluster", new Competency());
		return mav;
	}
	@RequestMapping(value="/cms/employee/view/{employeeid}",method = RequestMethod.GET)
	public ModelAndView getemployee(@PathVariable int employeeid) {
		List<Competency> employeecompetencylist = employeesDao.getEmployeeCompetency(employeeid);
		List<Competency> employee_id = employeesDao.getEmployeeid(employeeid);
		List<Competency> competencylist = employeesDao.getCompetency();
		ModelAndView mav = new ModelAndView("competency/system-setup/employee_competency_setup");
		mav.addObject("competencylist",competencylist);
		mav.addObject("employee_id",employee_id);
		mav.addObject("employeecompetencylist",employeecompetencylist);
		mav.addObject("competency", new Competency());
		return mav;
	}

	@RequestMapping(value= {"/cms/employee"})
	public ModelAndView employee_records() {
		List<Competency> employeelist = employeesDao.getEmployee();
		ModelAndView mav = new ModelAndView("competency/index/employee_records");
		mav.addObject("employeelist",employeelist);
		return mav;
	}
	/*EMPLOYEE JOB COMPETENCY QUERY*/
	@RequestMapping(value= {"/cms/ejc"})
	public ModelAndView employee_job_competency_query() {
		List<Competency> employeelist = ejcDao.getEmployee();
		List<Competency> joblist = ejcDao.getJob();
		List<Competency> employeejobcompetencylist = ejcDao.getEmployeeJobCompetencyindex();
		ModelAndView mav = new ModelAndView("competency/query/employee_job_competency_query");
		mav.addObject("employeelist",employeelist);
		mav.addObject("joblist",joblist);
		mav.addObject("employeejobcompetencylist",employeejobcompetencylist);
		mav.addObject("competency", new Competency());
		return mav;
		
	}
	
	@RequestMapping(value= {"/cms/job"})
	public ModelAndView job_records() {
		List<Competency> joblist = jobsDao.getJob();
		ModelAndView mav = new ModelAndView("competency/index/job_records");
		mav.addObject("joblist",joblist);
		return mav;
	}
	
	@RequestMapping(value="/cms/job/view/{jobid}",method = RequestMethod.GET)
	public ModelAndView getjobcomp(@PathVariable int jobid) {
		List<Competency> jobcompetencylist = jobsDao.getJobCompetency(jobid);
		List<Competency> competencylist = employeesDao.getCompetency();
		List<Competency> job_id = jobsDao.getJobid(jobid);
		ModelAndView mav = new ModelAndView("competency/system-setup/job_competency_setup");
		mav.addObject("jobcompetencylist",jobcompetencylist);
		mav.addObject("competencylist",competencylist);
		mav.addObject("job_id",job_id);
		mav.addObject("competency", new Competency());
		return mav;
	}
	
	@RequestMapping(value= {"/cms/jc"})
	public ModelAndView job_competency_query() {
		List<Competency> jobcompetencylist = jcDao.getJobCompetency();
		ModelAndView mav = new ModelAndView("competency/index/job_competency_index");
		mav.addObject("jobcompetencylist",jobcompetencylist);
		mav.addObject("competency", new Competency());
		return mav;
		
	}
	
	@RequestMapping(value= {"/cms/ec-report"})
	public ModelAndView employee_competency_report() {
		List<Competency> employeelist = ejcDao.getEmployee();
		ModelAndView mav = new ModelAndView("competency/query/employee_competency_report");
		mav.addObject("employeelist",employeelist);
		mav.addObject("competency", new Competency());
		return mav;
		
	}

	@RequestMapping(value= {"/cms/ejc-report"})
	public ModelAndView employee_job_competency_report() {
		List<Competency> employeelist = ejcDao.getEmployee();
		List<Competency> joblist = ejcDao.getJob();
		ModelAndView mav = new ModelAndView("competency/query/employee_job_competency_report");
		mav.addObject("employeelist",employeelist);
		mav.addObject("joblist",joblist);
		mav.addObject("competency", new Competency());
		return mav;
		
	}
	
}