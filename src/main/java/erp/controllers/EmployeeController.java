package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Employee;
import erp.hrms.dao.EmployeeDao;

@Controller
@RequestMapping("system-setup/old-employee/")
public class EmployeeController {
	
	@Autowired
	EmployeeDao employeeDao;

	@RequestMapping(value="save/", method=RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("employee") Employee e) {
		employeeDao.save(e);
		return new ModelAndView("redirect:/system-setup/employee/");
	}
}
