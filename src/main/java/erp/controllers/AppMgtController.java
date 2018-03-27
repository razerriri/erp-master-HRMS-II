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
import erp.hrms.dao.AddAppDao;
import erp.hrms.beans.AddApp;

@Controller
public class AppMgtController {
	
	@Autowired 
	AddAppDao addAppDao;
	
	
	@RequestMapping("/AddApp")
	public ModelAndView AddApp() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("appmgt/AddApp");
		return mav;
	}
	
	@RequestMapping("/PSB")
	public ModelAndView PSB() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("appmgt/PSB");
		return mav;
	}
	
	@RequestMapping("/AddPost")
	public ModelAndView AddPost() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("appmgt/AddPost");
		return mav;
	}
	
	@RequestMapping("/Scoring")
	public ModelAndView Scoring() {	
		ModelAndView mav = new ModelAndView();	
		mav.setViewName("appmgt/Scoring");
		return mav;
	}
	
}