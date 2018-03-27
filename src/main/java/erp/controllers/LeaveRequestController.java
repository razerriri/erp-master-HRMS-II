package erp.controllers;

import java.util.List;
import java.text.*;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import erp.hrms.beans.LeaveRequestBean;
//import hrms3.leavemgmt.beans.adminSetupBean;
import erp.hrms.dao.LeaveRequestDao;

@Controller
public class LeaveRequestController {

	@Autowired
	LeaveRequestDao LeaveRequestDao;
	
	@RequestMapping("/leaveApproval")
	public ModelAndView leaveRequestApproval() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		List<LeaveRequestBean> listRequest = LeaveRequestDao.viewRequest();	
		List<LeaveRequestBean> listEmp = LeaveRequestDao.dropdownEmp();
		List<LeaveRequestBean> listLeave = LeaveRequestDao.dropdownLeave();
		List<LeaveRequestBean> listBalance = LeaveRequestDao.viewBalance();
		
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("leave/leave_admin_request_view");
		mav.addObject("viewTitle", "Leave Requisition");
		mav.addObject("fileDate", dateFormat.format(date).toString());
		mav.addObject("dropEmpID", listEmp);
		mav.addObject("dropLeave", listLeave);
		mav.addObject("listRequest", listRequest);	
		mav.addObject("listBalance", listBalance);
		
		return mav;
	}	
	
	// SUBMIT
	@RequestMapping(value="submitReq", method = RequestMethod.POST)
	public ModelAndView saveRequest(@ModelAttribute ("modelLeaveReq") LeaveRequestBean request) {
			LeaveRequestDao.addLeaveReq(request);
			return new ModelAndView("redirect:/leaveRequest");
	}
	
	// UPDATE
	@RequestMapping(value="updateReq", method = RequestMethod.POST)
	public ModelAndView updateRequest(@ModelAttribute ("modelUpdateReq") LeaveRequestBean request) {
			LeaveRequestDao.updateLeaveReq(request);
			return new ModelAndView("redirect:/leaveRequest");
	}
	
	
}
