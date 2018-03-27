package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.CompensationType;
import erp.hrms.dao.CompensationTypeDao;


@Controller
@RequestMapping(value="system-setup/compensation-type/")
public class CompensationTypeController {
	
	@Autowired
	CompensationTypeDao compTypeDao;

	@RequestMapping(value = "save/",method = RequestMethod.POST)
	public ModelAndView saveCompType(@ModelAttribute("compType")CompensationType compType) {
		compTypeDao.save(compType);
		return new ModelAndView("redirect:/system-setup/compensation-type/");
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteCompType(@PathVariable int id) {
		compTypeDao.delete(id);
		return new ModelAndView("redirect:/system-setup/compensation-type/");
	}
	
	@RequestMapping(value = "edit",method=RequestMethod.POST)
	public ModelAndView editCompType(@ModelAttribute("compType") CompensationType ct) {
		compTypeDao.update(ct);
		return new ModelAndView("redirect:/system-setup/compensation-type/");
		
	}
	}

