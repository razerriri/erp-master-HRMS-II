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
public class ESSController {
	
	@Autowired
	LeaveRequestDao LeaveRequestDao;
	
	/************LEAVE REQUEST******************/
	@RequestMapping("/ESS/leaveRequest")
	public ModelAndView leaveRequest() {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		List<LeaveRequestBean> listRequest = LeaveRequestDao.viewRequest();	
		List<LeaveRequestBean> listEmp = LeaveRequestDao.dropdownEmp();
		List<LeaveRequestBean> listLeave = LeaveRequestDao.dropdownLeave();
		List<LeaveRequestBean> listBalance = LeaveRequestDao.viewBalance();
		
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("ess/leave_admin_request_view");
		mav.addObject("viewTitle", "Leave Requisition");
		mav.addObject("fileDate", dateFormat.format(date).toString());
		mav.addObject("dropEmpID", listEmp);
		mav.addObject("dropLeave", listLeave);
		mav.addObject("listRequest", listRequest);	
		mav.addObject("listBalance", listBalance);
		
		return mav;
	}
	
	@RequestMapping("/ESS/Reimbursement")
	public ModelAndView reimbursementRequest() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ess/reimb-request");
		
		return mav;
	}
}
