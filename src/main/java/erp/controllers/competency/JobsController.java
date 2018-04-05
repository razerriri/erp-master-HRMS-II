package erp.controllers.competency;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.JobsDao;
import erp.hrms.beans.Competency;


@Controller
@RequestMapping(value="/cms/job/view")
public class JobsController {
	
	@Autowired
	JobsDao jobsDao;
	
	@RequestMapping(value="competency/delete/{jobcompetencyid}/{jobid}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int jobcompetencyid,@PathVariable int jobid) {
		jobsDao.delete(jobcompetencyid);
		return new ModelAndView("redirect:/cms/job/view/"+jobid+"");
	}
	@RequestMapping(value="competency/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("competency") Competency competency) {
		jobsDao.save(competency);
		return new ModelAndView("redirect:/cms/job/view/"+competency.getJob_id()+"");
	}
	
	@RequestMapping(value="competency/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("competency") Competency competency) {
		jobsDao.update(competency);
		return new ModelAndView("redirect:/cms/job/view/"+competency.getJob_id()+"");
	}
	
	
}

	
	
