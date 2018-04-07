package erp.controllers.succession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SuccPlanController {

	//@Autowired
	//ReimbReqDao reimbReqDao;
	
	@RequestMapping("/succession/succession-plan/")
	public ModelAndView succesionPlan() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("succession/succession-plan");
		return mav;
	}
	
	@RequestMapping("/succession/succession-recommendation/")
	public ModelAndView succesionRec() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("succession/succession-recommendation");
		return mav;
	}
	
}