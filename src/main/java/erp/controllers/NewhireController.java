package erp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewhireController {
	
	@RequestMapping("/a_newhire")
	public ModelAndView a_newhire() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("newhireonboard/a_newhire");
		return mav;
	}
	
	@RequestMapping("/a_checklist")
	public ModelAndView a_checklist() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("newhireonboard/a_checklist");
		return mav;
	}
	
	@RequestMapping("/a_cl_content")
	public ModelAndView a_cl_content() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("newhireonboard/a_cl_content");
		return mav;
	}
	
	@RequestMapping("/a_email")
	public ModelAndView a_email() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("newhireonboard/a_email");
		return mav;
	}
	
	@RequestMapping("/a_report")
	public ModelAndView a_report() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("newhireonboard/a_report");
		return mav;
	}
	
	@RequestMapping("/a_index")
	public ModelAndView a_index() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("newhireonboard/a_index");
		return mav;
	}
	
}
	
	
	