package erp.controllers;
//import java.lang.ProcessBuilder.Redirect;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import erp.hrms.dao.TimesheetApproveDao;
import erp.hrms.beans.Tuser;

@Controller
@RequestMapping(value="hr-timesheet/Approve_Timesheet/")
public class TimesheetApproveController 
{
	
	@Autowired
	TimesheetApproveDao timesheetapproveDao;
	
	@RequestMapping(value = "edit",method= RequestMethod.POST)
	public ModelAndView editpra(@ModelAttribute("approves") Tuser tuser)
	{
		
		timesheetapproveDao.updatestatus(tuser);
		return new ModelAndView("redirect:/hr-timesheet/Approve_Timesheet/");
	}
	@RequestMapping(value = "edit2",method= RequestMethod.POST)
	public ModelAndView editprd(@ModelAttribute("disapproves") Tuser tuser)
	{
		
		timesheetapproveDao.updatestatus(tuser);
		return new ModelAndView("redirect:/hr-timesheet/Approve_Timesheet/");
	}
}
