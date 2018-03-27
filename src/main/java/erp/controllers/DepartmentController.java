package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.Department;
import erp.hrms.dao.DepartmentDao;

@Controller
@RequestMapping(value="system-setup/department/")
public class DepartmentController {

	@Autowired
	DepartmentDao deptDao;
	
	@RequestMapping(value="delete/{id}/",method = RequestMethod.GET)
	public ModelAndView deleteDept(@PathVariable int id) {
		deptDao.delete(id);
		return new ModelAndView("redirect:/system-setup/department/");
	}
	
	@RequestMapping(value="save", method = RequestMethod.POST)
	public ModelAndView saveDept(@ModelAttribute("dept") Department dept) {
		deptDao.save(dept);
		return new ModelAndView("redirect:/system-setup/department/");
	}
	
	@RequestMapping(value="edit", method = RequestMethod.POST)
	public ModelAndView editDept(@ModelAttribute("dept") Department dept) {
		deptDao.update(dept);
		return new ModelAndView("redirect:/system-setup/department/");
	}
}
