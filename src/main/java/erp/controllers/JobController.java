package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Job;
import erp.hrms.dao.JobDao;

@Controller
@RequestMapping(value="system-setup/job-title/")
public class JobController {

	@Autowired
	JobDao jobDao;
	
	//save
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public ModelAndView jobDescription(@ModelAttribute("job")Job job) {
		jobDao.save(job);
		return new ModelAndView("redirect:/system-setup/job-title/");
	}
	
	//delete
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteJob(@PathVariable int id) {
		jobDao.delete(id);
		return new ModelAndView("redirect:/system-setup/job-title/");
	}
	
	//update
	@RequestMapping(value = "edit", method = RequestMethod.POST)
	public ModelAndView editJob(@ModelAttribute("job") Job job) {
		jobDao.update(job);
		return new ModelAndView("redirect:/system-setup/job-title/");
	}
}
