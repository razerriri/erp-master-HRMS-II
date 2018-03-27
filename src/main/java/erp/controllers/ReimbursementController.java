package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReimbursementController {

	//@Autowired
	//ReimbReqDao reimbReqDao;
	
	@RequestMapping("/reimbursementRequest")
	public ModelAndView reimbursementRequest() {
		ModelAndView mav = new ModelAndView();
		//List<ReimbReqBean> listReimbursement = reimbReqDao.getReimbursement();
		mav.setViewName("claims-reimb/reimb-request");
	//	mav.addObject("listReimbursement", listReimbursement);
		return mav;
	}
	
	@RequestMapping("/claimsStat")
	public ModelAndView claimsStat() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("claims-reimb/claims");
		
		return mav;
	}
}