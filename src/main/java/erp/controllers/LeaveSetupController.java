package erp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.LeaveSetupBean;
import erp.hrms.dao.LeaveSetupDao;

@Controller
public class LeaveSetupController {

	@Autowired
	LeaveSetupDao LeaveSetupDao;
	
	@RequestMapping("/leaveSetup")
	public ModelAndView leaveSetup() {
		List<LeaveSetupBean> listLeave = LeaveSetupDao.viewLeave();		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("leave/leave_admin_setup_view");
		mav.addObject("viewTitle", "Leave Settings");	
		mav.addObject("listLeave", listLeave);	

		return mav;
	}	
	
	@RequestMapping("/appRequest")
	public ModelAndView appRequest() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("transaction_apprequest");
		
		return mav;
	}	
	
	// SUBMIT
	@RequestMapping(value="submitLeave", method = RequestMethod.POST)
	public ModelAndView saveLeave(@ModelAttribute ("modelLeaveSetup") LeaveSetupBean lve) 
	{
		LeaveSetupDao.addLeave(lve);
		return new ModelAndView("redirect:/leaveSetup");
	}
	

}
