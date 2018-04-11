package erp.controllers.competency;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.CourseDao;
import erp.hrms.dao.competency.JobsDao;
import erp.hrms.beans.Competency;


@Controller
@RequestMapping(value="/cms/course/view")
public class CourseController {
	
	@Autowired
	CourseDao courseDao;
	
	@RequestMapping(value="competency/delete/{coursecompetencyid}/{courseid}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int coursecompetencyid,@PathVariable int courseid) {
		courseDao.delete(coursecompetencyid);
		return new ModelAndView("redirect:/cms/course/view/"+courseid+"");
	}
	@RequestMapping(value="competency/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("competency") Competency competency) {
		courseDao.save(competency);
		return new ModelAndView("redirect:/cms/course/view/"+competency.getCourse_id()+"");
	}
	
	@RequestMapping(value="competency/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("competency") Competency competency) {
		courseDao.update(competency);
		return new ModelAndView("redirect:/cms/course/view/"+competency.getCourse_id()+"");
	}
	
	
}

	
	
