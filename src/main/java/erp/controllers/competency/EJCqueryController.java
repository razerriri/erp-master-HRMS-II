package erp.controllers.competency;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.EJCDao;
import erp.hrms.dao.competency.EmployeesDao;
import erp.hrms.beans.Competency;


@Controller

public class EJCqueryController {
	
	@Autowired
	EJCDao ejcDao;	
	@RequestMapping(value="cms/ejc/search", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("competency") Competency competency) {
		List<Competency> employeejobcompetencylist = ejcDao.getEmployeeJobCompetency(competency);
		List<Competency> employeelist = ejcDao.getEmployee();
		List<Competency> joblist = ejcDao.getJob();
		ModelAndView mav = new ModelAndView("competency/query/employee_job_competency_query");
		mav.addObject("employeelist",employeelist);
		mav.addObject("joblist",joblist);
		mav.addObject("employeejobcompetencylist",employeejobcompetencylist);
		mav.addObject("competency", new Competency());
		return mav;
	}
	@RequestMapping(value="cms/ec-report/search", method = RequestMethod.POST)
	public ModelAndView report() {
		return new ModelAndView("competency/report/employee_competency_param");
	}
	@RequestMapping(value="cms/ejc-report/search", method = RequestMethod.POST)
	public ModelAndView ejcreport() {
		return new ModelAndView("competency/report/employee_job_competency_param");
	}
	
	
	
}

	
	
