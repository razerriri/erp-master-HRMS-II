package erp.controllers.competency;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.dao.competency.EmployeesDao;
import erp.hrms.beans.Competency;


@Controller
@RequestMapping(value="employee/view")
public class EmployeesController {
	
	@Autowired
	EmployeesDao employeesDao;

	
	@RequestMapping(value="cms/employee/delete/{id}/{employeeid}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable int id,@PathVariable int employeeid) {
		employeesDao.delete(id);
		return new ModelAndView("redirect:/cms/employee/view/"+employeeid+"");
	}
	@RequestMapping(value="cms/employee/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("competency") Competency competency) {
		employeesDao.save(competency);
		return new ModelAndView("redirect:/cms/employee/view/"+competency.getEmployee_id()+"");
	}
	
	@RequestMapping(value="cms/employee/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("competency") Competency competency) {
		employeesDao.update(competency);
		return new ModelAndView("redirect:/cms/employee/view/"+competency.getEmployee_id()+"");
	}
	
	
}

	
	
