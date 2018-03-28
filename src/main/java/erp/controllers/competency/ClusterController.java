package erp.controllers.competency;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.ClusterDao;
import erp.hrms.dao.competency.CompetencyDao;
import erp.hrms.beans.Competency;


@Controller
public class ClusterController {
	
	@Autowired
	ClusterDao clusterDao;
	@Autowired
	CompetencyDao competencyDao;

	@RequestMapping(value="cms/cluster/view/{clusterid}",method = RequestMethod.GET)
	public ModelAndView getCompetency(@PathVariable int clusterid) {
		List<Competency> competencylist = clusterDao.getCompetency(clusterid);
		List<Competency> cluster_id = clusterDao.getClusterid(clusterid);
		ModelAndView mav = new ModelAndView("competency/system-setup/child_competency_setup");
		mav.addObject("clusterid",cluster_id);
		mav.addObject("competencylist",competencylist);
		mav.addObject("competency", new Competency());
		return mav;
	}
	@RequestMapping(value="cms/cluster/delete/{id}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id) {
		clusterDao.delete(id);
		return new ModelAndView("redirect:/cms/cluster");
	}
	
	@RequestMapping(value="cms/cluster/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("cluster") Competency competency) {
		clusterDao.save(competency);
		return new ModelAndView("redirect:/cms/cluster");
	}
	
	@RequestMapping(value="cms/cluster/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("cluster") Competency competency) {
		clusterDao.update(competency);
		return new ModelAndView("redirect:/cms/cluster");
	}
}

	
	
