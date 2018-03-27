package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.AddApp;
import erp.hrms.dao.AddAppDao;

@Controller
public class RecruitmentController {

	@Autowired
	AddAppDao addAppDao;
	
	@RequestMapping("/JobPost")
	public ModelAndView JobPosting() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/transaction_jobpost");
		return mav;
	}	
	
	@RequestMapping(value="submitApp", method = RequestMethod.POST)
	public ModelAndView submitApp(@ModelAttribute("modelApp") AddApp app) {
		addAppDao.insertApp(app);
		return new ModelAndView("redirect:/AddApp");
	}
	
	@RequestMapping("/JobPostRequest")
	public ModelAndView JobPostingRequest() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/transaction_jobpostrequest");
		return mav;
	}	
	
	@RequestMapping("/Dashboard")
	public ModelAndView Dashboard() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/dashboard");
		return mav;
	}
	
	@RequestMapping("/EmployeeHome")
	public ModelAndView EmployeeHome() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/employee_home");
		return mav;
	}
	
	
	@RequestMapping("/EmployeeJobPost")
	public ModelAndView EmployeeJobPost() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/employee_jobpost");
		return mav;
	}
	
	@RequestMapping("/GuestHome")
	public ModelAndView GuestHome() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/guest_home");
		return mav;
	}	
	
	@RequestMapping("/JobTitle")
	public ModelAndView JobTitle() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/jobtitle");
		return mav;
	}
	@RequestMapping("/Queries")
	public ModelAndView Queries() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/queries_jobspot");
		return mav;
	}	
	
	@RequestMapping("/Specialization")
	public ModelAndView Specialization() {	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("recruitment/specialization");
		return mav;
	}
	
}
