package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.SalaryType;
import erp.hrms.dao.SalaryTypeDao;


@Controller
@RequestMapping(value="system-setup/salary-type/")
public class SalaryTypeController {

	@Autowired
	SalaryTypeDao salaryTypeDao;
	
	@RequestMapping(value = "save/", method = RequestMethod.POST)
	public ModelAndView saveSalaryType(@ModelAttribute("salaryType")SalaryType salaryType) {
		salaryTypeDao.save(salaryType);
		return new ModelAndView("redirect:/system-setup/salary-type/");
	}
	
	@RequestMapping(value = "edit/", method = RequestMethod.POST)
	public ModelAndView editSalaryType(@ModelAttribute("salaryType")SalaryType salaryType) {
		salaryTypeDao.update(salaryType);
		return new ModelAndView("redirect:/system-setup/salary-type/");
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public ModelAndView deleteSalaryType(@PathVariable int id) {
		salaryTypeDao.delete(id);
		return new ModelAndView("redirect:/system-setup/salary-type/");
	}
}
