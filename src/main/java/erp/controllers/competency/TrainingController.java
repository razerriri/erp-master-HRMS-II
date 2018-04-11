package erp.controllers.competency;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.TrainingDao;

import erp.hrms.beans.Competency;


@Controller
@RequestMapping(value="/cms/training/view")
public class TrainingController {
	
	@Autowired
	TrainingDao trainingDao;
	
	@RequestMapping(value="competency/delete/{trainingcompetencyid}/{trainingid}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int trainingcompetencyid,@PathVariable int trainingid) {
		trainingDao.delete(trainingcompetencyid);
		return new ModelAndView("redirect:/cms/training/view/"+trainingid+"");
	}
	@RequestMapping(value="competency/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("competency") Competency competency) {
		trainingDao.save(competency);
		return new ModelAndView("redirect:/cms/training/view/"+competency.getTraining_id()+"");
	}
	
	@RequestMapping(value="competency/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("competency") Competency competency) {
		trainingDao.update(competency);
		return new ModelAndView("redirect:/cms/training/view/"+competency.getTraining_id()+"");
	}
	
	
}

	
	
