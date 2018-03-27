package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.PayGrade;
import erp.hrms.dao.PayGradeDao;

@Controller
@RequestMapping(value="system-setup/pay-grade/")
public class PayGradeController {

	@Autowired
	PayGradeDao payGradeDao;
	
	//save
	@RequestMapping(value="save/", method = RequestMethod.POST)
	public ModelAndView savePayGrade(@ModelAttribute("payGrade") PayGrade payGrade) {
		payGradeDao.save(payGrade);
		return new ModelAndView("redirect:/system-setup/pay-grade/");
	}
	
	//delete
	@RequestMapping(value="delete/{id}", method = RequestMethod.GET)
	public ModelAndView deletePayGrade(@PathVariable int id) {
		payGradeDao.delete(id);
		return new ModelAndView("redirect:/system-setup/pay-grade/");
	}
	
	//edit
	@RequestMapping(value="edit/", method = RequestMethod.POST)
	public ModelAndView editPayGrade(@ModelAttribute("payGrade") PayGrade payGrade) {
		payGradeDao.update(payGrade);
		return new ModelAndView("redirect:/system-setup/pay-grade/");
	}
}
