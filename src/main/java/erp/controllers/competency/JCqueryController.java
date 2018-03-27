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
import erp.hrms.dao.competency.JCDao;
import erp.hrms.beans.Competency;


@Controller

public class JCqueryController {
	
	@Autowired
	JCDao jcDao;	
	@RequestMapping(value="cms/jc/view/{jobid}/{empid}",method = RequestMethod.GET)
	public ModelAndView getjobcomp(@PathVariable int jobid,@PathVariable int empid) {
		List<Competency> employeejobcompetencylist = jcDao.getEmployeeJobCompetency(jobid,empid);
		ModelAndView mav = new ModelAndView("competency/query/job_competency_query");
		mav.addObject("employeejobcompetencylist",employeejobcompetencylist);
		mav.addObject("competency", new Competency());
		return mav;
	}
}

	
	
